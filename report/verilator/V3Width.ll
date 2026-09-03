Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Width?download=true
inline.NumInlined: 18720
inline.NumDeleted: 2434
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN12WidthVisitor19processFTaskRefArgsEP15AstNodeFTaskRef:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !55   ; 2 uses
  %i.t = load ptr, ptr %6, align 8, !tbaa !54     ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !32
  %.not = icmp eq i8 %i.w, 10
  %i.x = load ptr, ptr %7, align 8, !tbaa !54     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i268, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i268: ; preds = %bb.f
  %i.aa = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.aa)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %bb.f
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !32
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ac) #27
  %.pre = load ptr, ptr %6, align 8, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i268, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267
  %i.ad = phi ptr [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i268 ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !32
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %.not, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext 10)
          to label %bb.m unwind label %bb.h       ; 0 uses

bb.h:                                             ; preds = %bb.b, %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

bb.j:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit266
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %5, align 8, !tbaa !54    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %bb.j
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !32
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.i ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273 ], [ %i.al, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.q

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278

bb.l:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.at = load ptr, ptr %6, align 8, !tbaa !54    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276: ; preds = %bb.l
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !32
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276, %bb.k
  %.pn197 = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276 ], [ %i.as, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.q

bb.m:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = load ptr, ptr %8, align 8, !tbaa !54
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !55
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ay, i64 noundef %i.ba)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit279 unwind label %bb.p ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit279: ; preds = %bb.n
  %i.bc = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit279
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !32
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit279, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

bb.p:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %8, align 8, !tbaa !54    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %bb.p
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !32
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283, %bb.o
  %.pn199 = phi { ptr, i32 } [ %i.bh, %bb.o ], [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283 ], [ %i.bi, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, %bb.h
  %.pn199.pn = phi { ptr, i32 } [ %.pn199, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285 ], [ %i.aj, %bb.h ], [ %.pn197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 7 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !402 ; 3 uses
  %.not202 = icmp eq ptr %i.bp, null
  br i1 %.not202, label %bb.s, label %bb.t, !prof !51

bb.s:                                             ; preds = %bb.r
  %i.bq = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.5, i32 noundef 7381) ; 0 uses
  %i.br = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.810)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.bs) #26
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.bu = load i8, ptr %i.bt, align 2
  %i.bv = trunc i8 %i.bu to i1
  br i1 %i.bv, label %bb.hx, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 16 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !58 ; 2 uses
  store ptr null, ptr %i.bw, align 8, !tbaa !126
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !34
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 312
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr noundef nonnull align 8 dereferenceable(152) %i.bp, ptr noundef nonnull align 8 dereferenceable(632) %0)
          to label %_ZN12WidthVisitor11userIterateEP7AstNodeP7WidthVP.exit unwind label %bb.v, !inline_history !2

common.resume:                                    ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i395.a, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit479, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit496, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit629, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.cb, %bb.v ], [ %i.ui, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit479 ], [ %i.wz, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit496 ], [ %.pn254.pn.pn, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit629 ], [ %.pn231.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i395.a ], [ %.pn199.pn, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.v:                                             ; preds = %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !58
  br label %common.resume

_ZN12WidthVisitor11userIterateEP7AstNodeP7WidthVP.exit: ; preds = %bb.u
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !58
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 8
  %magicptr.i = ptrtoint ptr %1 to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.de = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.df = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.dg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.dh = getelementptr i8, ptr %i.df, i64 -24
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 112
  %i.dm = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 8 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.du = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit475, %_ZN12WidthVisitor11userIterateEP7AstNodeP7WidthVP.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.dx = load ptr, ptr %i.bo, align 8, !tbaa !402
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !217
  call void @_ZN6V3Task12taskConnectsEP15AstNodeFTaskRefP7AstNodeP18V3TaskConnectStateb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.417") align 8 %9, ptr noundef nonnull %1, ptr noundef %i.dz, ptr noundef nonnull %i.cc, i1 noundef zeroext true)
  %i.ea = load i8, ptr %i.cd, align 8, !tbaa !1794, !range !170, !noundef !171
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ec = load ptr, ptr %i.cf, align 8, !tbaa !173
  invoke void @_ZNSt8_Rb_treeIPK7AstNodeSt4pairIKS2_St3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessISB_ESaIS3_IKSB_SC_EEEESt10_Select1stISJ_ESD_IS2_ESaISJ_EE8_M_eraseEPSt13_Rb_tree_nodeISJ_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ce, ptr noundef %i.ec)
          to label %_ZN10VMemberMap5clearEv.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  call void @__clang_call_terminate(ptr %i.ee) #28
  unreachable

_ZN10VMemberMap5clearEv.exit:                     ; preds = %bb.x
  store ptr null, ptr %i.cf, align 8, !tbaa !173
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !174
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !175
  store i64 0, ptr %i.cj, align 8, !tbaa !182
  br label %bb.z

bb.z:                                             ; preds = %_ZN10VMemberMap5clearEv.exit, %bb.w
  %i.ef = load ptr, ptr %9, align 8, !tbaa !597   ; 3 uses
  %i.eg = load ptr, ptr %i.ck, align 8, !tbaa !597 ; 2 uses
  %.not700918 = icmp eq ptr %i.ef, %i.eg
  br i1 %.not700918, label %.loopexit707, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z, %bb.en
  %.sroa.0675.0919 = phi ptr [ %i.sz, %bb.en ], [ %i.ef, %bb.z ] ; 3 uses
  %i.eh = load ptr, ptr %.sroa.0675.0919, align 8, !tbaa !600 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0675.0919, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !601 ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !201 ; 20 uses
  %.not203 = icmp eq ptr %i.el, null
  br i1 %.not203, label %bb.en, label %bb.aa

.loopexit708:                                     ; preds = %.critedge265, %bb.dd
  %lpad.loopexit710 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

.loopexit.split-lp709:                            ; preds = %bb.ad
  %lpad.loopexit.split-lp711 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.aa:                                            ; preds = %.lr.ph
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 260
  %i.en = load i64, ptr %i.em, align 4
  %i.eo = and i64 %i.en, 262144
  %.not701.a = icmp eq i64 %i.eo, 0
  br i1 %.not701.a, label %bb.dd, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ep, align 8, !tbaa !195
  %i.eq = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 174
  br i1 %i.eq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !256
  %.not204 = icmp eq ptr %i.es, null
  br i1 %.not204, label %bb.dd, label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 64 ; 3 uses
  %i.eu = invoke noundef i32 @_ZL5debugv()
          to label %bb.ae unwind label %.loopexit.split-lp709

