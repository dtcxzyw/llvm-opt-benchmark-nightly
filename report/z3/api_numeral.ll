Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/api_numeral?download=true
inline.NumInlined: 622
inline.NumDeleted: 188
begin_hunk_0_@Z3_get_numeral_rational:bb.a
  store ptr %i.ay, ptr %i.ac, align 8, !tbaa !205
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 4             ; 2 uses
  %i.bc = and i8 %i.ag, 2
  %i.bd = and i8 %i.bb, -4
  %i.be = or disjoint i8 %i.bd, %i.bc
  %i.bf = and i8 %i.ag, -4
  store i8 %i.be, ptr %i.ba, align 4
  %i.bg = and i8 %i.bb, 3
  %i.bh = or disjoint i8 %i.bg, %i.bf
  store i8 %i.bh, ptr %i.z, align 4
  %i.bi = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !195 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.q

.noexc.i:                                         ; preds = %bb.p
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.y)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %.noexc.i, %bb.p
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #14
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.t

bb.r:                                             ; preds = %bb.k
  %i.bl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.u

bb.s:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpqm.exit.i, %bb.o
  %i.bm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.u

bb.t:                                             ; preds = %bb.l, %_ZN8rationalD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.s ], [ %i.bl, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.w

bb.v:                                             ; preds = %bb.i, %bb.t
  %.126 = phi i1 [ %i.s, %bb.t ], [ true, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.ab

bb.w:                                             ; preds = %bb.u, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.q, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.x

bb.x:                                             ; preds = %bb.g, %bb.w, %bb.d
  %.pn33 = phi { ptr, i32 } [ %i.k, %bb.d ], [ %.pn.pn, %bb.w ], [ %i.n, %bb.g ] ; 3 uses
  %.3 = extractvalue { ptr, i32 } %.pn33, 1
  %i.bn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #13
  %i.bo = icmp eq i32 %.3, %i.bn
  br i1 %i.bo, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %.323 = extractvalue { ptr, i32 } %.pn33, 0
  %i.bp = call ptr @__cxa_begin_catch(ptr %.323) #13
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @__cxa_end_catch()
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ac unwind label %bb.ad

bb.ab:                                            ; preds = %bb.v, %bb.f, %bb.c, %bb.z
  %.328 = phi i1 [ false, %bb.c ], [ false, %bb.z ], [ %.126, %bb.v ], [ true, %bb.f ]
  ret i1 %.328

bb.ac:                                            ; preds = %bb.aa, %bb.x
  %.merged = phi { ptr, i32 } [ %.pn33, %bb.x ], [ %i.bq, %bb.aa ]
  resume { ptr, i32 } %.merged

bb.ad:                                            ; preds = %bb.aa
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #14
  unreachable
}

declare noundef zeroext i1 @_ZNK14bv_recognizers10is_numeralEPK4exprR8rationalRj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK7datalog12dl_decl_util10is_numeralEPK4exprRm(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_get_numeral_binary_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.rational, align 8            ; 15 uses
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_Z32log_Z3_get_numeral_binary_stringP11_Z3_contextP7_Z3_ast(ptr noundef %0, ptr noundef %1)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.ab

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !171
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 65535
  %i.i = add nsw i32 %i.h, -5
  %i.j = icmp ult i32 %i.i, -2
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codePKc(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 3, ptr noundef nonnull @.str)
          to label %bb.z unwind label %bb.c

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store i32 0, ptr %2, align 8, !tbaa !192
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, -4
  store i8 %i.m, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !193
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i32 1, ptr %i.o, align 8, !tbaa !192
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  %i.q = load i8, ptr %i.p, align 4
  %i.r = and i8 %i.q, -4
  store i8 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.s, align 8, !tbaa !193
  %i.t = invoke zeroext i1 @Z3_get_numeral_rational(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  br i1 %i.t, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.p, align 4
  %i.v = trunc i8 %i.u to i1
  %i.w = load i32, ptr %i.o, align 8
  %i.x = icmp ne i32 %i.w, 1
  %.not44 = select i1 %i.v, i1 true, i1 %i.x
  %i.y = load i32, ptr %2, align 8
  %i.z = icmp slt i32 %i.y, 0
  %or.cond = select i1 %.not44, i1 true, i1 %i.z
  br i1 %or.cond, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.aa = invoke noundef i32 @_ZNK8rational12get_num_bitsEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ac = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !195
  invoke void @_ZNK11mpz_managerILb1EE11display_binERSoRK3mpzj(ptr noundef nonnull align 8 dereferenceable(600) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %i.aa)
          to label %_ZlsRSoRKN8rational14as_bin_wrapperE.exit unwind label %bb.r

_ZlsRSoRKN8rational14as_bin_wrapperE.exit:        ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !209, !noalias !227 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZlsRSoRKN8rational14as_bin_wrapperE.exit
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 48
  %6 = load ptr, ptr %i.ag, align 8, !tbaa !210, !noalias !227 ; 2 uses
  %7 = icmp ugt ptr %i.af, %6
  %.08.i.i.i = select i1 %7, ptr %i.af, ptr %6
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !211, !noalias !227
  %i.aj = ptrtoint ptr %.08.i.i.i to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i64 %i.al, ptr %i.am, align 8, !tbaa !212, !noalias !227
  %i.an = load ptr, ptr %5, align 8, !tbaa !213, !noalias !227
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.al
  store i8 0, ptr %i.ao, align 1, !tbaa !173, !noalias !227
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZlsRSoRKN8rational14as_bin_wrapperE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.aq, ptr %4, align 8, !tbaa !214, !alias.scope !227
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !213, !noalias !227 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 7 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.m:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.av = load i64, ptr %i.au, align 8, !tbaa !212, !noalias !227 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.ar, ptr %4, align 8, !tbaa !213, !alias.scope !227
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !173, !noalias !227
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !173, !alias.scope !227
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !212, !noalias !227
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.m
  %i.az = phi i64 [ %i.av, %bb.m ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !212, !alias.scope !227
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !213, !noalias !227
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ba, i8 0, i64 9, i1 false), !noalias !227
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.ad, ptr noundef nonnull %i.as, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.bd = load ptr, ptr %4, align 8, !tbaa !213, !alias.scope !227 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.aq
  br i1 %i.be, label %.body, label %.body.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bf = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bg = load ptr, ptr %4, align 8, !tbaa !213   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.aq
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.bi = load i64, ptr %i.aq, align 8, !tbaa !173
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.bk = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bk, ptr %3, align 8, !tbaa !216
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bm = getelementptr i8, ptr %i.bk, i64 -24
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds i8, ptr %3, i64 %i.bn
  store ptr %i.bl, ptr %i.bo, align 8, !tbaa !216
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bp, ptr %i.ab, align 8, !tbaa !216
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ad, align 8, !tbaa !216
  %i.bq = load ptr, ptr %i.ap, align 8, !tbaa !213 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.as
  br i1 %i.br, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bs = load i64, ptr %i.as, align 8, !tbaa !173
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #15
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ad, align 8, !tbaa !216
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bu) #13
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bv, ptr %3, align 8, !tbaa !216
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bx = getelementptr i8, ptr %i.bv, i64 -24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds i8, ptr %3, i64 %i.by
  store ptr %i.bw, ptr %i.bz, align 8, !tbaa !216
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ca, align 8, !tbaa !229
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cb) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.w

bb.p:                                             ; preds = %bb.v, %bb.g
  %i.cc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.y

bb.q:                                             ; preds = %bb.j
  %i.cd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.u

bb.r:                                             ; preds = %bb.l, %bb.k
  %i.ce = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.t

bb.s:                                             ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.cg = load ptr, ptr %4, align 8, !tbaa !213   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.aq
  br i1 %i.ch, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.s, %bb.n
  %.sink = phi ptr [ %i.bd, %bb.n ], [ %i.cg, %bb.s ]
  %.pn.ph = phi { ptr, i32 } [ %i.bc, %bb.n ], [ %i.cf, %bb.s ]
  %i.ci = load i64, ptr %i.aq, align 8, !tbaa !173
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cj) #15
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.s, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.n ], [ %i.cf, %bb.s ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.t

bb.t:                                             ; preds = %.body, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ce, %bb.r ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.t ], [ %i.cd, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.y

bb.v:                                             ; preds = %bb.i, %bb.h
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codePKc(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 3, ptr noundef null)
          to label %bb.w unwind label %bb.p

bb.w:                                             ; preds = %bb.v, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.0 = phi ptr [ %i.bf, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ @.str.1, %bb.v ]
  %i.ck = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !195 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc.i unwind label %bb.x

.noexc.i:                                         ; preds = %bb.w
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %.noexc.i, %bb.w
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #14
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.z

bb.y:                                             ; preds = %bb.u, %bb.p
  %.pn30 = phi { ptr, i32 } [ %i.cc, %bb.p ], [ %.pn.pn.pn, %bb.u ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.ab

bb.z:                                             ; preds = %bb.f, %_ZN8rationalD2Ev.exit
  %.1 = phi ptr [ %.0, %_ZN8rationalD2Ev.exit ], [ @.str.1, %bb.f ] ; 2 uses
  br i1 %i.b, label %bb.aa, label %_ZN10z3_log_ctxD2Ev.exit, !prof !172

bb.aa:                                            ; preds = %bb.z
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.ab:                                            ; preds = %bb.y, %bb.c
  %.pn32 = phi { ptr, i32 } [ %i.c, %bb.c ], [ %.pn30, %bb.y ] ; 3 uses
  %.424 = extractvalue { ptr, i32 } %.pn32, 1
  br i1 %i.b, label %bb.ac, label %_ZN10z3_log_ctxD2Ev.exit37, !prof !172

bb.ac:                                            ; preds = %bb.ab
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit37

_ZN10z3_log_ctxD2Ev.exit37:                       ; preds = %bb.ab, %bb.ac
  %i.cn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #13
  %i.co = icmp eq i32 %.424, %i.cn
  br i1 %i.co, label %bb.ad, label %bb.ag

end_hunk_0
begin_hunk_1_@Z3_get_numeral_double:bb.a

bb.o:                                             ; preds = %bb.n, %bb.l, %bb.p
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.t

bb.p:                                             ; preds = %bb.m
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codePKc(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 3, ptr noundef null)
          to label %_ZNK8rational10get_doubleEv.exit unwind label %bb.o

_ZNK8rational10get_doubleEv.exit:                 ; preds = %bb.n, %bb.p
  %.021 = phi double [ 0.000000e+00, %bb.p ], [ %i.am, %bb.n ]
  %i.ao = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !195 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc.i unwind label %bb.q

.noexc.i:                                         ; preds = %_ZNK8rational10get_doubleEv.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.ae)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %.noexc.i, %_ZNK8rational10get_doubleEv.exit
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #14
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.k, %bb.h, %_ZN8rationalD2Ev.exit
  %.122 = phi double [ %.021, %_ZN8rationalD2Ev.exit ], [ +qnan, %bb.h ], [ %i.z, %bb.k ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !180, !nonnull !181, !align !182
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 728
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !191, !nonnull !181, !align !182
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %_ZN15_scoped_numeralI11mpf_managerED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #14
  unreachable

_ZN15_scoped_numeralI11mpf_managerED2Ev.exit:     ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.v

bb.t:                                             ; preds = %bb.o, %bb.j
  %.pn = phi { ptr, i32 } [ %i.w, %bb.j ], [ %i.an, %bb.o ]
  call void @_ZN15_scoped_numeralI11mpf_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.v, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.x

bb.v:                                             ; preds = %bb.e, %_ZN15_scoped_numeralI11mpf_managerED2Ev.exit
  %.223 = phi double [ %.122, %_ZN15_scoped_numeralI11mpf_managerED2Ev.exit ], [ +qnan, %bb.e ]
  br i1 %i.c, label %bb.w, label %_ZN10z3_log_ctxD2Ev.exit, !prof !172

bb.w:                                             ; preds = %bb.v
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.v, %bb.w
  ret double %.223

bb.x:                                             ; preds = %bb.u, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.u ], [ %i.d, %bb.c ]
  br i1 %i.c, label %bb.y, label %_ZN10z3_log_ctxD2Ev.exit27, !prof !172

bb.y:                                             ; preds = %bb.x
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit27

_ZN10z3_log_ctxD2Ev.exit27:                       ; preds = %bb.x, %bb.y
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_Z25log_Z3_get_numeral_doubleP11_Z3_contextP7_Z3_ast(ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef double @_ZN11mpf_manager9to_doubleERK3mpf(ptr noundef nonnull align 8 dereferenceable(840), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_get_numeral_decimal_string(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %3 = alloca %class.rational, align 8            ; 15 uses
  %4 = alloca %class.scoped_mpf, align 8          ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.d = trunc i8 %i.c to i1                      ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_Z33log_Z3_get_numeral_decimal_stringP11_Z3_contextP7_Z3_astj(ptr noundef %0, ptr noundef %1, i32 noundef %2)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.bm

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.f, align 8, !tbaa !171
  %i.g = icmp eq ptr %1, null
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 65535
  %i.k = add nsw i32 %i.j, -5
  %i.l = icmp ult i32 %i.k, -2
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codePKc(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 3, ptr noundef nonnull @.str)
          to label %bb.bk unwind label %bb.c

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store i32 0, ptr %3, align 8, !tbaa !192
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4
  %i.o = and i8 %i.n, -4
  store i8 %i.o, ptr %i.m, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !193
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i32 1, ptr %i.q, align 8, !tbaa !192
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.s = load i8, ptr %i.r, align 4
  %i.t = and i8 %i.s, -4
  store i8 %i.t, ptr %i.r, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.u, align 8, !tbaa !193
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !175
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.y, ptr %4, align 8, !tbaa !177
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  invoke void @_ZN3mpfC1Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_ZN10scoped_mpfC2ER11mpf_manager.exit unwind label %bb.o

_ZN10scoped_mpfC2ER11mpf_manager.exit:            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.aa = invoke noundef zeroext i1 @_ZNK10arith_util10is_numeralEPK4exprR8rationalRb(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.h unwind label %bb.ae

bb.h:                                             ; preds = %_ZN10scoped_mpfC2ER11mpf_manager.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %i.aa, label %bb.i, label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.ab = load i8, ptr %i.r, align 4
  %i.ac = and i8 %i.ab, 1
  %i.ad = icmp eq i8 %i.ac, 0
  %i.ae = load i32, ptr %i.q, align 8
  %i.af = icmp eq i32 %i.ae, 1
  %i.ag = select i1 %i.ad, i1 %i.af, i1 false
  br i1 %i.ag, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !195
  invoke void @_ZN11mpq_managerILb1EE15display_decimalERSoRK3mpqjb(ptr noundef nonnull align 8 dereferenceable(728) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %2, i1 noundef zeroext false)
          to label %_ZNK8rational15display_decimalERSojb.exit unwind label %bb.q

_ZNK8rational15display_decimalERSojb.exit:        ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !209, !noalias !251 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNK8rational15display_decimalERSojb.exit
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 32
  %13 = load ptr, ptr %i.al, align 8, !tbaa !210, !noalias !251 ; 2 uses
  %14 = icmp ugt ptr %i.ak, %13
  %.08.i.i.i = select i1 %14, ptr %i.ak, ptr %13
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !211, !noalias !251
  %i.ao = ptrtoint ptr %.08.i.i.i to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !212, !noalias !251
  %i.as = load ptr, ptr %12, align 8, !tbaa !213, !noalias !251
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !173, !noalias !251
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNK8rational15display_decimalERSojb.exit
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.av, ptr %6, align 8, !tbaa !214, !alias.scope !251
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !213, !noalias !251 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 7 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !212, !noalias !251 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.bc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.aw, ptr %6, align 8, !tbaa !213, !alias.scope !251
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !173, !noalias !251
  store i64 %i.bd, ptr %i.av, align 8, !tbaa !173, !alias.scope !251
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %5, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !212, !noalias !251
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.l
  %i.be = phi i64 [ %i.ba, %bb.l ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !212, !alias.scope !251
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !213, !noalias !251
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bf, i8 0, i64 9, i1 false), !noalias !251
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.ai, ptr noundef nonnull %i.ax, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.bi = load ptr, ptr %6, align 8, !tbaa !213, !alias.scope !251 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.av
  br i1 %i.bj, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bk = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bl = load ptr, ptr %6, align 8, !tbaa !213   ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.av
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.bn = load i64, ptr %i.av, align 8, !tbaa !173
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.bp = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bp, ptr %5, align 8, !tbaa !216
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.br = getelementptr i8, ptr %i.bp, i64 -24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds i8, ptr %5, i64 %i.bs
  store ptr %i.bq, ptr %i.bt, align 8, !tbaa !216
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ai, align 8, !tbaa !216
  %i.bu = load ptr, ptr %i.au, align 8, !tbaa !213 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.ax
  br i1 %i.bv, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bw = load i64, ptr %i.ax, align 8, !tbaa !173
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #15
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ai, align 8, !tbaa !216
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.by) #13
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bz) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.bf

bb.o:                                             ; preds = %bb.g
  %i.ca = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.bj

bb.p:                                             ; preds = %bb.j
  %i.cb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.t

bb.q:                                             ; preds = %bb.k
  %i.cc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.s

bb.r:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.ce = load ptr, ptr %6, align 8, !tbaa !213   ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.av
  br i1 %i.cf, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.r, %bb.m
  %.sink = phi ptr [ %i.bi, %bb.m ], [ %i.ce, %bb.r ]
  %.pn.ph = phi { ptr, i32 } [ %i.bh, %bb.m ], [ %i.cd, %bb.r ]
  %i.cg = load i64, ptr %i.av, align 8, !tbaa !173
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ch) #15
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.r, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.m ], [ %i.cd, %bb.r ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.s

bb.s:                                             ; preds = %.body, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.cc, %bb.q ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.s ], [ %i.cb, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.bi

bb.u:                                             ; preds = %bb.i, %bb.h
  %i.ci = invoke noundef zeroext i1 @_ZNK17arith_recognizers31is_irrational_algebraic_numeralEPK4expr(ptr noundef nonnull align 1 dereferenceable(1) %i.v, ptr noundef nonnull %1)
          to label %bb.v unwind label %bb.ae

bb.v:                                             ; preds = %bb.u
  br i1 %i.ci, label %bb.w, label %bb.ak

bb.w:                                             ; preds = %bb.v
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK10arith_util31to_irrational_algebraic_numeralEPK4expr(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull %1)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !252 ; 2 uses
  %.not.i.i84 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i84, label %bb.y, label %_ZNK10arith_util6pluginEv.exit.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN10arith_util11init_pluginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %bb.y
  %.pre.i.i85 = load ptr, ptr %i.ck, align 8, !tbaa !252
  br label %_ZNK10arith_util6pluginEv.exit.i

_ZNK10arith_util6pluginEv.exit.i:                 ; preds = %.noexc, %bb.x
  %i.cm = phi ptr [ %.pre.i.i85, %.noexc ], [ %i.cl, %bb.x ]
  %i.cn = invoke noundef nonnull align 8 dereferenceable(17) ptr @_ZNK17arith_decl_plugin2amEv(ptr noundef nonnull align 8 dereferenceable(457) %i.cm)
          to label %_ZNK10arith_util2amEv.exit unwind label %bb.ae

_ZNK10arith_util2amEv.exit:                       ; preds = %_ZNK10arith_util6pluginEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.z unwind label %bb.af

bb.z:                                             ; preds = %_ZNK10arith_util2amEv.exit
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK17algebraic_numbers7manager15display_decimalERSoRKNS_4anumEj(ptr noundef nonnull align 8 dereferenceable(17) %i.cn, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.cj, i32 noundef %2)
          to label %bb.aa unwind label %bb.ag     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !209, !noalias !255 ; 3 uses
  %.not.i4.not.i.i87 = icmp eq ptr %i.cr, null
  br i1 %.not.i4.not.i.i87, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i92, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i91

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i91: ; preds = %bb.aa
  %15 = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 32
  %16 = load ptr, ptr %i.cs, align 8, !tbaa !210, !noalias !255 ; 2 uses
  %17 = icmp ugt ptr %i.cr, %16
  %.08.i.i.i88 = select i1 %17, ptr %i.cr, ptr %16
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !211, !noalias !255
  %i.cv = ptrtoint ptr %.08.i.i.i88 to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 88
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !212, !noalias !255
  %i.cz = load ptr, ptr %15, align 8, !tbaa !213, !noalias !255
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store i8 0, ptr %i.da, align 1, !tbaa !173, !noalias !255
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i92

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i92: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i91, %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr %i.dc, ptr %8, align 8, !tbaa !214, !alias.scope !255
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !213, !noalias !255 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 7 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i93

bb.ab:                                            ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i92
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !212, !noalias !255 ; 3 uses
  %i.di = icmp ult i64 %i.dh, 16
  call void @llvm.assume(i1 %i.di)
  %i.dj = add nuw nsw i64 %i.dh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dc, ptr noundef nonnull align 8 dereferenceable(1) %i.de, i64 %i.dj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i93: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i92
  store ptr %i.dd, ptr %8, align 8, !tbaa !213, !alias.scope !255
  %i.dk = load i64, ptr %i.de, align 8, !tbaa !173, !noalias !255
  store i64 %i.dk, ptr %i.dc, align 8, !tbaa !173, !alias.scope !255
  %.phi.trans.insert.i.i94 = getelementptr inbounds nuw i8, ptr %7, i64 88
  %.pre.i.i95 = load i64, ptr %.phi.trans.insert.i.i94, align 8, !tbaa !212, !noalias !255
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i96: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i93, %bb.ab
  %i.dl = phi i64 [ %i.dh, %bb.ab ], [ %.pre.i.i95, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i93 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.dl, ptr %i.dn, align 8, !tbaa !212, !alias.scope !255
  store ptr %i.de, ptr %i.db, align 8, !tbaa !213, !noalias !255
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.dm, i8 0, i64 9, i1 false), !noalias !255
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.cp, ptr noundef nonnull %i.de, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit102 unwind label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i96
  %i.do = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.dp = load ptr, ptr %8, align 8, !tbaa !213, !alias.scope !255 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.dc
  br i1 %i.dq, label %.body100, label %.body100.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i96
  %i.dr = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ad unwind label %bb.ah

bb.ad:                                            ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit102
  %i.ds = load ptr, ptr %8, align 8, !tbaa !213   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.dc
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.ad
  %i.du = load i64, ptr %i.dc, align 8, !tbaa !173
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.dw = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.dw, ptr %7, align 8, !tbaa !216
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dy = getelementptr i8, ptr %i.dw, i64 -24
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds i8, ptr %7, i64 %i.dz
  store ptr %i.dx, ptr %i.ea, align 8, !tbaa !216
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cp, align 8, !tbaa !216
  %i.eb = load ptr, ptr %i.db, align 8, !tbaa !213 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.de
  br i1 %i.ec, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %i.ed = load i64, ptr %i.de, align 8, !tbaa !173
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #15
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit108

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i106
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cp, align 8, !tbaa !216
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ef) #13
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.eg) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.bf

