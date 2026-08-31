Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/earley-parser?download=true
inline.NumInlined: 1388
inline.NumDeleted: 771
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK2v88internal6torque4Item14CheckAmbiguityERKS2_RKNS1_11LexerResultE:bb.a
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

bb.ae:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit69, %bb.x
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

bb.ag:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit71, %bb.y
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.ai:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit73, %bb.z
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %13, align 8              ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.ai
  %i.dj = load i64, ptr %i.dh, align 8
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.de, %bb.ah ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %i.df, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %bb.ag
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ], [ %i.dd, %bb.ag ] ; 2 uses
  %i.dl = load ptr, ptr %12, align 8              ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.aj
  %i.do = load i64, ptr %i.dm, align 8
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %bb.af
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dc, %bb.af ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %.pn.pn, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %bb.ae
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ], [ %i.db, %bb.ae ] ; 2 uses
  %i.dq = load ptr, ptr %10, align 8              ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.ak
  %i.dt = load i64, ptr %i.dr, align 8
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %bb.ad
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.da, %bb.ad ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %.pn.pn.pn.pn, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.an

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

bb.am:                                            ; preds = %bb.aa
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %14, align 8              ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %bb.am
  %i.ea = load i64, ptr %i.dy, align 8
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93, %bb.al
  %.pn33 = phi { ptr, i32 } [ %i.dv, %bb.al ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93 ], [ %i.dw, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %bb.ac
  %.pn33.pn = phi { ptr, i32 } [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92 ], [ %i.cz, %bb.ac ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.ap

bb.ao:                                            ; preds = %bb.u
  ret void

bb.ap:                                            ; preds = %bb.an, %bb.t
  %.pn42.pn.pn = phi { ptr, i32 } [ %.pn42.pn, %bb.t ], [ %.pn33.pn, %bb.an ]
  resume { ptr, i32 } %.pn42.pn.pn
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN2v88internal6torque11ReportErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.v8::internal::torque::MessageBuilder", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24, !noalias !64
  call void @_ZN2v88internal6torque8ToStringIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES8_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %0), !noalias !64
  invoke void @_ZN2v88internal6torque14MessageBuilderC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_13TorqueMessage4KindE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !noalias !64  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN2v88internal6torque5ErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_14MessageBuilderEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !noalias !64
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #25
  br label %_ZN2v88internal6torque5ErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_14MessageBuilderEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %1, align 8, !noalias !64  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !noalias !64
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

common.resume:                                    ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i ], [ %i.l, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !64
  br label %common.resume

_ZN2v88internal6torque5ErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_14MessageBuilderEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !64
  invoke void @_ZNK2v88internal6torque14MessageBuilder5ThrowEv(ptr noundef nonnull align 8 dereferenceable(96) %2) #26
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN2v88internal6torque5ErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_14MessageBuilderEDpOT_.exit
  unreachable

bb.e:                                             ; preds = %_ZN2v88internal6torque5ErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_14MessageBuilderEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2v88internal6torque14MessageBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2v88internal6torque5Lexer8RunLexerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"struct.v8::internal::torque::LexerResult") align 8 initializes((0, 48)) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %3 = alloca %"class.v8::base::ContextualVariable<v8::internal::torque::CurrentSourcePosition, v8::internal::torque::SourcePosition>::Scope", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.24", align 1 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.b = load ptr, ptr %2, align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.d ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %i.b, ptr %i.a, align 8
  %i.f = load ptr, ptr %1, align 8
  %i.g = invoke noundef zeroext i1 %i.f(ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.j       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.j = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = trunc i64 %i.k to i32                    ; 3 uses
  %.not7.i = icmp eq ptr %i.b, %i.h
  br i1 %.not7.i, label %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %8 = sub i64 %i.i, %i.j                         ; 3 uses
  %xtraiter = and i64 %8, 1
  %i.m = add i64 %i.i, -1
  %i.n = icmp eq i64 %i.m, %i.j
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %8, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.11.sroa.19.1 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %.sroa.11.sroa.19.2.1, %.lr.ph.i ]
  %i.o = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.aa, %.lr.ph.i ] ; 2 uses
  %i.p = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ab, %.lr.ph.i ]
  %.08.i = phi ptr [ %i.b, %.lr.ph.i.preheader.new ], [ %i.ac, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.q = load i8, ptr %.08.i, align 1
  %i.r = icmp eq i8 %i.q, 10                      ; 3 uses
  %i.s = add nsw i32 %i.o, 1                      ; 2 uses
  %.sroa.11.sroa.19.2 = select i1 %i.r, i32 %i.s, i32 %.sroa.11.sroa.19.1
  %i.t = select i1 %i.r, i32 %i.s, i32 %i.o       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, 10                      ; 3 uses
  %i.x = add nsw i32 %i.t, 1                      ; 2 uses
  %i.y = add nsw i32 %i.p, 2
  %i.z = select i1 %i.r, i32 1, i32 %i.y
  %.sroa.11.sroa.19.2.1 = select i1 %i.w, i32 %i.x, i32 %.sroa.11.sroa.19.2 ; 3 uses
  %i.aa = select i1 %i.w, i32 %i.x, i32 %i.t      ; 2 uses
  %i.ab = select i1 %i.w, i32 0, i32 %i.z         ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i, i64 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !69

_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.11.sroa.19.1.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %.sroa.11.sroa.19.2.1, %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit.loopexit.unr-lcssa ]
  %.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.aa, %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit.loopexit.unr-lcssa ]
  %.epil.init538 = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.ab, %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit.loopexit.unr-lcssa ]
  %.08.i.epil.init = phi ptr [ %i.b, %.lr.ph.i.preheader ], [ %i.ac, %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit.loopexit.unr-lcssa ]
  %lcmp.mod541 = trunc i64 %8 to i1
  call void @llvm.assume(i1 %lcmp.mod541)
  %i.ad = load i8, ptr %.08.i.epil.init, align 1
  %i.ae = icmp eq i8 %i.ad, 10                    ; 2 uses
  %i.af = add nsw i32 %.epil.init, 1
  %i.ag = add nsw i32 %.epil.init538, 1
  %.sroa.11.sroa.19.2.epil = select i1 %i.ae, i32 %i.af, i32 %.sroa.11.sroa.19.1.epil.init
  %i.ah = select i1 %i.ae, i32 0, i32 %i.ag
  br label %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit

_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.11.sroa.19.3 = phi i32 [ 0, %bb.b ], [ %.sroa.11.sroa.19.2.1, %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit.loopexit.unr-lcssa ], [ %.sroa.11.sroa.19.2.epil, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.sroa.11.sroa.27.1 = phi i32 [ 0, %bb.b ], [ %i.ab, %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit.loopexit.unr-lcssa ], [ %i.ah, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.not273 = icmp eq ptr %i.h, %i.e
  br i1 %.not273, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v84base18ContextualVariableINS_8internal6torque17CurrentSourceFileENS3_8SourceIdEE4top_E) ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit62
  %i.ao = phi ptr [ null, %.lr.ph ], [ %i.et, %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit62 ]
  %i.ap = phi ptr [ null, %.lr.ph ], [ %i.dv, %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit62 ] ; 3 uses
  %i.aq = phi ptr [ %i.h, %.lr.ph ], [ %i.ew, %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit62 ] ; 10 uses
  %.sroa.11.sroa.27.0276 = phi i32 [ %.sroa.11.sroa.27.1, %.lr.ph ], [ %.sroa.11.sroa.27.3, %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit62 ] ; 6 uses
  %.sroa.11.sroa.19.0275 = phi i32 [ %.sroa.11.sroa.19.3, %.lr.ph ], [ %.sroa.11.sroa.19.9, %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit62 ] ; 9 uses
  %.sroa.11.sroa.0.0274 = phi i32 [ %i.l, %.lr.ph ], [ %i.fa, %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit62 ] ; 4 uses
  %i.ar = invoke noundef ptr @_ZN2v88internal6torque5Lexer10MatchTokenEPPKcS4_(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull %i.a, ptr noundef %i.e)
          to label %bb.d unwind label %bb.k       ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.as = load ptr, ptr %i.a, align 8             ; 7 uses
  %i.at = ptrtoint ptr %i.as to i64               ; 6 uses
  %i.au = ptrtoint ptr %i.aq to i64               ; 5 uses
  %i.av = sub i64 %i.at, %i.au
  %i.aw = trunc i64 %i.av to i32
  %i.ax = add i32 %.sroa.11.sroa.0.0274, %i.aw    ; 4 uses
  %.not7.i39 = icmp eq ptr %i.aq, %i.as
  br i1 %.not7.i39, label %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit45, label %.lr.ph.i40.preheader

.lr.ph.i40.preheader:                             ; preds = %bb.d
  %i.ay = sub i64 %i.at, %i.au
  %xtraiter542 = and i64 %i.ay, 1
  %lcmp.mod543.not = icmp eq i64 %xtraiter542, 0
  br i1 %lcmp.mod543.not, label %.lr.ph.i40.prol.loopexit, label %.lr.ph.i40.prol

.lr.ph.i40.prol:                                  ; preds = %.lr.ph.i40.preheader
  %i.az = load i8, ptr %i.aq, align 1
  %i.ba = icmp eq i8 %i.az, 10                    ; 3 uses
  %i.bb = add nsw i32 %.sroa.11.sroa.19.0275, 1   ; 2 uses
  %i.bc = add nsw i32 %.sroa.11.sroa.27.0276, 1
  %.sroa.11.sroa.19.5.prol = select i1 %i.ba, i32 %i.bb, i32 %.sroa.11.sroa.19.0275 ; 2 uses
  %i.bd = select i1 %i.ba, i32 %i.bb, i32 %.sroa.11.sroa.19.0275
  %i.be = select i1 %i.ba, i32 0, i32 %i.bc       ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  br label %.lr.ph.i40.prol.loopexit

.lr.ph.i40.prol.loopexit:                         ; preds = %.lr.ph.i40.prol, %.lr.ph.i40.preheader
  %.sroa.11.sroa.19.5.lcssa.unr = phi i32 [ poison, %.lr.ph.i40.preheader ], [ %.sroa.11.sroa.19.5.prol, %.lr.ph.i40.prol ]
  %.lcssa482.unr = phi i32 [ poison, %.lr.ph.i40.preheader ], [ %i.be, %.lr.ph.i40.prol ]
  %.sroa.11.sroa.19.4.unr = phi i32 [ %.sroa.11.sroa.19.0275, %.lr.ph.i40.preheader ], [ %.sroa.11.sroa.19.5.prol, %.lr.ph.i40.prol ]
  %.unr544 = phi i32 [ %.sroa.11.sroa.19.0275, %.lr.ph.i40.preheader ], [ %i.bd, %.lr.ph.i40.prol ]
  %.unr545 = phi i32 [ %.sroa.11.sroa.27.0276, %.lr.ph.i40.preheader ], [ %i.be, %.lr.ph.i40.prol ]
  %.08.i43.unr = phi ptr [ %i.aq, %.lr.ph.i40.preheader ], [ %i.bf, %.lr.ph.i40.prol ]
  %i.bg = add i64 %i.at, -1
  %i.bh = icmp eq i64 %i.bg, %i.au
  br i1 %i.bh, label %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit45, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i40.prol.loopexit, %.lr.ph.i40
  %.sroa.11.sroa.19.4 = phi i32 [ %.sroa.11.sroa.19.5.1, %.lr.ph.i40 ], [ %.sroa.11.sroa.19.4.unr, %.lr.ph.i40.prol.loopexit ]
  %i.bi = phi i32 [ %i.bu, %.lr.ph.i40 ], [ %.unr544, %.lr.ph.i40.prol.loopexit ] ; 2 uses
  %i.bj = phi i32 [ %i.bv, %.lr.ph.i40 ], [ %.unr545, %.lr.ph.i40.prol.loopexit ]
  %.08.i43 = phi ptr [ %i.bw, %.lr.ph.i40 ], [ %.08.i43.unr, %.lr.ph.i40.prol.loopexit ] ; 3 uses
  %i.bk = load i8, ptr %.08.i43, align 1
  %i.bl = icmp eq i8 %i.bk, 10                    ; 3 uses
  %i.bm = add nsw i32 %i.bi, 1                    ; 2 uses
  %.sroa.11.sroa.19.5 = select i1 %i.bl, i32 %i.bm, i32 %.sroa.11.sroa.19.4
  %i.bn = select i1 %i.bl, i32 %i.bm, i32 %i.bi   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i43, i64 1
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = icmp eq i8 %i.bp, 10                    ; 3 uses
  %i.br = add nsw i32 %i.bn, 1                    ; 2 uses
  %i.bs = add nsw i32 %i.bj, 2
  %i.bt = select i1 %i.bl, i32 1, i32 %i.bs
  %.sroa.11.sroa.19.5.1 = select i1 %i.bq, i32 %i.br, i32 %.sroa.11.sroa.19.5 ; 2 uses
  %i.bu = select i1 %i.bq, i32 %i.br, i32 %i.bn
  %i.bv = select i1 %i.bq, i32 0, i32 %i.bt       ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.08.i43, i64 2 ; 2 uses
  %.not.i44.1 = icmp eq ptr %i.bw, %i.as
  br i1 %.not.i44.1, label %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit45, label %.lr.ph.i40, !llvm.loop !69

_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit45: ; preds = %.lr.ph.i40.prol.loopexit, %.lr.ph.i40, %bb.d
  %.sroa.11.sroa.19.6 = phi i32 [ %.sroa.11.sroa.19.0275, %bb.d ], [ %.sroa.11.sroa.19.5.lcssa.unr, %.lr.ph.i40.prol.loopexit ], [ %.sroa.11.sroa.19.5.1, %.lr.ph.i40 ] ; 9 uses
  %.sroa.11.sroa.27.2 = phi i32 [ %.sroa.11.sroa.27.0276, %bb.d ], [ %.lcssa482.unr, %.lr.ph.i40.prol.loopexit ], [ %i.bv, %.lr.ph.i40 ] ; 6 uses
  %.not30 = icmp eq ptr %i.ar, null
  br i1 %.not30, label %bb.e, label %bb.p

bb.e:                                             ; preds = %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit45
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.bx = load ptr, ptr %i.ak, align 8, !noalias !70
  %i.by = load i32, ptr %i.bx, align 4, !noalias !70
  store i32 %i.by, ptr %3, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sroa.11.sroa.0.0274, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.sroa.11.sroa.19.0275, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %.sroa.11.sroa.27.0276, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.ax, ptr %.sroa.6110.0..sroa_idx, align 8
  %.sroa.6110.sroa.5.0..sroa.6110.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %.sroa.11.sroa.19.6, ptr %.sroa.6110.sroa.5.0..sroa.6110.0..sroa_idx.sroa_idx, align 4
  %.sroa.6110.sroa.6.0..sroa.6110.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %.sroa.11.sroa.27.2, ptr %.sroa.6110.sroa.6.0..sroa.6110.0..sroa_idx.sroa_idx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v84base18ContextualVariableINS_8internal6torque21CurrentSourcePositionENS3_14SourcePositionEE4top_E) ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8
  store ptr %i.cb, ptr %i.bz, align 8
  store ptr %3, ptr %i.ca, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.cc = ptrtoint ptr %i.e to i64
  %i.cd = sub i64 %i.cc, %i.au
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.cd, i64 10)
  %i.ce = getelementptr inbounds i8, ptr %i.aq, i64 %.sroa.speculated
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ce, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2v88internal6torque18StringLiteralQuoteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.8, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2v88internal6torque11ReportErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %4) #26
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.a
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.k:                                             ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit213:                                     ; preds = %_ZNSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE9push_backEOS3_.exit, %_ZNKSt6vectorIPN2v88internal6torque6SymbolESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.l:                                             ; preds = %bb.e
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