bb.ae:                                            ; preds = %bb.ad
  %i.ev = icmp sgt i32 %i.eu, 3
  br i1 %i.ev, label %bb.af, label %bb.be, !prof !51

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %10)
          to label %bb.ag unwind label %bb.at

bb.ag:                                            ; preds = %bb.af
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287 unwind label %bb.au ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287: ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull @.str.5, i32 noundef 7401)
          to label %bb.ah unwind label %bb.av

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287
  %i.ex = load ptr, ptr %11, align 8, !tbaa !54
  %i.ey = load i64, ptr %i.ct, align 8, !tbaa !55
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %i.ex, i64 noundef %i.ey)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit288 unwind label %bb.aw ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit288: ; preds = %bb.ah
  %i.fa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull @.str.998, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289 unwind label %bb.aw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit288
  switch i64 %magicptr.i, label %bb.aj [
    i64 0, label %.invoke
    i64 1, label %bb.ai
  ], !prof !193

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289
  br label %.invoke

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289, %bb.ai
  %i.fb = phi ptr [ @.str.1367, %bb.ai ], [ @.str.1366, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289 ]
  %i.fc = phi i64 [ 15, %bb.ai ], [ 7, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289 ]
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull %i.fb, i64 noundef %i.fc)
          to label %_ZlsRSoPK7AstNode.exit unwind label %bb.aw ; 0 uses

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289
  %i.fe = load ptr, ptr %1, align 8, !tbaa !34
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 136
  %i.fg = load ptr, ptr %i.ff, align 8
  invoke void %i.fg(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ez)
          to label %_ZlsRSoPK7AstNode.exit unwind label %bb.aw, !inline_history !1795

_ZlsRSoPK7AstNode.exit:                           ; preds = %.invoke, %bb.aj
  %i.fh = load ptr, ptr %11, align 8, !tbaa !54   ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.cu
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %_ZlsRSoPK7AstNode.exit
  %i.fj = load i64, ptr %i.cu, align 8, !tbaa !32
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

end_hunk_0
begin_hunk_1_@_ZN12WidthVisitor19processFTaskRefArgsEP15AstNodeFTaskRef:bb.a
  %i.md = load i8, ptr %i.lx, align 1, !tbaa !32
  store i8 %i.md, ptr %i.mc, align 1, !tbaa !32
  br label %bb.cj

bb.ci:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mc, ptr align 1 %i.lx, i64 %i.ly, i1 false)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %._crit_edge.i.i.i
  %i.me = load i64, ptr %i.b, align 8, !tbaa !192 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lt, i64 160
  store i64 %i.me, ptr %i.mf, align 8, !tbaa !55
  %i.mg = load ptr, ptr %i.lv, align 8, !tbaa !54
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.me
  store i8 0, ptr %i.mh, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lt, i64 184
  store <4 x i8> <i8 0, i8 0, i8 0, i8 100>, ptr %i.mi, align 8, !tbaa !32
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lt, i64 188
  store i8 18, ptr %i.mj, align 4, !tbaa !602
  %i.mk = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(192) %i.lt, i8 13)
          to label %.noexc9.i unwind label %bb.cm ; 2 uses

.noexc9.i:                                        ; preds = %bb.cj
  %i.ml = getelementptr inbounds nuw i8, ptr %i.lt, i64 72 ; 2 uses
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !259
  %.not.i.i.i = icmp eq ptr %i.mm, %i.mk
  br i1 %.not.i.i.i, label %_ZN7AstNode14dtypeSetStringEv.exit.i, label %bb.ck

bb.ck:                                            ; preds = %.noexc9.i
  store ptr %i.mk, ptr %i.ml, align 8, !tbaa !259
  %i.mn = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !192
  %i.mo = add i64 %i.mn, 1
  store i64 %i.mo, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !192
  br label %_ZN7AstNode14dtypeSetStringEv.exit.i

_ZN7AstNode14dtypeSetStringEv.exit.i:             ; preds = %bb.ck, %.noexc9.i
  %.not.i.i10.i = icmp eq ptr %.0142, null
  br i1 %.not.i.i10.i, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %_ZN7AstNode14dtypeSetStringEv.exit.i
  invoke void @_ZN7AstNode7addOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(192) %i.lt, ptr noundef nonnull %.0142)
          to label %bb.cn unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.cj
  %i.mp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mq = load ptr, ptr %i.lv, align 8, !tbaa !54 ; 2 uses
  %i.mr = icmp eq ptr %i.mq, %i.lw
  br i1 %i.mr, label %.body375, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.cm
  %i.ms = load i64, ptr %i.lw, align 8, !tbaa !32
  %i.mt = add i64 %i.ms, 1
  call void @_ZdlPvm(ptr noundef %i.mq, i64 noundef %i.mt) #27
  br label %.body375

bb.cn:                                            ; preds = %_ZN7AstNode14dtypeSetStringEv.exit.i, %bb.cl
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lt, i64 32
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !202
  %.not230 = icmp eq ptr %i.mv, null
  br i1 %.not230, label %bb.co, label %_ZN11AstSFormatF10scopeNamepEP12AstScopeName.exit

bb.co:                                            ; preds = %bb.cn
  %i.mw = invoke noundef zeroext i1 @_ZNK11AstSFormatF19formatScopeTrackingEv(ptr noundef nonnull align 8 dereferenceable(192) %i.lt)
          to label %bb.cp unwind label %bb.ct

bb.cp:                                            ; preds = %bb.co
  br i1 %i.mw, label %bb.cq, label %_ZN11AstSFormatF10scopeNamepEP12AstScopeName.exit

bb.cq:                                            ; preds = %bb.cp
  %i.mx = invoke noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #30
          to label %bb.cr unwind label %bb.ct     ; 3 uses

bb.cr:                                            ; preds = %bb.cq
  %i.my = getelementptr inbounds nuw i8, ptr %i.lt, i64 88
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !271
  invoke void @_ZN12AstScopeNameC2EP8FileLineb(ptr noundef nonnull align 8 dereferenceable(224) %i.mx, ptr noundef %i.mz, i1 noundef zeroext true)
          to label %bb.cs unwind label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(192) %i.lt, ptr noundef nonnull %i.mx)
          to label %_ZN11AstSFormatF10scopeNamepEP12AstScopeName.exit unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %_ZN11AstSFormatF10scopeNamepEP12AstScopeName.exit, %bb.cq, %bb.co, %_ZN9VNVisitor11pushDeletepEP7AstNode.exit
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %.body368

