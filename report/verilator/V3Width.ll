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
  %i.s = load i64, ptr %i.r, align 8, !tbaa !36   ; 2 uses
  %i.t = load ptr, ptr %6, align 8, !tbaa !33     ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 %i.s
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %.not = icmp eq i8 %i.w, 10
  %i.x = load ptr, ptr %7, align 8, !tbaa !33     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i268, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i268: ; preds = %bb.f
  %i.aa = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.aa)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %bb.f
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !11
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ac) #27
  %.pre = load ptr, ptr %6, align 8, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i268, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267
  %i.ad = phi ptr [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i268 ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !11
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
  %i.am = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %bb.j
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !11
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
  %i.at = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276: ; preds = %bb.l
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !11
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
  %i.ay = load ptr, ptr %8, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !36
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.ay, i64 noundef %i.ba)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit279 unwind label %bb.p ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit279: ; preds = %bb.n
  %i.bc = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit279
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !11
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
  %i.bj = load ptr, ptr %8, align 8, !tbaa !33    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit285, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i283: ; preds = %bb.p
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !11
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
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !519 ; 3 uses
  %.not202 = icmp eq ptr %i.bp, null
  br i1 %.not202, label %bb.s, label %bb.t, !prof !32

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
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !38 ; 2 uses
  store ptr null, ptr %i.bw, align 8, !tbaa !40
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 312
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr noundef nonnull align 8 dereferenceable(152) %i.bp, ptr noundef nonnull align 8 dereferenceable(632) %0)
          to label %_ZN12WidthVisitor11userIterateEP7AstNodeP7WidthVP.exit unwind label %bb.v, !inline_history !373

common.resume:                                    ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i395.a, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit479, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit495, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit628, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.cb, %bb.v ], [ %i.uf, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit479 ], [ %i.ww, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit495 ], [ %.pn254.pn.pn, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit628 ], [ %.pn231.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i395.a ], [ %.pn199.pn, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.v:                                             ; preds = %bb.u
  %i.cb = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !38
  br label %common.resume

_ZN12WidthVisitor11userIterateEP7AstNodeP7WidthVP.exit: ; preds = %bb.u
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !38
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
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.du = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit475, %_ZN12WidthVisitor11userIterateEP7AstNodeP7WidthVP.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.dx = load ptr, ptr %i.bo, align 8, !tbaa !519
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !200
  call void @_ZN6V3Task12taskConnectsEP15AstNodeFTaskRefP7AstNodeP18V3TaskConnectStateb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.417") align 8 %9, ptr noundef nonnull %1, ptr noundef %i.dz, ptr noundef nonnull %i.cc, i1 noundef zeroext true)
  %i.ea = load i8, ptr %i.cd, align 8, !tbaa !1738, !range !151, !noundef !152
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.ec = load ptr, ptr %i.cf, align 8, !tbaa !154
  invoke void @_ZNSt8_Rb_treeIPK7AstNodeSt4pairIKS2_St3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_St4lessISB_ESaIS3_IKSB_SC_EEEESt10_Select1stISJ_ESD_IS2_ESaISJ_EE8_M_eraseEPSt13_Rb_tree_nodeISJ_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ce, ptr noundef %i.ec)
          to label %_ZN10VMemberMap5clearEv.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  call void @__clang_call_terminate(ptr %i.ee) #28
  unreachable

_ZN10VMemberMap5clearEv.exit:                     ; preds = %bb.x
  store ptr null, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !155
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !156
  store i64 0, ptr %i.cj, align 8, !tbaa !163
  br label %bb.z

bb.z:                                             ; preds = %_ZN10VMemberMap5clearEv.exit, %bb.w
  %i.ef = load ptr, ptr %9, align 8, !tbaa !1739  ; 3 uses
  %i.eg = load ptr, ptr %i.ck, align 8, !tbaa !1739 ; 2 uses
  %.not699917 = icmp eq ptr %i.ef, %i.eg
  br i1 %.not699917, label %.loopexit706, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z, %bb.en
  %.sroa.0674.0918 = phi ptr [ %i.sw, %bb.en ], [ %i.ef, %bb.z ] ; 3 uses
  %i.eh = load ptr, ptr %.sroa.0674.0918, align 8, !tbaa !1741 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0674.0918, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !1744 ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !179 ; 20 uses
  %.not203 = icmp eq ptr %i.el, null
  br i1 %.not203, label %bb.en, label %bb.aa

.loopexit707:                                     ; preds = %.critedge265, %bb.dd
  %lpad.loopexit709 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

.loopexit.split-lp708:                            ; preds = %bb.ad
  %lpad.loopexit.split-lp710 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.aa:                                            ; preds = %.lr.ph
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 260
  %i.en = load i64, ptr %i.em, align 4
  %i.eo = and i64 %i.en, 262144
  %.not700.a = icmp eq i64 %i.eo, 0
  br i1 %.not700.a, label %bb.dd, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ep, align 8, !tbaa !177
  %i.eq = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 174
  br i1 %i.eq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !272
  %.not204 = icmp eq ptr %i.es, null
  br i1 %.not204, label %bb.dd, label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 64 ; 3 uses
  %i.eu = invoke noundef i32 @_ZL5debugv()
          to label %bb.ae unwind label %.loopexit.split-lp708

bb.ae:                                            ; preds = %bb.ad
  %i.ev = icmp sgt i32 %i.eu, 3
  br i1 %i.ev, label %bb.af, label %bb.be, !prof !32

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
  %i.ex = load ptr, ptr %11, align 8, !tbaa !33
  %i.ey = load i64, ptr %i.ct, align 8, !tbaa !36
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %i.ex, i64 noundef %i.ey)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit288 unwind label %bb.aw ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit288: ; preds = %bb.ah
  %i.fa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull @.str.998, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289 unwind label %bb.aw ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit288
  switch i64 %magicptr.i, label %bb.aj [
    i64 0, label %.invoke
    i64 1, label %bb.ai
  ], !prof !176