bb.m:                                             ; preds = %bb.f
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.n:                                             ; preds = %bb.g
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.o:                                             ; preds = %bb.h
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %4, align 8               ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.co = load i64, ptr %i.cm, align 8
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.n ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ck, %bb.o ] ; 2 uses
  %i.cq = load ptr, ptr %5, align 8               ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ct = load i64, ptr %i.cr, align 8
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.ci, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.cv = load ptr, ptr %6, align 8               ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48
  %i.cy = load i64, ptr %i.cw, align 8
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %bb.l
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.l ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.da = load ptr, ptr %i.bz, align 8
  store ptr %i.da, ptr %i.ca, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.ag

bb.p:                                             ; preds = %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit45
  %i.db = load ptr, ptr %i.aj, align 8
  %.not.i52 = icmp eq ptr %i.ap, %i.db
  br i1 %.not.i52, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.ar, ptr %i.ap, align 8
  %i.dc = load ptr, ptr %i.ai, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  store ptr %i.dd, ptr %i.ai, align 8
  %.pre = load ptr, ptr %i.am, align 8
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.de = load ptr, ptr %0, align 8               ; 4 uses
  %i.df = ptrtoint ptr %i.ap to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 6 uses
  %i.di = icmp eq i64 %i.dh, 9223372036854775800
  br i1 %i.di, label %bb.s, label %_ZNKSt6vectorIPN2v88internal6torque6SymbolESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #26
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.s
  unreachable

