Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sat_solver?download=true
inline.NumInlined: 5241
inline.NumDeleted: 1638
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 101
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_ZN3sat6solver20bounded_local_searchEv:bb.a
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.hi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %"_Z6any_ofIN3sat6clauseEZNS0_6solver20bounded_local_searchEvE3$_0EbRKT_RKT0_.exit" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aj, %bb.ai, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %.loopexit, %.noexc, %bb.u, %bb.m, %bb.ad, %bb.y, %_ZNK6vectorIN3sat7literalELb0EjE4sizeEv.exit, %bb.x, %bb.w, %bb.v, %bb.l, %bb.k, %bb.j, %bb.i
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3sat6solver9scoped_lsD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.ao

"_Z6any_ofIN3sat6clauseEZNS0_6solver20bounded_local_searchEvE3$_0EbRKT_RKT0_.exit": ; preds = %bb.ah, %bb.aj
  %i.hj = getelementptr inbounds nuw i8, ptr %.062, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.hj, %i.gr
  br i1 %.not, label %.loopexit57, label %.lr.ph63

.loopexit57:                                      ; preds = %"_Z6any_ofIN3sat6clauseEZNS0_6solver20bounded_local_searchEvE3$_0EbRKT_RKT0_.exit", %bb.af, %_ZNK6vectorIbLb0EjE4sizeEv.exit.thread, %_ZN6vectorIPN3sat6clauseELb0EjE3endEv.exit, %bb.ae, %_ZNK6vectorIbLb0EjE4sizeEv.exit
  %i.hk = load ptr, ptr %i.ah, align 8, !tbaa !446 ; 4 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %.lr.ph.i.i, label %bb.ak

bb.ak:                                            ; preds = %.loopexit57
  %i.hm = load ptr, ptr %i.hk, align 8, !tbaa !87
  %i.hn = load ptr, ptr %i.hm, align 8
  tail call void %i.hn(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hk) #36, !inline_history !27
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hk)
          to label %.lr.ph.i.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  tail call void @__clang_call_terminate(ptr %i.hp) #38
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.ak, %.loopexit57
  store ptr null, ptr %i.ah, align 8, !tbaa !446
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  invoke void @_ZN8reslimit9pop_childEv(ptr noundef nonnull align 8 dereferenceable(40) %i.aa)
          to label %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit unwind label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i
  %i.hq = landingpad { ptr, i32 }
          catch ptr null
  %i.hr = extractvalue { ptr, i32 } %i.hq, 0
  tail call void @__clang_call_terminate(ptr %i.hr) #38
  unreachable

_ZN6vectorIN3sat7literalELb0EjED2Ev.exit:         ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %bb.an

bb.an:                                            ; preds = %bb.e, %bb.f, %_ZN6vectorIN3sat7literalELb0EjED2Ev.exit
  ret void

bb.ao:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aa
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp88, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ft, %bb.aa ]
  call void @_ZN13scoped_limitsD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %2) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @_ZN6vectorIN3sat7literalELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %.pn30.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sat6solver9log_statsEv(ptr noundef nonnull align 8 dereferenceable(4264) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %2 = alloca %"struct.sat::mk_stat", align 8     ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %class.svector.40, align 8          ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 24 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4140 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !496
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !496
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.42, i64 noundef 11)
          to label %bb.b unwind label %bb.j       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !87
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 6, ptr %i.j, align 8, !tbaa !510
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.l = load i32, ptr %i.k, align 8, !tbaa !354
  %i.m = zext i32 %i.l to i64
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.m)
          to label %_ZNSolsEj.exit unwind label %bb.j ; 4 uses

_ZNSolsEj.exit:                                   ; preds = %bb.b
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %bb.c unwind label %bb.j       ; 0 uses

bb.c:                                             ; preds = %_ZNSolsEj.exit
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !87
  %i.q = getelementptr i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 6, ptr %i.t, align 8, !tbaa !510
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.v = load i32, ptr %i.u, align 8, !tbaa !511
  %i.w = zext i32 %i.v to i64
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef %i.w)
          to label %_ZNSolsEj.exit101 unwind label %bb.j ; 4 uses

_ZNSolsEj.exit101:                                ; preds = %bb.c
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %bb.d unwind label %bb.j       ; 0 uses

bb.d:                                             ; preds = %_ZNSolsEj.exit101
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !87
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 4, ptr %i.ad, align 8, !tbaa !510
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !512
  %i.ag = zext i32 %i.af to i64
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i64 noundef %i.ag)
          to label %_ZNSolsEj.exit103 unwind label %bb.j ; 6 uses