bb.ai:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289
  br label %.invoke

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289, %bb.ai
  %i.fb = phi ptr [ @.str.1367, %bb.ai ], [ @.str.1366, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289 ]
  %i.fc = phi i64 [ 15, %bb.ai ], [ 7, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289 ]
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull %i.fb, i64 noundef %i.fc)
          to label %_ZlsRSoPK7AstNode.exit unwind label %bb.aw ; 0 uses

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit289
  %i.fe = load ptr, ptr %1, align 8, !tbaa !12
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 136
  %i.fg = load ptr, ptr %i.ff, align 8
  invoke void %i.fg(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ez)
          to label %_ZlsRSoPK7AstNode.exit unwind label %bb.aw, !inline_history !1745

_ZlsRSoPK7AstNode.exit:                           ; preds = %.invoke, %bb.aj
  %i.fh = load ptr, ptr %11, align 8, !tbaa !33   ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.cu
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %_ZlsRSoPK7AstNode.exit
  %i.fj = load i64, ptr %i.cu, align 8, !tbaa !11
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

end_hunk_0
begin_hunk_1_@_ZN12WidthVisitor19processFTaskRefArgsEP15AstNodeFTaskRef:bb.a
  %i.ma = load i8, ptr %i.lu, align 1, !tbaa !11
  store i8 %i.ma, ptr %i.lz, align 1, !tbaa !11
  br label %bb.cj

bb.ci:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lz, ptr align 1 %i.lu, i64 %i.lv, i1 false)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %._crit_edge.i.i.i
  %i.mb = load i64, ptr %i.b, align 8, !tbaa !175 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lq, i64 160
  store i64 %i.mb, ptr %i.mc, align 8, !tbaa !36
  %i.md = load ptr, ptr %i.ls, align 8, !tbaa !33
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mb
  store i8 0, ptr %i.me, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lq, i64 184
  store <4 x i8> <i8 0, i8 0, i8 0, i8 100>, ptr %i.mf, align 8, !tbaa !11
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lq, i64 188
  store i8 18, ptr %i.mg, align 4, !tbaa !1767
  %i.mh = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(192) %i.lq, i8 13)
          to label %.noexc9.i unwind label %bb.cm ; 2 uses

.noexc9.i:                                        ; preds = %bb.cj
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lq, i64 72 ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !276
  %.not.i.i.i = icmp eq ptr %i.mj, %i.mh
  br i1 %.not.i.i.i, label %_ZN7AstNode14dtypeSetStringEv.exit.i, label %bb.ck

bb.ck:                                            ; preds = %.noexc9.i
  store ptr %i.mh, ptr %i.mi, align 8, !tbaa !276
  %i.mk = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !175
  %i.ml = add i64 %i.mk, 1
  store i64 %i.ml, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !175
  br label %_ZN7AstNode14dtypeSetStringEv.exit.i

_ZN7AstNode14dtypeSetStringEv.exit.i:             ; preds = %bb.ck, %.noexc9.i
  %.not.i.i10.i = icmp eq ptr %.0187, null
  br i1 %.not.i.i10.i, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %_ZN7AstNode14dtypeSetStringEv.exit.i
  invoke void @_ZN7AstNode7addOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(192) %i.lq, ptr noundef nonnull %.0187)
          to label %bb.cn unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.cj
  %i.mm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mn = load ptr, ptr %i.ls, align 8, !tbaa !33 ; 2 uses
  %i.mo = icmp eq ptr %i.mn, %i.lt
  br i1 %i.mo, label %.body375, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.cm
  %i.mp = load i64, ptr %i.lt, align 8, !tbaa !11
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mq) #27
  br label %.body375

bb.cn:                                            ; preds = %_ZN7AstNode14dtypeSetStringEv.exit.i, %bb.cl
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lq, i64 32
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !185
  %.not230 = icmp eq ptr %i.ms, null
  br i1 %.not230, label %bb.co, label %_ZN11AstSFormatF10scopeNamepEP12AstScopeName.exit

bb.co:                                            ; preds = %bb.cn
  %i.mt = invoke noundef zeroext i1 @_ZNK11AstSFormatF19formatScopeTrackingEv(ptr noundef nonnull align 8 dereferenceable(192) %i.lq)
          to label %bb.cp unwind label %bb.ct

bb.cp:                                            ; preds = %bb.co
  br i1 %i.mt, label %bb.cq, label %_ZN11AstSFormatF10scopeNamepEP12AstScopeName.exit

bb.cq:                                            ; preds = %bb.cp
  %i.mu = invoke noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #30
          to label %bb.cr unwind label %bb.ct     ; 3 uses

bb.cr:                                            ; preds = %bb.cq
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lq, i64 88
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !292
  invoke void @_ZN12AstScopeNameC2EP8FileLineb(ptr noundef nonnull align 8 dereferenceable(224) %i.mu, ptr noundef %i.mw, i1 noundef zeroext true)
          to label %bb.cs unwind label %bb.cv

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(192) %i.lq, ptr noundef nonnull %i.mu)
          to label %_ZN11AstSFormatF10scopeNamepEP12AstScopeName.exit unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %_ZN11AstSFormatF10scopeNamepEP12AstScopeName.exit, %bb.cq, %bb.co, %_ZN9VNVisitor11pushDeletepEP7AstNode.exit
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %.body368

bb.cu:                                            ; preds = %.noexc.i.i, %bb.cg
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %.body375

.body375:                                         ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.cu
  %eh.lpad-body376 = phi { ptr, i32 } [ %i.my, %bb.cu ], [ %i.mm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.mm, %bb.cm ]
  call void @_ZdlPvm(ptr noundef nonnull %i.lq, i64 noundef 192) #27
  br label %.body368

bb.cv:                                            ; preds = %bb.cr
  %i.mz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.mu, i64 noundef 224) #27
  br label %.body368

_ZN11AstSFormatF10scopeNamepEP12AstScopeName.exit: ; preds = %bb.cs, %bb.cp, %bb.cn
  %i.na = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #30
          to label %._crit_edge.i.i unwind label %bb.ct ; 8 uses

._crit_edge.i.i:                                  ; preds = %_ZN11AstSFormatF10scopeNamepEP12AstScopeName.exit
  %i.nb = getelementptr inbounds nuw i8, ptr %i.lq, i64 88
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !292
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  store ptr %i.du, ptr %18, align 8, !tbaa !111
  store i64 0, ptr %i.dv, align 8, !tbaa !36
  store i8 0, ptr %i.du, align 8, !tbaa !11
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(184) %i.na, i16 3, ptr noundef %i.nc)
          to label %.noexc386 unwind label %bb.da

