inline.NumInlined: 773
inline.NumDeleted: 339
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8facebook5velox6memory15MallocAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationE:bb.a
bb.r:                                             ; preds = %bb.q
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %10)
          to label %bb.s unwind label %bb.u       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.cs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull @.str.5, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.s
  %i.ct = load ptr, ptr %7, align 8, !tbaa !79
  %i.cu = load i64, ptr %i.bs, align 8, !tbaa !94
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef %i.ct, i64 noundef %i.cu)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.u ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.t:                                             ; preds = %bb.q
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.s, %bb.r
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %10) #24
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn82 = phi { ptr, i32 } [ %i.cx, %bb.u ], [ %i.cw, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %bb.p, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.cy, ptr %11, align 8, !tbaa !115
  %i.cz = load ptr, ptr %7, align 8, !tbaa !79    ; 2 uses
  %i.da = load i64, ptr %i.bs, align 8, !tbaa !94 ; 8 uses
  %i.db = icmp ugt i64 %i.da, 15
  br i1 %i.db, label %bb.j, label %._crit_edge.i.i

bb.w:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.da, ptr %i.dc, align 8, !tbaa !94
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.da
  store i8 0, ptr %i.dd, align 1, !tbaa !75
  invoke void @_ZN8facebook5velox6memory15MemoryAllocator26setAllocatorFailureMessageENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull %11)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.de = load ptr, ptr %11, align 8, !tbaa !79   ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.cy
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108: ; preds = %bb.x
  %i.dg = load i64, ptr %i.cy, align 8, !tbaa !75
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
  %i.di = load ptr, ptr %7, align 8, !tbaa !79    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !75
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc6.i, %.noexc.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

bb.z:                                             ; preds = %bb.w
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dp = load ptr, ptr %11, align 8, !tbaa !79   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.cy
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.z
  %i.dr = load i64, ptr %i.cy, align 8, !tbaa !75
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114, %bb.v, %bb.y
  %.pn82.pn.pn = phi { ptr, i32 } [ %i.dn, %bb.y ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %.pn82, %bb.v ], [ %i.do, %bb.z ] ; 2 uses
  %i.dt = load ptr, ptr %7, align 8, !tbaa !79    ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !75
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105
  %.pn82.pn.pn.pn = phi { ptr, i32 } [ %.pn77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %.pn82.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %.pn82.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit169

_ZN8facebook5velox6memory15MallocAllocator14incrementUsageEl.exit.thread: ; preds = %bb.h, %_ZN8facebook5velox6memory15MallocAllocator14incrementUsageEl.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !116 ; 3 uses
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  %i.eb = icmp slt i32 %i.dz, 0
  br i1 %i.eb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN8facebook5velox6memory15MallocAllocator14incrementUsageEl.exit.thread
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #28
          to label %.noexc120 unwind label %bb.ac

.noexc120:                                        ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %_ZN8facebook5velox6memory15MallocAllocator14incrementUsageEl.exit.thread
  %.not213 = icmp eq i32 %i.dz, 0
  br i1 %.not213, label %.loopexit217.thread, label %_ZNSt12_Vector_baseIPvSaIS0_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPvSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.ab
  %i.ec = shl nuw nsw i64 %i.ea, 3
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #29
          to label %.lr.ph unwind label %bb.ac    ; 3 uses

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIPvSaIS0_EE11_M_allocateEm.exit.i
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ea
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.ad

bb.ac:                                            ; preds = %bb.bm, %_ZN8facebook5velox6memory15MallocAllocator29decrementUsageWithReservationEl.exit.i, %bb.bl, %_ZNSt12_Vector_baseIPvSaIS0_EE11_M_allocateEm.exit.i, %bb.aa
  %.sroa.20.1 = phi ptr [ null, %bb.aa ], [ %.sroa.20.0233, %bb.bl ], [ %.sroa.20.0233, %_ZN8facebook5velox6memory15MallocAllocator29decrementUsageWithReservationEl.exit.i ], [ %.sroa.20.0233, %bb.bm ], [ null, %_ZNSt12_Vector_baseIPvSaIS0_EE11_M_allocateEm.exit.i ]
  %.sroa.0179.1 = phi ptr [ null, %bb.aa ], [ %.sroa.0179.0223, %bb.bl ], [ %.sroa.0179.0223, %_ZN8facebook5velox6memory15MallocAllocator29decrementUsageWithReservationEl.exit.i ], [ %.sroa.0179.0223, %bb.bm ], [ null, %_ZNSt12_Vector_baseIPvSaIS0_EE11_M_allocateEm.exit.i ]
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ad:                                            ; preds = %.lr.ph, %bb.bf
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bf ] ; 3 uses
  %.sroa.0179.0250 = phi ptr [ %i.ed, %.lr.ph ], [ %.sroa.0179.8, %bb.bf ] ; 9 uses
  %.sroa.20.0249 = phi ptr [ %i.ee, %.lr.ph ], [ %.sroa.20.8, %bb.bf ] ; 7 uses
  %.sroa.12.0248 = phi ptr [ %i.ed, %.lr.ph ], [ %.sroa.12.4, %bb.bf ] ; 4 uses
  %i.ej = load ptr, ptr %i.ef, align 8, !tbaa !117
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3
  %i.em = sext i32 %i.el to i64                   ; 3 uses
  %i.en = load ptr, ptr %1, align 8, !tbaa !117
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3
  %i.eq = sext i32 %i.ep to i64
  %i.er = load ptr, ptr %i.eg, align 8, !tbaa !83
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.eq
  %i.et = load i64, ptr %i.es, align 8, !tbaa !118 ; 3 uses
  %i.eu = mul i64 %i.et, %i.em                    ; 4 uses
  %i.ev = load i32, ptr %i.l, align 8, !tbaa !109
  %.not.i = icmp eq i32 %i.ev, 3
  br i1 %.not.i, label %bb.ae, label %_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit, !prof !100