bb.ae:                                            ; preds = %bb.am, %bb.ak, %_ZNK10arith_util6pluginEv.exit.i, %bb.y, %_ZN10scoped_mpfC2ER11mpf_manager.exit, %bb.w, %bb.be, %bb.ay, %bb.al, %bb.u
  %i.eh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.bi

bb.af:                                            ; preds = %_ZNK10arith_util2amEv.exit
  %i.ei = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.aj

bb.ag:                                            ; preds = %bb.z
  %i.ej = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.ai

bb.ah:                                            ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit102
  %i.ek = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.el = load ptr, ptr %8, align 8, !tbaa !213   ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.dc
  br i1 %i.em, label %.body100, label %.body100.sink.split

.body100.sink.split:                              ; preds = %bb.ah, %bb.ac
  %.sink190 = phi ptr [ %i.dp, %bb.ac ], [ %i.el, %bb.ah ]
  %.pn71.ph = phi { ptr, i32 } [ %i.do, %bb.ac ], [ %i.ek, %bb.ah ]
  %i.en = load i64, ptr %i.dc, align 8, !tbaa !173
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %.sink190, i64 noundef %i.eo) #15
  br label %.body100

.body100:                                         ; preds = %.body100.sink.split, %bb.ah, %bb.ac
  %.pn71 = phi { ptr, i32 } [ %i.do, %bb.ac ], [ %i.ek, %bb.ah ], [ %.pn71.ph, %.body100.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.ai

bb.ai:                                            ; preds = %.body100, %bb.ag
  %.pn71.pn = phi { ptr, i32 } [ %.pn71, %.body100 ], [ %i.ej, %bb.ag ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #13
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %.pn71.pn.pn = phi { ptr, i32 } [ %.pn71.pn, %bb.ai ], [ %i.ei, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.bi

bb.ak:                                            ; preds = %bb.v
  %i.ep = load ptr, ptr %i.w, align 8, !tbaa !175
  %i.eq = invoke noundef zeroext i1 @_ZN15fpa_decl_plugin13is_rm_numeralEP4exprR17mpf_rounding_mode(ptr noundef nonnull align 8 dereferenceable(1008) %i.ep, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN8fpa_util13is_rm_numeralEP4exprR17mpf_rounding_mode.exit unwind label %bb.ae

_ZN8fpa_util13is_rm_numeralEP4exprR17mpf_rounding_mode.exit: ; preds = %bb.ak
  br i1 %i.eq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN8fpa_util13is_rm_numeralEP4exprR17mpf_rounding_mode.exit
  %i.er = invoke ptr @Z3_get_numeral_string(ptr noundef nonnull %0, ptr noundef nonnull %1)
          to label %bb.bf unwind label %bb.ae

bb.am:                                            ; preds = %_ZN8fpa_util13is_rm_numeralEP4exprR17mpf_rounding_mode.exit
  %i.es = load ptr, ptr %i.w, align 8, !tbaa !175
  %i.et = invoke noundef zeroext i1 @_ZN15fpa_decl_plugin10is_numeralEP4exprR3mpf(ptr noundef nonnull align 8 dereferenceable(1008) %i.es, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_ZN8fpa_util10is_numeralEP4exprR3mpf.exit unwind label %bb.ae

_ZN8fpa_util10is_numeralEP4exprR3mpf.exit:        ; preds = %bb.am
  br i1 %i.et, label %bb.an, label %bb.ay

bb.an:                                            ; preds = %_ZN8fpa_util10is_numeralEP4exprR3mpf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %bb.an
  %i.eu = load ptr, ptr %i.w, align 8, !tbaa !175
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  invoke void @_ZN11mpf_manager15display_decimalERSoRK3mpfj(ptr noundef nonnull align 8 dereferenceable(840) %i.ev, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i32 noundef 12)
          to label %bb.ap unwind label %bb.au

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.ew = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !209, !noalias !258 ; 3 uses
  %.not.i4.not.i.i114 = icmp eq ptr %i.ey, null
  br i1 %.not.i4.not.i.i114, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i119, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i118

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i118: ; preds = %bb.ap
  %18 = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 32
  %19 = load ptr, ptr %i.ez, align 8, !tbaa !210, !noalias !258 ; 2 uses
  %20 = icmp ugt ptr %i.ey, %19
  %.08.i.i.i113 = select i1 %20, ptr %i.ey, ptr %19
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !211, !noalias !258
  %i.fc = ptrtoint ptr %.08.i.i.i113 to i64
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = sub i64 %i.fc, %i.fd                    ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 88
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !212, !noalias !258
  %i.fg = load ptr, ptr %18, align 8, !tbaa !213, !noalias !258
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fe
  store i8 0, ptr %i.fh, align 1, !tbaa !173, !noalias !258
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i119

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i119: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i118, %bb.ap
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  store ptr %i.fj, ptr %10, align 8, !tbaa !214, !alias.scope !258
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !213, !noalias !258 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 96 ; 7 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120

bb.aq:                                            ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i119
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !212, !noalias !258 ; 3 uses
  %i.fp = icmp ult i64 %i.fo, 16
  call void @llvm.assume(i1 %i.fp)
  %i.fq = add nuw nsw i64 %i.fo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fj, ptr noundef nonnull align 8 dereferenceable(1) %i.fl, i64 %i.fq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i119
  store ptr %i.fk, ptr %10, align 8, !tbaa !213, !alias.scope !258
  %i.fr = load i64, ptr %i.fl, align 8, !tbaa !173, !noalias !258
  store i64 %i.fr, ptr %i.fj, align 8, !tbaa !173, !alias.scope !258
  %.phi.trans.insert.i.i121 = getelementptr inbounds nuw i8, ptr %9, i64 88
  %.pre.i.i122 = load i64, ptr %.phi.trans.insert.i.i121, align 8, !tbaa !212, !noalias !258
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i123: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120, %bb.aq
  %i.fs = phi i64 [ %i.fo, %bb.aq ], [ %.pre.i.i122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.fu = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.fs, ptr %i.fu, align 8, !tbaa !212, !alias.scope !258
  store ptr %i.fl, ptr %i.fi, align 8, !tbaa !213, !noalias !258
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ft, i8 0, i64 9, i1 false), !noalias !258
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.ew, ptr noundef nonnull %i.fl, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit129 unwind label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i123
  %i.fv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.fw = load ptr, ptr %10, align 8, !tbaa !213, !alias.scope !258 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.fj
  br i1 %i.fx, label %.body127, label %.body127.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i123
  %i.fy = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.as unwind label %bb.av

bb.as:                                            ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit129
  %i.fz = load ptr, ptr %10, align 8, !tbaa !213  ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.fj
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.as
  %i.gb = load i64, ptr %i.fj, align 8, !tbaa !173
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  %i.gd = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.gd, ptr %9, align 8, !tbaa !216
  %i.ge = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.gf = getelementptr i8, ptr %i.gd, i64 -24
  %i.gg = load i64, ptr %i.gf, align 8
  %i.gh = getelementptr inbounds i8, ptr %9, i64 %i.gg
  store ptr %i.ge, ptr %i.gh, align 8, !tbaa !216
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ew, align 8, !tbaa !216
  %i.gi = load ptr, ptr %i.fi, align 8, !tbaa !213 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.fl
  br i1 %i.gj, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.gk = load i64, ptr %i.fl, align 8, !tbaa !173
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #15
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit135

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i133
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ew, align 8, !tbaa !216
  %i.gm = getelementptr inbounds nuw i8, ptr %9, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gm) #13
  %i.gn = getelementptr inbounds nuw i8, ptr %9, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.gn) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.bf

bb.at:                                            ; preds = %bb.an
  %i.go = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.ax

bb.au:                                            ; preds = %bb.ao
  %i.gp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.aw

bb.av:                                            ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit129
  %i.gq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.gr = load ptr, ptr %10, align 8, !tbaa !213  ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.fj
  br i1 %i.gs, label %.body127, label %.body127.sink.split

.body127.sink.split:                              ; preds = %bb.av, %bb.ar
  %.sink193 = phi ptr [ %i.fw, %bb.ar ], [ %i.gr, %bb.av ]
  %.pn67.ph = phi { ptr, i32 } [ %i.fv, %bb.ar ], [ %i.gq, %bb.av ]
  %i.gt = load i64, ptr %i.fj, align 8, !tbaa !173
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %.sink193, i64 noundef %i.gu) #15
  br label %.body127

.body127:                                         ; preds = %.body127.sink.split, %bb.av, %bb.ar
  %.pn67 = phi { ptr, i32 } [ %i.fv, %bb.ar ], [ %i.gq, %bb.av ], [ %.pn67.ph, %.body127.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.aw

bb.aw:                                            ; preds = %.body127, %bb.au
  %.pn67.pn = phi { ptr, i32 } [ %.pn67, %.body127 ], [ %i.gp, %bb.au ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #13
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.at
  %.pn67.pn.pn = phi { ptr, i32 } [ %.pn67.pn, %bb.aw ], [ %i.go, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %bb.bi

bb.ay:                                            ; preds = %_ZN8fpa_util10is_numeralEP4exprR3mpf.exit
  %i.gv = invoke zeroext i1 @Z3_get_numeral_rational(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.az unwind label %bb.ae

bb.az:                                            ; preds = %bb.ay
  br i1 %i.gv, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.gw = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !195, !noalias !259
  invoke void @_ZNK11mpq_managerILb1EE9to_stringB5cxx11ERK3mpq(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(728) %i.gw, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNK8rational9to_stringB5cxx11Ev.exit unwind label %bb.bc

_ZNK8rational9to_stringB5cxx11Ev.exit:            ; preds = %bb.ba
  %i.gx = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.bb unwind label %bb.bd

bb.bb:                                            ; preds = %_ZNK8rational9to_stringB5cxx11Ev.exit
  %i.gy = load ptr, ptr %11, align 8, !tbaa !213  ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %bb.bb
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !173
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hc) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  %i.hd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

bb.bd:                                            ; preds = %_ZNK8rational9to_stringB5cxx11Ev.exit
  %i.he = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.hf = load ptr, ptr %11, align 8, !tbaa !213  ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %bb.bd
  %i.hi = load i64, ptr %i.hg, align 8, !tbaa !173
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hj) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143, %bb.bc
  %.pn65 = phi { ptr, i32 } [ %i.hd, %bb.bc ], [ %i.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143 ], [ %i.he, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %bb.bi

bb.be:                                            ; preds = %bb.az
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codePKc(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 3, ptr noundef null)
          to label %bb.bf unwind label %bb.ae

bb.bf:                                            ; preds = %bb.be, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit135, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit108, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.058 = phi ptr [ %i.dr, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit108 ], [ %i.bk, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.fy, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit135 ], [ %i.gx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ], [ %i.er, %bb.al ], [ @.str.1, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.hk = load ptr, ptr %4, align 8, !tbaa !180, !nonnull !181, !align !182
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 728
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !191, !nonnull !181, !align !182
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 16
end_hunk_1