bb.cu:                                            ; preds = %.noexc.i.i, %bb.cg
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %.body375

.body375:                                         ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.cu
  %eh.lpad-body376 = phi { ptr, i32 } [ %i.nb, %bb.cu ], [ %i.mp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.mp, %bb.cm ]
  call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef 192) #27
  br label %.body368

bb.cv:                                            ; preds = %bb.cr
  %i.nc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.mx, i64 noundef 224) #27
  br label %.body368

_ZN11AstSFormatF10scopeNamepEP12AstScopeName.exit: ; preds = %bb.cs, %bb.cp, %bb.cn
  %i.nd = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #30
          to label %._crit_edge.i.i unwind label %bb.ct ; 8 uses

._crit_edge.i.i:                                  ; preds = %_ZN11AstSFormatF10scopeNamepEP12AstScopeName.exit
  %i.ne = getelementptr inbounds nuw i8, ptr %i.lt, i64 88
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !271
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  store ptr %i.du, ptr %18, align 8, !tbaa !130
  store i64 0, ptr %i.dv, align 8, !tbaa !55
  store i8 0, ptr %i.du, align 8, !tbaa !32
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(184) %i.nd, i16 3, ptr noundef %i.nf)
          to label %.noexc386 unwind label %bb.da

.noexc386:                                        ; preds = %._crit_edge.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV6AstArg, i64 16), ptr %i.nd, align 8, !tbaa !34
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 152 ; 5 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 168 ; 5 uses
  store ptr %i.nh, ptr %i.ng, align 8, !tbaa !130
  %i.ni = load ptr, ptr %18, align 8, !tbaa !54   ; 2 uses
  %i.nj = load i64, ptr %i.dv, align 8, !tbaa !55 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.nj, ptr %i.a, align 8, !tbaa !192
  %i.nk = icmp ugt i64 %i.nj, 15
  br i1 %i.nk, label %.noexc.i.i385, label %._crit_edge.i.i.i380

.noexc.i.i385:                                    ; preds = %.noexc386
  %i.nl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ng, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc387 unwind label %bb.da ; 2 uses

.noexc387:                                        ; preds = %.noexc.i.i385
  store ptr %i.nl, ptr %i.ng, align 8, !tbaa !54
  %i.nm = load i64, ptr %i.a, align 8, !tbaa !192
  store i64 %i.nm, ptr %i.nh, align 8, !tbaa !32
  br label %._crit_edge.i.i.i380

._crit_edge.i.i.i380:                             ; preds = %.noexc387, %.noexc386
  %i.nn = phi ptr [ %i.nl, %.noexc387 ], [ %i.nh, %.noexc386 ] ; 2 uses
  switch i64 %i.nj, label %bb.cx [
    i64 1, label %bb.cw
    i64 0, label %bb.cy
  ]

bb.cw:                                            ; preds = %._crit_edge.i.i.i380
  %i.no = load i8, ptr %i.ni, align 1, !tbaa !32
  store i8 %i.no, ptr %i.nn, align 1, !tbaa !32
  br label %bb.cy

bb.cx:                                            ; preds = %._crit_edge.i.i.i380
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nn, ptr align 1 %i.ni, i64 %i.nj, i1 false)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %._crit_edge.i.i.i380
  %i.np = load i64, ptr %i.a, align 8, !tbaa !192 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nd, i64 160
  store i64 %i.np, ptr %i.nq, align 8, !tbaa !55
  %i.nr = load ptr, ptr %i.ng, align 8, !tbaa !54
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.np
  store i8 0, ptr %i.ns, align 1, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(184) %i.nd, ptr noundef nonnull %i.lt)
          to label %_ZN6AstArgC2EP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11AstNodeExpr.exit unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.nt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nu = load ptr, ptr %i.ng, align 8, !tbaa !54 ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %i.nh
  br i1 %i.nv, label %.body388, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i382: ; preds = %bb.cz
  %i.nw = load i64, ptr %i.nh, align 8, !tbaa !32
  %i.nx = add i64 %i.nw, 1
  call void @_ZdlPvm(ptr noundef %i.nu, i64 noundef %i.nx) #27
  br label %.body388

_ZN6AstArgC2EP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11AstNodeExpr.exit: ; preds = %bb.cy
  invoke void @_ZN7AstNode6relinkEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %i.nd, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZN10VNRelinker6relinkEP7AstNode.exit unwind label %bb.da

_ZN10VNRelinker6relinkEP7AstNode.exit:            ; preds = %_ZN6AstArgC2EP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11AstNodeExpr.exit
  %i.ny = load ptr, ptr %18, align 8, !tbaa !54   ; 2 uses
  %i.nz = icmp eq ptr %i.ny, %i.du
  br i1 %i.nz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391: ; preds = %_ZN10VNRelinker6relinkEP7AstNode.exit
  %i.oa = load i64, ptr %i.du, align 8, !tbaa !32
  %i.ob = add i64 %i.oa, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.ob) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393: ; preds = %_ZN10VNRelinker6relinkEP7AstNode.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.oc = load ptr, ptr %16, align 8, !tbaa !54   ; 2 uses
  %i.od = icmp eq ptr %i.oc, %i.dm
  br i1 %i.od, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i395, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393
  %i.oe = load i64, ptr %i.dm, align 8, !tbaa !32
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %i.of) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i395

bb.da:                                            ; preds = %_ZN6AstArgC2EP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11AstNodeExpr.exit, %.noexc.i.i385, %._crit_edge.i.i
  %.0 = phi i1 [ false, %_ZN6AstArgC2EP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11AstNodeExpr.exit ], [ true, %.noexc.i.i385 ], [ true, %._crit_edge.i.i ]
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %.body388

