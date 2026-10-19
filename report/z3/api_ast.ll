Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/api_ast?download=true
inline.NumInlined: 1932
inline.NumDeleted: 562
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@Z3_add_rec_def:bb.a

.lr.ph.i.i137:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i138 = phi ptr [ %i.jh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.iu, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.jb = load ptr, ptr %.06.i.i138, align 8, !tbaa !193 ; 3 uses
  %i.jc = load ptr, ptr %9, align 8, !tbaa !218, !nonnull !216, !align !217
  %.not.i.i.i.i.i139 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i.i.i139, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i.i137
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !191
  %i.jf = add i32 %i.je, -1                       ; 2 uses
  store i32 %i.jf, ptr %i.jd, align 4, !tbaa !191
  %i.jg = icmp eq i32 %i.jf, 0
  br i1 %i.jg, label %bb.bq, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.jc, ptr noundef nonnull %i.jb)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.bs

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.bq, %bb.bp, %.lr.ph.i.i137
  %i.jh = getelementptr inbounds nuw i8, ptr %.06.i.i138, i64 8 ; 2 uses
  %i.ji = icmp ult ptr %i.jh, %i.ja
  br i1 %i.ji, label %.lr.ph.i.i137, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !1

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i140 = load ptr, ptr %i.cd, align 8, !tbaa !185 ; 2 uses
  %.not.i.i.i141 = icmp eq ptr %.pre.i140, null
  br i1 %.not.i.i.i141, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.jj = phi ptr [ %.pre.i140, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.iu, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.jk)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.br

bb.br:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.jl = landingpad { ptr, i32 }
          catch ptr null
  %i.jm = extractvalue { ptr, i32 } %i.jl, 0
  call void @__clang_call_terminate(ptr %i.jm) #22
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.jn = landingpad { ptr, i32 }
          catch ptr null
  %i.jo = extractvalue { ptr, i32 } %i.jn, 0
  call void @__clang_call_terminate(ptr %i.jo) #22
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN15ref_vector_coreI3var19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.jp = load ptr, ptr %8, align 8, !tbaa !183   ; 3 uses
  %.not.i.i = icmp eq ptr %i.jp, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.jq = load ptr, ptr %i.cb, align 8, !tbaa !219, !nonnull !216, !align !217
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !191
  %i.jt = add i32 %i.js, -1                       ; 2 uses
  store i32 %i.jt, ptr %i.jr, align 4, !tbaa !191
  %i.ju = icmp eq i32 %i.jt, 0
  br i1 %i.ju, label %bb.bu, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.jq, ptr noundef nonnull %i.jp)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jv = landingpad { ptr, i32 }
          catch ptr null
  %i.jw = extractvalue { ptr, i32 } %i.jv, 0
  call void @__clang_call_terminate(ptr %i.jw) #22
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  br i1 %i.b, label %bb.bx, label %_ZN10z3_log_ctxD2Ev.exit, !prof !166

bb.bx:                                            ; preds = %bb.bw
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.by:                                            ; preds = %bb.bh
  %i.jx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV14recfun_replace, i64 16), ptr %15, align 8, !tbaa !203
  call void @_ZN17expr_safe_replaceD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.hk) #21, !inline_history !213
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bf, %bb.ar
  %.pn77 = phi { ptr, i32 } [ %i.ff, %bb.ar ], [ %i.jx, %bb.by ], [ %.pn70.pn.pn, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bz
  %.pn77.pn = phi { ptr, i32 } [ %.pn77, %bb.bz ], [ %lpad.loopexit.split-lp229, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN15ref_vector_coreI3var19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.ca

bb.ca:                                            ; preds = %.loopexit.split-lp, %bb.u
  %.pn77.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn, %.loopexit.split-lp ], [ %.pn.pn.pn, %bb.u ] ; 3 uses
  %.13 = extractvalue { ptr, i32 } %.pn77.pn.pn.pn.pn.pn.pn, 1 ; 2 uses
  br i1 %i.b, label %bb.cb, label %_ZN10z3_log_ctxD2Ev.exit142, !prof !165

bb.cb:                                            ; preds = %.thread, %bb.ca
  %.13151 = phi i32 [ %.13147, %.thread ], [ %.13, %bb.ca ]
  %.pn77.pn.pn.pn.pn.pn.pn149 = phi { ptr, i32 } [ %i.bm, %.thread ], [ %.pn77.pn.pn.pn.pn.pn.pn, %bb.ca ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit142

_ZN10z3_log_ctxD2Ev.exit142:                      ; preds = %bb.ca, %bb.cb
  %.13150 = phi i32 [ %.13, %bb.ca ], [ %.13151, %bb.cb ]
  %.pn77.pn.pn.pn.pn.pn.pn148 = phi { ptr, i32 } [ %.pn77.pn.pn.pn.pn.pn.pn, %bb.ca ], [ %.pn77.pn.pn.pn.pn.pn.pn149, %bb.cb ] ; 2 uses
  %i.jy = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #21
  %i.jz = icmp eq i32 %.13150, %i.jy
  br i1 %i.jz, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %_ZN10z3_log_ctxD2Ev.exit142
  %.1362 = extractvalue { ptr, i32 } %.pn77.pn.pn.pn.pn.pn.pn148, 0
  %i.ka = call ptr @__cxa_begin_catch(ptr %.1362) #21
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ka)
          to label %bb.cd unwind label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.ce:                                            ; preds = %bb.cc
  %i.kb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.cf unwind label %bb.cg

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.bx, %bb.bw, %bb.cd
  ret void

bb.cf:                                            ; preds = %bb.ce, %_ZN10z3_log_ctxD2Ev.exit142
  %.merged = phi { ptr, i32 } [ %.pn77.pn.pn.pn.pn.pn.pn148, %_ZN10z3_log_ctxD2Ev.exit142 ], [ %i.kb, %bb.ce ]
  resume { ptr, i32 } %.merged

bb.cg:                                            ; preds = %bb.ce
  %i.kc = landingpad { ptr, i32 }
          catch ptr null
  %i.kd = extractvalue { ptr, i32 } %i.kc, 0
  call void @__clang_call_terminate(ptr %i.kd) #22
  unreachable
}

