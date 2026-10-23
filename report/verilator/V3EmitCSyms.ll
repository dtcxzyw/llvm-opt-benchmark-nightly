Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3EmitCSyms?download=true
inline.NumInlined: 7952
inline.NumDeleted: 1364
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN9EmitCSyms10emitSymImpEPK10AstNetlist:bb.a
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !37
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit328, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !36 ; 2 uses
  %i.am = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 %i.al
  %i.ao = getelementptr i8, ptr %i.an, i64 -1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !37
  %.not = icmp eq i8 %i.ap, 10
  %i.aq = load ptr, ptr %5, align 8, !tbaa !35    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i330: ; preds = %bb.e
  %i.at = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.at)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %bb.e
  %i.au = load i64, ptr %i.ar, align 8, !tbaa !37
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.av) #24
  %.pre = load ptr, ptr %4, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i330, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329
  %i.aw = phi ptr [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i330 ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !37
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.not, label %bb.l, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext 10)
          to label %bb.l unwind label %bb.g       ; 0 uses

bb.g:                                             ; preds = %bb.b, %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit327, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.c
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %bb.i
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !37
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335, %bb.h
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.h ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335 ], [ %i.be, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.p

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340

bb.k:                                             ; preds = %bb.d
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bm = load ptr, ptr %4, align 8, !tbaa !35    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338: ; preds = %bb.k
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !37
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338, %bb.j
  %.pn166 = phi { ptr, i32 } [ %i.bk, %bb.j ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338 ], [ %i.bl, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.p

bb.l:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.br = load ptr, ptr %6, align 8, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !36
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.br, i64 noundef %i.bt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit341 unwind label %bb.o ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit341: ; preds = %bb.m
  %i.bv = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit341
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !37
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit341, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347

bb.o:                                             ; preds = %bb.m
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %6, align 8, !tbaa !35    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345: ; preds = %bb.o
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !37
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345, %bb.n
  %.pn168 = phi { ptr, i32 } [ %i.ca, %bb.n ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345 ], [ %i.cb, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, %bb.g
  %.pn168.pn = phi { ptr, i32 } [ %.pn168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit347 ], [ %i.bc, %bb.g ], [ %.pn166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.ka

bb.q:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit344
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN9EmitCSyms15getSymCtorStmtsB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.36") align 8 %7, ptr noundef nonnull align 8 dereferenceable(496) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZN9EmitCSyms15getSymDtorStmtsB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.36") align 8 %8, ptr noundef nonnull align 8 dereferenceable(496) %0)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ch = load i32, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1140), align 4, !tbaa !1091 ; 3 uses
  %i.ci = sext i32 %i.ch to i64                   ; 5 uses
  %.not171 = icmp eq i32 %i.ch, 0
  br i1 %.not171, label %.critedge326, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = icmp ugt i32 %i.ch, 199
  br i1 %i.cj, label %bb.t, label %.loopexit1524

bb.t:                                             ; preds = %bb.s
  %i.ck = load ptr, ptr %7, align 8, !tbaa !119   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !119 ; 2 uses
  %.not14552305 = icmp eq ptr %i.ck, %i.cm
  br i1 %.not14552305, label %.loopexit1524, label %.lr.ph

99:                                               ; preds = %_ZN9EmitCSyms8stmtCostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %100 = getelementptr inbounds nuw i8, ptr %.sroa.01452.02306, i64 32 ; 2 uses
  %.not1458 = icmp eq ptr %100, %i.cm
  br i1 %.not1458, label %.loopexit1524, label %.lr.ph

bb.u:                                             ; preds = %bb.q
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.jz

.lr.ph:                                           ; preds = %bb.t, %99
  %.0542307 = phi i64 [ %i.cs, %99 ], [ 200, %bb.t ]
  %.sroa.01452.02306 = phi ptr [ %100, %99 ], [ %i.ck, %bb.t ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.01452.02306, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !36
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %_ZN9EmitCSyms8stmtCostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  %i.cr = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01452.02306, ptr noundef nonnull @.str.228, i64 noundef 0, i64 noundef 1) #23
  %.not.i.i = icmp eq i64 %i.cr, 0
  %..i = select i1 %.not.i.i, i64 0, i64 5
  br label %_ZN9EmitCSyms8stmtCostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN9EmitCSyms8stmtCostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.v, %.lr.ph
  %.0.i = phi i64 [ 0, %.lr.ph ], [ %..i, %bb.v ]
  %i.cs = add i64 %.0.i, %.0542307                ; 3 uses
  %.not172 = icmp ugt i64 %i.cs, %i.ci
  br i1 %.not172, label %.critedge, label %99

.loopexit1524:                                    ; preds = %99, %bb.t, %bb.s
  %.2 = phi i64 [ 200, %bb.s ], [ 200, %bb.t ], [ %i.cs, %99 ] ; 2 uses
  %.not173 = icmp ugt i64 %.2, %i.ci
  br i1 %.not173, label %.critedge, label %bb.w

bb.w:                                             ; preds = %.loopexit1524
  %i.ct = load ptr, ptr %8, align 8, !tbaa !119   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !119 ; 2 uses
  %.not14562309 = icmp eq ptr %i.ct, %i.cv
  br i1 %.not14562309, label %.critedge326, label %.lr.ph2312

bb.x:                                             ; preds = %_ZN9EmitCSyms8stmtCostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit351
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.01448.02310, i64 32 ; 2 uses
  %.not1456 = icmp eq ptr %i.cw, %i.cv
  br i1 %.not1456, label %.critedge326, label %.lr.ph2312

.lr.ph2312:                                       ; preds = %bb.w, %bb.x
  %.32311 = phi i64 [ %i.db, %bb.x ], [ %.2, %bb.w ]
  %.sroa.01448.02310 = phi ptr [ %i.cw, %bb.x ], [ %i.ct, %bb.w ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.01448.02310, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !36
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %_ZN9EmitCSyms8stmtCostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit351, label %bb.y

bb.y:                                             ; preds = %.lr.ph2312
  %i.da = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01448.02310, ptr noundef nonnull @.str.228, i64 noundef 0, i64 noundef 1) #23
  %.not.i.i348 = icmp eq i64 %i.da, 0
  %..i349 = select i1 %.not.i.i348, i64 0, i64 5
  br label %_ZN9EmitCSyms8stmtCostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit351

_ZN9EmitCSyms8stmtCostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit351: ; preds = %bb.y, %.lr.ph2312
  %.0.i350 = phi i64 [ 0, %.lr.ph2312 ], [ %..i349, %bb.y ]
  %i.db = add i64 %.0.i350, %.32311               ; 2 uses
  %.not174 = icmp ugt i64 %i.db, %i.ci
  br i1 %.not174, label %.critedge, label %bb.x

.critedge:                                        ; preds = %_ZN9EmitCSyms8stmtCostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN9EmitCSyms8stmtCostERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit351, %.loopexit1524
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 59), align 1, !tbaa !1092
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.dc, ptr %9, align 8, !tbaa !38
  store i32 1919906915, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 4, ptr %i.dd, align 8, !tbaa !36
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i8 0, ptr %i.de, align 4, !tbaa !37
  invoke void @_ZN9EmitCSyms9emitSplitERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERKS6_m(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.ci)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %.critedge
  %i.df = load ptr, ptr %9, align 8, !tbaa !35    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.dc
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352: ; preds = %bb.z
  %i.dh = load i64, ptr %i.dc, align 8, !tbaa !37
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.dj, ptr %10, align 8, !tbaa !38
  store i32 1919906916, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 4, ptr %i.dk, align 8, !tbaa !36
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i8 0, ptr %i.dl, align 4, !tbaa !37
  invoke void @_ZN9EmitCSyms9emitSplitERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EERKS6_m(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.ci)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354
  %i.dm = load ptr, ptr %10, align 8, !tbaa !35   ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.dj
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359: ; preds = %bb.aa
  %i.do = load i64, ptr %i.dj, align 8, !tbaa !37
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.critedge326