bb.ae:                                            ; preds = %bb.ad
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ex = load i8, ptr %i.ew, align 4, !tbaa !110, !range !48, !noundef !49
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_15MallocAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationEE3$_0EEvliT_.exit.thread", label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.l, align 8, !tbaa !109
  br label %"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_15MallocAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationEE3$_0EEvliT_.exit.thread"

_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit: ; preds = %bb.ad
  %i.ez = shl i64 %i.et, 12                       ; 2 uses
  %i.fa = load i8, ptr @_ZN3fLB28FLAGS_velox_time_allocationsE, align 1, !tbaa !87, !range !48, !noundef !49
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit
  %i.fc = icmp eq i64 %i.ez, 0
  br i1 %i.fc, label %_ZN8facebook5velox10ClockTimerD2Ev.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fd = and i64 %i.et, 4503599627370495         ; 3 uses
  %i.fe = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fd, i1 true) ; 2 uses
  %i.ff = xor i64 %i.fe, 63
  %i.fg = lshr exact i64 -9223372036854775808, %i.fe
  %i.fh = icmp eq i64 %i.fg, %i.fd
  %i.fi = shl nuw nsw i64 2, %i.ff
  %.0.i.i.i = select i1 %i.fh, i64 %i.fd, i64 %i.fi
  %i.fj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i, i1 true)
  %i.fk = trunc nuw nsw i64 %i.fj to i32
  %i.fl = xor i32 %i.fk, 63
  %i.fm = call i32 @llvm.umin.i32(i32 %i.fl, i32 19)
  %i.fn = zext nneg i32 %i.fm to i64
  br label %_ZN8facebook5velox10ClockTimerD2Ev.exit.i

_ZN8facebook5velox10ClockTimerD2Ev.exit.i:        ; preds = %bb.ah, %bb.ag
  %.0.i.i = phi i64 [ 0, %bb.ag ], [ %i.fn, %bb.ah ]
  %i.fo = getelementptr inbounds nuw [40 x i8], ptr %i.eh, i64 %.0.i.i ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = call noundef i64 @llvm.x86.rdtsc()
  %i.fr = shl i64 %i.eu, 12
  %i.fs = call noalias ptr @malloc(i64 noundef %i.fr) #32
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fu = atomicrmw add ptr %i.ft, i64 %i.em seq_cst, align 8 ; 0 uses
  %i.fv = mul nsw i64 %i.ez, %i.em
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fx = atomicrmw add ptr %i.fw, i64 %i.fv seq_cst, align 8 ; 0 uses
  %i.fy = call noundef i64 @llvm.x86.rdtsc()
  %i.fz = sub i64 %i.fy, %i.fq
  %i.ga = atomicrmw add ptr %i.fp, i64 %i.fz seq_cst, align 8 ; 0 uses
  br label %"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_15MallocAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationEE3$_0EEvliT_.exit"

bb.ai:                                            ; preds = %_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit
  %i.gb = shl i64 %i.eu, 12
  %i.gc = call noalias ptr @malloc(i64 noundef %i.gb) #32
  br label %"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_15MallocAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationEE3$_0EEvliT_.exit"

.loopexit218:                                     ; preds = %_ZNSt6vectorIPvSaIS0_EE9push_backERKS0_.exit, %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.20.2.ph = phi ptr [ %.sroa.20.0249, %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.20.8, %_ZNSt6vectorIPvSaIS0_EE9push_backERKS0_.exit ]
  %.sroa.0179.2.ph = phi ptr [ %.sroa.0179.0250, %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0179.8, %_ZNSt6vectorIPvSaIS0_EE9push_backERKS0_.exit ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

.loopexit.split-lp:                               ; preds = %bb.bc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_15MallocAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationEE3$_0EEvliT_.exit": ; preds = %bb.ai, %_ZN8facebook5velox10ClockTimerD2Ev.exit.i
  %.0 = phi ptr [ %i.gc, %bb.ai ], [ %i.fs, %_ZN8facebook5velox10ClockTimerD2Ev.exit.i ] ; 4 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_15MallocAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationEE3$_0EEvliT_.exit.thread", label %bb.az

"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_15MallocAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationEE3$_0EEvliT_.exit.thread": ; preds = %"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_15MallocAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationEE3$_0EEvliT_.exit", %bb.ae, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.gd = shl i64 %i.eu, 12
  invoke void @_ZN8facebook5velox13succinctBytesB5cxx11Emi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 noundef %i.gd, i32 noundef 2)
          to label %.noexc92 unwind label %bb.as

.noexc92:                                         ; preds = %"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_15MallocAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationEE3$_0EEvliT_.exit.thread"
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !119
  %i.ge = load ptr, ptr %13, align 8, !tbaa !79
  %i.gf = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !94
  store ptr %i.ge, ptr %5, align 16, !tbaa !75
  %i.gh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.gg, ptr %i.gh, align 8, !tbaa !75
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gj = load i32, ptr %i.g, align 4, !tbaa !3, !noalias !119
  store i32 %i.gj, ptr %i.gi, align 16, !tbaa !75, !noalias !119
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr nonnull @.str.6, i64 97, i64 29, ptr nonnull %5)
          to label %bb.aj unwind label %bb.at

bb.aj:                                            ; preds = %.noexc92
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !119
  %i.gk = load ptr, ptr %13, align 8, !tbaa !79   ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %bb.aj
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !75
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %14, ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 1)
          to label %bb.ak unwind label %bb.au

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  %i.gp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %14)
          to label %bb.al unwind label %bb.av     ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %i.gq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, ptr noundef nonnull @.str.5, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126 unwind label %bb.av ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126: ; preds = %bb.al
  %i.gr = load ptr, ptr %12, align 8, !tbaa !79
  %i.gs = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !94
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gp, ptr noundef %i.gr, i64 noundef %i.gt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit128 unwind label %bb.av ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit128: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit126
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.gv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.gv, ptr %15, align 8, !tbaa !115
  %i.gw = load ptr, ptr %12, align 8, !tbaa !79   ; 2 uses
  %i.gx = load i64, ptr %i.gs, align 8, !tbaa !94 ; 8 uses
  %i.gy = icmp ugt i64 %i.gx, 15
  br i1 %i.gy, label %bb.am, label %._crit_edge.i.i129