.body388:                                         ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i382, %bb.da
  %.0.lpad-body = phi i1 [ %.0, %bb.da ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i382 ], [ true, %bb.cz ] ; 2 uses
  %eh.lpad-body389 = phi { ptr, i32 } [ %i.og, %bb.da ], [ %i.nt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i382 ], [ %i.nt, %bb.cz ] ; 3 uses
  %i.oh = load ptr, ptr %18, align 8, !tbaa !54   ; 2 uses
  %i.oi = icmp eq ptr %i.oh, %i.du
  br i1 %i.oi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397: ; preds = %.body388
  %i.oj = load i64, ptr %i.du, align 8, !tbaa !32
  %i.ok = add i64 %i.oj, 1
  call void @_ZdlPvm(ptr noundef %i.oh, i64 noundef %i.ok) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br i1 %.0.lpad-body, label %bb.db, label %.body368

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399: ; preds = %.body388
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br i1 %.0.lpad-body, label %bb.db, label %.body368

bb.db:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399
  call void @_ZdlPvm(ptr noundef nonnull %i.nd, i64 noundef 184) #27
  br label %.body368

.body368:                                         ; preds = %.loopexit718, %.loopexit.split-lp719, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397, %bb.by, %bb.ct, %.body375, %bb.cv, %bb.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, %bb.bs
  %.pn231.pn.pn = phi { ptr, i32 } [ %lpad.phi727, %bb.bs ], [ %eh.lpad-body376, %.body375 ], [ %eh.lpad-body389, %bb.db ], [ %eh.lpad-body389, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399 ], [ %i.na, %bb.ct ], [ %i.nc, %bb.cv ], [ %eh.lpad-body389, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397 ], [ %i.ku, %bb.by ], [ %lpad.loopexit720, %.loopexit718 ], [ %lpad.loopexit.split-lp721, %.loopexit.split-lp719 ]
  %i.ol = load ptr, ptr %16, align 8, !tbaa !54   ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.dm
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400: ; preds = %.body368
  %i.on = load i64, ptr %i.dm, align 8, !tbaa !32
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ol, i64 noundef %i.oo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402: ; preds = %.body368, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.dc

bb.dc:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, %bb.bh
  %.pn231.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jh, %bb.bh ], [ %.pn231.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.eo

bb.dd:                                            ; preds = %bb.ac, %bb.aa
  %i.op = getelementptr inbounds nuw i8, ptr %i.eh, i64 72 ; 4 uses
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !259 ; 2 uses
  %.not.i.i403 = icmp eq ptr %i.oq, null
  %i.or = getelementptr inbounds nuw i8, ptr %i.eh, i64 24 ; 2 uses
  %i.os = load ptr, ptr %i.or, align 8
  %i.ot = select i1 %.not.i.i403, ptr %i.os, ptr %i.oq ; 2 uses
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !34
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 352
  %i.ow = load ptr, ptr %i.ov, align 8
  %i.ox = invoke noundef ptr %i.ow(ptr noundef nonnull align 8 dereferenceable(162) %i.ot)
          to label %_ZNK6AstVar6basicpEv.exit unwind label %.loopexit708, !inline_history !1805

_ZNK6AstVar6basicpEv.exit:                        ; preds = %bb.dd
  %.not205 = icmp eq ptr %i.ox, null
  br i1 %.not205, label %bb.el, label %bb.de

bb.de:                                            ; preds = %_ZNK6AstVar6basicpEv.exit
  %i.oy = load ptr, ptr %i.op, align 8, !tbaa !259 ; 2 uses
  %.not.i.i405 = icmp eq ptr %i.oy, null
  %i.oz = load ptr, ptr %i.or, align 8
  %i.pa = select i1 %.not.i.i405, ptr %i.oz, ptr %i.oy ; 2 uses
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !34
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 352
  %i.pd = load ptr, ptr %i.pc, align 8
  %i.pe = invoke noundef ptr %i.pd(ptr noundef nonnull align 8 dereferenceable(162) %i.pa)
          to label %_ZNK6AstVar6basicpEv.exit407 unwind label %bb.dp, !inline_history !1805

_ZNK6AstVar6basicpEv.exit407:                     ; preds = %bb.de
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 164
  %.sroa.0.0.copyload.i = load i8, ptr %i.pf, align 4, !tbaa !295
  %i.pg = icmp eq i8 %.sroa.0.0.copyload.i, 13
  br i1 %i.pg, label %bb.df, label %bb.el

bb.df:                                            ; preds = %_ZNK6AstVar6basicpEv.exit407
  %i.ph = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %.sroa.0.0.copyload.i.i.i409 = load i16, ptr %i.ph, align 8, !tbaa !195 ; 2 uses
  switch i16 %.sroa.0.0.copyload.i.i.i409, label %bb.dg [
    i16 315, label %bb.el
    i16 174, label %bb.el
  ]

bb.dg:                                            ; preds = %bb.df
  %i.pi = load ptr, ptr %i.op, align 8, !tbaa !259 ; 2 uses
  %.not.i413 = icmp eq ptr %i.pi, null
  br i1 %.not.i413, label %_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit, label %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit

_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit: ; preds = %bb.dg
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 64
  %.sroa.0.0.copyload.i.i.i414 = load i16, ptr %i.pj, align 8, !tbaa !195
  %i.pk = icmp eq i16 %.sroa.0.0.copyload.i.i.i414, 99
  br i1 %i.pk, label %bb.el, label %_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit

_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit: ; preds = %bb.dg, %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit
  %i.pl = icmp eq i16 %.sroa.0.0.copyload.i.i.i409, 369
  br i1 %i.pl, label %_ZN7AstNode2asI9AstVarRef11AstNodeExprEEPT_PT0_.exit, label %.critedge265

_ZN7AstNode2asI9AstVarRef11AstNodeExprEEPT_PT0_.exit: ; preds = %_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit
  %i.pm = getelementptr inbounds nuw i8, ptr %i.el, i64 152
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !214 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 72
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !259 ; 2 uses
  %.not.i.i427 = icmp eq ptr %i.pp, null
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 24
  %i.pr = load ptr, ptr %i.pq, align 8
  %i.ps = select i1 %.not.i.i427, ptr %i.pr, ptr %i.pp ; 2 uses
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !34
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 352
  %i.pv = load ptr, ptr %i.pu, align 8
  %i.pw = invoke noundef ptr %i.pv(ptr noundef nonnull align 8 dereferenceable(162) %i.ps)
          to label %_ZNK6AstVar6basicpEv.exit429 unwind label %.loopexit713, !inline_history !1805

_ZNK6AstVar6basicpEv.exit429:                     ; preds = %_ZN7AstNode2asI9AstVarRef11AstNodeExprEEPT_PT0_.exit
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 164
  %.sroa.0.0.copyload.i430 = load i8, ptr %i.px, align 4, !tbaa !295
  %.not706 = icmp eq i8 %.sroa.0.0.copyload.i430, 13
  br i1 %.not706, label %bb.el, label %.critedge265

.critedge265:                                     ; preds = %_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit, %_ZNK6AstVar6basicpEv.exit429
  %i.py = invoke noundef i32 @_ZL5debugv()
          to label %bb.dh unwind label %.loopexit708

bb.dh:                                            ; preds = %.critedge265
  %i.pz = icmp sgt i32 %i.py, 3
  br i1 %i.pz, label %bb.di, label %bb.ec, !prof !51

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19)
          to label %bb.dj unwind label %bb.dq

