Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3FuncOpt?download=true
inline.NumInlined: 1403
inline.NumDeleted: 554
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN17BalanceConcatTree7balanceEP11AstNodeExpr:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.h, i64 noundef %i.j)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.j ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.16, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %0)
          to label %bb.d unwind label %bb.j       ; 0 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45
  %i.n = load ptr, ptr %2, align 8, !tbaa !23     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !25
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !24   ; 2 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !23     ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 %i.t
  %i.w = getelementptr i8, ptr %i.v, i64 -1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !25
  %.not = icmp eq i8 %i.x, 10
  %i.y = load ptr, ptr %4, align 8, !tbaa !23     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i47: ; preds = %bb.f
  %i.ab = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.ab)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.f
  %i.ac = load i64, ptr %i.z, align 8, !tbaa !25
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ad) #22
  %.pre = load ptr, ptr %3, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  %i.ae = phi ptr [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i47 ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !25
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.not, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 10)
          to label %bb.m unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %bb.b, %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.j:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.j
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !25
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.i
  %.pn = phi { ptr, i32 } [ %i.al, %bb.i ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %i.am, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.q

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

bb.l:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.au = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.l
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !25
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %bb.k
  %.pn30 = phi { ptr, i32 } [ %i.as, %bb.k ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %i.at, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.q

bb.m:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = load ptr, ptr %5, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !24
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.az, i64 noundef %i.bb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit58 unwind label %bb.p ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit58: ; preds = %bb.n
  %i.bd = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit58
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !25
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

bb.p:                                             ; preds = %bb.n
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.p
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !25
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, %bb.o
  %.pn32 = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ %i.bj, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %bb.h
  %.pn32.pn = phi { ptr, i32 } [ %.pn32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ], [ %i.ak, %bb.h ], [ %.pn30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.bf

bb.r:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN17BalanceConcatTree11gatherTermsEP11AstNodeExpr(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.88") align 8 %6, ptr noundef %0)
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !131 ; 2 uses
  %i.br = load ptr, ptr %6, align 8, !tbaa !132   ; 3 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = icmp ult i64 %i.bu, 32
  br i1 %i.bv, label %.loopexit102, label %.lr.ph.a

bb.s:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.098.0104, i64 8 ; 2 uses
  %.not101 = icmp eq ptr %i.bw, %i.bq
  br i1 %.not101, label %.critedge, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %bb.r, %bb.s
  %.sroa.098.0104 = phi ptr [ %i.bw, %bb.s ], [ %i.br, %bb.r ] ; 2 uses
  %i.bx = load ptr, ptr %.sroa.098.0104, align 8, !tbaa !134 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !44
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 208
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = invoke noundef zeroext i1 %i.ca(ptr noundef nonnull align 8 dereferenceable(152) %i.bx)
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %.lr.ph.a
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.u:                                             ; preds = %.lr.ph.a
  br i1 %i.cb, label %bb.s, label %.loopexit102thread-pre-split

.critedge:                                        ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %11 = load ptr, ptr %i.bp, align 8, !tbaa !131
  %12 = load ptr, ptr %6, align 8, !tbaa !132
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %12 to i64
  %i.cd = sub i64 %13, %14
  %i.ce = ashr exact i64 %i.cd, 3
  %i.cf = add nsw i64 %i.ce, 1                    ; 4 uses
  %i.cg = icmp ugt i64 %i.cf, 576460752303423487
  br i1 %i.cg, label %bb.v, label %_ZNSt6vectorIN17BalanceConcatTree4TermESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.v:                                             ; preds = %.critedge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #24
          to label %.noexc unwind label %bb.z

.noexc:                                           ; preds = %bb.v
  unreachable

_ZNSt6vectorIN17BalanceConcatTree4TermESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %.critedge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp ne i64 %i.cf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ch = shl nuw nsw i64 %i.cf, 4                ; 3 uses
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #26
          to label %.noexc65 unwind label %bb.z   ; 7 uses

.noexc65:                                         ; preds = %_ZNSt6vectorIN17BalanceConcatTree4TermESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  store ptr %i.ci, ptr %7, align 8, !tbaa !137
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.cf
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ci, i8 0, i64 %i.ch, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ci, i64 %i.ch ; 2 uses
  %.pre111.a = load ptr, ptr %i.bp, align 8, !tbaa !131 ; 2 uses
  %.pre112 = load ptr, ptr %6, align 8, !tbaa !132 ; 2 uses
  %.pre123.a = ptrtoint ptr %.pre111.a to i64
  %.pre125.a = ptrtoint ptr %.pre112 to i64
  %.pre127.a = sub i64 %.pre123.a, %.pre125.a
  %.pre129 = ashr exact i64 %.pre127.a, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !138
  store ptr %scevgep.i.i.i.i.i, ptr %i.ck, align 8, !tbaa !139
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 0, ptr %i.cm, align 8, !tbaa !141
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %.pre129
  store ptr null, ptr %i.cn, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8, !tbaa !99
  %.not108 = icmp eq ptr %.pre111.a, %.pre112
  br i1 %.not108, label %._crit_edge, label %.lr.ph105

.lr.ph105:                                        ; preds = %.noexc65
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.aa

._crit_edge.loopexit:                             ; preds = %_ZNK7AstNode5widthEv.exit
  %.pre113.a = load ptr, ptr %i.ck, align 8, !tbaa !139
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc65
  %i.cp = phi ptr [ %i.dn, %._crit_edge.loopexit ], [ %i.ci, %.noexc65 ] ; 3 uses
  %i.cq = phi ptr [ %.pre113.a, %._crit_edge.loopexit ], [ %scevgep.i.i.i.i.i, %.noexc65 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = sub i64 %i.cr, %i.cs                    ; 3 uses
  %i.cu = icmp ugt i64 %i.ct, 9223372036854775792
  br i1 %i.cu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
          to label %.noexc67 unwind label %bb.af

.noexc67:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %._crit_edge
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %.not171 = icmp eq ptr %i.cq, %i.cp
  br i1 %.not171, label %_ZNSt6vectorIN17BalanceConcatTree4TermESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN17BalanceConcatTree4TermESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN17BalanceConcatTree4TermESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.cx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ct) #26
          to label %.noexc68 unwind label %bb.af  ; 4 uses

.noexc68:                                         ; preds = %_ZNSt12_Vector_baseIN17BalanceConcatTree4TermESaIS1_EE11_M_allocateEm.exit.i
  %i.cy = load ptr, ptr %9, align 8, !tbaa !137   ; 5 uses
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !139 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.cy, %i.cz
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN17BalanceConcatTree4TermESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc68, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i ], [ %i.cx, %.noexc68 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i ], [ %i.cy, %.noexc68 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !143, !alias.scope !243
  %i.da = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i66 = icmp eq ptr %i.da, %i.cz
  br i1 %.not.i.i.i.i66, label %_ZNSt6vectorIN17BalanceConcatTree4TermESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN17BalanceConcatTree4TermESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc68
  %.not.i8.i = icmp eq ptr %i.cy, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN17BalanceConcatTree4TermESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN17BalanceConcatTree4TermESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.dc = load ptr, ptr %i.cv, align 8, !tbaa !138
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.cy to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.df) #22
  br label %_ZNSt12_Vector_baseIN17BalanceConcatTree4TermESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN17BalanceConcatTree4TermESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.y, %_ZNSt6vectorIN17BalanceConcatTree4TermESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.cx, ptr %9, align 8, !tbaa !137
  store ptr %i.cx, ptr %i.cw, align 8, !tbaa !139
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.ct
  store ptr %i.dg, ptr %i.cv, align 8, !tbaa !138
  %.pre114.a = load ptr, ptr %i.ck, align 8, !tbaa !139 ; 2 uses
  %.pre115.a = load ptr, ptr %7, align 8, !tbaa !137 ; 2 uses
  %.pre131 = ptrtoint ptr %.pre114.a to i64
  %.pre133 = ptrtoint ptr %.pre115.a to i64
  %.pre135 = sub i64 %.pre131, %.pre133
  %i.dh = ashr exact i64 %.pre135, 4
  %i.di = add nsw i64 %i.dh, -3
  %i.dj = icmp ult i64 %i.di, -2
  br label %_ZNSt6vectorIN17BalanceConcatTree4TermESaIS1_EE7reserveEm.exit

bb.z:                                             ; preds = %_ZNSt6vectorIN17BalanceConcatTree4TermESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %bb.v
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN17BalanceConcatTree4TermESaIS1_EED2Ev.exit88

bb.aa:                                            ; preds = %.lr.ph105, %_ZNK7AstNode5widthEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %6, ptr %8, align 8, !tbaa !244
  store ptr %i.a, ptr %i.co, align 8, !tbaa !245
  %i.dl = invoke noundef ptr @_ZZN17BalanceConcatTree7balanceEP11AstNodeExprENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ab unwind label %bb.ad     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !99
  %i.dn = load ptr, ptr %7, align 8, !tbaa !137   ; 2 uses
  %i.do = getelementptr [16 x i8], ptr %i.dn, i64 %i.dm ; 3 uses
  store ptr %i.dl, ptr %i.do, align 8, !tbaa !142
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !141
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 72
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !146 ; 2 uses
  %.not.i = icmp eq ptr %i.ds, null
  br i1 %.not.i, label %_ZNK7AstNode5widthEv.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 152
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !150
  %i.dv = sext i32 %i.du to i64
  br label %_ZNK7AstNode5widthEv.exit

_ZNK7AstNode5widthEv.exit:                        ; preds = %bb.ac, %bb.ab
  %i.dw = phi i64 [ %i.dv, %bb.ac ], [ 0, %bb.ab ]
  %i.dx = add i64 %i.dw, %i.dq
  %i.dy = getelementptr i8, ptr %i.do, i64 24
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !141
  %i.dz = load i64, ptr %i.a, align 8, !tbaa !99
  %i.ea = add i64 %i.dz, 1                        ; 2 uses
  store i64 %i.ea, ptr %i.a, align 8, !tbaa !99
  %i.eb = load ptr, ptr %i.bp, align 8, !tbaa !131
  %i.ec = load ptr, ptr %6, align 8, !tbaa !132
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 3
  %i.eh = icmp ult i64 %i.ea, %i.eg
  br i1 %i.eh, label %bb.aa, label %._crit_edge.loopexit, !llvm.loop !238

bb.ad:                                            ; preds = %bb.aa
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ba

_ZNSt6vectorIN17BalanceConcatTree4TermESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN17BalanceConcatTree4TermESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.x
  %.pre-phi136 = phi i1 [ %i.dj, %_ZNSt12_Vector_baseIN17BalanceConcatTree4TermESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ true, %bb.x ]
  %i.ej = phi ptr [ %.pre115.a, %_ZNSt12_Vector_baseIN17BalanceConcatTree4TermESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.cp, %bb.x ]
  %i.ek = phi ptr [ %.pre114.a, %_ZNSt12_Vector_baseIN17BalanceConcatTree4TermESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.cq, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i64 0, ptr %i.d, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %7, ptr %10, align 8, !tbaa !246
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.b, ptr %i.el, align 8, !tbaa !245
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.em, align 8, !tbaa !245
  %i.en = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %9, ptr %i.en, align 8, !tbaa !246
  %i.eo = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.d, ptr %i.eo, align 8, !tbaa !245
  store i64 1, ptr %i.c, align 8, !tbaa !99
  br i1 %.pre-phi136, label %.lr.ph106, label %._crit_edge107

end_hunk_0