_ZNSolsEj.exit103:                                ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %0, ptr %2, align 8, !tbaa !365
  invoke void @_ZNK3sat7mk_stat7displayERSo(ptr noundef nonnull readonly align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %_ZN3satlsERSoRKNS_7mk_statE.exit unwind label %bb.k

_ZN3satlsERSoRKNS_7mk_statE.exit:                 ; preds = %_ZNSolsEj.exit103
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %bb.e unwind label %bb.k       ; 0 uses

bb.e:                                             ; preds = %_ZN3satlsERSoRKNS_7mk_statE.exit
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !87
  %i.ak = getelementptr i8, ptr %i.aj, i64 -24    ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 6, ptr %i.an, align 8, !tbaa !510
  %i.ao = load i64, ptr %i.ak, align 8
  %i.ap = getelementptr inbounds i8, ptr %i.ah, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 2, ptr %i.aq, align 8, !tbaa !513
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3896 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !498, !range !315, !noundef !316
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZN9stopwatch4stopEv.exit.i.i, label %bb.f

_ZN9stopwatch4stopEv.exit.i.i:                    ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3880 ; 2 uses
  %i.av = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #36
  %.sroa.0.0.copyload.i2.i.i.i.i = load i64, ptr %i.au, align 8, !tbaa !299
  %i.aw = sub i64 %i.av, %.sroa.0.0.copyload.i2.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 3888 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !514
  %i.az = add nsw i64 %i.aw, %i.ay
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !514
  store i8 0, ptr %i.ar, align 8, !tbaa !498
  %i.ba = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #36
  store i64 %i.ba, ptr %i.au, align 8, !tbaa !299
  store i8 1, ptr %i.ar, align 8, !tbaa !498
  br label %bb.f

bb.f:                                             ; preds = %_ZN9stopwatch4stopEv.exit.i.i, %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 3888
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !514
  %i.bd = sdiv i64 %i.bc, 1000000
  %i.be = sitofp i64 %i.bd to double
  %i.bf = fdiv double %i.be, 1.000000e+03
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, double noundef %i.bf)
          to label %_ZNSolsEd.exit unwind label %bb.k

_ZNSolsEd.exit:                                   ; preds = %bb.f
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105: ; preds = %_ZNSolsEd.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !790, !noalias !791 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %12 = load ptr, ptr %i.bl, align 8, !tbaa !792, !noalias !791 ; 2 uses
  %13 = icmp ugt ptr %i.bk, %12
  %.08.i.i.i = select i1 %13, ptr %i.bk, ptr %12
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !793, !noalias !791
  %i.bo = ptrtoint ptr %.08.i.i.i to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !261, !noalias !791
  %i.bs = load ptr, ptr %11, align 8, !tbaa !288, !noalias !791
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bt, align 1, !tbaa !262, !noalias !791
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit105
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.bv, ptr %3, align 8, !tbaa !260, !alias.scope !791
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !288, !noalias !791 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 7 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !261, !noalias !791 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 16
  call void @llvm.assume(i1 %i.cb)
  %i.cc = add nuw nsw i64 %i.ca, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bv, ptr noundef nonnull align 8 dereferenceable(1) %i.bx, i64 %i.cc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.bw, ptr %3, align 8, !tbaa !288, !alias.scope !791
  %i.cd = load i64, ptr %i.bx, align 8, !tbaa !262, !noalias !791
  store i64 %i.cd, ptr %i.bv, align 8, !tbaa !262, !alias.scope !791
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !261, !noalias !791
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.ce = phi i64 [ %i.ca, %bb.g ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  store i64 %i.ce, ptr %i.cg, align 8, !tbaa !261, !alias.scope !791
  store ptr %i.bx, ptr %i.bu, align 8, !tbaa !288, !noalias !791
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.cf, i8 0, i64 9, i1 false), !noalias !791
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.bi, ptr noundef nonnull %i.bx, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %3, align 8, !tbaa !288, !alias.scope !791 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.bv
  br i1 %i.cj, label %.body, label %.body.sink.split

_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store ptr null, ptr %4, align 8, !tbaa !269
  %i.ck = load i64, ptr %i.cg, align 8, !tbaa !261 ; 2 uses
  %.not292 = icmp eq i64 %i.ck, 0
  br i1 %.not292, label %._crit_edge, label %.preheader247.preheader

.preheader247.preheader:                          ; preds = %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %.pre324 = load ptr, ptr %3, align 8, !tbaa !288 ; 3 uses
  br label %.preheader247