bb.dj:                                            ; preds = %bb.di
  %i.qa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit432 unwind label %bb.dr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit432: ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull @.str.5, i32 noundef 7434)
          to label %bb.dk unwind label %bb.ds

bb.dk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit432
  %i.qb = load ptr, ptr %20, align 8, !tbaa !54
  %i.qc = load i64, ptr %i.cl, align 8, !tbaa !55
  %i.qd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %i.qb, i64 noundef %i.qc)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit434 unwind label %bb.dt ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit434: ; preds = %bb.dk
  %i.qe = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qd, ptr noundef nonnull @.str.1000, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit436 unwind label %bb.dt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit436: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit434
  %i.qf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %i.qd, ptr noundef nonnull %i.el)
          to label %bb.dl unwind label %bb.dt     ; 0 uses

bb.dl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit436
  %i.qg = load ptr, ptr %20, align 8, !tbaa !54   ; 2 uses
  %i.qh = icmp eq ptr %i.qg, %i.cm
  br i1 %i.qh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437: ; preds = %bb.dl
  %i.qi = load i64, ptr %i.cm, align 8, !tbaa !32
  %i.qj = add i64 %i.qi, 1
  call void @_ZdlPvm(ptr noundef %i.qg, i64 noundef %i.qj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(112) %19)
          to label %bb.dm unwind label %bb.du

bb.dm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(112) %19)
          to label %bb.dn unwind label %bb.dv

bb.dn:                                            ; preds = %bb.dm
  %i.qk = load i64, ptr %i.cn, align 8, !tbaa !55 ; 2 uses
  %i.ql = load ptr, ptr %21, align 8, !tbaa !54   ; 2 uses
  %i.qm = getelementptr i8, ptr %i.ql, i64 %i.qk
  %i.qn = getelementptr i8, ptr %i.qm, i64 -1
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !32
  %.not212 = icmp eq i8 %i.qo, 10
  %i.qp = load ptr, ptr %22, align 8, !tbaa !54   ; 2 uses
  %i.qq = icmp eq ptr %i.qp, %i.co
  br i1 %i.qq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i441, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i441: ; preds = %bb.dn
  %i.qr = icmp ult i64 %i.qk, 16
  call void @llvm.assume(i1 %i.qr)
end_hunk_1
begin_hunk_2_@_ZN12WidthVisitor19processFTaskRefArgsEP15AstNodeFTaskRef:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446, %bb.ds
  %.pn208 = phi { ptr, i32 } [ %i.rc, %bb.ds ], [ %i.rd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446 ], [ %i.rd, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %bb.ea

bb.du:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439
  %i.ri = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451

bb.dv:                                            ; preds = %bb.dm
  %i.rj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  %i.rk = load ptr, ptr %21, align 8, !tbaa !54   ; 2 uses
  %i.rl = icmp eq ptr %i.rk, %i.cp
  br i1 %i.rl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449: ; preds = %bb.dv
  %i.rm = load i64, ptr %i.cp, align 8, !tbaa !32
  %i.rn = add i64 %i.rm, 1
  call void @_ZdlPvm(ptr noundef %i.rk, i64 noundef %i.rn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449, %bb.du
  %.pn210 = phi { ptr, i32 } [ %i.ri, %bb.du ], [ %i.rj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449 ], [ %i.rj, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.ea

bb.dw:                                            ; preds = %bb.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(112) %19)
          to label %bb.dx unwind label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.ro = load ptr, ptr %23, align 8, !tbaa !54
  %i.rp = load i64, ptr %i.cq, align 8, !tbaa !55
  %i.rq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ro, i64 noundef %i.rp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit453 unwind label %bb.dz ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit453: ; preds = %bb.dx
  %i.rr = load ptr, ptr %23, align 8, !tbaa !54   ; 2 uses
  %i.rs = icmp eq ptr %i.rr, %i.cr
  br i1 %i.rs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit453
  %i.rt = load i64, ptr %i.cr, align 8, !tbaa !32
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %i.rr, i64 noundef %i.ru) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit453, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.ec

bb.dy:                                            ; preds = %bb.dw
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459

bb.dz:                                            ; preds = %bb.dx
  %i.rw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rx = load ptr, ptr %23, align 8, !tbaa !54   ; 2 uses
  %i.ry = icmp eq ptr %i.rx, %i.cr
  br i1 %i.ry, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457: ; preds = %bb.dz
  %i.rz = load i64, ptr %i.cr, align 8, !tbaa !32
  %i.sa = add i64 %i.rz, 1
  call void @_ZdlPvm(ptr noundef %i.rx, i64 noundef %i.sa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457, %bb.dy
  %.pn213 = phi { ptr, i32 } [ %i.rv, %bb.dy ], [ %i.rw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457 ], [ %i.rw, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  br label %bb.ea

bb.ea:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448, %bb.dr
  %.pn213.pn = phi { ptr, i32 } [ %.pn213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459 ], [ %i.rb, %bb.dr ], [ %.pn210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451 ], [ %.pn208, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #25
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dq
  %.pn213.pn.pn = phi { ptr, i32 } [ %.pn213.pn, %bb.ea ], [ %i.ra, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.eo

bb.ec:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456, %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, i8 0, i64 25, i1 false)
  %i.sb = invoke noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %i.el, ptr noundef nonnull %24)
          to label %_ZN11AstNodeExpr12unlinkFrBackEP10VNRelinker.exit unwind label %bb.eh ; 0 uses

_ZN11AstNodeExpr12unlinkFrBackEP10VNRelinker.exit: ; preds = %bb.ec
  %i.sc = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #30
          to label %bb.ed unwind label %bb.ei     ; 10 uses

bb.ed:                                            ; preds = %_ZN11AstNodeExpr12unlinkFrBackEP10VNRelinker.exit
  %i.sd = getelementptr inbounds nuw i8, ptr %i.el, i64 88
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !271
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.sc, i16 315, ptr noundef %i.se)
          to label %bb.ee unwind label %bb.ej

bb.ee:                                            ; preds = %bb.ed
  store ptr getelementptr inbounds nuw inrange(-16, 432) (i8, ptr @_ZTV12AstNodeUniop, i64 16), ptr %i.sc, align 8, !tbaa !34
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 152
  store i64 0, ptr %i.sf, align 8
  %i.sg = getelementptr inbounds nuw i8, ptr %i.el, i64 72
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !259 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sc, i64 72 ; 4 uses
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !259
  %.not.i.i.i.i = icmp eq ptr %i.sj, %i.sh
  br i1 %.not.i.i.i.i, label %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  store ptr %i.sh, ptr %i.si, align 8, !tbaa !259
  %i.sk = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !192
  %i.sl = add i64 %i.sk, 1
  store i64 %i.sl, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !192
  br label %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i

_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i: ; preds = %bb.ef, %bb.ee
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.sc, ptr noundef nonnull %i.el)
          to label %.noexc464 unwind label %bb.ej

.noexc464:                                        ; preds = %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 432) (i8, ptr @_ZTV16AstCvtPackString, i64 16), ptr %i.sc, align 8, !tbaa !34
  %i.sm = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(160) %i.sc, i8 13)
          to label %.noexc465 unwind label %bb.ej ; 2 uses