_ZNKSt6vectorIPN2v88internal6torque6SymbolESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.dj = ashr exact i64 %i.dh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dj, i64 1)
  %i.dk = add nsw i64 %.sroa.speculated.i.i.i, %i.dj ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.dj
  %i.dm = call i64 @llvm.umin.i64(i64 %i.dk, i64 1152921504606846975)
  %i.dn = select i1 %i.dl, i64 1152921504606846975, i64 %i.dm ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dn, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.do = shl nuw nsw i64 %i.dn, 3
  %i.dp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #27
          to label %.noexc53 unwind label %.loopexit213 ; 4 uses

.noexc53:                                         ; preds = %_ZNKSt6vectorIPN2v88internal6torque6SymbolESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %i.dh ; 2 uses
  store ptr %i.ar, ptr %i.dq, align 8
  %i.dr = icmp sgt i64 %i.dh, 0
  br i1 %i.dr, label %bb.t, label %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.t:                                             ; preds = %.noexc53
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr align 8 %i.de, i64 %i.dh, i1 false)
  br label %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.t, %.noexc53
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.dh) #25
  br label %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.dp, ptr %0, align 8
  store ptr %i.ds, ptr %i.ai, align 8
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dn
  store ptr %i.dt, ptr %i.aj, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.du = phi ptr [ %.pre, %bb.q ], [ %i.ao, %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ] ; 13 uses
  %i.dv = phi ptr [ %i.dd, %bb.q ], [ %i.ds, %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %i.dw = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.dx = load ptr, ptr %i.ak, align 8, !noalias !73
  %i.dy = load i32, ptr %i.dx, align 4, !noalias !73 ; 2 uses
  %i.dz = load ptr, ptr %i.an, align 8
  %.not.i.i = icmp eq ptr %i.du, %i.dz
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.aq, ptr %i.du, align 8
  %.sroa.698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.dw, ptr %.sroa.698.0..sroa_idx, align 8
  %.sroa.7101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i32 %i.dy, ptr %.sroa.7101.0..sroa_idx, align 8
  %.sroa.7101.sroa.6.0..sroa.7101.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 20
  store i32 %.sroa.11.sroa.0.0274, ptr %.sroa.7101.sroa.6.0..sroa.7101.0..sroa_idx.sroa_idx, align 4
  %.sroa.7101.sroa.7.0..sroa.7101.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  store i32 %.sroa.11.sroa.19.0275, ptr %.sroa.7101.sroa.7.0..sroa.7101.0..sroa_idx.sroa_idx, align 8
  %.sroa.7101.sroa.8.0..sroa.7101.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 28
  store i32 %.sroa.11.sroa.27.0276, ptr %.sroa.7101.sroa.8.0..sroa.7101.0..sroa_idx.sroa_idx, align 4
  %.sroa.7101.sroa.9.0..sroa.7101.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  store i32 %i.ax, ptr %.sroa.7101.sroa.9.0..sroa.7101.0..sroa_idx.sroa_idx, align 8
  %.sroa.7101.sroa.10.0..sroa.7101.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 36
  store i32 %.sroa.11.sroa.19.6, ptr %.sroa.7101.sroa.10.0..sroa.7101.0..sroa_idx.sroa_idx, align 4
  %.sroa.7101.sroa.11.0..sroa.7101.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  store i32 %.sroa.11.sroa.27.2, ptr %.sroa.7101.sroa.11.0..sroa.7101.0..sroa_idx.sroa_idx, align 8
  %i.ea = load ptr, ptr %i.am, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48 ; 2 uses
  store ptr %i.eb, ptr %i.am, align 8
  br label %_ZNSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE9push_backEOS3_.exit

bb.x:                                             ; preds = %bb.v
  %i.ec = load ptr, ptr %i.al, align 8            ; 5 uses
  %i.ed = ptrtoint ptr %i.du to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee                    ; 4 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775776
  br i1 %i.eg, label %bb.y, label %_ZNKSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #26
          to label %.noexc54 unwind label %.loopexit.split-lp215

.noexc54:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.x
  %i.eh = sdiv exact i64 %i.ef, 48                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.eh, i64 1)
  %i.ei = add nsw i64 %.sroa.speculated.i.i.i.i, %i.eh ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eh
  %i.ek = call i64 @llvm.umin.i64(i64 %i.ei, i64 192153584101141162)
  %i.el = select i1 %i.ej, i64 192153584101141162, i64 %i.ek ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.el, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.em = mul nuw nsw i64 %i.el, 48
  %i.en = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.em) #27
          to label %.noexc55 unwind label %.loopexit214 ; 5 uses