bb.am:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit128
  %i.gz = icmp slt i64 %i.gx, 0
  br i1 %i.gz, label %.noexc.i132, label %bb.an

.noexc.i132:                                      ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #28
          to label %.noexc133 unwind label %bb.ax

.noexc133:                                        ; preds = %.noexc.i132
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.ha = add nuw i64 %i.gx, 1                    ; 2 uses
  %i.hb = icmp slt i64 %i.ha, 0
  br i1 %i.hb, label %.noexc6.i131, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i130, !prof !100

.noexc6.i131:                                     ; preds = %bb.an
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc134 unwind label %bb.ax

.noexc134:                                        ; preds = %.noexc6.i131
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i130: ; preds = %bb.an
  %i.hc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ha) #29
          to label %.noexc135 unwind label %bb.ax ; 2 uses

.noexc135:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i130
  store ptr %i.hc, ptr %15, align 8, !tbaa !79
  store i64 %i.gx, ptr %i.gv, align 8, !tbaa !75
  br label %._crit_edge.i.i129

._crit_edge.i.i129:                               ; preds = %.noexc135, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit128
  %i.hd = phi ptr [ %i.hc, %.noexc135 ], [ %i.gv, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit128 ] ; 3 uses
  switch i64 %i.gx, label %bb.ap [
    i64 1, label %bb.ao
    i64 0, label %bb.aq
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i129
  %i.he = load i8, ptr %i.gw, align 1, !tbaa !75
  store i8 %i.he, ptr %i.hd, align 1, !tbaa !75
  br label %bb.aq

bb.ap:                                            ; preds = %._crit_edge.i.i129
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hd, ptr align 1 %i.gw, i64 %i.gx, i1 false)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %._crit_edge.i.i129
  %i.hf = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.gx, ptr %i.hf, align 8, !tbaa !94
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.gx
  store i8 0, ptr %i.hg, align 1, !tbaa !75
  invoke void @_ZN8facebook5velox6memory15MemoryAllocator26setAllocatorFailureMessageENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull %15)
          to label %bb.ar unwind label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  %i.hh = load ptr, ptr %15, align 8, !tbaa !79   ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.gv
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.ar
  %i.hj = load i64, ptr %i.gv, align 8, !tbaa !75
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  %i.hl = load ptr, ptr %12, align 8, !tbaa !79   ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.ho = load i64, ptr %i.hm, align 8, !tbaa !75
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hp) #30
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %.pre = load i32, ptr %i.dy, align 8, !tbaa !116
  %.pre276 = sext i32 %.pre to i64
  br label %.loopexit217

bb.as:                                            ; preds = %"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_15MallocAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationEE3$_0EEvliT_.exit.thread"
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6memory15MallocAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationE:bb.a

_ZN8facebook5velox6memory15MallocAllocator14decrementUsageEl.exit: ; preds = %.noexc165, %bb.bm, %.loopexit217.thread
  %.not72335 = phi i1 [ false, %.noexc165 ], [ false, %bb.bm ], [ true, %.loopexit217.thread ] ; 2 uses
  %i.kw = phi i64 [ %i.jc, %.noexc165 ], [ %i.jc, %bb.bm ], [ %i.kr, %.loopexit217.thread ]
  %.sroa.0179.0223331 = phi ptr [ %.sroa.0179.0223, %.noexc165 ], [ %.sroa.0179.0223, %bb.bm ], [ %.sroa.0179.0223333, %.loopexit217.thread ] ; 2 uses
  %.sroa.20.0233327 = phi ptr [ %.sroa.20.0233, %.noexc165 ], [ %.sroa.20.0233, %bb.bm ], [ %.sroa.20.0233329, %.loopexit217.thread ]
  %.not.i.i.i167 = icmp eq ptr %.sroa.0179.0223331, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZN8facebook5velox6memory15MallocAllocator14decrementUsageEl.exit
  %i.kx = ptrtoint ptr %.sroa.20.0233327 to i64
  %i.ky = sub i64 %i.kx, %i.kw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0179.0223331, i64 noundef %i.ky) #30
  br label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit

bb.br:                                            ; preds = %.loopexit218, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %bb.bp, %bb.ac
  %.sroa.20.6 = phi ptr [ %.sroa.20.1, %bb.ac ], [ %.sroa.20.0233, %bb.bp ], [ %.sroa.20.0249, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ %.sroa.20.2.ph, %.loopexit218 ], [ %.sroa.20.0249, %.loopexit.split-lp ]
  %.sroa.0179.6 = phi ptr [ %.sroa.0179.1, %bb.ac ], [ %.sroa.0179.0223, %bb.bp ], [ %.sroa.0179.0250, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ %.sroa.0179.2.ph, %.loopexit218 ], [ %.sroa.0179.0250, %.loopexit.split-lp ] ; 3 uses
  %.pn75 = phi { ptr, i32 } [ %i.ei, %bb.ac ], [ %.pn73, %bb.bp ], [ %.pn68.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ %lpad.loopexit, %.loopexit218 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i168 = icmp eq ptr %.sroa.0179.6, null
  br i1 %.not.i.i.i168, label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit169, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kz = ptrtoint ptr %.sroa.20.6 to i64
  %i.la = ptrtoint ptr %.sroa.0179.6 to i64
  %i.lb = sub i64 %i.kz, %i.la
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0179.6, i64 noundef %i.lb) #30
  br label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit169

_ZNSt6vectorIPvSaIS0_EED2Ev.exit169:              ; preds = %bb.bs, %bb.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %.pn82.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %.pn75, %bb.br ], [ %.pn75, %bb.bs ]
  resume { ptr, i32 } %.pn82.pn.pn.pn.pn