declare void @_Z18log_Z3_add_rec_defP11_Z3_contextP13_Z3_func_decljPKP7_Z3_astS4_(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN3api7context14set_error_codeE13Z3_error_codeONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZplB5cxx11PKcRK5mk_pp(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !203
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !434
  %i.g = or i32 %i.f, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %i.g)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1, i64 noundef %i.h)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %bb.d unwind label %bb.g       ; 0 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !223, !noalias !437 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %bb.d
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  %5 = load ptr, ptr %i.n, align 8, !tbaa !224, !noalias !437 ; 2 uses
  %6 = icmp ugt ptr %i.m, %5
  %.08.i.i.i = select i1 %6, ptr %i.m, ptr %5
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !225, !noalias !437
  %i.q = ptrtoint ptr %.08.i.i.i to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %i.s, ptr %i.t, align 8, !tbaa !178, !noalias !437
  %i.u = load ptr, ptr %4, align 8, !tbaa !179, !noalias !437
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !167, !noalias !437
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !180, !alias.scope !437
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !179, !noalias !437 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 7 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !178, !noalias !437 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.y, ptr %0, align 8, !tbaa !179, !alias.scope !437
  %i.af = load i64, ptr %i.z, align 8, !tbaa !167, !noalias !437
  store i64 %i.af, ptr %i.x, align 8, !tbaa !167, !alias.scope !437
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !178, !noalias !437
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.e
  %i.ag = phi i64 [ %i.ac, %bb.e ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !178, !alias.scope !437
  store ptr %i.z, ptr %i.w, align 8, !tbaa !179, !noalias !437
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ah, i8 0, i64 9, i1 false), !noalias !437
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.k, ptr noundef nonnull %i.z, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !179, !alias.scope !437 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.x
  br i1 %i.al, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.am = load i64, ptr %i.x, align 8, !tbaa !167, !alias.scope !437
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #24
  br label %.body

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ao = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ao, ptr %3, align 8, !tbaa !203
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aq = getelementptr i8, ptr %i.ao, i64 -24
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds i8, ptr %3, i64 %i.ar
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !203
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.k, align 8, !tbaa !203
  %i.at = load ptr, ptr %i.w, align 8, !tbaa !179 ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.z
  br i1 %i.au, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.av = load i64, ptr %i.z, align 8, !tbaa !167
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #24
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.k, align 8, !tbaa !203
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ax) #21
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ay) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.g:                                             ; preds = %bb.c, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.az, %bb.g ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aj, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef ptr @_ZN11ast_manager6mk_varEjP4sort(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #2

declare void @_Z13expr_abstractR11ast_managerjjPKP4exprS2_R7obj_refIS1_S_E(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN6recfun4decl6plugin14set_definitionERNS_7replaceERNS_11promise_defEbjPKP3varP4expr(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN14recfun_replaceD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV14recfun_replace, i64 16), ptr %0, align 8, !tbaa !203
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN17expr_safe_replaceD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.a) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15ref_vector_coreI3var19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6vectorIP3varLb0EjED2Ev.exit, label %_ZNK6vectorIP3varLb0EjE4sizeEv.exit

_ZNK6vectorIP3varLb0EjE4sizeEv.exit:              ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !192  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %_ZN15ref_vector_coreI3var19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIP3varLb0EjE4sizeEv.exit, %_ZN15ref_vector_coreI3var19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i
  %.06.i = phi ptr [ %i.o, %_ZN15ref_vector_coreI3var19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i ], [ %i.b, %_ZNK6vectorIP3varLb0EjE4sizeEv.exit ] ; 2 uses
  %i.i = load ptr, ptr %.06.i, align 8, !tbaa !195 ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !215, !nonnull !216, !align !217
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI3var19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !191
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4, !tbaa !191
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZN15ref_vector_coreI3var19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.j, ptr noundef nonnull %i.i)
          to label %_ZN15ref_vector_coreI3var19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i unwind label %bb.e

_ZN15ref_vector_coreI3var19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.06.i, i64 8 ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.h
  br i1 %i.p, label %.lr.ph.i, label %_ZN15ref_vector_coreI3var19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit, !llvm.loop !0

_ZN15ref_vector_coreI3var19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit: ; preds = %_ZN15ref_vector_coreI3var19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !188 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN6vectorIP3varLb0EjED2Ev.exit, label %_ZN15ref_vector_coreI3var19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7