.noexc386:                                        ; preds = %._crit_edge.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV6AstArg, i64 16), ptr %i.na, align 8, !tbaa !12
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 152 ; 5 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 168 ; 5 uses
  store ptr %i.ne, ptr %i.nd, align 8, !tbaa !111
  %i.nf = load ptr, ptr %18, align 8, !tbaa !33   ; 2 uses
  %i.ng = load i64, ptr %i.dv, align 8, !tbaa !36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.ng, ptr %i.a, align 8, !tbaa !175
  %i.nh = icmp ugt i64 %i.ng, 15
  br i1 %i.nh, label %.noexc.i.i385, label %._crit_edge.i.i.i380

.noexc.i.i385:                                    ; preds = %.noexc386
  %i.ni = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.nd, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc387 unwind label %bb.da ; 2 uses

.noexc387:                                        ; preds = %.noexc.i.i385
  store ptr %i.ni, ptr %i.nd, align 8, !tbaa !33
  %i.nj = load i64, ptr %i.a, align 8, !tbaa !175
  store i64 %i.nj, ptr %i.ne, align 8, !tbaa !11
  br label %._crit_edge.i.i.i380

._crit_edge.i.i.i380:                             ; preds = %.noexc387, %.noexc386
  %i.nk = phi ptr [ %i.ni, %.noexc387 ], [ %i.ne, %.noexc386 ] ; 2 uses
  switch i64 %i.ng, label %bb.cx [
    i64 1, label %bb.cw
    i64 0, label %bb.cy
  ]

bb.cw:                                            ; preds = %._crit_edge.i.i.i380
  %i.nl = load i8, ptr %i.nf, align 1, !tbaa !11
  store i8 %i.nl, ptr %i.nk, align 1, !tbaa !11
  br label %bb.cy

bb.cx:                                            ; preds = %._crit_edge.i.i.i380
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nk, ptr align 1 %i.nf, i64 %i.ng, i1 false)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %._crit_edge.i.i.i380
  %i.nm = load i64, ptr %i.a, align 8, !tbaa !175 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.na, i64 160
  store i64 %i.nm, ptr %i.nn, align 8, !tbaa !36
  %i.no = load ptr, ptr %i.nd, align 8, !tbaa !33
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.nm
  store i8 0, ptr %i.np, align 1, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(184) %i.na, ptr noundef nonnull %i.lq)
          to label %_ZN6AstArgC2EP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11AstNodeExpr.exit unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.nq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nr = load ptr, ptr %i.nd, align 8, !tbaa !33 ; 2 uses
  %i.ns = icmp eq ptr %i.nr, %i.ne
  br i1 %i.ns, label %.body388, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i382: ; preds = %bb.cz
  %i.nt = load i64, ptr %i.ne, align 8, !tbaa !11
  %i.nu = add i64 %i.nt, 1
  call void @_ZdlPvm(ptr noundef %i.nr, i64 noundef %i.nu) #27
  br label %.body388

_ZN6AstArgC2EP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11AstNodeExpr.exit: ; preds = %bb.cy
  invoke void @_ZN7AstNode6relinkEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %i.na, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZN10VNRelinker6relinkEP7AstNode.exit unwind label %bb.da

_ZN10VNRelinker6relinkEP7AstNode.exit:            ; preds = %_ZN6AstArgC2EP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11AstNodeExpr.exit
  %i.nv = load ptr, ptr %18, align 8, !tbaa !33   ; 2 uses
  %i.nw = icmp eq ptr %i.nv, %i.du
  br i1 %i.nw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391: ; preds = %_ZN10VNRelinker6relinkEP7AstNode.exit
  %i.nx = load i64, ptr %i.du, align 8, !tbaa !11
  %i.ny = add i64 %i.nx, 1
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.ny) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393: ; preds = %_ZN10VNRelinker6relinkEP7AstNode.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.nz = load ptr, ptr %16, align 8, !tbaa !33   ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %i.dm
  br i1 %i.oa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i395, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393
  %i.ob = load i64, ptr %i.dm, align 8, !tbaa !11
  %i.oc = add i64 %i.ob, 1
  call void @_ZdlPvm(ptr noundef %i.nz, i64 noundef %i.oc) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i395

bb.da:                                            ; preds = %_ZN6AstArgC2EP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11AstNodeExpr.exit, %.noexc.i.i385, %._crit_edge.i.i
  %.0189 = phi i1 [ false, %_ZN6AstArgC2EP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11AstNodeExpr.exit ], [ true, %.noexc.i.i385 ], [ true, %._crit_edge.i.i ]
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %.body388

.body388:                                         ; preds = %bb.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i382, %bb.da
  %.0189.lpad-body = phi i1 [ %.0189, %bb.da ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i382 ], [ true, %bb.cz ] ; 2 uses
  %eh.lpad-body389 = phi { ptr, i32 } [ %i.od, %bb.da ], [ %i.nq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i382 ], [ %i.nq, %bb.cz ] ; 3 uses
  %i.oe = load ptr, ptr %18, align 8, !tbaa !33   ; 2 uses
  %i.of = icmp eq ptr %i.oe, %i.du
  br i1 %i.of, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397: ; preds = %.body388
  %i.og = load i64, ptr %i.du, align 8, !tbaa !11
  %i.oh = add i64 %i.og, 1
  call void @_ZdlPvm(ptr noundef %i.oe, i64 noundef %i.oh) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br i1 %.0189.lpad-body, label %bb.db, label %.body368

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399: ; preds = %.body388
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br i1 %.0189.lpad-body, label %bb.db, label %.body368

bb.db:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399
  call void @_ZdlPvm(ptr noundef nonnull %i.na, i64 noundef 184) #27
  br label %.body368

.body368:                                         ; preds = %.loopexit717, %.loopexit.split-lp718, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397, %bb.by, %bb.ct, %.body375, %bb.cv, %bb.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, %bb.bs
  %.pn231.pn.pn = phi { ptr, i32 } [ %lpad.phi726, %bb.bs ], [ %eh.lpad-body376, %.body375 ], [ %eh.lpad-body389, %bb.db ], [ %eh.lpad-body389, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399 ], [ %i.mx, %bb.ct ], [ %i.mz, %bb.cv ], [ %eh.lpad-body389, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397 ], [ %i.ku, %bb.by ], [ %lpad.loopexit719, %.loopexit717 ], [ %lpad.loopexit.split-lp720, %.loopexit.split-lp718 ]
  %i.oi = load ptr, ptr %16, align 8, !tbaa !33   ; 2 uses
  %i.oj = icmp eq ptr %i.oi, %i.dm
  br i1 %i.oj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400: ; preds = %.body368
  %i.ok = load i64, ptr %i.dm, align 8, !tbaa !11
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.ol) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402: ; preds = %.body368, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.dc