_ZNSt6vectorIPvSaIS0_EED2Ev.exit:                 ; preds = %bb.bq, %_ZN8facebook5velox6memory15MallocAllocator14decrementUsageEl.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ], [ %.not72335, %_ZN8facebook5velox6memory15MallocAllocator14decrementUsageEl.exit ], [ %.not72335, %bb.bq ]
  ret i1 %.2
}

declare void @_ZN8facebook5velox13succinctBytesB5cxx11Emi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #2

declare void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #2

declare void @_ZN8facebook5velox6memory15MemoryAllocator26setAllocatorFailureMessageENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(888), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !115
  %i.b = load ptr, ptr %1, align 8, !tbaa !79     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !94   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #28
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !100

.noexc6:                                          ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #29 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !79
  store i64 %i.d, ptr %i.a, align 8, !tbaa !75
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !75
  store i8 %i.k, ptr %i.j, align 1, !tbaa !75
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !94
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !75
  ret void
}

declare void @_ZN8facebook5velox6memory10Allocation6appendEPhm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox6memory15MallocAllocator14decrementUsageEl(ptr noundef nonnull align 8 dereferenceable(1040) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.std::thread::id", align 8   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.c = load i32, ptr %i.b, align 8, !tbaa !54
  %i.d = zext i32 %i.c to i64
  %i.e = icmp slt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.f = tail call i64 @pthread_self() #31
  store i64 %i.f, ptr %2, align 8
  %i.g = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNK8facebook5velox17ConcurrentCounterIjE10shardIndexEv.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #27
  unreachable

_ZNK8facebook5velox17ConcurrentCounterIjE10shardIndexEv.exit.i.i: ; preds = %bb.b
  %i.j = trunc i64 %1 to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 992
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.m = load i64, ptr %i.l, align 8, !tbaa !62
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.j, ptr %i.a, align 4, !tbaa !3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZN8facebook5velox6memory15MallocAllocator29decrementUsageWithReservationEl.exit

bb.d:                                             ; preds = %_ZNK8facebook5velox17ConcurrentCounterIjE10shardIndexEv.exit.i.i
  call void @_ZSt25__throw_bad_function_callv() #28
  unreachable

_ZN8facebook5velox6memory15MallocAllocator29decrementUsageWithReservationEl.exit: ; preds = %_ZNK8facebook5velox17ConcurrentCounterIjE10shardIndexEv.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.r = and i64 %i.m, %i.g
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.w = call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 64 dereferenceable(44) %i.s), !inline_history !136 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6memory15MallocAllocator32decrementUsageWithoutReservationEl(ptr noundef nonnull align 8 dereferenceable(1040) %0, i64 noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN8facebook5velox6memory15MallocAllocator29decrementUsageWithReservationEl.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8facebook5velox6memory15MallocAllocator30allocateContiguousWithoutRetryEmPNS1_10AllocationERNS1_20ContiguousAllocationEm(ptr noundef nonnull align 8 dereferenceable(1040) %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = shl i64 %1, 12                           ; 2 uses
  %i.c = load i8, ptr @_ZN3fLB28FLAGS_velox_time_allocationsE, align 1, !tbaa !87, !range !48, !noundef !49
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %1, 4503599627370495             ; 3 uses
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true) ; 2 uses
  %i.h = xor i64 %i.g, 63
  %i.i = lshr exact i64 -9223372036854775808, %i.g
  %i.j = icmp eq i64 %i.i, %i.f
  %i.k = shl nuw nsw i64 2, %i.h
  %.0.i.i.i = select i1 %i.j, i64 %i.f, i64 %i.k
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = xor i32 %i.m, 63
  %i.o = tail call i32 @llvm.umin.i32(i32 %i.n, i32 19)
  %i.p = zext nneg i32 %i.o to i64
  br label %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i

_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i64 [ 0, %bb.b ], [ %i.p, %bb.c ]
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %.0.i.i ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = tail call noundef i64 @llvm.x86.rdtsc()  ; 2 uses
  %i.t = invoke noundef zeroext i1 @_ZN8facebook5velox6memory15MallocAllocator22allocateContiguousImplEmPNS1_10AllocationERNS1_20ContiguousAllocationEm(ptr noundef nonnull align 8 dereferenceable(1040) %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4)
          to label %_ZN8facebook5velox10ClockTimerD2Ev.exit.i unwind label %_ZN8facebook5velox10ClockTimerD2Ev.exit10.i

_ZN8facebook5velox10ClockTimerD2Ev.exit.i:        ; preds = %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.v = atomicrmw add ptr %i.u, i64 1 seq_cst, align 8 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.x = atomicrmw add ptr %i.w, i64 %i.b seq_cst, align 8 ; 0 uses
  %i.y = tail call noundef i64 @llvm.x86.rdtsc()
  %i.z = sub i64 %i.y, %i.s
  %i.aa = atomicrmw add ptr %i.r, i64 %i.z seq_cst, align 8 ; 0 uses
  br label %"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_15MallocAllocator30allocateContiguousWithoutRetryEmPNS1_10AllocationERNS1_20ContiguousAllocationEmE3$_0EEvliT_.exit"

_ZN8facebook5velox10ClockTimerD2Ev.exit10.i:      ; preds = %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = tail call noundef i64 @llvm.x86.rdtsc()
  %i.ad = sub i64 %i.ac, %i.s
  %i.ae = atomicrmw add ptr %i.r, i64 %i.ad seq_cst, align 8 ; 0 uses
  resume { ptr, i32 } %i.ab

bb.d:                                             ; preds = %bb.a
  %i.af = tail call noundef zeroext i1 @_ZN8facebook5velox6memory15MallocAllocator22allocateContiguousImplEmPNS1_10AllocationERNS1_20ContiguousAllocationEm(ptr noundef nonnull align 8 dereferenceable(1040) %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4)
  br label %"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_15MallocAllocator30allocateContiguousWithoutRetryEmPNS1_10AllocationERNS1_20ContiguousAllocationEmE3$_0EEvliT_.exit"

"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_15MallocAllocator30allocateContiguousWithoutRetryEmPNS1_10AllocationERNS1_20ContiguousAllocationEmE3$_0EEvliT_.exit": ; preds = %_ZN8facebook5velox10ClockTimerD2Ev.exit.i, %bb.d
  %.0.in = phi i1 [ %i.t, %_ZN8facebook5velox10ClockTimerD2Ev.exit.i ], [ %i.af, %bb.d ]
  ret i1 %.0.in
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8facebook5velox6memory15MallocAllocator22allocateContiguousImplEmPNS1_10AllocationERNS1_20ContiguousAllocationEm(ptr noundef nonnull align 8 dereferenceable(1040) %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.std::thread::id", align 8   ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.std::thread::id", align 8   ; 4 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.58", align 16 ; 5 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.51", align 16 ; 5 uses
  %9 = alloca %"struct.fmt::v11::detail::format_arg_store.59", align 16 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %14 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.c = icmp eq i64 %4, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %1, %4
  br i1 %.not, label %bb.c, label %bb.f, !prof !100

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !137
  store i64 %1, ptr %7, align 16, !tbaa !75, !alias.scope !140, !noalias !137
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %4, ptr %i.d, align 16, !tbaa !75, !alias.scope !140, !noalias !137
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.11, i64 11, i64 68, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !137
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6memory15MallocAllocator22allocateContiguousImplEmPNS1_10AllocationERNS1_20ContiguousAllocationEmE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.11) #28
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %10, align 8, !tbaa !79    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8, !tbaa !75
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.be

bb.f:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %4, %bb.b ], [ %1, %bb.a ]
  %.not51 = icmp eq ptr %2, null
  br i1 %.not51, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load ptr, ptr %0, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(36) %2) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = tail call noundef i64 @_ZNK8facebook5velox6memory20ContiguousAllocation8numPagesEv(ptr noundef nonnull align 8 dereferenceable(32) %3) ; 5 uses
  %.not52 = icmp eq i64 %i.o, 0
  br i1 %.not52, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN8facebook5velox6memory15MallocAllocator22dispatchFreeContiguousERNS1_20ContiguousAllocationE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = atomicrmw sub ptr %i.p, i64 %i.o seq_cst, align 8 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = atomicrmw sub ptr %i.r, i64 %i.o seq_cst, align 8 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = atomicrmw sub ptr %i.t, i64 %i.o seq_cst, align 8 ; 0 uses
  %i.v = shl i64 %i.o, 12                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.x = load i32, ptr %i.w, align 8, !tbaa !54
  %i.y = zext i32 %i.x to i64
  %i.z = icmp slt i64 %i.v, %i.y
  br i1 %i.z, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.aa = tail call i64 @pthread_self() #31
  store i64 %i.aa, ptr %6, align 8
  %i.ab = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNK8facebook5velox17ConcurrentCounterIjE10shardIndexEv.exit.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #27
  unreachable