_ZN15ref_vector_coreI3var19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7: ; preds = %_ZNK6vectorIP3varLb0EjE4sizeEv.exit, %_ZN15ref_vector_coreI3var19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit
  %i.q = phi ptr [ %.pre, %_ZN15ref_vector_coreI3var19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit ], [ %i.b, %_ZNK6vectorIP3varLb0EjE4sizeEv.exit ]
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.r)
          to label %_ZN6vectorIP3varLb0EjED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN15ref_vector_coreI3var19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #22
  unreachable

_ZN6vectorIP3varLb0EjED2Ev.exit:                  ; preds = %bb.a, %_ZN15ref_vector_coreI3var19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit, %_ZN15ref_vector_coreI3var19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185  ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !192  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i
  %.06.i = phi ptr [ %i.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i ], [ %i.b, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ] ; 2 uses
  %i.i = load ptr, ptr %.06.i, align 8, !tbaa !193 ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !218, !nonnull !216, !align !217
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
end_hunk_0
begin_hunk_1_@_ZL8simplifyP11_Z3_contextP7_Z3_astP10_Z3_params:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.bc = load ptr, ptr %4, align 8, !tbaa !183   ; 3 uses
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN9cancel_ehI8reslimitED2Ev.exit
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !219, !nonnull !216, !align !217
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !191
  %i.bg = add i32 %i.bf, -1                       ; 2 uses
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !191
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.af, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bd, ptr noundef nonnull %i.bc)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #22
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN9cancel_ehI8reslimitED2Ev.exit, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @_ZN11th_rewriterD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.ap

bb.ah:                                            ; preds = %bb.y, %bb.x
  %.432 = phi ptr [ %i.aq, %bb.y ], [ %.331, %bb.x ]
  %.4 = phi i32 [ %i.ar, %bb.y ], [ %.3, %bb.x ]
  call void @_ZN3api7context17set_interruptableD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #21
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.k
  %.533 = phi ptr [ %.432, %bb.ah ], [ %i.x, %bb.k ]
  %.5 = phi i32 [ %.4, %bb.ah ], [ %i.y, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN9cancel_ehI8reslimitED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @_ZN11th_rewriterD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.j
  %.634 = phi ptr [ %.533, %bb.ai ], [ %i.u, %bb.j ]
  %.6 = phi i32 [ %.5, %bb.ai ], [ %i.v, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.ak

bb.ak:                                            ; preds = %bb.i, %bb.aj, %bb.h
  %.1038 = phi ptr [ %i.r, %bb.i ], [ %.634, %bb.aj ], [ %i.o, %bb.h ] ; 2 uses
  %.10 = phi i32 [ %i.s, %bb.i ], [ %.6, %bb.aj ], [ %i.p, %bb.h ] ; 2 uses
  %i.bk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #21
  %i.bl = icmp eq i32 %.10, %i.bk
  br i1 %i.bl, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.bm = call ptr @__cxa_begin_catch(ptr %.1038) #21
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bm)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @__cxa_end_catch()
  br label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.bo = extractvalue { ptr, i32 } %i.bn, 1
  %i.bp = extractvalue { ptr, i32 } %i.bn, 0
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %.242 = phi ptr [ %.141, %_ZN7obj_refI4expr11ast_managerED2Ev.exit ], [ null, %bb.am ]
  ret ptr %.242

bb.aq:                                            ; preds = %bb.ao, %bb.ak
  %.1139 = phi ptr [ %i.bp, %bb.ao ], [ %.1038, %bb.ak ]
  %.11 = phi i32 [ %i.bo, %bb.ao ], [ %.10, %bb.ak ]
  %i.bq = insertvalue { ptr, i32 } poison, ptr %.1139, 0
  %i.br = insertvalue { ptr, i32 } %i.bq, i32 %.11, 1
  resume { ptr, i32 } %i.br

bb.ar:                                            ; preds = %bb.an, %bb.q
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #22
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_simplify_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z18log_Z3_simplify_exP11_Z3_contextP7_Z3_astP10_Z3_params(ptr noundef %0, ptr noundef %1, ptr noundef %2)
          to label %bb.c unwind label %.thread

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = invoke fastcc noundef ptr @_ZL8simplifyP11_Z3_contextP7_Z3_astP10_Z3_params(ptr noundef %0, ptr noundef %1, ptr noundef %2)
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %bb.c
  br i1 %i.b, label %bb.e, label %_ZN10z3_log_ctxD2Ev.exit11, !prof !166

bb.e:                                             ; preds = %bb.d
  invoke void @_Z4SetRPKv(ptr noundef %i.c)
          to label %bb.h unwind label %.thread

.thread:                                          ; preds = %bb.b, %bb.e
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.b, label %bb.g, label %_ZN10z3_log_ctxD2Ev.exit, !prof !165

bb.g:                                             ; preds = %.thread, %bb.f
  %lpad.phi17 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.f ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.f, %bb.g
  %lpad.phi16 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.f ], [ %lpad.phi17, %bb.g ]
  resume { ptr, i32 } %lpad.phi16

bb.h:                                             ; preds = %bb.e
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit11

_ZN10z3_log_ctxD2Ev.exit11:                       ; preds = %bb.d, %bb.h
  ret ptr %i.c
}