bb.dc:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402, %bb.bh
  %.pn231.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jh, %bb.bh ], [ %.pn231.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit402 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.eo

bb.dd:                                            ; preds = %bb.ac, %bb.aa
  %i.om = getelementptr inbounds nuw i8, ptr %i.eh, i64 72 ; 4 uses
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !276 ; 2 uses
  %.not.i.i403 = icmp eq ptr %i.on, null
  %i.oo = getelementptr inbounds nuw i8, ptr %i.eh, i64 24 ; 2 uses
  %i.op = load ptr, ptr %i.oo, align 8
  %i.oq = select i1 %.not.i.i403, ptr %i.op, ptr %i.on ; 2 uses
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !12
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 352
  %i.ot = load ptr, ptr %i.os, align 8
  %i.ou = invoke noundef ptr %i.ot(ptr noundef nonnull align 8 dereferenceable(162) %i.oq)
          to label %_ZNK6AstVar6basicpEv.exit unwind label %.loopexit707, !inline_history !1768

_ZNK6AstVar6basicpEv.exit:                        ; preds = %bb.dd
  %.not205 = icmp eq ptr %i.ou, null
  br i1 %.not205, label %bb.el, label %bb.de

bb.de:                                            ; preds = %_ZNK6AstVar6basicpEv.exit
  %i.ov = load ptr, ptr %i.om, align 8, !tbaa !276 ; 2 uses
  %.not.i.i405 = icmp eq ptr %i.ov, null
  %i.ow = load ptr, ptr %i.oo, align 8
  %i.ox = select i1 %.not.i.i405, ptr %i.ow, ptr %i.ov ; 2 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !12
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 352
  %i.pa = load ptr, ptr %i.oz, align 8
  %i.pb = invoke noundef ptr %i.pa(ptr noundef nonnull align 8 dereferenceable(162) %i.ox)
          to label %_ZNK6AstVar6basicpEv.exit407 unwind label %bb.dp, !inline_history !1768

_ZNK6AstVar6basicpEv.exit407:                     ; preds = %bb.de
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 164
  %.sroa.0.0.copyload.i = load i8, ptr %i.pc, align 4, !tbaa !315
  %i.pd = icmp eq i8 %.sroa.0.0.copyload.i, 13
  br i1 %i.pd, label %bb.df, label %bb.el

bb.df:                                            ; preds = %_ZNK6AstVar6basicpEv.exit407
  %i.pe = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %.sroa.0.0.copyload.i.i.i409 = load i16, ptr %i.pe, align 8, !tbaa !177 ; 2 uses
  switch i16 %.sroa.0.0.copyload.i.i.i409, label %bb.dg [
    i16 315, label %bb.el
    i16 174, label %bb.el
  ]

bb.dg:                                            ; preds = %bb.df
  %i.pf = load ptr, ptr %i.om, align 8, !tbaa !276 ; 2 uses
  %.not.i413 = icmp eq ptr %i.pf, null
  br i1 %.not.i413, label %_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit, label %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit

_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit: ; preds = %bb.dg
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 64
  %.sroa.0.0.copyload.i.i.i414 = load i16, ptr %i.pg, align 8, !tbaa !177
  %i.ph = icmp eq i16 %.sroa.0.0.copyload.i.i.i414, 99
  br i1 %i.ph, label %bb.el, label %_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit

_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit: ; preds = %bb.dg, %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit
  %i.pi = icmp eq i16 %.sroa.0.0.copyload.i.i.i409, 369
  br i1 %i.pi, label %_ZN7AstNode2asI9AstVarRef11AstNodeExprEEPT_PT0_.exit, label %.critedge265

_ZN7AstNode2asI9AstVarRef11AstNodeExprEEPT_PT0_.exit: ; preds = %_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit
  %i.pj = getelementptr inbounds nuw i8, ptr %i.el, i64 152
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !186 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 72
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !276 ; 2 uses
  %.not.i.i427 = icmp eq ptr %i.pm, null
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  %i.po = load ptr, ptr %i.pn, align 8
  %i.pp = select i1 %.not.i.i427, ptr %i.po, ptr %i.pm ; 2 uses
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !12
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 352
  %i.ps = load ptr, ptr %i.pr, align 8
  %i.pt = invoke noundef ptr %i.ps(ptr noundef nonnull align 8 dereferenceable(162) %i.pp)
          to label %_ZNK6AstVar6basicpEv.exit429 unwind label %.loopexit712, !inline_history !1768

_ZNK6AstVar6basicpEv.exit429:                     ; preds = %_ZN7AstNode2asI9AstVarRef11AstNodeExprEEPT_PT0_.exit
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 164
  %.sroa.0.0.copyload.i430 = load i8, ptr %i.pu, align 4, !tbaa !315
  %.not705 = icmp eq i8 %.sroa.0.0.copyload.i430, 13
  br i1 %.not705, label %bb.el, label %.critedge265

.critedge265:                                     ; preds = %_ZN7AstNode2isI9AstVarRef11AstNodeExprEEbPKT0_.exit, %_ZNK6AstVar6basicpEv.exit429
  %i.pv = invoke noundef i32 @_ZL5debugv()
          to label %bb.dh unwind label %.loopexit707

bb.dh:                                            ; preds = %.critedge265
  %i.pw = icmp sgt i32 %i.pv, 3
  br i1 %i.pw, label %bb.di, label %bb.ec, !prof !32

bb.di:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19)
          to label %bb.dj unwind label %bb.dq

bb.dj:                                            ; preds = %bb.di
  %i.px = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit432 unwind label %bb.dr ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit432: ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull @.str.5, i32 noundef 7434)
          to label %bb.dk unwind label %bb.ds