_ZNK8facebook5velox17ConcurrentCounterIjE10shardIndexEv.exit.i.i.i: ; preds = %bb.j
  %i.ae = trunc i64 %i.v to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 992
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !62
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.ae, ptr %i.b, align 4, !tbaa !3
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !58
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %_ZN8facebook5velox6memory15MallocAllocator29decrementUsageWithReservationEl.exit.i

bb.l:                                             ; preds = %_ZNK8facebook5velox17ConcurrentCounterIjE10shardIndexEv.exit.i.i.i
  call void @_ZSt25__throw_bad_function_callv() #28
  unreachable

_ZN8facebook5velox6memory15MallocAllocator29decrementUsageWithReservationEl.exit.i: ; preds = %_ZNK8facebook5velox17ConcurrentCounterIjE10shardIndexEv.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.am = and i64 %i.ah, %i.ab
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %i.ai, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !57
  %i.ar = call noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 64 dereferenceable(44) %i.an), !inline_history !143 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN8facebook5velox6memory15MallocAllocator14decrementUsageEl.exit

bb.m:                                             ; preds = %bb.i
  tail call void @_ZN8facebook5velox6memory15MallocAllocator32decrementUsageWithoutReservationEl(ptr noundef nonnull align 8 dereferenceable(1040) %0, i64 noundef %i.v)
  br label %_ZN8facebook5velox6memory15MallocAllocator14decrementUsageEl.exit

_ZN8facebook5velox6memory15MallocAllocator14decrementUsageEl.exit: ; preds = %_ZN8facebook5velox6memory15MallocAllocator29decrementUsageWithReservationEl.exit.i, %bb.m
  call void @_ZN8facebook5velox6memory20ContiguousAllocation5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %bb.n

bb.n:                                             ; preds = %_ZN8facebook5velox6memory15MallocAllocator14decrementUsageEl.exit, %bb.h
  %i.as = icmp eq i64 %1, 0
  br i1 %i.as, label %bb.bd, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = shl i64 %1, 12                          ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !109
  %.not.i = icmp eq i32 %i.av, 4
  br i1 %.not.i, label %bb.p, label %_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit, !prof !100

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !110, !range !48, !noundef !49
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %.noexc67, label %bb.q

bb.q:                                             ; preds = %bb.p
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox6memory15MallocAllocator22dispatchFreeContiguousERNS1_20ContiguousAllocationE:bb.a
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !75
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.m ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %i.bb, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %i.az, %bb.l ] ; 2 uses
  %i.bh = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.o
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !75
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %.pn.pn, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %bb.j
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %i.ax, %bb.j ]
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.q:                                             ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %bb.b
  ret void
}

declare void @_ZN8facebook5velox6memory20ContiguousAllocation5clearEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN8facebook5velox6memory15MallocAllocator26dispatchAllocateContiguousEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1040) %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !109
  %.not.i = icmp eq i32 %i.b, 3
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit, !prof !100

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.d = load i8, ptr %i.c, align 4, !tbaa !110, !range !48, !noundef !49
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !109
  br label %_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit.thread