.noexc55:                                         ; preds = %_ZNKSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ef ; 9 uses
  store ptr %i.aq, ptr %i.eo, align 8
  %.sroa.698.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %i.dw, ptr %.sroa.698.0..sroa_idx99, align 8
  %.sroa.7101.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i32 %i.dy, ptr %.sroa.7101.0..sroa_idx102, align 8
  %.sroa.7101.sroa.6.0..sroa.7101.0..sroa_idx102.sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 20
  store i32 %.sroa.11.sroa.0.0274, ptr %.sroa.7101.sroa.6.0..sroa.7101.0..sroa_idx102.sroa_idx, align 4
  %.sroa.7101.sroa.7.0..sroa.7101.0..sroa_idx102.sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store i32 %.sroa.11.sroa.19.0275, ptr %.sroa.7101.sroa.7.0..sroa.7101.0..sroa_idx102.sroa_idx, align 8
  %.sroa.7101.sroa.8.0..sroa.7101.0..sroa_idx102.sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 28
  store i32 %.sroa.11.sroa.27.0276, ptr %.sroa.7101.sroa.8.0..sroa.7101.0..sroa_idx102.sroa_idx, align 4
  %.sroa.7101.sroa.9.0..sroa.7101.0..sroa_idx102.sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  store i32 %i.ax, ptr %.sroa.7101.sroa.9.0..sroa.7101.0..sroa_idx102.sroa_idx, align 8
  %.sroa.7101.sroa.10.0..sroa.7101.0..sroa_idx102.sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  store i32 %.sroa.11.sroa.19.6, ptr %.sroa.7101.sroa.10.0..sroa.7101.0..sroa_idx102.sroa_idx, align 4
  %.sroa.7101.sroa.11.0..sroa.7101.0..sroa_idx102.sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  store i32 %.sroa.11.sroa.27.2, ptr %.sroa.7101.sroa.11.0..sroa.7101.0..sroa_idx102.sroa_idx, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ec, %i.du
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc55, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i.i ], [ %i.en, %.noexc55 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i ], [ %i.ec, %.noexc55 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i.i, i64 48, i1 false), !alias.scope !76
  %i.ep = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ep, %i.du
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !80

_ZNSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc55
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.en, %.noexc55 ], [ %i.eq, %.lr.ph.i.i.i.i.i.i ]
  %i.er = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.ef) #25
  br label %_ZNSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.z, %_ZNSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.en, ptr %i.al, align 8
  store ptr %i.er, ptr %i.am, align 8
  %i.es = getelementptr inbounds nuw [48 x i8], ptr %i.en, i64 %i.el
  store ptr %i.es, ptr %i.an, align 8
  br label %_ZNSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.w
  %i.et = phi ptr [ %i.er, %_ZNSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.eb, %bb.w ] ; 2 uses
  %i.eu = load ptr, ptr %1, align 8
  %i.ev = invoke noundef zeroext i1 %i.eu(ptr noundef nonnull %i.a)
          to label %bb.aa unwind label %.loopexit213 ; 0 uses

bb.aa:                                            ; preds = %_ZNSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE9push_backEOS3_.exit
  %i.ew = load ptr, ptr %i.a, align 8             ; 6 uses
  %i.ex = ptrtoint ptr %i.ew to i64               ; 4 uses
  %i.ey = sub i64 %i.ex, %i.at
  %i.ez = trunc i64 %i.ey to i32
  %i.fa = add i32 %i.ax, %i.ez                    ; 2 uses
  %.not7.i56 = icmp eq ptr %i.as, %i.ew
  br i1 %.not7.i56, label %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit62, label %.lr.ph.i57.preheader

.lr.ph.i57.preheader:                             ; preds = %bb.aa
  %9 = sub i64 %i.ex, %i.at
  %xtraiter546 = and i64 %9, 1
  %lcmp.mod547.not = icmp eq i64 %xtraiter546, 0
  br i1 %lcmp.mod547.not, label %.lr.ph.i57.prol.loopexit, label %.lr.ph.i57.prol