bb.ab:                                            ; preds = %.critedge
  %i.dq = landingpad { ptr, i32 }
          cleanup
  %i.dr = load ptr, ptr %9, align 8, !tbaa !35    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.dc
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362: ; preds = %bb.ab
  %i.dt = load i64, ptr %i.dc, align 8, !tbaa !37
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.jy

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354
  %i.dv = landingpad { ptr, i32 }
          cleanup
  %i.dw = load ptr, ptr %10, align 8, !tbaa !35   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.dj
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i365

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i365: ; preds = %bb.ac
  %i.dy = load i64, ptr %i.dj, align 8, !tbaa !37
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit367: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i365
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.jy

.critedge326:                                     ; preds = %bb.x, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZN9EmitCUtil12symClassNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11)
          to label %bb.ad unwind label %bb.bg

bb.ad:                                            ; preds = %.critedge326
  invoke void @_ZN7V3Stats10addStatSumEPKcd(ptr noundef nonnull @.str.784, double noundef 1.000000e+00)
          to label %.noexc368 unwind label %bb.bh

.noexc368:                                        ; preds = %bb.ad
  invoke void @_ZN21EmitCBaseVisitorConst17openNewOutputFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbbPKc(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %11, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull @.str.145)
          to label %_ZN21EmitCBaseVisitorConst23openNewOutputSourceFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbPKc.exit unwind label %bb.bh