declare void @_Z18log_Z3_simplify_exP11_Z3_contextP7_Z3_astP10_Z3_params(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_simplify_get_help(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %2 = alloca %class.param_descrs, align 8        ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z24log_Z3_simplify_get_helpP11_Z3_context(ptr noundef %0)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.428 = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.s

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZN12param_descrsC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11th_rewriter16get_param_descrsER12param_descrs(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNK12param_descrs7displayERSojbb(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !223, !noalias !489 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %bb.g
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %5 = load ptr, ptr %i.h, align 8, !tbaa !224, !noalias !489 ; 2 uses
  %6 = icmp ugt ptr %i.g, %5
  %.08.i.i.i = select i1 %6, ptr %i.g, ptr %5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !225, !noalias !489
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 %i.m, ptr %i.n, align 8, !tbaa !178, !noalias !489
  %i.o = load ptr, ptr %4, align 8, !tbaa !179, !noalias !489
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !167, !noalias !489
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !180, !alias.scope !489
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !179, !noalias !489 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 7 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.w = load i64, ptr %i.v, align 8, !tbaa !178, !noalias !489 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.s, ptr %3, align 8, !tbaa !179, !alias.scope !489
  %i.z = load i64, ptr %i.t, align 8, !tbaa !167, !noalias !489
  store i64 %i.z, ptr %i.r, align 8, !tbaa !167, !alias.scope !489
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !178, !noalias !489
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.h
  %i.aa = phi i64 [ %i.w, %bb.h ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !178, !alias.scope !489
  store ptr %i.t, ptr %i.q, align 8, !tbaa !179, !noalias !489
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ab, i8 0, i64 9, i1 false), !noalias !489
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull %i.t, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.ae = load ptr, ptr %3, align 8, !tbaa !179, !alias.scope !489 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.r
  br i1 %i.af, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ag = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.j unwind label %bb.o       ; 2 uses

bb.j:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ah = load ptr, ptr %3, align 8, !tbaa !179   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.r
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.aj = load i64, ptr %i.r, align 8, !tbaa !167
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZN12param_descrsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.al = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.al, ptr %1, align 8, !tbaa !203
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.an = getelementptr i8, ptr %i.al, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %1, i64 %i.ao
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !203
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.e, align 8, !tbaa !203
  %i.aq = load ptr, ptr %i.q, align 8, !tbaa !179 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.t
  br i1 %i.ar, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = load i64, ptr %i.t, align 8, !tbaa !167
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #24
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.e, align 8, !tbaa !203
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.au) #21
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.av) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %i.b, label %bb.k, label %_ZN10z3_log_ctxD2Ev.exit, !prof !166

bb.k:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.l:                                             ; preds = %bb.c
  %i.aw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.r

bb.m:                                             ; preds = %bb.d
  %i.ax = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.q

bb.n:                                             ; preds = %bb.f, %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.p

bb.o:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !179   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.r
  br i1 %i.bb, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.o, %bb.i
  %.sink = phi ptr [ %i.ae, %bb.i ], [ %i.ba, %bb.o ]
  %.pn.ph = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.az, %bb.o ]
  %i.bc = load i64, ptr %i.r, align 8, !tbaa !167
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bd) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.o, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.az, %bb.o ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ay, %bb.n ]
  call void @_ZN12param_descrsD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #21
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.p ], [ %i.ax, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1) #21
  br label %bb.r

bb.r:                                             ; preds = %bb.l, %bb.q
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.q ], [ %i.aw, %bb.l ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %.4 = extractvalue { ptr, i32 } %.pn.pn.pn.pn, 1 ; 2 uses
  br i1 %i.b, label %bb.s, label %_ZN10z3_log_ctxD2Ev.exit24, !prof !165

bb.s:                                             ; preds = %.thread, %bb.r
  %.432 = phi i32 [ %.428, %.thread ], [ %.4, %bb.r ]
  %.pn.pn.pn.pn.pn30 = phi { ptr, i32 } [ %i.c, %.thread ], [ %.pn.pn.pn.pn, %bb.r ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit24

_ZN10z3_log_ctxD2Ev.exit24:                       ; preds = %bb.r, %bb.s
  %.431 = phi i32 [ %.4, %bb.r ], [ %.432, %bb.s ]
  %.pn.pn.pn.pn.pn29 = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.r ], [ %.pn.pn.pn.pn.pn30, %bb.s ] ; 2 uses
  %i.be = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #21
  %i.bf = icmp eq i32 %.431, %i.be
  br i1 %i.bf, label %bb.t, label %bb.w

bb.t:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit24
  %.413 = extractvalue { ptr, i32 } %.pn.pn.pn.pn.pn29, 0
  %i.bg = call ptr @__cxa_begin_catch(ptr %.413) #21
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.k, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.u
  %.015 = phi ptr [ @.str.5, %bb.u ], [ %i.ag, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.ag, %bb.k ]
  ret ptr %.015

bb.w:                                             ; preds = %bb.v, %_ZN10z3_log_ctxD2Ev.exit24
  %.merged = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn29, %_ZN10z3_log_ctxD2Ev.exit24 ], [ %i.bh, %bb.v ]
  resume { ptr, i32 } %.merged

bb.x:                                             ; preds = %bb.v
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #22
  unreachable
}

declare void @_Z24log_Z3_simplify_get_helpP11_Z3_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare void @_ZN12param_descrsC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2
end_hunk_1
begin_hunk_2_@Z3_substitute_vars:bb.a