.noexc465:                                        ; preds = %.noexc464
  %i.sn = load ptr, ptr %i.si, align 8, !tbaa !259
  %.not.i.i4.i = icmp eq ptr %i.sn, %i.sm
  br i1 %.not.i.i4.i, label %_ZN16AstCvtPackStringC2EP8FileLineP11AstNodeExpr.exit, label %bb.eg

bb.eg:                                            ; preds = %.noexc465
  store ptr %i.sm, ptr %i.si, align 8, !tbaa !259
  %i.so = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !192
  %i.sp = add i64 %i.so, 1
  store i64 %i.sp, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !192
  br label %_ZN16AstCvtPackStringC2EP8FileLineP11AstNodeExpr.exit

_ZN16AstCvtPackStringC2EP8FileLineP11AstNodeExpr.exit: ; preds = %bb.eg, %.noexc465
  invoke void @_ZN7AstNode6relinkEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %i.sc, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %_ZN10VNRelinker6relinkEP7AstNode.exit467 unwind label %bb.ei

_ZN10VNRelinker6relinkEP7AstNode.exit467:         ; preds = %_ZN16AstCvtPackStringC2EP8FileLineP11AstNodeExpr.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %bb.el

bb.eh:                                            ; preds = %bb.ec
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.ei:                                            ; preds = %_ZN16AstCvtPackStringC2EP8FileLineP11AstNodeExpr.exit, %_ZN11AstNodeExpr12unlinkFrBackEP10VNRelinker.exit
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.ej:                                            ; preds = %.noexc464, %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i, %bb.ed
  %i.ss = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.sc, i64 noundef 160) #27
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ei, %bb.ej, %bb.eh
  %.pn217.pn = phi { ptr, i32 } [ %i.sq, %bb.eh ], [ %i.sr, %bb.ei ], [ %i.ss, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %bb.eo

bb.el:                                            ; preds = %bb.df, %bb.df, %_ZN10VNRelinker6relinkEP7AstNode.exit467, %_ZNK6AstVar6basicpEv.exit429, %_ZNK6AstVar6basicpEv.exit, %_ZNK6AstVar6basicpEv.exit407, %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit
  %.0144 = phi ptr [ %i.el, %_ZNK6AstVar6basicpEv.exit429 ], [ %i.sc, %_ZN10VNRelinker6relinkEP7AstNode.exit467 ], [ %i.el, %_ZNK6AstVar6basicpEv.exit ], [ %i.el, %_ZNK6AstVar6basicpEv.exit407 ], [ %i.el, %bb.df ], [ %i.el, %bb.df ], [ %i.el, %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  %i.st = load ptr, ptr %i.op, align 8, !tbaa !259
  store ptr %i.st, ptr %25, align 8, !tbaa !50
  store i8 1, ptr %i.cs, align 8, !tbaa !56
  %i.su = load ptr, ptr %i.bw, align 8, !tbaa !58 ; 2 uses
  store ptr %25, ptr %i.bw, align 8, !tbaa !126
  %i.sv = load ptr, ptr %.0144, align 8, !tbaa !34
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 312
  %i.sx = load ptr, ptr %i.sw, align 8
  invoke void %i.sx(ptr noundef nonnull align 8 dereferenceable(152) %.0144, ptr noundef nonnull align 8 dereferenceable(632) %0)
          to label %bb.em unwind label %.body470, !inline_history !2

.body470:                                         ; preds = %bb.el
  %i.sy = landingpad { ptr, i32 }
          cleanup
  store ptr %i.su, ptr %i.bw, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %bb.eo

bb.em:                                            ; preds = %bb.el
  store ptr %i.su, ptr %i.bw, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %bb.en

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i395: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %.loopexit707thread-pre-split

bb.en:                                            ; preds = %bb.em, %.lr.ph
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.0675.0919, i64 16 ; 2 uses
  %.not700.a = icmp eq ptr %i.sz, %i.eg
  br i1 %.not700.a, label %.loopexit707thread-pre-split, label %.lr.ph

bb.eo:                                            ; preds = %.loopexit713, %.loopexit708, %.loopexit.split-lp709, %bb.dp, %.body470, %bb.ek, %bb.eb, %bb.dc, %bb.bd
  %.pn231.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn231.pn.pn.pn.pn, %bb.dc ], [ %.pn225.pn.pn, %bb.bd ], [ %i.qz, %bb.dp ], [ %i.sy, %.body470 ], [ %.pn217.pn, %bb.ek ], [ %.pn213.pn.pn, %bb.eb ], [ %lpad.loopexit.split-lp711, %.loopexit.split-lp709 ], [ %lpad.loopexit710, %.loopexit708 ], [ %lpad.loopexit715, %.loopexit713 ]
  %i.ta = load ptr, ptr %9, align 8, !tbaa !604   ; 3 uses
  %.not.i.i.i473 = icmp eq ptr %i.ta, null
  br i1 %.not.i.i.i473, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i395.a, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.tb = load ptr, ptr %i.dw, align 8, !tbaa !605
  %i.tc = ptrtoint ptr %i.tb to i64
  %i.td = ptrtoint ptr %i.ta to i64
  %i.te = sub i64 %i.tc, %i.td
  call void @_ZdlPvm(ptr noundef nonnull %i.ta, i64 noundef %i.te) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i395.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i395.a: ; preds = %bb.eo, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %common.resume

.loopexit707thread-pre-split:                     ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i395
  %.not700777.ph = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i395 ], [ true, %bb.en ]
  %.pr = load ptr, ptr %9, align 8, !tbaa !604
  br label %.loopexit707