_ZN21EmitCBaseVisitorConst23openNewOutputSourceFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbPKc.exit: ; preds = %.noexc368
  %i.ea = load ptr, ptr %11, align 8, !tbaa !35   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370: ; preds = %_ZN21EmitCBaseVisitorConst23openNewOutputSourceFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbPKc.exit
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !37
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372: ; preds = %_ZN21EmitCBaseVisitorConst23openNewOutputSourceFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i370
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  invoke void @_ZN9EmitCSyms18emitSymImpPreambleEv(ptr noundef nonnull align 8 dereferenceable(496) %0)
          to label %bb.ae unwind label %bb.bi

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit372
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %i.ef = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.ef, ptr %14, align 8, !tbaa !38, !alias.scope !1095
  %i.eg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1608), align 8, !tbaa !35, !noalias !1095 ; 2 uses
  %i.eh = load i64, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1616), align 8, !tbaa !36, !noalias !1095 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #23, !noalias !1095
  store i64 %i.eh, ptr %i.v, align 8, !tbaa !50, !noalias !1095
  %i.ei = icmp ugt i64 %i.eh, 15
  br i1 %i.ei, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.ae
  %i.ej = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef 0)
          to label %.noexc373 unwind label %bb.bj ; 2 uses

.noexc373:                                        ; preds = %.noexc.i.i.i
  store ptr %i.ej, ptr %14, align 8, !tbaa !35, !alias.scope !1095
  %i.ek = load i64, ptr %i.v, align 8, !tbaa !50, !noalias !1095
  store i64 %i.ek, ptr %i.ef, align 8, !tbaa !37, !alias.scope !1095
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc373, %bb.ae
  %i.el = phi ptr [ %i.ej, %.noexc373 ], [ %i.ef, %bb.ae ] ; 2 uses
  switch i64 %i.eh, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %bb.ah
  ]

bb.af:                                            ; preds = %._crit_edge.i.i.i.i
  %i.em = load i8, ptr %i.eg, align 1, !tbaa !37
  store i8 %i.em, ptr %i.el, align 1, !tbaa !37
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.el, ptr align 1 %i.eg, i64 %i.eh, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i.i.i
  %i.en = load i64, ptr %i.v, align 8, !tbaa !50, !noalias !1095 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !36, !alias.scope !1095
  %i.ep = load ptr, ptr %14, align 8, !tbaa !35, !alias.scope !1095
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.en
  store i8 0, ptr %i.eq, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #23, !noalias !1095
  %i.er = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.152, i64 noundef 47)
          to label %.noexc375 unwind label %bb.bk ; 6 uses

.noexc375:                                        ; preds = %bb.ah
  %i.es = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.es, ptr %13, align 8, !tbaa !38, !alias.scope !1096
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !35 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 5 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374

bb.ai:                                            ; preds = %.noexc375
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !36 ; 3 uses
  %i.ey = icmp ult i64 %i.ex, 16
  call void @llvm.assume(i1 %i.ey)
  %i.ez = add nuw nsw i64 %i.ex, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.es, ptr noundef nonnull align 8 dereferenceable(1) %i.eu, i64 %i.ez, i1 false)
  br label %bb.aj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374: ; preds = %.noexc375
  store ptr %i.et, ptr %13, align 8, !tbaa !35, !alias.scope !1096
  %i.fa = load i64, ptr %i.eu, align 8, !tbaa !37
  store i64 %i.fa, ptr %i.es, align 8, !tbaa !37, !alias.scope !1096
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !36
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374, %bb.ai
  %i.fb = phi i64 [ %i.ex, %bb.ai ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i374 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 %i.fb, ptr %i.fd, align 8, !tbaa !36, !alias.scope !1096
  store ptr %i.eu, ptr %i.er, align 8, !tbaa !35
  store i64 0, ptr %i.fc, align 8, !tbaa !36
  store i8 0, ptr %i.eu, align 8, !tbaa !37
end_hunk_0