_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 892
  %i.g = load i8, ptr %i.f, align 4, !tbaa !50, !range !48, !noundef !49
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit
  %i.i = tail call noalias align 4096 ptr @aligned_alloc(i64 noundef 4096, i64 noundef %1) #33
  br label %_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit.thread

bb.e:                                             ; preds = %_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit
  %i.j = tail call ptr @mmap(ptr noundef null, i64 noundef %1, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #24
  br label %_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit.thread

_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit.thread: ; preds = %bb.c, %bb.b, %bb.e, %bb.d
  %.0 = phi ptr [ %i.j, %bb.e ], [ %i.i, %bb.d ], [ null, %bb.b ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN8facebook5velox6memory20ContiguousAllocation3setEPvmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN8facebook5velox6memory15MemoryAllocator12useHugePagesERKNS1_20ContiguousAllocationEb(ptr noundef nonnull align 8 dereferenceable(888), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef range(i64 0, -4095) i64 @_ZN8facebook5velox6memory15MallocAllocator17freeNonContiguousERNS1_10AllocationE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.std::thread::id", align 8   ; 4 uses
  %i.b = tail call noundef zeroext i1 @_ZNK8facebook5velox6memory10Allocation5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %1)
  br i1 %i.b, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !127
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !124  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = and i64 %i.i, 34359738360
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %"_ZN8facebook5velox6memory5Stats10recordFreeIZNS1_15MallocAllocator17freeNonContiguousERNS1_10AllocationEE3$_0EEvlT_.exit", %.preheader
  %.015.lcssa = phi i64 [ 0, %.preheader ], [ %i.ar, %"_ZN8facebook5velox6memory5Stats10recordFreeIZNS1_15MallocAllocator17freeNonContiguousERNS1_10AllocationEE3$_0EEvlT_.exit" ] ; 2 uses
  %i.k = shl i64 %.015.lcssa, 12                  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.m = load i32, ptr %i.l, align 8, !tbaa !54
  %i.n = zext i32 %i.m to i64
  %i.o = icmp slt i64 %i.k, %i.n
  br i1 %i.o, label %bb.b, label %bb.e

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.p = tail call i64 @pthread_self() #31
  store i64 %i.p, ptr %2, align 8
  %i.q = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNK8facebook5velox17ConcurrentCounterIjE10shardIndexEv.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #27
  unreachable

_ZNK8facebook5velox17ConcurrentCounterIjE10shardIndexEv.exit.i.i.i: ; preds = %bb.b
  %i.t = trunc i64 %i.k to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 992
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.w = load i64, ptr %i.v, align 8, !tbaa !62
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.t, ptr %i.a, align 4, !tbaa !3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !58
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_ZN8facebook5velox6memory15MallocAllocator29decrementUsageWithReservationEl.exit.i

bb.d:                                             ; preds = %_ZNK8facebook5velox17ConcurrentCounterIjE10shardIndexEv.exit.i.i.i
  call void @_ZSt25__throw_bad_function_callv() #28
  unreachable

_ZN8facebook5velox6memory15MallocAllocator29decrementUsageWithReservationEl.exit.i: ; preds = %_ZNK8facebook5velox17ConcurrentCounterIjE10shardIndexEv.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.ab = and i64 %i.w, %i.q
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr %i.x, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !57
  %i.ag = call noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 64 dereferenceable(44) %i.ac), !inline_history !143 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN8facebook5velox6memory15MallocAllocator14decrementUsageEl.exit

bb.e:                                             ; preds = %._crit_edge
  tail call void @_ZN8facebook5velox6memory15MallocAllocator32decrementUsageWithoutReservationEl(ptr noundef nonnull align 8 dereferenceable(1040) %0, i64 noundef %i.k)
  br label %_ZN8facebook5velox6memory15MallocAllocator14decrementUsageEl.exit

_ZN8facebook5velox6memory15MallocAllocator14decrementUsageEl.exit: ; preds = %_ZN8facebook5velox6memory15MallocAllocator29decrementUsageWithReservationEl.exit.i, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = atomicrmw sub ptr %i.ah, i64 %.015.lcssa seq_cst, align 8 ; 0 uses
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !124 ; 2 uses
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !127
  %.not.i.i.i = icmp eq ptr %i.ak, %i.aj
  br i1 %.not.i.i.i, label %_ZN8facebook5velox6memory10Allocation5clearEv.exit, label %_ZSt8_DestroyIPN8facebook5velox6memory10Allocation7PageRunES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN8facebook5velox6memory10Allocation7PageRunES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %_ZN8facebook5velox6memory15MallocAllocator14decrementUsageEl.exit
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !127
  br label %_ZN8facebook5velox6memory10Allocation5clearEv.exit

_ZN8facebook5velox6memory10Allocation5clearEv.exit: ; preds = %_ZN8facebook5velox6memory15MallocAllocator14decrementUsageEl.exit, %_ZSt8_DestroyIPN8facebook5velox6memory10Allocation7PageRunES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.al, align 8, !tbaa !128
  store ptr null, ptr %1, align 8, !tbaa !134
  br label %bb.i

.lr.ph:                                           ; preds = %.preheader, %"_ZN8facebook5velox6memory5Stats10recordFreeIZNS1_15MallocAllocator17freeNonContiguousERNS1_10AllocationEE3$_0EEvlT_.exit"
  %indvars.iv = phi i64 [ %indvars.iv.next, %"_ZN8facebook5velox6memory5Stats10recordFreeIZNS1_15MallocAllocator17freeNonContiguousERNS1_10AllocationEE3$_0EEvlT_.exit" ], [ 0, %.preheader ] ; 2 uses
  %i.am = phi ptr [ %i.bj, %"_ZN8facebook5velox6memory5Stats10recordFreeIZNS1_15MallocAllocator17freeNonContiguousERNS1_10AllocationEE3$_0EEvlT_.exit" ], [ %i.f, %.preheader ]
  %.01520 = phi i64 [ %i.ar, %"_ZN8facebook5velox6memory5Stats10recordFreeIZNS1_15MallocAllocator17freeNonContiguousERNS1_10AllocationEE3$_0EEvlT_.exit" ], [ 0, %.preheader ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %.sroa.0.0.copyload.i = load i64, ptr %i.an, align 8, !tbaa !118 ; 2 uses
  %i.ao = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.aq = lshr i64 %.sroa.0.0.copyload.i, 48      ; 5 uses
  %i.ar = add i64 %i.aq, %.01520                  ; 2 uses
  %i.as = load i8, ptr @_ZN3fLB28FLAGS_velox_time_allocationsE, align 1, !tbaa !87, !range !48, !noundef !49
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.au = icmp eq i64 %i.aq, 0
  br i1 %i.au, label %_ZN8facebook5velox10ClockTimerD2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aq, i1 true) ; 2 uses
  %i.aw = xor i64 %i.av, 63
  %i.ax = lshr exact i64 -9223372036854775808, %i.av
  %i.ay = icmp eq i64 %i.ax, %i.aq
  %i.az = shl nuw nsw i64 2, %i.aw
  %.0.i.i.i = select i1 %i.ay, i64 %i.aq, i64 %i.az
  %i.ba = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i, i1 true)
  %i.bb = xor i64 %i.ba, 63
  br label %_ZN8facebook5velox10ClockTimerD2Ev.exit.i