.preheader247:                                    ; preds = %.preheader247.preheader, %.critedge2
  %i.cl = phi i64 [ %i.ea, %.critedge2 ], [ %i.ck, %.preheader247.preheader ] ; 8 uses
  %.pre325 = phi ptr [ %.pre326, %.critedge2 ], [ %.pre324, %.preheader247.preheader ] ; 4 uses
  %i.cm = phi ptr [ %i.eb, %.critedge2 ], [ null, %.preheader247.preheader ] ; 7 uses
  %i.cn = phi ptr [ %i.ec, %.critedge2 ], [ %.pre324, %.preheader247.preheader ] ; 5 uses
  %i.co = phi ptr [ %i.ed, %.critedge2 ], [ %.pre324, %.preheader247.preheader ] ; 3 uses
  %storemerge264 = phi i64 [ %i.ee, %.critedge2 ], [ 0, %.preheader247.preheader ] ; 2 uses
  %i.cp = add nuw i64 %storemerge264, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.cl, i64 %i.cp)
  br label %bb.l

._crit_edge:                                      ; preds = %.critedge2, %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cq = phi ptr [ null, %_ZNOSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ], [ %i.eb, %.critedge2 ] ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 4128 ; 4 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !269 ; 6 uses
  %i.ct = icmp eq ptr %i.cs, null                 ; 2 uses
  br i1 %i.ct, label %_ZNK6vectorImLb0EjE4sizeEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 -4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !250
  %i.cw = freeze i32 %i.cv
  br label %_ZNK6vectorImLb0EjE4sizeEv.exit

_ZNK6vectorImLb0EjE4sizeEv.exit:                  ; preds = %._crit_edge, %bb.i
  %.0.i = phi i32 [ %i.cw, %bb.i ], [ 0, %._crit_edge ] ; 2 uses
  %i.cx = icmp eq ptr %i.cq, null
  br i1 %i.cx, label %_ZNK6vectorImLb0EjE4sizeEv.exit107.thread, label %_ZNK6vectorImLb0EjE4sizeEv.exit109.lr.ph

_ZNK6vectorImLb0EjE4sizeEv.exit107.thread:        ; preds = %_ZNK6vectorImLb0EjE4sizeEv.exit
  %i.cy = icmp eq i32 %.0.i, 0
  br label %.critedge231

_ZNK6vectorImLb0EjE4sizeEv.exit109.lr.ph:         ; preds = %_ZNK6vectorImLb0EjE4sizeEv.exit
  %i.cz = getelementptr inbounds i8, ptr %i.cq, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !250
  %.fr408 = freeze i32 %i.da                      ; 5 uses
  %i.db = icmp eq i32 %.0.i, %.fr408
  br i1 %i.db, label %_ZNK6vectorImLb0EjE4sizeEv.exit109.lr.ph.split.split, label %.critedge231

_ZNK6vectorImLb0EjE4sizeEv.exit109.lr.ph.split.split: ; preds = %_ZNK6vectorImLb0EjE4sizeEv.exit109.lr.ph
  %.not293 = icmp eq i32 %.fr408, 0
  br i1 %.not293, label %.critedge231, label %_ZNK6vectorImLb0EjE4sizeEv.exit109.preheader

_ZNK6vectorImLb0EjE4sizeEv.exit109.preheader:     ; preds = %_ZNK6vectorImLb0EjE4sizeEv.exit109.lr.ph.split.split
  %wide.trip.count = zext i32 %.fr408 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.dc = icmp eq i32 %.fr408, 1
  br i1 %i.dc, label %_ZNK6vectorImLb0EjE4sizeEv.exit109.epil.preheader, label %_ZNK6vectorImLb0EjE4sizeEv.exit109.preheader.new

_ZNK6vectorImLb0EjE4sizeEv.exit109.preheader.new: ; preds = %_ZNK6vectorImLb0EjE4sizeEv.exit109.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %_ZNK6vectorImLb0EjE4sizeEv.exit109

bb.j:                                             ; preds = %bb.d, %_ZNSolsEj.exit101, %bb.c, %_ZNSolsEj.exit, %bb.b, %bb.a
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.k:                                             ; preds = %_ZNSolsEd.exit, %bb.f, %_ZN3satlsERSoRKNS_7mk_statE.exit, %_ZNSolsEj.exit103
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.bq

bb.l:                                             ; preds = %.preheader247, %bb.m
  %.0229262 = phi i64 [ %storemerge264, %.preheader247 ], [ %i.dh, %bb.m ] ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.co, i64 %.0229262
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !262
  %.not95 = icmp eq i8 %i.dg, 32
  br i1 %.not95, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dh = add nuw i64 %.0229262, 1                ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.cl
  br i1 %i.di, label %bb.l, label %.critedge2, !llvm.loop !762