bb.dk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit432
  %i.py = load ptr, ptr %20, align 8, !tbaa !33
  %i.pz = load i64, ptr %i.cl, align 8, !tbaa !36
  %i.qa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %i.py, i64 noundef %i.pz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit434 unwind label %bb.dt ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit434: ; preds = %bb.dk
  %i.qb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.qa, ptr noundef nonnull @.str.1000, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit436 unwind label %bb.dt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit436: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit434
  %i.qc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoPK7AstNode(ptr noundef nonnull align 8 dereferenceable(8) %i.qa, ptr noundef nonnull %i.el)
          to label %bb.dl unwind label %bb.dt     ; 0 uses

bb.dl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit436
  %i.qd = load ptr, ptr %20, align 8, !tbaa !33   ; 2 uses
  %i.qe = icmp eq ptr %i.qd, %i.cm
  br i1 %i.qe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437: ; preds = %bb.dl
  %i.qf = load i64, ptr %i.cm, align 8, !tbaa !11
  %i.qg = add i64 %i.qf, 1
  call void @_ZdlPvm(ptr noundef %i.qd, i64 noundef %i.qg) #27
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
  %i.qh = load i64, ptr %i.cn, align 8, !tbaa !36 ; 2 uses
  %i.qi = load ptr, ptr %21, align 8, !tbaa !33   ; 2 uses
  %i.qj = getelementptr i8, ptr %i.qi, i64 %i.qh
  %i.qk = getelementptr i8, ptr %i.qj, i64 -1
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !11
  %.not212 = icmp eq i8 %i.ql, 10
  %i.qm = load ptr, ptr %22, align 8, !tbaa !33   ; 2 uses
  %i.qn = icmp eq ptr %i.qm, %i.co
  br i1 %i.qn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i441, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i440

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i441: ; preds = %bb.dn
  %i.qo = icmp ult i64 %i.qh, 16
  call void @llvm.assume(i1 %i.qo)