.loopexit707:                                     ; preds = %.loopexit707thread-pre-split, %bb.z
  %i.tf = phi ptr [ %.pr, %.loopexit707thread-pre-split ], [ %i.ef, %bb.z ] ; 3 uses
  %.not700777 = phi i1 [ %.not700777.ph, %.loopexit707thread-pre-split ], [ true, %bb.z ]
  %.not.i.i.i474 = icmp eq ptr %i.tf, null
  br i1 %.not.i.i.i474, label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit475, label %bb.eq

bb.eq:                                            ; preds = %.loopexit707
  %i.tg = load ptr, ptr %i.dw, align 8, !tbaa !605
  %i.th = ptrtoint ptr %i.tg to i64
  %i.ti = ptrtoint ptr %i.tf to i64
  %i.tj = sub i64 %i.th, %i.ti
  call void @_ZdlPvm(ptr noundef nonnull %i.tf, i64 noundef %i.tj) #27
  br label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit475

_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit475: ; preds = %.loopexit707, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br i1 %.not700777, label %bb.er, label %bb.w

bb.er:                                            ; preds = %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit475
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  %i.tk = load ptr, ptr %i.bo, align 8, !tbaa !402
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 40
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !217
  call void @_ZN6V3Task12taskConnectsEP15AstNodeFTaskRefP7AstNodeP18V3TaskConnectStateb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.417") align 8 %26, ptr noundef nonnull %1, ptr noundef %i.tm, ptr noundef null, i1 noundef zeroext true)
  %i.tn = load ptr, ptr %26, align 8, !tbaa !597  ; 3 uses
  %i.to = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !597 ; 2 uses
  %.not702924 = icmp eq ptr %i.tn, %i.tp
  br i1 %.not702924, label %._crit_edge, label %.lr.ph926

._crit_edge.loopexit:                             ; preds = %_ZNK7AstNode8isDoubleEv.exit.thread
  %.pre1022.a = load ptr, ptr %26, align 8, !tbaa !604
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.er
  %i.tq = phi ptr [ %.pre1022.a, %._crit_edge.loopexit ], [ %i.tn, %bb.er ] ; 3 uses
  %.not.i.i.i476 = icmp eq ptr %i.tq, null
  br i1 %.not.i.i.i476, label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit477, label %bb.es

bb.es:                                            ; preds = %._crit_edge
  %i.tr = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !605
  %i.tt = ptrtoint ptr %i.ts to i64
  %i.tu = ptrtoint ptr %i.tq to i64
  %i.tv = sub i64 %i.tt, %i.tu
  call void @_ZdlPvm(ptr noundef nonnull %i.tq, i64 noundef %i.tv) #27
  br label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit477

_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit477: ; preds = %._crit_edge, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  %i.tw = load ptr, ptr %i.bo, align 8, !tbaa !402
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 40
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !217
  call void @_ZN6V3Task12taskConnectsEP15AstNodeFTaskRefP7AstNodeP18V3TaskConnectStateb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.417") align 8 %27, ptr noundef nonnull %1, ptr noundef %i.ty, ptr noundef null, i1 noundef zeroext true)
  %i.tz = load ptr, ptr %27, align 8, !tbaa !597  ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !597 ; 2 uses
  %.not703927 = icmp eq ptr %i.tz, %i.ub
  br i1 %.not703927, label %._crit_edge930, label %.lr.ph929

.lr.ph929:                                        ; preds = %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit477
  %i.uc = getelementptr inbounds nuw i8, ptr %28, i64 8
  br label %bb.ff

.lr.ph926:                                        ; preds = %bb.er, %_ZNK7AstNode8isDoubleEv.exit.thread
  %.sroa.0667.0925 = phi ptr [ %i.vh, %_ZNK7AstNode8isDoubleEv.exit.thread ], [ %i.tn, %bb.er ] ; 3 uses
  %i.ud = load ptr, ptr %.sroa.0667.0925, align 8, !tbaa !600 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.sroa.0667.0925, i64 8
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !601
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 24
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !201 ; 3 uses
  %.not261 = icmp eq ptr %i.uh, null
  br i1 %.not261, label %_ZNK7AstNode8isDoubleEv.exit.thread, label %bb.ev

bb.et:                                            ; preds = %bb.ez, %bb.ey, %bb.fa, %bb.ew
  %i.ui = landingpad { ptr, i32 }
          cleanup
  %i.uj = load ptr, ptr %26, align 8, !tbaa !604  ; 3 uses
  %.not.i.i.i478 = icmp eq ptr %i.uj, null
  br i1 %.not.i.i.i478, label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit479, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.uk = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !605
  %i.um = ptrtoint ptr %i.ul to i64
  %i.un = ptrtoint ptr %i.uj to i64
  %i.uo = sub i64 %i.um, %i.un
  call void @_ZdlPvm(ptr noundef nonnull %i.uj, i64 noundef %i.uo) #27
  br label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit479

_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit479: ; preds = %bb.et, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %common.resume

bb.ev:                                            ; preds = %.lr.ph926
  %i.up = load ptr, ptr %i.bo, align 8, !tbaa !402
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 256
  %i.ur = load i16, ptr %i.uq, align 8
  %i.us = and i16 %i.ur, 32
  %.not705 = icmp eq i16 %i.us, 0
  br i1 %.not705, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  invoke void @_ZN12WidthVisitor22checkUnpackedArrayArgsEP6AstVarP7AstNode(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef %i.ud, ptr noundef nonnull %i.uh)
          to label %bb.ex unwind label %bb.et

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ud, i64 72 ; 2 uses
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !259 ; 3 uses
  %.not.i480 = icmp eq ptr %i.uu, null
  br i1 %.not.i480, label %_ZNK7AstNode8isDoubleEv.exit.thread, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !34
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 352
  %i.ux = load ptr, ptr %i.uw, align 8
  %i.uy = invoke noundef ptr %i.ux(ptr noundef nonnull align 8 dereferenceable(162) %i.uu)
          to label %.noexc482 unwind label %bb.et, !inline_history !335