.lr.ph.i57.prol:                                  ; preds = %.lr.ph.i57.preheader
  %i.fb = load i8, ptr %i.as, align 1
  %i.fc = icmp eq i8 %i.fb, 10                    ; 3 uses
  %i.fd = add nsw i32 %.sroa.11.sroa.19.6, 1      ; 2 uses
  %i.fe = add nsw i32 %.sroa.11.sroa.27.2, 1
  %.sroa.11.sroa.19.8.prol = select i1 %i.fc, i32 %i.fd, i32 %.sroa.11.sroa.19.6 ; 2 uses
  %i.ff = select i1 %i.fc, i32 %i.fd, i32 %.sroa.11.sroa.19.6
  %i.fg = select i1 %i.fc, i32 0, i32 %i.fe       ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  br label %.lr.ph.i57.prol.loopexit

.lr.ph.i57.prol.loopexit:                         ; preds = %.lr.ph.i57.prol, %.lr.ph.i57.preheader
  %.sroa.11.sroa.19.8.lcssa.unr = phi i32 [ poison, %.lr.ph.i57.preheader ], [ %.sroa.11.sroa.19.8.prol, %.lr.ph.i57.prol ]
  %.lcssa484.unr = phi i32 [ poison, %.lr.ph.i57.preheader ], [ %i.fg, %.lr.ph.i57.prol ]
  %.sroa.11.sroa.19.7.unr = phi i32 [ %.sroa.11.sroa.19.6, %.lr.ph.i57.preheader ], [ %.sroa.11.sroa.19.8.prol, %.lr.ph.i57.prol ]
  %.unr548 = phi i32 [ %.sroa.11.sroa.19.6, %.lr.ph.i57.preheader ], [ %i.ff, %.lr.ph.i57.prol ]
  %.unr549 = phi i32 [ %.sroa.11.sroa.27.2, %.lr.ph.i57.preheader ], [ %i.fg, %.lr.ph.i57.prol ]
  %.08.i60.unr = phi ptr [ %i.as, %.lr.ph.i57.preheader ], [ %i.fh, %.lr.ph.i57.prol ]
  %i.fi = add i64 %i.ex, -1
  %i.fj = icmp eq i64 %i.fi, %i.at
  br i1 %i.fj, label %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit62, label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %.lr.ph.i57.prol.loopexit, %.lr.ph.i57
  %.sroa.11.sroa.19.7 = phi i32 [ %.sroa.11.sroa.19.8.1, %.lr.ph.i57 ], [ %.sroa.11.sroa.19.7.unr, %.lr.ph.i57.prol.loopexit ]
  %i.fk = phi i32 [ %i.fw, %.lr.ph.i57 ], [ %.unr548, %.lr.ph.i57.prol.loopexit ] ; 2 uses
  %i.fl = phi i32 [ %i.fx, %.lr.ph.i57 ], [ %.unr549, %.lr.ph.i57.prol.loopexit ]
  %.08.i60 = phi ptr [ %i.fy, %.lr.ph.i57 ], [ %.08.i60.unr, %.lr.ph.i57.prol.loopexit ] ; 3 uses
  %i.fm = load i8, ptr %.08.i60, align 1
  %i.fn = icmp eq i8 %i.fm, 10                    ; 3 uses
  %i.fo = add nsw i32 %i.fk, 1                    ; 2 uses
  %.sroa.11.sroa.19.8 = select i1 %i.fn, i32 %i.fo, i32 %.sroa.11.sroa.19.7
  %i.fp = select i1 %i.fn, i32 %i.fo, i32 %i.fk   ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.08.i60, i64 1
  %i.fr = load i8, ptr %i.fq, align 1
  %i.fs = icmp eq i8 %i.fr, 10                    ; 3 uses
  %i.ft = add nsw i32 %i.fp, 1                    ; 2 uses
  %i.fu = add nsw i32 %i.fl, 2
  %i.fv = select i1 %i.fn, i32 1, i32 %i.fu
  %.sroa.11.sroa.19.8.1 = select i1 %i.fs, i32 %i.ft, i32 %.sroa.11.sroa.19.8 ; 2 uses
  %i.fw = select i1 %i.fs, i32 %i.ft, i32 %i.fp
  %i.fx = select i1 %i.fs, i32 0, i32 %i.fv       ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.08.i60, i64 2 ; 2 uses
  %.not.i61.1 = icmp eq ptr %i.fy, %i.ew
  br i1 %.not.i61.1, label %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit62, label %.lr.ph.i57, !llvm.loop !69

_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit62: ; preds = %.lr.ph.i57.prol.loopexit, %.lr.ph.i57, %bb.aa
  %.sroa.11.sroa.19.9 = phi i32 [ %.sroa.11.sroa.19.6, %bb.aa ], [ %.sroa.11.sroa.19.8.lcssa.unr, %.lr.ph.i57.prol.loopexit ], [ %.sroa.11.sroa.19.8.1, %.lr.ph.i57 ] ; 2 uses
  %.sroa.11.sroa.27.3 = phi i32 [ %.sroa.11.sroa.27.2, %bb.aa ], [ %.lcssa484.unr, %.lr.ph.i57.prol.loopexit ], [ %i.fx, %.lr.ph.i57 ] ; 2 uses
  %.not = icmp eq ptr %i.ew, %i.e
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !81

.loopexit214:                                     ; preds = %_ZNKSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit216 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp215:                            ; preds = %bb.y
  %lpad.loopexit.split-lp217 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