_ZN8facebook5velox10ClockTimerD2Ev.exit.i:        ; preds = %bb.g, %bb.f
  %.0.i.i = phi i64 [ 0, %bb.f ], [ %i.bb, %bb.g ]
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.0.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  %i.be = tail call noundef i64 @llvm.x86.rdtsc()
  tail call void @free(ptr noundef %i.ap) #24
  %i.bf = tail call noundef i64 @llvm.x86.rdtsc()
  %i.bg = sub i64 %i.bf, %i.be
  %i.bh = atomicrmw add ptr %i.bd, i64 %i.bg seq_cst, align 8 ; 0 uses
  br label %"_ZN8facebook5velox6memory5Stats10recordFreeIZNS1_15MallocAllocator17freeNonContiguousERNS1_10AllocationEE3$_0EEvlT_.exit"

bb.h:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef %i.ap) #24
  br label %"_ZN8facebook5velox6memory5Stats10recordFreeIZNS1_15MallocAllocator17freeNonContiguousERNS1_10AllocationEE3$_0EEvlT_.exit"

"_ZN8facebook5velox6memory5Stats10recordFreeIZNS1_15MallocAllocator17freeNonContiguousERNS1_10AllocationEE3$_0EEvlT_.exit": ; preds = %_ZN8facebook5velox10ClockTimerD2Ev.exit.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !127
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !124 ; 2 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = lshr exact i64 %i.bm, 3
  %i.bo = and i64 %i.bn, 4294967295
  %i.bp = icmp samesign ult i64 %indvars.iv.next, %i.bo
  br i1 %i.bp, label %.lr.ph, label %._crit_edge, !llvm.loop !164

bb.i:                                             ; preds = %bb.a, %_ZN8facebook5velox6memory10Allocation5clearEv.exit
  %.0 = phi i64 [ %i.k, %_ZN8facebook5velox6memory10Allocation5clearEv.exit ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox6memory10Allocation5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.46", align 16 ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !165
  %i.g = icmp eq ptr %i.d, %i.f                   ; 2 uses
  %i.h = icmp eq i32 %i.b, 0                      ; 4 uses
  %i.i = xor i1 %i.h, %i.g
  br i1 %i.i, label %bb.b, label %bb.e, !prof !100

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.j = zext i1 %i.h to i8
  %i.k = zext i1 %i.g to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24, !noalias !166
  store i8 %i.j, ptr %1, align 16, !tbaa !75, !noalias !166
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.k, ptr %i.l, align 16, !tbaa !75, !noalias !166
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.11, i64 11, i64 119, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !166
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory10Allocation11sanityCheckEvE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.11) #28
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %2, align 8, !tbaa !79     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !75
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.m

bb.e:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %0, align 8
  %i.t = icmp ne ptr %i.s, null
  %i.u = select i1 %i.h, i1 %i.t, i1 false
  br i1 %i.u, label %bb.f, label %_ZNK8facebook5velox6memory10Allocation11sanityCheckEv.exit, !prof !100

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory10Allocation11sanityCheckEvE18veloxCheckFailArgs_1) #28
  unreachable

_ZNK8facebook5velox6memory10Allocation11sanityCheckEv.exit: ; preds = %bb.e
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory15MallocAllocator14freeContiguousERNS1_20ContiguousAllocationE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !163  ; 2 uses
  %i.c = load i8, ptr @_ZN3fLB28FLAGS_velox_time_allocationsE, align 1, !tbaa !87, !range !48, !noundef !49
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i64 %i.b, 12                        ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true) ; 2 uses
  %i.i = xor i64 %i.h, 63
  %i.j = lshr exact i64 -9223372036854775808, %i.h
  %i.k = icmp eq i64 %i.j, %i.f
  %i.l = shl nuw nsw i64 2, %i.i
  %.0.i.i.i = select i1 %i.k, i64 %i.f, i64 %i.l
  %i.m = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = xor i32 %i.n, 63
  %i.p = tail call i32 @llvm.umin.i32(i32 %i.o, i32 19)
  %i.q = zext nneg i32 %i.p to i64
  br label %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i

_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.0.i.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.d ], [ -1, %bb.c ]
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.0.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.t = tail call noundef i64 @llvm.x86.rdtsc()  ; 2 uses
  invoke void @_ZN8facebook5velox6memory15MallocAllocator18freeContiguousImplERNS1_20ContiguousAllocationE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN8facebook5velox10ClockTimerD2Ev.exit.i unwind label %_ZN8facebook5velox10ClockTimerD2Ev.exit8.i