.noexc482:                                        ; preds = %bb.ey
  %.not1.i = icmp eq ptr %i.uy, null
  br i1 %.not1.i, label %_ZNK7AstNode8isDoubleEv.exit.thread, label %bb.ez

bb.ez:                                            ; preds = %.noexc482
  %i.uz = load ptr, ptr %i.ut, align 8, !tbaa !259 ; 2 uses
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !34
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 352
  %i.vc = load ptr, ptr %i.vb, align 8
  %i.vd = invoke noundef ptr %i.vc(ptr noundef nonnull align 8 dereferenceable(162) %i.uz)
          to label %_ZNK7AstNode8isDoubleEv.exit unwind label %bb.et, !inline_history !335

_ZNK7AstNode8isDoubleEv.exit:                     ; preds = %bb.ez
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 164
  %.sroa.0.0.copyload.i.i.i481 = load i8, ptr %i.ve, align 4, !tbaa !295
  %i.vf = icmp eq i8 %.sroa.0.0.copyload.i.i.i481, 10
  br i1 %i.vf, label %bb.fa, label %_ZNK7AstNode8isDoubleEv.exit.thread

bb.fa:                                            ; preds = %_ZNK7AstNode8isDoubleEv.exit
  %i.vg = invoke noundef ptr @_ZN12WidthVisitor10spliceCvtDEP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef nonnull %i.uh)
          to label %_ZNK7AstNode8isDoubleEv.exit.thread unwind label %bb.et ; 0 uses

_ZNK7AstNode8isDoubleEv.exit.thread:              ; preds = %bb.ex, %.noexc482, %_ZNK7AstNode8isDoubleEv.exit, %bb.fa, %.lr.ph926
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.0667.0925, i64 16 ; 2 uses
  %.not702 = icmp eq ptr %i.vh, %i.tp
  br i1 %.not702, label %._crit_edge.loopexit, label %.lr.ph926

._crit_edge930.loopexit:                          ; preds = %bb.fi
  %.pre1023 = load ptr, ptr %27, align 8, !tbaa !604
  br label %._crit_edge930

._crit_edge930:                                   ; preds = %._crit_edge930.loopexit, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit477
  %i.vi = phi ptr [ %.pre1023, %._crit_edge930.loopexit ], [ %i.tz, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit477 ] ; 3 uses
  %.not.i.i.i484 = icmp eq ptr %i.vi, null
  br i1 %.not.i.i.i484, label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit485, label %bb.fb

bb.fb:                                            ; preds = %._crit_edge930
  %i.vj = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !605
  %i.vl = ptrtoint ptr %i.vk to i64
  %i.vm = ptrtoint ptr %i.vi to i64
  %i.vn = sub i64 %i.vl, %i.vm
  call void @_ZdlPvm(ptr noundef nonnull %i.vi, i64 noundef %i.vn) #27
  br label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit485

_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit485: ; preds = %._crit_edge930, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  %i.vo = load ptr, ptr %i.bo, align 8, !tbaa !402
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 40
  %.017.i = load ptr, ptr %i.vp, align 8, !tbaa !344 ; 2 uses
  %.not18.i = icmp eq ptr %.017.i, null
  br i1 %.not18.i, label %_ZN12WidthVisitor16markHasOpenArrayEP12AstNodeFTask.exit.thread, label %_ZN7AstNode4castI6AstVarS_EEPT_PT0_.exit.i.outer

_ZN7AstNode4castI6AstVarS_EEPT_PT0_.exit.i.outer: ; preds = %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit485, %_ZN12WidthVisitor24hasOpenArrayDTypeRecurseEP12AstNodeDType.exit.i.thread
  %.020.i.ph = phi ptr [ %.0.i4861173, %_ZN12WidthVisitor24hasOpenArrayDTypeRecurseEP12AstNodeDType.exit.i.thread ], [ %.017.i, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit485 ]
  %.0919.i.ph = phi i1 [ true, %_ZN12WidthVisitor24hasOpenArrayDTypeRecurseEP12AstNodeDType.exit.i.thread ], [ false, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit485 ]
  br label %_ZN7AstNode4castI6AstVarS_EEPT_PT0_.exit.i

_ZN7AstNode4castI6AstVarS_EEPT_PT0_.exit.i:       ; preds = %_ZN7AstNode4castI6AstVarS_EEPT_PT0_.exit.i.outer, %_ZN12WidthVisitor24hasOpenArrayDTypeRecurseEP12AstNodeDType.exit.i
  %.020.i = phi ptr [ %.0.i486, %_ZN12WidthVisitor24hasOpenArrayDTypeRecurseEP12AstNodeDType.exit.i ], [ %.020.i.ph, %_ZN7AstNode4castI6AstVarS_EEPT_PT0_.exit.i.outer ] ; 7 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.020.i, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.vq, align 8, !tbaa !195
  %.not15.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, 68
  br i1 %.not15.i, label %bb.fc, label %_ZN12WidthVisitor24hasOpenArrayDTypeRecurseEP12AstNodeDType.exit.i

bb.fc:                                            ; preds = %_ZN7AstNode4castI6AstVarS_EEPT_PT0_.exit.i
  %i.vr = getelementptr inbounds nuw i8, ptr %.020.i, i64 260
  %i.vs = load i64, ptr %i.vr, align 4            ; 2 uses
  %i.vt = and i64 %i.vs, 274877906944
  %.not16.i = icmp eq i64 %i.vt, 0
  br i1 %.not16.i, label %bb.fd, label %_ZN12WidthVisitor24hasOpenArrayDTypeRecurseEP12AstNodeDType.exit.i.thread.loopexit

bb.fd:                                            ; preds = %bb.fc
  %i.vu = getelementptr inbounds nuw i8, ptr %.020.i, i64 72
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !259
  br label %tailrecurse.i.i

end_hunk_2