._crit_edge.loopexit:                             ; preds = %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit62
  %.pre336 = sub i64 %i.ex, %i.au
  %.pre338 = trunc i64 %.pre336 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit
  %.pre-phi339 = phi i32 [ %.pre338, %._crit_edge.loopexit ], [ %i.l, %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit ]
  %i.fz = phi ptr [ %i.et, %._crit_edge.loopexit ], [ null, %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit ] ; 13 uses
  %.sroa.11.sroa.0.0.lcssa = phi i32 [ %i.fa, %._crit_edge.loopexit ], [ %i.l, %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit ] ; 3 uses
  %.sroa.11.sroa.19.0.lcssa = phi i32 [ %.sroa.11.sroa.19.9, %._crit_edge.loopexit ], [ %.sroa.11.sroa.19.3, %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit ] ; 8 uses
  %.sroa.11.sroa.27.0.lcssa = phi i32 [ %.sroa.11.sroa.27.3, %._crit_edge.loopexit ], [ %.sroa.11.sroa.27.1, %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit ] ; 5 uses
  %.026.lcssa = phi ptr [ %i.aq, %._crit_edge.loopexit ], [ %i.b, %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit ] ; 5 uses
  %.lcssa223 = phi ptr [ %i.ew, %._crit_edge.loopexit ], [ %i.h, %_ZN2v88internal6torque12_GLOBAL__N_120LineAndColumnTracker7AdvanceEPKcS5_.exit ] ; 7 uses
  %i.ga = add i32 %.sroa.11.sroa.0.0.lcssa, %.pre-phi339 ; 2 uses
  %.not7.i63 = icmp eq ptr %.026.lcssa, %.lcssa223
  br i1 %.not7.i63, label %.loopexit, label %.lr.ph.i64.preheader

.lr.ph.i64.preheader:                             ; preds = %._crit_edge
  %.026.lcssa551 = ptrtoaddr ptr %.026.lcssa to i64 ; 2 uses
  %.lcssa223550 = ptrtoaddr ptr %.lcssa223 to i64 ; 2 uses
  %i.gb = sub i64 %.lcssa223550, %.026.lcssa551
  %xtraiter552 = and i64 %i.gb, 1
  %lcmp.mod553.not = icmp eq i64 %xtraiter552, 0
  br i1 %lcmp.mod553.not, label %.lr.ph.i64.prol.loopexit, label %.lr.ph.i64.prol

.lr.ph.i64.prol:                                  ; preds = %.lr.ph.i64.preheader
  %i.gc = load i8, ptr %.026.lcssa, align 1
  %i.gd = icmp eq i8 %i.gc, 10                    ; 3 uses
  %i.ge = add nsw i32 %.sroa.11.sroa.19.0.lcssa, 1 ; 2 uses
  %i.gf = add nsw i32 %.sroa.11.sroa.27.0.lcssa, 1
  %.sroa.11.sroa.19.11.prol = select i1 %i.gd, i32 %i.ge, i32 %.sroa.11.sroa.19.0.lcssa ; 2 uses
  %i.gg = select i1 %i.gd, i32 %i.ge, i32 %.sroa.11.sroa.19.0.lcssa
  %i.gh = select i1 %i.gd, i32 0, i32 %i.gf       ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.026.lcssa, i64 1
  br label %.lr.ph.i64.prol.loopexit

.lr.ph.i64.prol.loopexit:                         ; preds = %.lr.ph.i64.prol, %.lr.ph.i64.preheader
  %.sroa.11.sroa.19.11.lcssa.unr = phi i32 [ poison, %.lr.ph.i64.preheader ], [ %.sroa.11.sroa.19.11.prol, %.lr.ph.i64.prol ]
  %.lcssa481.unr = phi i32 [ poison, %.lr.ph.i64.preheader ], [ %i.gh, %.lr.ph.i64.prol ]
  %.sroa.11.sroa.19.10.unr = phi i32 [ %.sroa.11.sroa.19.0.lcssa, %.lr.ph.i64.preheader ], [ %.sroa.11.sroa.19.11.prol, %.lr.ph.i64.prol ]
  %.unr554 = phi i32 [ %.sroa.11.sroa.19.0.lcssa, %.lr.ph.i64.preheader ], [ %i.gg, %.lr.ph.i64.prol ]
  %.unr555 = phi i32 [ %.sroa.11.sroa.27.0.lcssa, %.lr.ph.i64.preheader ], [ %i.gh, %.lr.ph.i64.prol ]
  %.08.i67.unr = phi ptr [ %.026.lcssa, %.lr.ph.i64.preheader ], [ %i.gi, %.lr.ph.i64.prol ]
  %i.gj = add i64 %.lcssa223550, -1
  %i.gk = icmp eq i64 %i.gj, %.026.lcssa551
  br i1 %i.gk, label %.loopexit, label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %.lr.ph.i64.prol.loopexit, %.lr.ph.i64
  %.sroa.11.sroa.19.10 = phi i32 [ %.sroa.11.sroa.19.11.1, %.lr.ph.i64 ], [ %.sroa.11.sroa.19.10.unr, %.lr.ph.i64.prol.loopexit ]
  %i.gl = phi i32 [ %i.gx, %.lr.ph.i64 ], [ %.unr554, %.lr.ph.i64.prol.loopexit ] ; 2 uses
  %i.gm = phi i32 [ %i.gy, %.lr.ph.i64 ], [ %.unr555, %.lr.ph.i64.prol.loopexit ]
  %.08.i67 = phi ptr [ %i.gz, %.lr.ph.i64 ], [ %.08.i67.unr, %.lr.ph.i64.prol.loopexit ] ; 3 uses
  %i.gn = load i8, ptr %.08.i67, align 1
  %i.go = icmp eq i8 %i.gn, 10                    ; 3 uses
  %i.gp = add nsw i32 %i.gl, 1                    ; 2 uses
  %.sroa.11.sroa.19.11 = select i1 %i.go, i32 %i.gp, i32 %.sroa.11.sroa.19.10
  %i.gq = select i1 %i.go, i32 %i.gp, i32 %i.gl   ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.08.i67, i64 1
  %i.gs = load i8, ptr %i.gr, align 1
  %i.gt = icmp eq i8 %i.gs, 10                    ; 3 uses
  %i.gu = add nsw i32 %i.gq, 1                    ; 2 uses
  %i.gv = add nsw i32 %i.gm, 2
  %i.gw = select i1 %i.go, i32 1, i32 %i.gv
  %.sroa.11.sroa.19.11.1 = select i1 %i.gt, i32 %i.gu, i32 %.sroa.11.sroa.19.11 ; 2 uses
  %i.gx = select i1 %i.gt, i32 %i.gu, i32 %i.gq
  %i.gy = select i1 %i.gt, i32 0, i32 %i.gw       ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.08.i67, i64 2 ; 2 uses
  %.not.i68.1 = icmp eq ptr %i.gz, %.lcssa223
  br i1 %.not.i68.1, label %.loopexit, label %.lr.ph.i64, !llvm.loop !69