bb.t:                                             ; preds = %bb.s
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.w

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.o, %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %bb.t
  %.028 = phi ptr [ null, %bb.t ], [ %i.i, %_ZN7obj_refI4expr11ast_managerED2Ev.exit ], [ %i.i, %bb.o ]
  ret ptr %.028

bb.v:                                             ; preds = %bb.u, %_ZN10z3_log_ctxD2Ev.exit34
  %.merged = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn40, %_ZN10z3_log_ctxD2Ev.exit34 ], [ %i.z, %bb.u ]
  resume { ptr, i32 } %.merged

bb.w:                                             ; preds = %bb.u
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #22
  unreachable
}

declare void @_Z22log_Z3_substitute_varsP11_Z3_contextP7_Z3_astjPKS2_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN9var_substclEP4exprjPKS1_(ptr dead_on_unwind writable sret(%class.obj_ref.83) align 8, ptr noundef nonnull align 8 dereferenceable(545), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_ast_to_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 23 uses
  %3 = alloca %class.params_ref, align 8          ; 9 uses
  %4 = alloca %struct.mk_pp, align 8              ; 7 uses
  %5 = alloca %struct.mk_ismt2_pp, align 8        ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z20log_Z3_ast_to_stringP11_Z3_contextP7_Z3_ast(ptr noundef %0, ptr noundef %1)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.643 = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.af

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.f = load i32, ptr %i.e, align 8, !tbaa !511
  switch i32 %i.f, label %bb.w [
    i32 0, label %bb.f
    i32 1, label %bb.o
    i32 2, label %bb.q
  ]

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.ae

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !512
  invoke void @_ZN10params_ref8set_uintEPKcj(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.12, i32 noundef -1)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN10params_ref8set_uintEPKcj(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.13, i32 noundef -1)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !168
  invoke void @_ZN11mk_ismt2_ppC2EP3astR11ast_managerRK10params_refjjPKc(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(952) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0, i32 noundef 0, ptr noundef null)
          to label %_ZN5mk_ppC2EP3astR11ast_managerRK10params_refjjPKc.exit unwind label %bb.k

_ZN5mk_ppC2EP3astR11ast_managerRK10params_refjjPKc.exit: ; preds = %bb.h
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.i unwind label %bb.l       ; 0 uses

bb.i:                                             ; preds = %_ZN5mk_ppC2EP3astR11ast_managerRK10params_refjjPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZlsRSoRK8mk_ll_pp.exit

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.m

bb.l:                                             ; preds = %_ZN5mk_ppC2EP3astR11ast_managerRK10params_refjjPKc.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn27 = phi { ptr, i32 } [ %i.n, %bb.l ], [ %i.m, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %bb.m ], [ %i.l, %bb.j ]
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.ad

bb.o:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !168
  invoke void @_Z9ast_ll_ppRSoR11ast_managerP3astbb(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(952) %i.q, ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %_ZlsRSoRK8mk_ll_pp.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.w, %bb.x, %bb.o
  %i.r = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.ad

bb.q:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !168
  invoke void @_ZN11mk_ismt2_ppC1EP3astR11ast_managerjjPKc(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(952) %i.t, i32 noundef 0, i32 noundef 0, ptr noundef null)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.s unwind label %bb.u       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZlsRSoRK8mk_ll_pp.exit

bb.t:                                             ; preds = %bb.q
  %i.w = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.x = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #21
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.x, %bb.u ], [ %i.w, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ad

bb.w:                                             ; preds = %bb.d
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.10, i32 noundef 1049, ptr noundef nonnull @.str.11)
          to label %bb.x unwind label %bb.p

bb.x:                                             ; preds = %bb.w
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %_ZlsRSoRK8mk_ll_pp.exit unwind label %bb.p

_ZlsRSoRK8mk_ll_pp.exit:                          ; preds = %bb.o, %bb.x, %bb.s, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !513)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !223, !noalias !515 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZlsRSoRK8mk_ll_pp.exit
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  %8 = load ptr, ptr %i.ac, align 8, !tbaa !224, !noalias !515 ; 2 uses
  %9 = icmp ugt ptr %i.ab, %8
  %.08.i.i.i = select i1 %9, ptr %i.ab, ptr %8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !225, !noalias !515
  %i.af = ptrtoint ptr %.08.i.i.i to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !178, !noalias !515
  %i.aj = load ptr, ptr %7, align 8, !tbaa !179, !noalias !515
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !167, !noalias !515
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZlsRSoRK8mk_ll_pp.exit
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.am, ptr %6, align 8, !tbaa !180, !alias.scope !515
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !179, !noalias !515 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.y:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !178, !noalias !515 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.an, ptr %6, align 8, !tbaa !179, !alias.scope !515
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !167, !noalias !515
  store i64 %i.au, ptr %i.am, align 8, !tbaa !167, !alias.scope !515
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !178, !noalias !515
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.y
  %i.av = phi i64 [ %i.ar, %bb.y ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !178, !alias.scope !515
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !179, !noalias !515
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.aw, i8 0, i64 9, i1 false), !noalias !515
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.z, ptr noundef nonnull %i.ao, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.az = load ptr, ptr %6, align 8, !tbaa !179, !alias.scope !515 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.am
  br i1 %i.ba, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bb = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.aa unwind label %bb.ac     ; 2 uses