_ZN8facebook5velox10ClockTimerD2Ev.exit.i:        ; preds = %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i
  %i.u = tail call noundef i64 @llvm.x86.rdtsc()
  %i.v = sub i64 %i.u, %i.t
  %i.w = atomicrmw add ptr %i.s, i64 %i.v seq_cst, align 8 ; 0 uses
  br label %"_ZN8facebook5velox6memory5Stats10recordFreeIZNS1_15MallocAllocator14freeContiguousERNS1_20ContiguousAllocationEE3$_0EEvlT_.exit"

_ZN8facebook5velox10ClockTimerD2Ev.exit8.i:       ; preds = %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = tail call noundef i64 @llvm.x86.rdtsc()
  %i.z = sub i64 %i.y, %i.t
  %i.aa = atomicrmw add ptr %i.s, i64 %i.z seq_cst, align 8 ; 0 uses
  resume { ptr, i32 } %i.x

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6memory15MallocAllocator18freeContiguousImplERNS1_20ContiguousAllocationE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %"_ZN8facebook5velox6memory5Stats10recordFreeIZNS1_15MallocAllocator14freeContiguousERNS1_20ContiguousAllocationEE3$_0EEvlT_.exit"

"_ZN8facebook5velox6memory5Stats10recordFreeIZNS1_15MallocAllocator14freeContiguousERNS1_20ContiguousAllocationEE3$_0EEvlT_.exit": ; preds = %_ZN8facebook5velox10ClockTimerD2Ev.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory15MallocAllocator18freeContiguousImplERNS1_20ContiguousAllocationE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.std::thread::id", align 8   ; 4 uses
  %i.b = tail call noundef zeroext i1 @_ZNK8facebook5velox6memory20ContiguousAllocation5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !163  ; 3 uses
  %i.e = tail call noundef i64 @_ZNK8facebook5velox6memory20ContiguousAllocation8numPagesEv(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 3 uses
  tail call void @_ZN8facebook5velox6memory15MallocAllocator22dispatchFreeContiguousERNS1_20ContiguousAllocationE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = atomicrmw sub ptr %i.f, i64 %i.e seq_cst, align 8 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = atomicrmw sub ptr %i.h, i64 %i.e seq_cst, align 8 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = atomicrmw sub ptr %i.j, i64 %i.e seq_cst, align 8 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.m = load i32, ptr %i.l, align 8, !tbaa !54
  %i.n = zext i32 %i.m to i64
  %i.o = icmp slt i64 %i.d, %i.n
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.p = tail call i64 @pthread_self() #31
  store i64 %i.p, ptr %2, align 8
  %i.q = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNK8facebook5velox17ConcurrentCounterIjE10shardIndexEv.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #27
  unreachable

_ZNK8facebook5velox17ConcurrentCounterIjE10shardIndexEv.exit.i.i.i: ; preds = %bb.c
  %i.t = trunc i64 %i.d to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 992
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.w = load i64, ptr %i.v, align 8, !tbaa !62
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.t, ptr %i.a, align 4, !tbaa !3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !58
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %_ZN8facebook5velox6memory15MallocAllocator29decrementUsageWithReservationEl.exit.i

bb.e:                                             ; preds = %_ZNK8facebook5velox17ConcurrentCounterIjE10shardIndexEv.exit.i.i.i
  call void @_ZSt25__throw_bad_function_callv() #28
  unreachable

_ZN8facebook5velox6memory15MallocAllocator29decrementUsageWithReservationEl.exit.i: ; preds = %_ZNK8facebook5velox17ConcurrentCounterIjE10shardIndexEv.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.ab = and i64 %i.w, %i.q
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr %i.x, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !57
  %i.ag = call noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 64 dereferenceable(44) %i.ac), !inline_history !143 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN8facebook5velox6memory15MallocAllocator14decrementUsageEl.exit

bb.f:                                             ; preds = %bb.b
  tail call void @_ZN8facebook5velox6memory15MallocAllocator32decrementUsageWithoutReservationEl(ptr noundef nonnull align 8 dereferenceable(1040) %0, i64 noundef %i.d)
  br label %_ZN8facebook5velox6memory15MallocAllocator14decrementUsageEl.exit

_ZN8facebook5velox6memory15MallocAllocator14decrementUsageEl.exit: ; preds = %_ZN8facebook5velox6memory15MallocAllocator29decrementUsageWithReservationEl.exit.i, %bb.f
  call void @_ZN8facebook5velox6memory20ContiguousAllocation5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN8facebook5velox6memory15MallocAllocator14decrementUsageEl.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox6memory20ContiguousAllocation5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.46", align 16 ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !163
  %i.c = icmp eq i64 %i.b, 0                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  %i.g = xor i1 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.e, !prof !100

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.h = zext i1 %i.c to i8
  %i.i = zext i1 %i.f to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24, !noalias !169
  store i8 %i.h, ptr %1, align 16, !tbaa !75, !noalias !169
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.i, ptr %i.j, align 16, !tbaa !75, !noalias !169
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.11, i64 11, i64 119, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !169
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory20ContiguousAllocation11sanityCheckEvE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.11) #28
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %2, align 8, !tbaa !79     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !75
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %0, align 8
  %i.r = icmp ne ptr %i.q, null
  %i.s = select i1 %i.c, i1 %i.r, i1 false
  br i1 %i.s, label %bb.f, label %_ZNK8facebook5velox6memory20ContiguousAllocation11sanityCheckEv.exit, !prof !100

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory20ContiguousAllocation11sanityCheckEvE18veloxCheckFailArgs_1) #28
  unreachable

_ZNK8facebook5velox6memory20ContiguousAllocation11sanityCheckEv.exit: ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !153
  %i.v = icmp eq i64 %i.u, 0
  ret i1 %i.v
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @aligned_alloc(i64 allocalign noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN5folly8errnoStrB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8facebook5velox6memory15MallocAllocator26growContiguousWithoutRetryEmRNS1_20ContiguousAllocationE(ptr noundef nonnull align 8 dereferenceable(1040) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.std::thread::id", align 8   ; 4 uses
end_hunk_2