.loopexit:                                        ; preds = %.lr.ph.i64.prol.loopexit, %.lr.ph.i64, %._crit_edge
  %.sroa.11.sroa.19.12 = phi i32 [ %.sroa.11.sroa.19.0.lcssa, %._crit_edge ], [ %.sroa.11.sroa.19.11.lcssa.unr, %.lr.ph.i64.prol.loopexit ], [ %.sroa.11.sroa.19.11.1, %.lr.ph.i64 ] ; 2 uses
  %.sroa.11.sroa.27.4 = phi i32 [ %.sroa.11.sroa.27.0.lcssa, %._crit_edge ], [ %.lcssa481.unr, %.lr.ph.i64.prol.loopexit ], [ %i.gy, %.lr.ph.i64 ] ; 2 uses
  %i.ha = call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v84base18ContextualVariableINS_8internal6torque17CurrentSourceFileENS3_8SourceIdEE4top_E)
  %i.hb = load ptr, ptr %i.ha, align 8, !noalias !82
  %i.hc = load i32, ptr %i.hb, align 4, !noalias !82 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8
  %.not.i.i70 = icmp eq ptr %i.fz, %i.hg
  br i1 %.not.i.i70, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.loopexit
  store ptr %.lcssa223, ptr %i.fz, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %.lcssa223, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i32 %i.hc, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 20
  store i32 %.sroa.11.sroa.0.0.lcssa, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  store i32 %.sroa.11.sroa.19.0.lcssa, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 28
  store i32 %.sroa.11.sroa.27.0.lcssa, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  store i32 %i.ga, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 36
  store i32 %.sroa.11.sroa.19.12, ptr %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx, align 4
  %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  store i32 %.sroa.11.sroa.27.4, ptr %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %i.hh = load ptr, ptr %i.he, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  store ptr %i.hi, ptr %i.he, align 8
  br label %_ZNSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE9push_backEOS3_.exit85

bb.ac:                                            ; preds = %.loopexit
  %i.hj = load ptr, ptr %i.hd, align 8            ; 5 uses
  %i.hk = ptrtoint ptr %i.fz to i64
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = sub i64 %i.hk, %i.hl                    ; 4 uses
  %i.hn = icmp eq i64 %i.hm, 9223372036854775776
  br i1 %i.hn, label %bb.ad, label %_ZNKSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i71

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #26
          to label %.noexc83 unwind label %bb.af

.noexc83:                                         ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i71: ; preds = %bb.ac
  %i.ho = sdiv exact i64 %i.hm, 48                ; 3 uses
  %.sroa.speculated.i.i.i.i72 = call i64 @llvm.umax.i64(i64 %i.ho, i64 1)
  %i.hp = add nsw i64 %.sroa.speculated.i.i.i.i72, %i.ho ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.ho
  %i.hr = call i64 @llvm.umin.i64(i64 %i.hp, i64 192153584101141162)
  %i.hs = select i1 %i.hq, i64 192153584101141162, i64 %i.hr ; 3 uses
  %.not.i.i.i.i73 = icmp ne i64 %i.hs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i73)
  %i.ht = mul nuw nsw i64 %i.hs, 48
  %i.hu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ht) #27
          to label %.noexc84 unwind label %bb.af  ; 5 uses

.noexc84:                                         ; preds = %_ZNKSt6vectorIN2v88internal6torque12MatchedInputESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i71
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hm ; 9 uses
end_hunk_0