.critedge:                                        ; preds = %bb.l
  %i.dj = icmp ult i64 %.0229262, %i.cl
  br i1 %i.dj, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.critedge, %bb.n
  %.1230263 = phi i64 [ %i.dn, %bb.n ], [ %.0229262, %.critedge ] ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.1230263
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !262
  %i.dm = icmp eq i8 %i.dl, 32
  br i1 %i.dm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.dn = add i64 %.1230263, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dn, %i.cl
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph, !llvm.loop !763

bb.o:                                             ; preds = %.lr.ph
  %i.do = icmp eq ptr %i.cm, null
  br i1 %i.do, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dp = getelementptr inbounds i8, ptr %i.cm, i64 -4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !250 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.cm, i64 -8
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !250
  %i.dt = icmp eq i32 %i.dq, %i.ds
  br i1 %i.dt, label %bb.q, label %_ZN6vectorImLb0EjE9push_backERKm.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  invoke void @_ZN6vectorImLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc unwind label %.loopexit.split-lp249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.q
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !269 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !250
  %.pre.pre = load ptr, ptr %3, align 8, !tbaa !288
  br label %_ZN6vectorImLb0EjE9push_backERKm.exit

_ZN6vectorImLb0EjE9push_backERKm.exit:            ; preds = %bb.p, %.noexc
  %.pre = phi ptr [ %.pre.pre, %.noexc ], [ %.pre325, %bb.p ] ; 3 uses
  %i.du = phi ptr [ %.pre.i, %.noexc ], [ %i.cm, %bb.p ] ; 3 uses
  %i.dv = phi i32 [ %.pre2.i, %.noexc ], [ %i.dq, %bb.p ] ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %i.du, i64 -4
  %i.dx = zext i32 %i.dv to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dx
  store i64 %.1230263, ptr %i.dy, align 8, !tbaa !299
  %i.dz = add i32 %i.dv, 1
  store i32 %i.dz, ptr %i.dw, align 4, !tbaa !250
  %.pre328 = load i64, ptr %i.cg, align 8, !tbaa !261
  br label %.critedge2

.critedge2:                                       ; preds = %bb.m, %bb.n, %.critedge, %_ZN6vectorImLb0EjE9push_backERKm.exit
  %i.ea = phi i64 [ %.pre328, %_ZN6vectorImLb0EjE9push_backERKm.exit ], [ %i.cl, %.critedge ], [ %i.cl, %bb.n ], [ %i.cl, %bb.m ] ; 2 uses
  %.pre326 = phi ptr [ %.pre, %_ZN6vectorImLb0EjE9push_backERKm.exit ], [ %.pre325, %.critedge ], [ %.pre325, %bb.n ], [ %.pre325, %bb.m ]
  %i.eb = phi ptr [ %i.du, %_ZN6vectorImLb0EjE9push_backERKm.exit ], [ %i.cm, %.critedge ], [ %i.cm, %bb.n ], [ %i.cm, %bb.m ] ; 2 uses
  %i.ec = phi ptr [ %.pre, %_ZN6vectorImLb0EjE9push_backERKm.exit ], [ %i.cn, %.critedge ], [ %i.cn, %bb.n ], [ %i.cn, %bb.m ]
  %i.ed = phi ptr [ %.pre, %_ZN6vectorImLb0EjE9push_backERKm.exit ], [ %i.co, %.critedge ], [ %i.cn, %bb.n ], [ %i.co, %bb.m ]
  %.1230261 = phi i64 [ %.1230263, %_ZN6vectorImLb0EjE9push_backERKm.exit ], [ %.0229262, %.critedge ], [ %i.cl, %bb.n ], [ %umax, %bb.m ]
  %i.ee = add i64 %.1230261, 1                    ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %i.ea
  br i1 %i.ef, label %.preheader247, label %._crit_edge, !llvm.loop !764

.critedge231.thread.unr-lcssa:                    ; preds = %_ZNK6vectorImLb0EjE4sizeEv.exit109
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge231.thread, label %_ZNK6vectorImLb0EjE4sizeEv.exit109.epil.preheader

_ZNK6vectorImLb0EjE4sizeEv.exit109.epil.preheader: ; preds = %.critedge231.thread.unr-lcssa, %_ZNK6vectorImLb0EjE4sizeEv.exit109.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZNK6vectorImLb0EjE4sizeEv.exit109.preheader ], [ %indvars.iv.next.1, %.critedge231.thread.unr-lcssa ] ; 2 uses
  %.055265273.epil.init = phi i64 [ 0, %_ZNK6vectorImLb0EjE4sizeEv.exit109.preheader ], [ %.257.1, %.critedge231.thread.unr-lcssa ]
end_hunk_0