bb.aa:                                            ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bc = load ptr, ptr %6, align 8, !tbaa !179   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.am
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aa
  %i.be = load i64, ptr %i.am, align 8, !tbaa !167
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.bg = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bg, ptr %2, align 8, !tbaa !203
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bi = getelementptr i8, ptr %i.bg, i64 -24
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds i8, ptr %2, i64 %i.bj
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !203
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.z, align 8, !tbaa !203
  %i.bl = load ptr, ptr %i.al, align 8, !tbaa !179 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ao
  br i1 %i.bm, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bn = load i64, ptr %i.ao, align 8, !tbaa !167
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #24
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.z, align 8, !tbaa !203
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bp) #21
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bq) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %i.b, label %bb.ab, label %_ZN10z3_log_ctxD2Ev.exit, !prof !166

bb.ab:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.ac:                                            ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.bs = load ptr, ptr %6, align 8, !tbaa !179   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.am
  br i1 %i.bt, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ac, %bb.z
  %.sink = phi ptr [ %i.az, %bb.z ], [ %i.bs, %bb.ac ]
  %.pn30.ph = phi { ptr, i32 } [ %i.ay, %bb.z ], [ %i.br, %bb.ac ]
  %i.bu = load i64, ptr %i.am, align 8, !tbaa !167
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bv) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ac, %bb.z
  %.pn30 = phi { ptr, i32 } [ %i.ay, %bb.z ], [ %i.br, %bb.ac ], [ %.pn30.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ad

bb.ad:                                            ; preds = %.body, %bb.v, %bb.p, %bb.n
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %.body ], [ %.pn, %bb.v ], [ %.pn27.pn, %bb.n ], [ %i.r, %bb.p ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #21
  br label %bb.ae

bb.ae:                                            ; preds = %bb.e, %bb.ad
  %.pn30.pn.pn = phi { ptr, i32 } [ %.pn30.pn, %bb.ad ], [ %i.g, %bb.e ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %.6 = extractvalue { ptr, i32 } %.pn30.pn.pn, 1 ; 2 uses
  br i1 %i.b, label %bb.af, label %_ZN10z3_log_ctxD2Ev.exit38, !prof !165

bb.af:                                            ; preds = %.thread, %bb.ae
  %.647 = phi i32 [ %.643, %.thread ], [ %.6, %bb.ae ]
  %.pn30.pn.pn.pn45 = phi { ptr, i32 } [ %i.c, %.thread ], [ %.pn30.pn.pn, %bb.ae ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit38

_ZN10z3_log_ctxD2Ev.exit38:                       ; preds = %bb.ae, %bb.af
  %.646 = phi i32 [ %.6, %bb.ae ], [ %.647, %bb.af ]
  %.pn30.pn.pn.pn44 = phi { ptr, i32 } [ %.pn30.pn.pn, %bb.ae ], [ %.pn30.pn.pn.pn45, %bb.af ] ; 2 uses
  %i.bw = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #21
  %i.bx = icmp eq i32 %.646, %i.bw
  br i1 %i.bx, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %_ZN10z3_log_ctxD2Ev.exit38
  %.623 = extractvalue { ptr, i32 } %.pn30.pn.pn.pn44, 0
  %i.by = call ptr @__cxa_begin_catch(ptr %.623) #21
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.by)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.ai:                                            ; preds = %bb.ag
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.aj unwind label %bb.ak

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.ab, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.ah
  %.025 = phi ptr [ null, %bb.ah ], [ %i.bb, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.bb, %bb.ab ]
  ret ptr %.025

bb.aj:                                            ; preds = %bb.ai, %_ZN10z3_log_ctxD2Ev.exit38
  %.merged = phi { ptr, i32 } [ %.pn30.pn.pn.pn44, %_ZN10z3_log_ctxD2Ev.exit38 ], [ %i.bz, %bb.ai ]
  resume { ptr, i32 } %.merged

bb.ak:                                            ; preds = %bb.ai
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #22
  unreachable
}

declare void @_Z20log_Z3_ast_to_stringP11_Z3_contextP7_Z3_ast(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN10params_ref8set_uintEPKcj(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

declare void @_ZN11mk_ismt2_ppC1EP3astR11ast_managerjjPKc(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_sort_to_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Z3_ast_to_string(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_func_decl_to_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Z3_ast_to_string(ptr noundef %0, ptr noundef %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_benchmark_to_smtlib_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %9 = alloca %class.ast_smt_pp, align 8          ; 15 uses
  %10 = alloca %class.symbol, align 8             ; 5 uses
  %11 = alloca %struct.pp_params, align 8         ; 6 uses
end_hunk_2
begin_hunk_3_@Z3_benchmark_to_smtlib_string:bb.a
  br i1 %.not.i47, label %_ZN10ast_smt_pp10set_statusEPKc.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge73
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6symbolaSEPKc(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %3)
          to label %_ZN10ast_smt_pp10set_statusEPKc.exit unwind label %bb.r ; 0 uses

_ZN10ast_smt_pp10set_statusEPKc.exit:             ; preds = %._crit_edge73, %bb.h
  %.not.i49 = icmp eq ptr %4, null
  br i1 %.not.i49, label %_ZN10ast_smt_pp14add_attributesEPKc.exit, label %bb.i

bb.i:                                             ; preds = %_ZN10ast_smt_pp10set_statusEPKc.exit
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #21 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !178  ; 5 uses
  %i.p = sub i64 9223372036854775807, %i.o
  %i.q = icmp ult i64 %i.p, %i.m
  br i1 %i.q, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #23
          to label %.noexc50 unwind label %bb.r

.noexc50:                                         ; preds = %bb.j
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.i
  %i.r = add i64 %i.o, %i.m                       ; 3 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !179  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.v = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.v)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.w = load i64, ptr %i.t, align 8, !tbaa !167
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.x = phi i64 [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.r, %i.x
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.o ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.m, 1
  br i1 %cond.i.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.z = load i8, ptr %4, align 1, !tbaa !167
  store i8 %i.z, ptr %i.y, align 1, !tbaa !167
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr nonnull align 1 %4, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef %i.o, i64 noundef 0, ptr noundef nonnull %4, i64 noundef %i.m)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  store i64 %i.r, ptr %i.n, align 8, !tbaa !178
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !179
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.r
  store i8 0, ptr %i.ab, align 1, !tbaa !167
  br label %_ZN10ast_smt_pp14add_attributesEPKc.exit

_ZN10ast_smt_pp14add_attributesEPKc.exit:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i, %_ZN10ast_smt_pp10set_statusEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  store ptr @_ZN10params_ref18g_empty_params_refE, ptr %11, align 8, !tbaa !522
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  invoke void @_ZN7gparams10get_moduleEPKc(ptr dead_on_unwind nonnull writable sret(%class.params_ref) align 8 %i.ac, ptr noundef nonnull @.str.22)
          to label %_ZN9pp_paramsC2ERK10params_ref.exit unwind label %bb.t

_ZN9pp_paramsC2ERK10params_ref.exit:              ; preds = %_ZN10ast_smt_pp14add_attributesEPKc.exit
  %i.ad = load ptr, ptr %11, align 8, !tbaa !524, !nonnull !216, !align !217
  %i.ae = invoke noundef zeroext i1 @_ZNK10params_ref8get_boolEPKcRKS_b(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.23, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i1 noundef zeroext true)
          to label %_ZNK9pp_params16simplify_impliesEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK9pp_params16simplify_impliesEv.exit:          ; preds = %_ZN9pp_paramsC2ERK10params_ref.exit
  %i.af = zext i1 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 136
  store i8 %i.af, ptr %i.ag, align 8, !tbaa !528
  %.not70 = icmp eq i32 %5, 0
  br i1 %.not70, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK9pp_params16simplify_impliesEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %wide.trip.count = zext i32 %5 to i64
  br label %bb.u

._crit_edge:                                      ; preds = %bb.y, %_ZNK9pp_params16simplify_impliesEv.exit
  invoke void @_ZN10ast_smt_pp12display_smt2ERSoP4expr(ptr noundef nonnull align 8 dereferenceable(137) %9, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.ai

bb.q:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.ah

bb.r:                                             ; preds = %bb.o, %bb.j, %bb.h, %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.ag

bb.s:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.ag

bb.t:                                             ; preds = %_ZN10ast_smt_pp14add_attributesEPKc.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.af

bb.u:                                             ; preds = %.lr.ph, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.y ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !190 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !191
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !191
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %bb.v, %bb.u
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !185 ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !192 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 -8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !192
  %i.ay = icmp eq i32 %i.av, %i.ax
  br i1 %i.ay, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.x
  %.pre.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !185 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !192
  br label %bb.y

bb.y:                                             ; preds = %.noexc54, %bb.w
  %i.az = phi i32 [ %.pre2.i.i.i, %.noexc54 ], [ %i.av, %bb.w ] ; 2 uses
  %i.ba = phi ptr [ %.pre.i.i.i, %.noexc54 ], [ %i.as, %bb.w ] ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -4
  %i.bc = zext i32 %i.az to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bc
  store ptr %i.ao, ptr %i.bd, align 8, !tbaa !193
  %i.be = add i32 %i.az, 1
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !192
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.u, !llvm.loop !516

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %_ZN9pp_paramsC2ERK10params_ref.exit, %._crit_edge
  %lpad.loopexit.split-lp96 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %.loopexit.split-lp

bb.z:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !529)
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !530)
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !223, !noalias !531 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %bb.z
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 32
  %14 = load ptr, ptr %i.bi, align 8, !tbaa !224, !noalias !531 ; 2 uses
  %15 = icmp ugt ptr %i.bh, %14
  %.08.i.i.i = select i1 %15, ptr %i.bh, ptr %14
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !225, !noalias !531
  %i.bl = ptrtoint ptr %.08.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !178, !noalias !531
  %i.bp = load ptr, ptr %13, align 8, !tbaa !179, !noalias !531
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bn
  store i8 0, ptr %i.bq, align 1, !tbaa !167, !noalias !531
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %bb.z
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  store ptr %i.bs, ptr %12, align 8, !tbaa !180, !alias.scope !531
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !179, !noalias !531 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 7 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.aa:                                            ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !178, !noalias !531 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 16
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bs, ptr noundef nonnull align 8 dereferenceable(1) %i.bu, i64 %i.bz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.bt, ptr %12, align 8, !tbaa !179, !alias.scope !531
  %i.ca = load i64, ptr %i.bu, align 8, !tbaa !167, !noalias !531
  store i64 %i.ca, ptr %i.bs, align 8, !tbaa !167, !alias.scope !531
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %8, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !178, !noalias !531
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.aa
  %i.cb = phi i64 [ %i.bx, %bb.aa ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.cb, ptr %i.cd, align 8, !tbaa !178, !alias.scope !531
  store ptr %i.bu, ptr %i.br, align 8, !tbaa !179, !noalias !531
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cc, i8 0, i64 9, i1 false), !noalias !531
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.bf, ptr noundef nonnull %i.bu, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.cf = load ptr, ptr %12, align 8, !tbaa !179, !alias.scope !531 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.bs
  br i1 %i.cg, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ch = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.ac unwind label %bb.ae     ; 2 uses

bb.ac:                                            ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ci = load ptr, ptr %12, align 8, !tbaa !179  ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bs
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ac
  %i.ck = load i64, ptr %i.bs, align 8, !tbaa !167
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ac) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @_ZN10ast_smt_ppD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.cm = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.cm, ptr %8, align 8, !tbaa !203
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.co = getelementptr i8, ptr %i.cm, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %8, i64 %i.cp
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !203
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bf, align 8, !tbaa !203
  %i.cr = load ptr, ptr %i.br, align 8, !tbaa !179 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.bu
  br i1 %i.cs, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ct = load i64, ptr %i.bu, align 8, !tbaa !167
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #24
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i55
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bf, align 8, !tbaa !203
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cv) #21
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cw) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br i1 %i.b, label %bb.ad, label %_ZN10z3_log_ctxD2Ev.exit, !prof !166

bb.ad:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.ae:                                            ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.cy = load ptr, ptr %12, align 8, !tbaa !179  ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.bs
  br i1 %i.cz, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.ae, %bb.ab
  %.sink93 = phi ptr [ %i.cf, %bb.ab ], [ %i.cy, %bb.ae ]
  %.pn.ph = phi { ptr, i32 } [ %i.ce, %bb.ab ], [ %i.cx, %bb.ae ]
  %i.da = load i64, ptr %i.bs, align 8, !tbaa !167
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %.sink93, i64 noundef %i.db) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.ae, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.ab ], [ %i.cx, %bb.ae ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn40 = phi { ptr, i32 } [ %.pn, %.body ], [ %lpad.loopexit.split-lp96, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ac) #21
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp, %bb.t
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %.loopexit.split-lp ], [ %i.am, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.s, %bb.r
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %bb.af ], [ %i.ak, %bb.r ], [ %i.al, %bb.s ]
  call void @_ZN10ast_smt_ppD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %9) #21
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.q
  %.pn40.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn, %bb.ag ], [ %i.aj, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8) #21
  br label %bb.ai