end_hunk_1
begin_hunk_2_@_ZN12WidthVisitor19processFTaskRefArgsEP15AstNodeFTaskRef:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446, %bb.ds
  %.pn208 = phi { ptr, i32 } [ %i.qz, %bb.ds ], [ %i.ra, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i446 ], [ %i.ra, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %bb.ea

bb.du:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439
  %i.rf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451

bb.dv:                                            ; preds = %bb.dm
  %i.rg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  %i.rh = load ptr, ptr %21, align 8, !tbaa !33   ; 2 uses
  %i.ri = icmp eq ptr %i.rh, %i.cp
  br i1 %i.ri, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449: ; preds = %bb.dv
  %i.rj = load i64, ptr %i.cp, align 8, !tbaa !11
  %i.rk = add i64 %i.rj, 1
  call void @_ZdlPvm(ptr noundef %i.rh, i64 noundef %i.rk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449, %bb.du
  %.pn210 = phi { ptr, i32 } [ %i.rf, %bb.du ], [ %i.rg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i449 ], [ %i.rg, %bb.dv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %bb.ea

bb.dw:                                            ; preds = %bb.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit445
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(112) %19)
          to label %bb.dx unwind label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.rl = load ptr, ptr %23, align 8, !tbaa !33
  %i.rm = load i64, ptr %i.cq, align 8, !tbaa !36
  %i.rn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.rl, i64 noundef %i.rm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit453 unwind label %bb.dz ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit453: ; preds = %bb.dx
  %i.ro = load ptr, ptr %23, align 8, !tbaa !33   ; 2 uses
  %i.rp = icmp eq ptr %i.ro, %i.cr
  br i1 %i.rp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit453
  %i.rq = load i64, ptr %i.cr, align 8, !tbaa !11
  %i.rr = add i64 %i.rq, 1
  call void @_ZdlPvm(ptr noundef %i.ro, i64 noundef %i.rr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit453, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.ec

bb.dy:                                            ; preds = %bb.dw
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459

bb.dz:                                            ; preds = %bb.dx
  %i.rt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ru = load ptr, ptr %23, align 8, !tbaa !33   ; 2 uses
  %i.rv = icmp eq ptr %i.ru, %i.cr
  br i1 %i.rv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457: ; preds = %bb.dz
  %i.rw = load i64, ptr %i.cr, align 8, !tbaa !11
  %i.rx = add i64 %i.rw, 1
  call void @_ZdlPvm(ptr noundef %i.ru, i64 noundef %i.rx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457, %bb.dy
  %.pn213 = phi { ptr, i32 } [ %i.rs, %bb.dy ], [ %i.rt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i457 ], [ %i.rt, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  br label %bb.ea

bb.ea:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448, %bb.dr
  %.pn213.pn = phi { ptr, i32 } [ %.pn213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit459 ], [ %i.qy, %bb.dr ], [ %.pn210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit451 ], [ %.pn208, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit448 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #25
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dq
  %.pn213.pn.pn = phi { ptr, i32 } [ %.pn213.pn, %bb.ea ], [ %i.qx, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.eo

bb.ec:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit456, %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, i8 0, i64 25, i1 false)
  %i.ry = invoke noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %i.el, ptr noundef nonnull %24)
          to label %_ZN11AstNodeExpr12unlinkFrBackEP10VNRelinker.exit unwind label %bb.eh ; 0 uses

_ZN11AstNodeExpr12unlinkFrBackEP10VNRelinker.exit: ; preds = %bb.ec
  %i.rz = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #30
          to label %bb.ed unwind label %bb.ei     ; 10 uses

bb.ed:                                            ; preds = %_ZN11AstNodeExpr12unlinkFrBackEP10VNRelinker.exit
  %i.sa = getelementptr inbounds nuw i8, ptr %i.el, i64 88
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !292
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.rz, i16 315, ptr noundef %i.sb)
          to label %bb.ee unwind label %bb.ej

bb.ee:                                            ; preds = %bb.ed
  store ptr getelementptr inbounds nuw inrange(-16, 432) (i8, ptr @_ZTV12AstNodeUniop, i64 16), ptr %i.rz, align 8, !tbaa !12
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rz, i64 152
  store i64 0, ptr %i.sc, align 8
  %i.sd = getelementptr inbounds nuw i8, ptr %i.el, i64 72
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !276 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rz, i64 72 ; 4 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !276
  %.not.i.i.i.i = icmp eq ptr %i.sg, %i.se
  br i1 %.not.i.i.i.i, label %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  store ptr %i.se, ptr %i.sf, align 8, !tbaa !276
  %i.sh = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !175
  %i.si = add i64 %i.sh, 1
  store i64 %i.si, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !175
  br label %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i

_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i: ; preds = %bb.ef, %bb.ee
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.rz, ptr noundef nonnull %i.el)
          to label %.noexc464 unwind label %bb.ej

.noexc464:                                        ; preds = %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 432) (i8, ptr @_ZTV16AstCvtPackString, i64 16), ptr %i.rz, align 8, !tbaa !12
  %i.sj = invoke noundef ptr @_ZNK7AstNode14findBasicDTypeE14VBasicDTypeKwd(ptr noundef nonnull align 8 dereferenceable(160) %i.rz, i8 13)
          to label %.noexc465 unwind label %bb.ej ; 2 uses

.noexc465:                                        ; preds = %.noexc464
  %i.sk = load ptr, ptr %i.sf, align 8, !tbaa !276
  %.not.i.i4.i = icmp eq ptr %i.sk, %i.sj
  br i1 %.not.i.i4.i, label %_ZN16AstCvtPackStringC2EP8FileLineP11AstNodeExpr.exit, label %bb.eg

bb.eg:                                            ; preds = %.noexc465
  store ptr %i.sj, ptr %i.sf, align 8, !tbaa !276
  %i.sl = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !175
  %i.sm = add i64 %i.sl, 1
  store i64 %i.sm, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !175
  br label %_ZN16AstCvtPackStringC2EP8FileLineP11AstNodeExpr.exit

_ZN16AstCvtPackStringC2EP8FileLineP11AstNodeExpr.exit: ; preds = %bb.eg, %.noexc465
  invoke void @_ZN7AstNode6relinkEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %i.rz, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %_ZN10VNRelinker6relinkEP7AstNode.exit467 unwind label %bb.ei

_ZN10VNRelinker6relinkEP7AstNode.exit467:         ; preds = %_ZN16AstCvtPackStringC2EP8FileLineP11AstNodeExpr.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %bb.el

bb.eh:                                            ; preds = %bb.ec
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.ei:                                            ; preds = %_ZN16AstCvtPackStringC2EP8FileLineP11AstNodeExpr.exit, %_ZN11AstNodeExpr12unlinkFrBackEP10VNRelinker.exit
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %bb.ek

bb.ej:                                            ; preds = %.noexc464, %_ZN12AstNodeUniopC2E6VNTypeP8FileLineP11AstNodeExpr.exit.i, %bb.ed
  %i.sp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.rz, i64 noundef 160) #27
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ei, %bb.ej, %bb.eh
  %.pn217.pn = phi { ptr, i32 } [ %i.sn, %bb.eh ], [ %i.so, %bb.ei ], [ %i.sp, %bb.ej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #25
  br label %bb.eo

bb.el:                                            ; preds = %bb.df, %bb.df, %_ZN10VNRelinker6relinkEP7AstNode.exit467, %_ZNK6AstVar6basicpEv.exit429, %_ZNK6AstVar6basicpEv.exit, %_ZNK6AstVar6basicpEv.exit407, %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit
  %.0186 = phi ptr [ %i.el, %_ZNK6AstVar6basicpEv.exit429 ], [ %i.rz, %_ZN10VNRelinker6relinkEP7AstNode.exit467 ], [ %i.el, %_ZNK6AstVar6basicpEv.exit ], [ %i.el, %_ZNK6AstVar6basicpEv.exit407 ], [ %i.el, %bb.df ], [ %i.el, %bb.df ], [ %i.el, %_ZN7AstNode2isI19AstUnpackArrayDType12AstNodeDTypeEEbPKT0_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #25
  %i.sq = load ptr, ptr %i.om, align 8, !tbaa !276
  store ptr %i.sq, ptr %25, align 8, !tbaa !29
  store i8 1, ptr %i.cs, align 8, !tbaa !37
  %i.sr = load ptr, ptr %i.bw, align 8, !tbaa !38 ; 2 uses
  store ptr %25, ptr %i.bw, align 8, !tbaa !40
  %i.ss = load ptr, ptr %.0186, align 8, !tbaa !12
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 312
  %i.su = load ptr, ptr %i.st, align 8
  invoke void %i.su(ptr noundef nonnull align 8 dereferenceable(152) %.0186, ptr noundef nonnull align 8 dereferenceable(632) %0)
          to label %bb.em unwind label %.body470, !inline_history !373

.body470:                                         ; preds = %bb.el
  %i.sv = landingpad { ptr, i32 }
          cleanup
  store ptr %i.sr, ptr %i.bw, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %bb.eo

bb.em:                                            ; preds = %bb.el
  store ptr %i.sr, ptr %i.bw, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #25
  br label %bb.en

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i395: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %.loopexit706thread-pre-split

bb.en:                                            ; preds = %bb.em, %.lr.ph
  %i.sw = getelementptr inbounds nuw i8, ptr %.sroa.0674.0918, i64 16 ; 2 uses
  %.not699.a = icmp eq ptr %i.sw, %i.eg
  br i1 %.not699.a, label %.loopexit706thread-pre-split, label %.lr.ph

bb.eo:                                            ; preds = %.loopexit712, %.loopexit707, %.loopexit.split-lp708, %bb.dp, %.body470, %bb.ek, %bb.eb, %bb.dc, %bb.bd
  %.pn231.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn231.pn.pn.pn.pn, %bb.dc ], [ %.pn225.pn.pn, %bb.bd ], [ %i.qw, %bb.dp ], [ %i.sv, %.body470 ], [ %.pn217.pn, %bb.ek ], [ %.pn213.pn.pn, %bb.eb ], [ %lpad.loopexit.split-lp710, %.loopexit.split-lp708 ], [ %lpad.loopexit709, %.loopexit707 ], [ %lpad.loopexit714, %.loopexit712 ]
  %i.sx = load ptr, ptr %9, align 8, !tbaa !1769  ; 3 uses
  %.not.i.i.i473 = icmp eq ptr %i.sx, null
  br i1 %.not.i.i.i473, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i395.a, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.sy = load ptr, ptr %i.dw, align 8, !tbaa !1771
  %i.sz = ptrtoint ptr %i.sy to i64
  %i.ta = ptrtoint ptr %i.sx to i64
  %i.tb = sub i64 %i.sz, %i.ta
  call void @_ZdlPvm(ptr noundef nonnull %i.sx, i64 noundef %i.tb) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i395.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i395.a: ; preds = %bb.eo, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %common.resume

.loopexit706thread-pre-split:                     ; preds = %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i395
  %.not699776.ph = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i395 ], [ true, %bb.en ]
  %.pr = load ptr, ptr %9, align 8, !tbaa !1769
  br label %.loopexit706

.loopexit706:                                     ; preds = %.loopexit706thread-pre-split, %bb.z
  %i.tc = phi ptr [ %.pr, %.loopexit706thread-pre-split ], [ %i.ef, %bb.z ] ; 3 uses
  %.not699776 = phi i1 [ %.not699776.ph, %.loopexit706thread-pre-split ], [ true, %bb.z ]
  %.not.i.i.i474 = icmp eq ptr %i.tc, null
  br i1 %.not.i.i.i474, label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit475, label %bb.eq

bb.eq:                                            ; preds = %.loopexit706
  %i.td = load ptr, ptr %i.dw, align 8, !tbaa !1771
  %i.te = ptrtoint ptr %i.td to i64
  %i.tf = ptrtoint ptr %i.tc to i64
  %i.tg = sub i64 %i.te, %i.tf
  call void @_ZdlPvm(ptr noundef nonnull %i.tc, i64 noundef %i.tg) #27
  br label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit475

_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit475: ; preds = %.loopexit706, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br i1 %.not699776, label %bb.er, label %bb.w

bb.er:                                            ; preds = %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit475
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #25
  %i.th = load ptr, ptr %i.bo, align 8, !tbaa !519
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 40
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !200
  call void @_ZN6V3Task12taskConnectsEP15AstNodeFTaskRefP7AstNodeP18V3TaskConnectStateb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.417") align 8 %26, ptr noundef nonnull %1, ptr noundef %i.tj, ptr noundef null, i1 noundef zeroext true)
  %i.tk = load ptr, ptr %26, align 8, !tbaa !1739 ; 3 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !1739 ; 2 uses
  %.not701923 = icmp eq ptr %i.tk, %i.tm
  br i1 %.not701923, label %._crit_edge, label %.lr.ph925

._crit_edge.loopexit:                             ; preds = %_ZNK7AstNode8isDoubleEv.exit.thread
  %.pre1021.a = load ptr, ptr %26, align 8, !tbaa !1769
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.er
  %i.tn = phi ptr [ %.pre1021.a, %._crit_edge.loopexit ], [ %i.tk, %bb.er ] ; 3 uses
  %.not.i.i.i476 = icmp eq ptr %i.tn, null
  br i1 %.not.i.i.i476, label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit477, label %bb.es

bb.es:                                            ; preds = %._crit_edge
  %i.to = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !1771
  %i.tq = ptrtoint ptr %i.tp to i64
  %i.tr = ptrtoint ptr %i.tn to i64
  %i.ts = sub i64 %i.tq, %i.tr
  call void @_ZdlPvm(ptr noundef nonnull %i.tn, i64 noundef %i.ts) #27
  br label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit477

_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit477: ; preds = %._crit_edge, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  %i.tt = load ptr, ptr %i.bo, align 8, !tbaa !519
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 40
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !200
  call void @_ZN6V3Task12taskConnectsEP15AstNodeFTaskRefP7AstNodeP18V3TaskConnectStateb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.417") align 8 %27, ptr noundef nonnull %1, ptr noundef %i.tv, ptr noundef null, i1 noundef zeroext true)
  %i.tw = load ptr, ptr %27, align 8, !tbaa !1739 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !1739 ; 2 uses
  %.not702926 = icmp eq ptr %i.tw, %i.ty
  br i1 %.not702926, label %._crit_edge929, label %.lr.ph928

.lr.ph928:                                        ; preds = %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit477
  %i.tz = getelementptr inbounds nuw i8, ptr %28, i64 8
  br label %bb.ff

.lr.ph925:                                        ; preds = %bb.er, %_ZNK7AstNode8isDoubleEv.exit.thread
  %.sroa.0666.0924 = phi ptr [ %i.ve, %_ZNK7AstNode8isDoubleEv.exit.thread ], [ %i.tk, %bb.er ] ; 3 uses
  %i.ua = load ptr, ptr %.sroa.0666.0924, align 8, !tbaa !1741 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.sroa.0666.0924, i64 8
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !1744
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 24
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !179 ; 3 uses
  %.not261 = icmp eq ptr %i.ue, null
  br i1 %.not261, label %_ZNK7AstNode8isDoubleEv.exit.thread, label %bb.ev

bb.et:                                            ; preds = %bb.ez, %bb.ey, %bb.fa, %bb.ew
  %i.uf = landingpad { ptr, i32 }
          cleanup
  %i.ug = load ptr, ptr %26, align 8, !tbaa !1769 ; 3 uses
  %.not.i.i.i478 = icmp eq ptr %i.ug, null
  br i1 %.not.i.i.i478, label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit479, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.uh = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !1771
  %i.uj = ptrtoint ptr %i.ui to i64
  %i.uk = ptrtoint ptr %i.ug to i64
  %i.ul = sub i64 %i.uj, %i.uk
  call void @_ZdlPvm(ptr noundef nonnull %i.ug, i64 noundef %i.ul) #27
  br label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit479

_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit479: ; preds = %bb.et, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #25
  br label %common.resume

bb.ev:                                            ; preds = %.lr.ph925
  %i.um = load ptr, ptr %i.bo, align 8, !tbaa !519
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 256
  %i.uo = load i16, ptr %i.un, align 8
  %i.up = and i16 %i.uo, 32
  %.not704 = icmp eq i16 %i.up, 0
  br i1 %.not704, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  invoke void @_ZN12WidthVisitor22checkUnpackedArrayArgsEP6AstVarP7AstNode(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef %i.ua, ptr noundef nonnull %i.ue)
          to label %bb.ex unwind label %bb.et

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ua, i64 72 ; 2 uses
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !276 ; 3 uses
  %.not.i480 = icmp eq ptr %i.ur, null
  br i1 %.not.i480, label %_ZNK7AstNode8isDoubleEv.exit.thread, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !12
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 352
  %i.uu = load ptr, ptr %i.ut, align 8
  %i.uv = invoke noundef ptr %i.uu(ptr noundef nonnull align 8 dereferenceable(162) %i.ur)
          to label %.noexc482 unwind label %bb.et, !inline_history !380

.noexc482:                                        ; preds = %bb.ey
  %.not1.i = icmp eq ptr %i.uv, null
  br i1 %.not1.i, label %_ZNK7AstNode8isDoubleEv.exit.thread, label %bb.ez

bb.ez:                                            ; preds = %.noexc482
  %i.uw = load ptr, ptr %i.uq, align 8, !tbaa !276 ; 2 uses
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !12
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 352
  %i.uz = load ptr, ptr %i.uy, align 8
  %i.va = invoke noundef ptr %i.uz(ptr noundef nonnull align 8 dereferenceable(162) %i.uw)
          to label %_ZNK7AstNode8isDoubleEv.exit unwind label %bb.et, !inline_history !380

_ZNK7AstNode8isDoubleEv.exit:                     ; preds = %bb.ez
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 164
  %.sroa.0.0.copyload.i.i.i481 = load i8, ptr %i.vb, align 4, !tbaa !315
  %i.vc = icmp eq i8 %.sroa.0.0.copyload.i.i.i481, 10
  br i1 %i.vc, label %bb.fa, label %_ZNK7AstNode8isDoubleEv.exit.thread

bb.fa:                                            ; preds = %_ZNK7AstNode8isDoubleEv.exit
  %i.vd = invoke noundef ptr @_ZN12WidthVisitor10spliceCvtDEP11AstNodeExpr(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef nonnull %i.ue)
          to label %_ZNK7AstNode8isDoubleEv.exit.thread unwind label %bb.et ; 0 uses

_ZNK7AstNode8isDoubleEv.exit.thread:              ; preds = %bb.ex, %.noexc482, %_ZNK7AstNode8isDoubleEv.exit, %bb.fa, %.lr.ph925
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.0666.0924, i64 16 ; 2 uses
  %.not701 = icmp eq ptr %i.ve, %i.tm
  br i1 %.not701, label %._crit_edge.loopexit, label %.lr.ph925

._crit_edge929.loopexit:                          ; preds = %bb.fi
  %.pre1022 = load ptr, ptr %27, align 8, !tbaa !1769
  br label %._crit_edge929

._crit_edge929:                                   ; preds = %._crit_edge929.loopexit, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit477
  %i.vf = phi ptr [ %.pre1022, %._crit_edge929.loopexit ], [ %i.tw, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit477 ] ; 3 uses
  %.not.i.i.i484 = icmp eq ptr %i.vf, null
  br i1 %.not.i.i.i484, label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit485, label %bb.fb

bb.fb:                                            ; preds = %._crit_edge929
  %i.vg = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !1771
  %i.vi = ptrtoint ptr %i.vh to i64
  %i.vj = ptrtoint ptr %i.vf to i64
  %i.vk = sub i64 %i.vi, %i.vj
  call void @_ZdlPvm(ptr noundef nonnull %i.vf, i64 noundef %i.vk) #27
  br label %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit485

_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit485: ; preds = %._crit_edge929, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  %i.vl = load ptr, ptr %i.bo, align 8, !tbaa !519
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 40
  %.0917.i = load ptr, ptr %i.vm, align 8, !tbaa !395 ; 2 uses
  %.not18.i = icmp eq ptr %.0917.i, null
  br i1 %.not18.i, label %_ZN12WidthVisitor16markHasOpenArrayEP12AstNodeFTask.exit.thread, label %_ZN7AstNode4castI6AstVarS_EEPT_PT0_.exit.i.outer

_ZN7AstNode4castI6AstVarS_EEPT_PT0_.exit.i.outer: ; preds = %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit485, %_ZN12WidthVisitor24hasOpenArrayDTypeRecurseEP12AstNodeDType.exit.i.thread
  %.0920.i.ph = phi ptr [ %.09.i1171, %_ZN12WidthVisitor24hasOpenArrayDTypeRecurseEP12AstNodeDType.exit.i.thread ], [ %.0917.i, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit485 ]
  %.019.i.ph = phi i1 [ true, %_ZN12WidthVisitor24hasOpenArrayDTypeRecurseEP12AstNodeDType.exit.i.thread ], [ false, %_ZNSt6vectorISt4pairIP6AstVarP6AstArgESaIS5_EED2Ev.exit485 ]
  br label %_ZN7AstNode4castI6AstVarS_EEPT_PT0_.exit.i

_ZN7AstNode4castI6AstVarS_EEPT_PT0_.exit.i:       ; preds = %_ZN7AstNode4castI6AstVarS_EEPT_PT0_.exit.i.outer, %_ZN12WidthVisitor24hasOpenArrayDTypeRecurseEP12AstNodeDType.exit.i
  %.0920.i = phi ptr [ %.09.i, %_ZN12WidthVisitor24hasOpenArrayDTypeRecurseEP12AstNodeDType.exit.i ], [ %.0920.i.ph, %_ZN7AstNode4castI6AstVarS_EEPT_PT0_.exit.i.outer ] ; 7 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %.0920.i, i64 64
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.vn, align 8, !tbaa !177
  %.not15.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, 68
  br i1 %.not15.i, label %bb.fc, label %_ZN12WidthVisitor24hasOpenArrayDTypeRecurseEP12AstNodeDType.exit.i

bb.fc:                                            ; preds = %_ZN7AstNode4castI6AstVarS_EEPT_PT0_.exit.i
  %i.vo = getelementptr inbounds nuw i8, ptr %.0920.i, i64 260
  %i.vp = load i64, ptr %i.vo, align 4            ; 2 uses
  %i.vq = and i64 %i.vp, 274877906944
  %.not16.i = icmp eq i64 %i.vq, 0
  br i1 %.not16.i, label %bb.fd, label %_ZN12WidthVisitor24hasOpenArrayDTypeRecurseEP12AstNodeDType.exit.i.thread.loopexit

bb.fd:                                            ; preds = %bb.fc
  %i.vr = getelementptr inbounds nuw i8, ptr %.0920.i, i64 72
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !276
  br label %tailrecurse.i.i

end_hunk_2