bb.ai:                                            ; preds = %bb.p, %bb.ah
  %.pn40.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn40.pn.pn.pn, %bb.ah ], [ %i.ai, %bb.p ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %.6 = extractvalue { ptr, i32 } %.pn40.pn.pn.pn.pn, 1 ; 2 uses
  br i1 %i.b, label %bb.aj, label %_ZN10z3_log_ctxD2Ev.exit60, !prof !165

bb.aj:                                            ; preds = %.thread, %bb.ai
  %.668 = phi i32 [ %.664, %.thread ], [ %.6, %bb.ai ]
  %.pn40.pn.pn.pn.pn.pn66 = phi { ptr, i32 } [ %i.c, %.thread ], [ %.pn40.pn.pn.pn.pn, %bb.ai ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit60

_ZN10z3_log_ctxD2Ev.exit60:                       ; preds = %bb.ai, %bb.aj
  %.667 = phi i32 [ %.6, %bb.ai ], [ %.668, %bb.aj ]
  %.pn40.pn.pn.pn.pn.pn65 = phi { ptr, i32 } [ %.pn40.pn.pn.pn.pn, %bb.ai ], [ %.pn40.pn.pn.pn.pn.pn66, %bb.aj ] ; 2 uses
  %i.dc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #21
  %i.dd = icmp eq i32 %.667, %i.dc
  br i1 %i.dd, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %_ZN10z3_log_ctxD2Ev.exit60
  %.635 = extractvalue { ptr, i32 } %.pn40.pn.pn.pn.pn.pn65, 0
  %i.de = call ptr @__cxa_begin_catch(ptr %.635) #21
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.de)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.am:                                            ; preds = %bb.ak
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.an unwind label %bb.ao

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.ad, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.al
  %.037 = phi ptr [ @.str.5, %bb.al ], [ %i.ch, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.ch, %bb.ad ]
  ret ptr %.037

bb.an:                                            ; preds = %bb.am, %_ZN10z3_log_ctxD2Ev.exit60
  %.merged = phi { ptr, i32 } [ %.pn40.pn.pn.pn.pn.pn65, %_ZN10z3_log_ctxD2Ev.exit60 ], [ %i.df, %bb.am ]
  resume { ptr, i32 } %.merged

bb.ao:                                            ; preds = %bb.am
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  %i.dh = extractvalue { ptr, i32 } %i.dg, 0
  call void @__clang_call_terminate(ptr %i.dh) #22
  unreachable
}

declare void @_Z33log_Z3_benchmark_to_smtlib_stringP11_Z3_contextPKcS2_S2_S2_jPKP7_Z3_astS4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN10ast_smt_ppC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(137), ptr noundef nonnull align 8 dereferenceable(952)) unnamed_addr #2

declare void @_ZN10ast_smt_pp12display_smt2ERSoP4expr(ptr noundef nonnull align 8 dereferenceable(137), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10ast_smt_ppD2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !179  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
end_hunk_3
