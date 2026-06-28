inline.NumInlined: 3478
inline.NumDeleted: 1648
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN8facebook5velox6memory13MmapAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationE:bb.a

._crit_edge.i.i124:                               ; preds = %.noexc130, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit110
  %i.cf = phi ptr [ %i.ce, %.noexc130 ], [ %i.cq, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit110 ] ; 3 uses
  switch i64 %i.cs, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %bb.ah
  ]

bb.y:                                             ; preds = %._crit_edge.i.i124
  %i.cg = load i8, ptr %i.cr, align 1, !tbaa !109
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !109
  br label %bb.ah

bb.z:                                             ; preds = %._crit_edge.i.i124
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr align 1 %i.cr, i64 %i.cs, i1 false)
  br label %bb.ah

bb.aa:                                            ; preds = %.preheader241
  %i.ch = cmpxchg ptr @_ZZN8facebook5velox6memory13MmapAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationEE11FB_LEM_hist_0, i64 %i.bz, i64 %i.by seq_cst seq_cst, align 8
  %i.ci = extractvalue { i64, i1 } %i.ch, 1
  br i1 %i.ci, label %bb.ab, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit110

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %11, ptr noundef nonnull @.str, i32 noundef 88, i32 noundef 1)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %11)
          to label %bb.ad unwind label %bb.af     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull @.str.5, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit134 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit134: ; preds = %bb.ad
  %i.cl = load ptr, ptr %10, align 8, !tbaa !121
  %i.cm = load i64, ptr %i.bw, align 8, !tbaa !125
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef %i.cl, i64 noundef %i.cm)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit136 unwind label %bb.af ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit136: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit134
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit110

bb.ae:                                            ; preds = %bb.ab
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit134, %bb.ad, %bb.ac
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %11) #31
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn92 = phi { ptr, i32 } [ %i.cp, %bb.af ], [ %i.co, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit110: ; preds = %bb.aa, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit136, %.preheader241
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.cq, ptr %12, align 8, !tbaa !146
  %i.cr = load ptr, ptr %10, align 8, !tbaa !121  ; 2 uses
  %i.cs = load i64, ptr %i.bw, align 8, !tbaa !125 ; 8 uses
  %i.ct = icmp ugt i64 %i.cs, 15
  br i1 %i.ct, label %bb.w, label %._crit_edge.i.i124

bb.ah:                                            ; preds = %bb.z, %bb.y, %._crit_edge.i.i124
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.cs, ptr %i.cu, align 8, !tbaa !125
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cs
  store i8 0, ptr %i.cv, align 1, !tbaa !109
  invoke void @_ZN8facebook5velox6memory15MemoryAllocator26setAllocatorFailureMessageENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull %12)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.cw = load ptr, ptr %12, align 8, !tbaa !121  ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.cq
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.ai
  %i.cy = load i64, ptr %i.cq, align 8, !tbaa !109
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  %i.da = load i32, ptr %i.e, align 4, !tbaa !134
  %i.db = sext i32 %i.da to i64
  %i.dc = atomicrmw sub ptr %i.h, i64 %i.db seq_cst, align 8 ; 0 uses
  %i.dd = load ptr, ptr %10, align 8, !tbaa !121  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !109
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %bb.cf

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i125, %.noexc6.i126, %.noexc.i127
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

bb.ak:                                            ; preds = %bb.ah
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %12, align 8, !tbaa !121  ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cq
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %bb.ak
  %i.dm = load i64, ptr %i.cq, align 8, !tbaa !109
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143, %bb.ag, %bb.aj
  %.pn92.pn.pn = phi { ptr, i32 } [ %i.di, %bb.aj ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143 ], [ %.pn92, %bb.ag ], [ %i.dj, %bb.ak ]
  %i.do = load ptr, ptr %10, align 8, !tbaa !121  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !109
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %common.resume

bb.al:                                            ; preds = %_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit108
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.du = atomicrmw add ptr %i.dt, i64 1 seq_cst, align 8 ; 0 uses
  %i.dv = load i32, ptr %i.e, align 4, !tbaa !134
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.dy = atomicrmw add ptr %i.dx, i64 %i.dw seq_cst, align 8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 0, ptr %i.a, align 8, !tbaa !69
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !150
  %.not83275 = icmp sgt i32 %i.ea, 0
  br i1 %.not83275, label %.lr.ph, label %_ZN8facebook5velox6memory13MmapAllocator13markAllMappedERKNS1_10AllocationE.exit

.lr.ph:                                           ; preds = %bb.al
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 4 uses
  %i.ef = load ptr, ptr %1, align 8, !tbaa !151
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !3
  %i.eh = sext i32 %i.eg to i64                   ; 2 uses
  %i.ei = load ptr, ptr %i.ec, align 8, !tbaa !113
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eh
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !69 ; 2 uses
  %i.el = shl i64 %i.ek, 12                       ; 2 uses
  %i.em = load ptr, ptr %i.ed, align 8, !tbaa !151
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3  ; 2 uses
  %i.eo = load i8, ptr @_ZN3fLB28FLAGS_velox_time_allocationsE, align 1, !tbaa !152, !range !60, !noundef !61
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph
  %i.eq = load ptr, ptr %i.ee, align 8, !tbaa !79
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.eh
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !77 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32 ; 3 uses
  %i.eu = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.et) #31 ; 2 uses
  %.not.i.i.i.i11.i.peel = icmp eq i32 %i.eu, 0
  br i1 %.not.i.i.i.i11.i.peel, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i12.i.peel, label %.loopexit

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i12.i.peel: ; preds = %bb.am
  %i.ev = invoke noundef zeroext i1 @_ZN8facebook5velox6memory13MmapAllocator9SizeClass14allocateLockedEiPmRNS1_10AllocationE(ptr noundef nonnull align 8 dereferenceable(192) %i.es, i32 noundef %i.en, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_13MmapAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationEE3$_0EEvliT_.exit.peel" unwind label %.loopexit.split-lp

bb.an:                                            ; preds = %.lr.ph
  %i.ew = icmp eq i64 %i.el, 0
  br i1 %i.ew, label %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i.peel, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ex = and i64 %i.ek, 4503599627370495         ; 3 uses
  %i.ey = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ex, i1 true) ; 2 uses
  %i.ez = xor i64 %i.ey, 63
  %i.fa = lshr exact i64 -9223372036854775808, %i.ey
  %i.fb = icmp eq i64 %i.fa, %i.ex
  %i.fc = shl nuw nsw i64 2, %i.ez
  %.0.i.i.i.peel = select i1 %i.fb, i64 %i.ex, i64 %i.fc
  %i.fd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i.peel, i1 true)
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = xor i32 %i.fe, 63
  %i.fg = tail call i32 @llvm.umin.i32(i32 %i.ff, i32 19)
  %i.fh = zext nneg i32 %i.fg to i64
  br label %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i.peel

_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i.peel: ; preds = %bb.ao, %bb.an
  %.0.i.i.peel = phi i64 [ 0, %bb.an ], [ %i.fh, %bb.ao ]
  %i.fi = getelementptr inbounds nuw [40 x i8], ptr %i.eb, i64 %.0.i.i.peel ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 3 uses
  %i.fk = tail call noundef i64 @llvm.x86.rdtsc() ; 3 uses
  %i.fl = load ptr, ptr %1, align 8, !tbaa !151
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3
  %i.fn = sext i32 %i.fm to i64
  %i.fo = load ptr, ptr %i.ee, align 8, !tbaa !79
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fn
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !77 ; 2 uses
  %i.fr = load ptr, ptr %i.ed, align 8, !tbaa !151
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 32 ; 3 uses
  %i.fu = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ft) #31 ; 2 uses
  %.not.i.i.i.i.i.peel = icmp eq i32 %i.fu, 0
  br i1 %.not.i.i.i.i.i.peel, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i.peel, label %.loopexit306

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i.peel: ; preds = %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i.peel
  %i.fv = invoke noundef zeroext i1 @_ZN8facebook5velox6memory13MmapAllocator9SizeClass14allocateLockedEiPmRNS1_10AllocationE(ptr noundef nonnull align 8 dereferenceable(192) %i.fq, i32 noundef %i.fs, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %_ZN8facebook5velox10ClockTimerD2Ev.exit.i.peel unwind label %.loopexit.split-lp308

_ZN8facebook5velox10ClockTimerD2Ev.exit.i.peel:   ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i.peel
  %i.fw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ft) #31 ; 0 uses
  %i.fx = sext i32 %i.en to i64                   ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fz = atomicrmw add ptr %i.fy, i64 %i.fx seq_cst, align 8 ; 0 uses
  %i.ga = mul nsw i64 %i.el, %i.fx
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.gc = atomicrmw add ptr %i.gb, i64 %i.ga seq_cst, align 8 ; 0 uses
  %i.gd = call noundef i64 @llvm.x86.rdtsc()
  %i.ge = sub i64 %i.gd, %i.fk
  %i.gf = atomicrmw add ptr %i.fj, i64 %i.ge seq_cst, align 8 ; 0 uses
  br i1 %i.fv, label %bb.ap, label %.loopexit244

"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_13MmapAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationEE3$_0EEvliT_.exit.peel": ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i12.i.peel
  %i.gg = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.et) #31 ; 0 uses
  br i1 %i.ev, label %bb.ap, label %.loopexit244

bb.ap:                                            ; preds = %_ZN8facebook5velox10ClockTimerD2Ev.exit.i.peel, %"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_13MmapAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationEE3$_0EEvliT_.exit.peel"
  %i.gh = load i32, ptr %i.dz, align 8            ; 2 uses
  %i.gi = icmp eq i32 %i.gh, 1
  %i.gj = load i32, ptr %i.p, align 8
  %.not.i.peel = icmp eq i32 %i.gj, 3
  %or.cond239.peel = select i1 %i.gi, i1 %.not.i.peel, i1 false, !prof !153
  br i1 %or.cond239.peel, label %.loopexit312, label %.critedge.peel, !prof !153

.critedge.peel:                                   ; preds = %bb.ap
  %.not83.peel = icmp sgt i32 %i.gh, 1
  br i1 %.not83.peel, label %.peel.next, label %.critedge106

.peel.next:                                       ; preds = %.critedge.peel, %.critedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ 1, %.critedge.peel ] ; 8 uses
  %i.gk = load ptr, ptr %1, align 8, !tbaa !151
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !3
  %i.gn = sext i32 %i.gm to i64                   ; 2 uses
  %i.go = load ptr, ptr %i.ec, align 8, !tbaa !113
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gn
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !69 ; 2 uses
  %i.gr = shl i64 %i.gq, 12                       ; 2 uses
  %i.gs = load ptr, ptr %i.ed, align 8, !tbaa !151
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !3  ; 2 uses
  %i.gv = load i8, ptr @_ZN3fLB28FLAGS_velox_time_allocationsE, align 1, !tbaa !152, !range !60, !noundef !61
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %.peel.next
  %i.gx = icmp eq i64 %i.gr, 0
  br i1 %i.gx, label %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gy = and i64 %i.gq, 4503599627370495         ; 3 uses
  %i.gz = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.gy, i1 true) ; 2 uses
  %i.ha = xor i64 %i.gz, 63
  %i.hb = lshr exact i64 -9223372036854775808, %i.gz
  %i.hc = icmp eq i64 %i.hb, %i.gy
  %i.hd = shl nuw nsw i64 2, %i.ha
  %.0.i.i.i = select i1 %i.hc, i64 %i.gy, i64 %i.hd
  %i.he = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i, i1 true)
  %i.hf = trunc nuw nsw i64 %i.he to i32
  %i.hg = xor i32 %i.hf, 63
  %i.hh = call i32 @llvm.umin.i32(i32 %i.hg, i32 19)
  %i.hi = zext nneg i32 %i.hh to i64
  br label %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i

_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i = phi i64 [ 0, %bb.aq ], [ %i.hi, %bb.ar ]
  %i.hj = getelementptr inbounds nuw [40 x i8], ptr %i.eb, i64 %.0.i.i ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8 ; 3 uses
  %i.hl = call noundef i64 @llvm.x86.rdtsc()      ; 3 uses
  %i.hm = load ptr, ptr %1, align 8, !tbaa !151
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !3
  %i.hp = sext i32 %i.ho to i64
  %i.hq = load ptr, ptr %i.ee, align 8, !tbaa !79
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.hp
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !77 ; 2 uses
  %i.ht = load ptr, ptr %i.ed, align 8, !tbaa !151
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !3
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 32 ; 3 uses
  %i.hx = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.hw) #31 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.hx, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i, label %.loopexit306

.loopexit306:                                     ; preds = %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i, %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i.peel
  %.lcssa287 = phi ptr [ %i.fj, %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i.peel ], [ %i.hk, %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i ]
  %.lcssa285 = phi i64 [ %i.fk, %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i.peel ], [ %i.hl, %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i ]
  %.lcssa281 = phi i32 [ %i.fu, %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i.peel ], [ %i.hx, %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i ]
  invoke void @_ZSt20__throw_system_errori(i32 noundef %.lcssa281) #39
          to label %.noexc.i149 unwind label %bb.at

.noexc.i149:                                      ; preds = %.loopexit306
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i:    ; preds = %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i
  %i.hy = invoke noundef zeroext i1 @_ZN8facebook5velox6memory13MmapAllocator9SizeClass14allocateLockedEiPmRNS1_10AllocationE(ptr noundef nonnull align 8 dereferenceable(192) %i.hs, i32 noundef %i.hv, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %_ZN8facebook5velox10ClockTimerD2Ev.exit.i unwind label %.loopexit307

.loopexit307:                                     ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  %lpad.loopexit309 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

.loopexit.split-lp308:                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i.peel
  %lpad.loopexit.split-lp310 = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %.loopexit.split-lp308, %.loopexit307
  %.lcssa288 = phi ptr [ %i.hk, %.loopexit307 ], [ %i.fj, %.loopexit.split-lp308 ]
  %.lcssa286 = phi i64 [ %i.hl, %.loopexit307 ], [ %i.fk, %.loopexit.split-lp308 ]
  %.lcssa284 = phi ptr [ %i.hw, %.loopexit307 ], [ %i.ft, %.loopexit.split-lp308 ]
  %lpad.phi311 = phi { ptr, i32 } [ %lpad.loopexit309, %.loopexit307 ], [ %lpad.loopexit.split-lp310, %.loopexit.split-lp308 ]
  %i.hz = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.lcssa284) #31 ; 0 uses
  br label %_ZN8facebook5velox10ClockTimerD2Ev.exit10.i

_ZN8facebook5velox10ClockTimerD2Ev.exit.i:        ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i.i
  %i.ia = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.hw) #31 ; 0 uses
  %i.ib = sext i32 %i.gu to i64                   ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.id = atomicrmw add ptr %i.ic, i64 %i.ib seq_cst, align 8 ; 0 uses
  %i.ie = mul nsw i64 %i.gr, %i.ib
  %i.if = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  %i.ig = atomicrmw add ptr %i.if, i64 %i.ie seq_cst, align 8 ; 0 uses
  %i.ih = call noundef i64 @llvm.x86.rdtsc()
  %i.ii = sub i64 %i.ih, %i.hl
  %i.ij = atomicrmw add ptr %i.hk, i64 %i.ii seq_cst, align 8 ; 0 uses
  br i1 %i.hy, label %bb.aw, label %.loopexit244

bb.at:                                            ; preds = %.loopexit306
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8facebook5velox10ClockTimerD2Ev.exit10.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %bb.ce, %_ZN8facebook5velox10ClockTimerD2Ev.exit10.i, %bb.av
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %bb.av ], [ %eh.lpad-body.i, %_ZN8facebook5velox10ClockTimerD2Ev.exit10.i ], [ %.pn99.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %.pn92.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ %.pn86.pn, %bb.ce ]
  resume { ptr, i32 } %common.resume.op

_ZN8facebook5velox10ClockTimerD2Ev.exit10.i:      ; preds = %bb.at, %bb.as
  %i.il = phi ptr [ %.lcssa287, %bb.at ], [ %.lcssa288, %bb.as ]
  %i.im = phi i64 [ %.lcssa285, %bb.at ], [ %.lcssa286, %bb.as ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ik, %bb.at ], [ %lpad.phi311, %bb.as ]
  %i.in = call noundef i64 @llvm.x86.rdtsc()
  %i.io = sub i64 %i.in, %i.im
  %i.ip = atomicrmw add ptr %i.il, i64 %i.io seq_cst, align 8 ; 0 uses
  br label %common.resume

bb.au:                                            ; preds = %.peel.next
  %i.iq = load ptr, ptr %i.ee, align 8, !tbaa !79
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %i.gn
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !77 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 32 ; 3 uses
  %i.iu = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.it) #31 ; 2 uses
  %.not.i.i.i.i11.i = icmp eq i32 %i.iu, 0
  br i1 %.not.i.i.i.i11.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i12.i, label %.loopexit

.loopexit:                                        ; preds = %bb.au, %bb.am
  %.lcssa = phi i32 [ %i.eu, %bb.am ], [ %i.iu, %bb.au ]
  call void @_ZSt20__throw_system_errori(i32 noundef %.lcssa) #39
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i12.i:  ; preds = %bb.au
  %i.iv = invoke noundef zeroext i1 @_ZN8facebook5velox6memory13MmapAllocator9SizeClass14allocateLockedEiPmRNS1_10AllocationE(ptr noundef nonnull align 8 dereferenceable(192) %i.is, i32 noundef %i.gu, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_13MmapAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationEE3$_0EEvliT_.exit" unwind label %.loopexit305

.loopexit305:                                     ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i12.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp:                               ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i12.i.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %.loopexit.split-lp, %.loopexit305
  %.lcssa280 = phi ptr [ %i.it, %.loopexit305 ], [ %i.et, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit305 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.iw = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.lcssa280) #31 ; 0 uses
  br label %common.resume

"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_13MmapAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationEE3$_0EEvliT_.exit": ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i12.i
  %i.ix = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.it) #31 ; 0 uses
  br i1 %i.iv, label %bb.aw, label %.loopexit244

bb.aw:                                            ; preds = %_ZN8facebook5velox10ClockTimerD2Ev.exit.i, %"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_13MmapAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationEE3$_0EEvliT_.exit"
  %i.iy = load i32, ptr %i.p, align 8
  %.not.i = icmp eq i32 %i.iy, 3
  br i1 %.not.i, label %.loopexit312, label %.critedge, !prof !153

.loopexit312:                                     ; preds = %bb.aw, %bb.ap
  %storemerge276.lcssa300.wide = phi i64 [ 0, %bb.ap ], [ %indvars.iv, %bb.aw ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ja = load i8, ptr %i.iz, align 4, !tbaa !142, !range !60, !noundef !61
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %.loopexit244, label %bb.ax

bb.ax:                                            ; preds = %.loopexit312
  store i32 0, ptr %i.p, align 8, !tbaa !141
  br label %.loopexit244

.loopexit244:                                     ; preds = %_ZN8facebook5velox10ClockTimerD2Ev.exit.i, %"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_13MmapAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationEE3$_0EEvliT_.exit", %"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_13MmapAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationEE3$_0EEvliT_.exit.peel", %_ZN8facebook5velox10ClockTimerD2Ev.exit.i.peel, %.loopexit312, %bb.ax
  %i.jc = phi i64 [ %storemerge276.lcssa300.wide, %bb.ax ], [ %storemerge276.lcssa300.wide, %.loopexit312 ], [ 0, %"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_13MmapAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationEE3$_0EEvliT_.exit.peel" ], [ 0, %_ZN8facebook5velox10ClockTimerD2Ev.exit.i.peel ], [ %indvars.iv, %"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_13MmapAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationEE3$_0EEvliT_.exit" ], [ %indvars.iv, %_ZN8facebook5velox10ClockTimerD2Ev.exit.i ] ; 2 uses
  %storemerge276302 = trunc i64 %i.jc to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.jd = load ptr, ptr %i.ed, align 8, !tbaa !151
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.jc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !154
  store i32 %storemerge276302, ptr %4, align 16, !tbaa !109, !noalias !154
  %i.jf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.jg = load i32, ptr %i.je, align 4, !tbaa !3, !noalias !154
  store i32 %i.jg, ptr %i.jf, align 16, !tbaa !109, !noalias !154
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull @.str.7, i64 47, i64 17, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !154
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %14, ptr noundef nonnull @.str, i32 noundef 119, i32 noundef 1)
          to label %bb.ay unwind label %bb.bh

bb.ay:                                            ; preds = %.loopexit244
  %i.jh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %14)
          to label %bb.az unwind label %bb.bi     ; 2 uses

bb.az:                                            ; preds = %bb.ay
  %i.ji = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jh, ptr noundef nonnull @.str.5, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151 unwind label %bb.bi ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151: ; preds = %bb.az
  %i.jj = load ptr, ptr %13, align 8, !tbaa !121
  %i.jk = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !125
  %i.jm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jh, ptr noundef %i.jj, i64 noundef %i.jl)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit153 unwind label %bb.bi ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit153: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  %i.jn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.jn, ptr %15, align 8, !tbaa !146
  %i.jo = load ptr, ptr %13, align 8, !tbaa !121  ; 2 uses
  %i.jp = load i64, ptr %i.jk, align 8, !tbaa !125 ; 8 uses
  %i.jq = icmp ugt i64 %i.jp, 15
  br i1 %i.jq, label %bb.ba, label %._crit_edge.i.i154

bb.ba:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit153
  %i.jr = icmp slt i64 %i.jp, 0
  br i1 %i.jr, label %.noexc.i157, label %bb.bb

.noexc.i157:                                      ; preds = %bb.ba
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #39
          to label %.noexc158 unwind label %bb.bk

.noexc158:                                        ; preds = %.noexc.i157
  unreachable

bb.bb:                                            ; preds = %bb.ba
  %i.js = add nuw i64 %i.jp, 1                    ; 2 uses
  %i.jt = icmp slt i64 %i.js, 0
  br i1 %i.jt, label %.noexc6.i156, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i155, !prof !110
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6memory13MmapAllocator33allocateNonContiguousWithoutRetryERKNS1_15MemoryAllocator7SizeMixERNS1_10AllocationE:bb.a
  store ptr %i.mj, ptr %18, align 8, !tbaa !121
  store i64 %i.me, ptr %i.mc, align 8, !tbaa !109
  br label %._crit_edge.i.i178

._crit_edge.i.i178:                               ; preds = %.noexc184, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit177
  %i.mk = phi ptr [ %i.mj, %.noexc184 ], [ %i.mc, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit177 ] ; 3 uses
  switch i64 %i.me, label %bb.bv [
    i64 1, label %bb.bu
    i64 0, label %bb.bw
  ]

bb.bu:                                            ; preds = %._crit_edge.i.i178
  %i.ml = load i8, ptr %i.md, align 1, !tbaa !109
  store i8 %i.ml, ptr %i.mk, align 1, !tbaa !109
  br label %bb.bw

bb.bv:                                            ; preds = %._crit_edge.i.i178
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mk, ptr align 1 %i.md, i64 %i.me, i1 false)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %._crit_edge.i.i178
  %i.mm = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.me, ptr %i.mm, align 8, !tbaa !125
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mk, i64 %i.me
  store i8 0, ptr %i.mn, align 1, !tbaa !109
  invoke void @_ZN8facebook5velox6memory15MemoryAllocator26setAllocatorFailureMessageENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull %18)
          to label %bb.bx unwind label %bb.cd

bb.bx:                                            ; preds = %bb.bw
  %i.mo = load ptr, ptr %18, align 8, !tbaa !121  ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.mc
  br i1 %i.mp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186: ; preds = %bb.bx
  %i.mq = load i64, ptr %i.mc, align 8, !tbaa !109
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.mr) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i186
  %i.ms = load ptr, ptr %0, align 8, !tbaa !11
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 40
  %i.mu = load ptr, ptr %i.mt, align 8
  %i.mv = invoke noundef i64 %i.mu(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %bb.by unwind label %bb.cc     ; 0 uses

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188
  %i.mw = load ptr, ptr %16, align 8, !tbaa !121  ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.my = icmp eq ptr %i.mw, %i.mx
  br i1 %i.my, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189: ; preds = %bb.by
  %i.mz = load i64, ptr %i.mx, align 8, !tbaa !109
  %i.na = add i64 %i.mz, 1
  call void @_ZdlPvm(ptr noundef %i.mw, i64 noundef %i.na) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %_ZN8facebook5velox6memory13MmapAllocator13markAllMappedERKNS1_10AllocationE.exit

bb.bz:                                            ; preds = %bb.bp
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ca:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175, %bb.br, %bb.bq
  %i.nc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %17) #31
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.pn84 = phi { ptr, i32 } [ %i.nc, %bb.ca ], [ %i.nb, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i179, %.noexc6.i180, %.noexc.i181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit188
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

bb.cd:                                            ; preds = %bb.bw
  %i.ne = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nf = load ptr, ptr %18, align 8, !tbaa !121  ; 2 uses
  %i.ng = icmp eq ptr %i.nf, %i.mc
  br i1 %i.ng, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %bb.cd
  %i.nh = load i64, ptr %i.mc, align 8, !tbaa !109
  %i.ni = add i64 %i.nh, 1
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.ni) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192, %bb.cc, %bb.cb
  %.pn86 = phi { ptr, i32 } [ %i.nd, %bb.cc ], [ %.pn84, %bb.cb ], [ %i.ne, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192 ], [ %i.ne, %bb.cd ]
  %i.nj = load ptr, ptr %16, align 8, !tbaa !121  ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.nl = icmp eq ptr %i.nj, %i.nk
  br i1 %i.nl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194
  %i.nm = load i64, ptr %i.nk, align 8, !tbaa !109
  %i.nn = add i64 %i.nm, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nn) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %bb.ce

_ZN8facebook5velox6memory13MmapAllocator13markAllMappedERKNS1_10AllocationE.exit: ; preds = %.lr.ph.i, %bb.al, %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i166, %.critedge106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191
  %.3 = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i166 ], [ true, %.critedge106 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit191 ], [ true, %bb.bo ], [ true, %bb.al ], [ true, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.cf

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  %.pn86.pn = phi { ptr, i32 } [ %.pn86, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ %.pn81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %common.resume

bb.cf:                                            ; preds = %bb.c, %_ZN8facebook5velox6memory13MmapAllocator13markAllMappedERKNS1_10AllocationE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117
  %.4 = phi i1 [ %.3, %_ZN8facebook5velox6memory13MmapAllocator13markAllMappedERKNS1_10AllocationE.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ], [ true, %bb.c ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN8facebook5velox6memory13MmapAllocator25freeNonContiguousInternalERNS1_10AllocationE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1088) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK8facebook5velox6memory10Allocation5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %1)
  br i1 %i.a, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !79   ; 2 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %.018.lcssa = phi i64 [ 0, %.preheader ], [ %i.aq, %bb.e ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !171  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !172
  %.not.i.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i.i, label %_ZN8facebook5velox6memory10Allocation5clearEv.exit, label %_ZSt8_DestroyIPN8facebook5velox6memory10Allocation7PageRunES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN8facebook5velox6memory10Allocation7PageRunES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %._crit_edge
  store ptr %i.h, ptr %i.i, align 8, !tbaa !172
  br label %_ZN8facebook5velox6memory10Allocation5clearEv.exit

_ZN8facebook5velox6memory10Allocation5clearEv.exit: ; preds = %._crit_edge, %_ZSt8_DestroyIPN8facebook5velox6memory10Allocation7PageRunES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.k, align 8, !tbaa !157
  store ptr null, ptr %1, align 8, !tbaa !173
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.l = phi ptr [ %i.e, %.lr.ph ], [ %i.as, %bb.e ]
  %.01828 = phi i64 [ 0, %.lr.ph ], [ %i.aq, %bb.e ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = tail call noundef i64 @llvm.x86.rdtsc()
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.p = invoke noundef i64 @_ZN8facebook5velox6memory13MmapAllocator9SizeClass4freeERNS1_10AllocationE(ptr noundef nonnull align 8 dereferenceable(192) %i.o, ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %_ZN8facebook5velox10ClockTimerD2Ev.exit unwind label %_ZN8facebook5velox10ClockTimerD2Ev.exit22 ; 2 uses

_ZN8facebook5velox10ClockTimerD2Ev.exit:          ; preds = %bb.b
  %i.q = trunc i64 %i.p to i32
  %i.r = tail call noundef i64 @llvm.x86.rdtsc()
  %i.s = sub i64 %i.r, %i.n
  %i.t = icmp sgt i32 %i.q, 0
  %i.u = load i8, ptr @_ZN3fLB28FLAGS_velox_time_allocationsE, align 1, !range !60
  %i.v = trunc nuw i8 %i.u to i1
  %or.cond = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN8facebook5velox10ClockTimerD2Ev.exit
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !113
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load i64, ptr %i.x, align 8, !tbaa !69
  %.mask = and i64 %i.y, 4503599627370495         ; 4 uses
  %i.z = icmp eq i64 %.mask, 0
  br i1 %i.z, label %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.mask, i1 true) ; 2 uses
  %i.ab = xor i64 %i.aa, 63
  %i.ac = lshr exact i64 -9223372036854775808, %i.aa
  %i.ad = icmp eq i64 %i.ac, %.mask
  %i.ae = shl nuw nsw i64 2, %i.ab
  %.0.i.i = select i1 %i.ad, i64 %.mask, i64 %i.ae
  %i.af = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i, i1 true)
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = xor i32 %i.ag, 63
  %i.ai = tail call i32 @llvm.umin.i32(i32 %i.ah, i32 19)
  %i.aj = zext nneg i32 %i.ai to i64
  br label %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit

_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ 0, %bb.c ], [ %i.aj, %bb.d ]
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.0.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.am = atomicrmw add ptr %i.al, i64 %i.s seq_cst, align 8 ; 0 uses
  br label %bb.e

_ZN8facebook5velox10ClockTimerD2Ev.exit22:        ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = tail call noundef i64 @llvm.x86.rdtsc() ; 0 uses
  resume { ptr, i32 } %i.an

bb.e:                                             ; preds = %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit, %_ZN8facebook5velox10ClockTimerD2Ev.exit
  %sext = shl i64 %i.p, 32
  %i.ap = ashr exact i64 %sext, 32
  %i.aq = add i64 %i.ap, %.01828                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !79  ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 3
  %i.ax = icmp ugt i64 %i.aw, %indvars.iv.next
  br i1 %i.ax, label %bb.b, label %._crit_edge, !llvm.loop !174

bb.f:                                             ; preds = %bb.a, %_ZN8facebook5velox6memory10Allocation5clearEv.exit
  %.0 = phi i64 [ %.018.lcssa, %_ZN8facebook5velox6memory10Allocation5clearEv.exit ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #8

declare void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #8

declare void @_ZN8facebook5velox6memory15MemoryAllocator26setAllocatorFailureMessageENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(888), ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8facebook5velox6memory13MmapAllocator23ensureEnoughMappedPagesEi(ptr noundef nonnull align 8 dereferenceable(1088) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !141
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %bb.b, label %_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit, !prof !110

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.d = load i8, ptr %i.c, align 4, !tbaa !142, !range !60, !noundef !61
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !141
  br label %_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit.thread

_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 3 uses
  %i.g = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #31 ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.g) #39
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.i = sext i32 %1 to i64                       ; 3 uses
  %i.j = atomicrmw add ptr %i.h, i64 %i.i seq_cst, align 8
  %i.k = add i64 %i.j, %i.i                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.m = load i64, ptr %i.l, align 8, !tbaa !70   ; 2 uses
  %.not = icmp ugt i64 %i.k, %i.m
  br i1 %.not, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.n = sub nuw i64 %i.k, %i.m                   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !75
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !79
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = lshr i64 %i.u, 3
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc ], [ %i.v, %bb.e ]
  %.010.i = phi i64 [ %i.ae, %.noexc ], [ 0, %bb.e ] ; 3 uses
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1  ; 3 uses
  %i.w = and i64 %indvars.iv.next.i, 2147483648
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.y = and i64 %indvars.iv.next.i, 2147483647
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !79
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !77
  %i.ac = sub i64 %i.n, %.010.i
  %i.ad = invoke noundef i64 @_ZN8facebook5velox6memory13MmapAllocator9SizeClass10adviseAwayEm(ptr noundef nonnull align 8 dereferenceable(192) %i.ab, i64 noundef %i.ac)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  %i.ae = add i64 %i.ad, %.010.i                  ; 3 uses
  %.not.i18 = icmp ult i64 %i.ae, %i.n
  br i1 %.not.i18, label %bb.f, label %.sink.split, !llvm.loop !175

.sink.split:                                      ; preds = %.noexc, %bb.f
  %.1.i = phi i64 [ %.010.i, %bb.f ], [ %i.ae, %.noexc ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.ag = atomicrmw add ptr %i.af, i64 %.1.i seq_cst, align 8 ; 0 uses
  %.not17.not = icmp uge i64 %.1.i, %i.n          ; 2 uses
  %i.ah = select i1 %.not17.not, i64 0, i64 %i.i
  %.1.i.sink = add i64 %.1.i, %i.ah
  %i.ai = atomicrmw sub ptr %i.h, i64 %.1.i.sink seq_cst, align 8 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #31 ; 0 uses
  resume { ptr, i32 } %i.aj

bb.i:                                             ; preds = %.sink.split, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.1 = phi i1 [ true, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit ], [ %.not17.not, %.sink.split ]
  %i.al = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #31 ; 0 uses
  br label %_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit.thread

_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit.thread: ; preds = %bb.c, %bb.b, %bb.i
  %.2 = phi i1 [ %.1, %bb.i ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory13MmapAllocator13markAllMappedERKNS1_10AllocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1088) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !167  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.05.08 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.sroa.05.08, align 8, !tbaa !77
  tail call void @_ZN8facebook5velox6memory13MmapAllocator9SizeClass12setAllMappedERKNS1_10AllocationEb(ptr noundef nonnull align 8 dereferenceable(192) %i.f, ptr noundef nonnull align 8 dereferenceable(36) %1, i1 noundef zeroext true)
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.05.08, i64 8 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN8facebook5velox6memory13MmapAllocator10adviseAwayEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1088) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr i64 %i.g, 3
  %i.i = and i64 %i.h, 4294967295
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %i.i, %bb.a ]
  %.010 = phi i64 [ %i.r, %bb.c ], [ 0, %bb.a ]   ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.j = and i64 %indvars.iv.next, 2147483648
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = and i64 %indvars.iv.next, 2147483647
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77
  %i.p = sub i64 %1, %.010
  %i.q = tail call noundef i64 @_ZN8facebook5velox6memory13MmapAllocator9SizeClass10adviseAwayEm(ptr noundef nonnull align 8 dereferenceable(192) %i.o, i64 noundef %i.p)
  %i.r = add i64 %i.q, %.010                      ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox6memory13MmapAllocator9SizeClass4freeERNS1_10AllocationE:bb.a

bb.u:                                             ; preds = %bb.l
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62, %bb.o, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.n, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60, %bb.m
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #31
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.v ], [ %i.cr, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.an

bb.x:                                             ; preds = %_ZN5folly6detail15SingletonHolderIN8facebook5velox17BaseStatsReporterEE12try_get_fastEv.exit.i, %bb.r, %bb.q
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.y:                                             ; preds = %bb.t
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #31
  br label %bb.ai

bb.z:                                             ; preds = %bb.t, %bb.s
  %i.cv = load ptr, ptr %i.an, align 8, !tbaa !203 ; 5 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cx = call noundef i64 @_ZN5folly10TLRefCountmmEv(ptr noundef nonnull align 8 dereferenceable(240) %i.cv) #31
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %bb.ab, label %_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 224
  store ptr null, ptr %i.cz, align 8, !tbaa !204
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 232 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !104 ; 8 uses
  store ptr null, ptr %i.da, align 8, !tbaa !104
  %.not.i.i.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 4 uses
  %i.dd = load atomic i64, ptr %i.dc acquire, align 8 ; 2 uses
  %i.de = icmp eq i64 %i.dd, 4294967297
  %i.df = trunc i64 %i.dd to i32                  ; 2 uses
  br i1 %i.de, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.dc, align 8, !tbaa !105
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !107
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !11
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #31, !inline_history !205
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !11
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #31, !inline_history !205
  br label %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !109
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.df, %bb.af ], [ %i.dp, %bb.ag ]
  %i.dq = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.dq, label %bb.ah, label %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i, !prof !110

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #31
  br label %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i

_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i: ; preds = %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.ad, %bb.ab
  call void @_ZN5folly6detail23ReadMostlySharedPtrCoreINS_10TLRefCountEE10decrefWeakEv(ptr noundef nonnull align 8 dereferenceable(240) %i.cv)
  br label %_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev.exit

_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev.exit: ; preds = %bb.z, %bb.aa, %_ZNSt12__shared_ptrIKvLN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.am

bb.ai:                                            ; preds = %bb.y, %bb.x
  %.pn49 = phi { ptr, i32 } [ %i.cu, %bb.y ], [ %i.ct, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.an

bb.aj:                                            ; preds = %.lr.ph97
  %i.dr = load ptr, ptr %i.ak, align 8, !tbaa !113
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.bl
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !69
  %i.du = and i64 %i.dt, %i.bp
  %.not77 = icmp eq i64 %i.du, 0
  br i1 %.not77, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dv = load i32, ptr %i.al, align 4, !tbaa !206
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %i.al, align 4, !tbaa !206
  %i.dx = load ptr, ptr %i.am, align 8, !tbaa !113
  %i.dy = trunc nsw i64 %indvars.iv107 to i32
  %i.dz = sdiv i32 %i.dy, 512                     ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = trunc i32 %i.dz to i8
  %i.ec = and i8 %i.eb, 7
  %i.ed = shl nuw i8 1, %i.ec
  %i.ee = lshr i64 %i.ea, 3
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.ee ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !109
  %i.eh = or i8 %i.eg, %i.ed
  store i8 %i.eh, ptr %i.ef, align 1, !tbaa !109
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !113
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ei = phi ptr [ %.pre, %bb.ak ], [ %i.bk, %bb.aj ]
  %i.ej = and i64 %indvars.iv107, 7
  %i.ek = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !109
  %i.em = lshr i64 %indvars.iv107, 3
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.em ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !109
  %i.ep = and i8 %i.eo, %i.el
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !109
  %i.eq = load i64, ptr %i.v, align 8, !tbaa !182
  %i.er = add i64 %i.eq, %.14494
  br label %bb.am

bb.am:                                            ; preds = %_ZNSolsEm.exit, %_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev.exit, %bb.al
  %.245 = phi i64 [ %.14494, %_ZN5folly19ReadMostlySharedPtrIN8facebook5velox17BaseStatsReporterENS_10TLRefCountEED2Ev.exit ], [ %.14494, %_ZNSolsEm.exit ], [ %i.er, %bb.al ] ; 2 uses
  %indvars.iv.next108 = add nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.es = icmp slt i64 %indvars.iv.next108, %i.bj
  br i1 %i.es, label %.lr.ph97, label %_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit57.loopexit, !llvm.loop !207

_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit57.loopexit: ; preds = %bb.am
  %.pre114 = load ptr, ptr %i.b, align 8, !tbaa !172
  %.pre115 = load ptr, ptr %i.a, align 8, !tbaa !171
  br label %_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit57

_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit57: ; preds = %_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit57.loopexit, %bb.k, %bb.g
  %i.et = phi ptr [ %i.ap, %bb.g ], [ %i.ap, %bb.k ], [ %.pre115, %_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit57.loopexit ] ; 2 uses
  %i.eu = phi ptr [ %i.aq, %bb.g ], [ %i.aq, %bb.k ], [ %.pre114, %_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit57.loopexit ] ; 2 uses
  %.346 = phi i64 [ %.04398, %bb.g ], [ %.04398, %bb.k ], [ %.245, %_ZNK8facebook5velox6memory13MmapAllocator9SizeClass9isInRangeEPh.exit57.loopexit ] ; 2 uses
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.ev = ptrtoint ptr %i.eu to i64
  %i.ew = ptrtoint ptr %i.et to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = lshr exact i64 %i.ex, 3
  %i.ez = and i64 %i.ey, 4294967295
  %i.fa = icmp samesign ult i64 %indvars.iv.next112, %i.ez
  br i1 %i.fa, label %bb.g, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge, !llvm.loop !208

bb.an:                                            ; preds = %bb.w, %bb.ai, %bb.j
  %.pn49.pn.pn = phi { ptr, i32 } [ %i.be, %bb.j ], [ %.pn49, %bb.ai ], [ %.pn, %bb.w ]
  %i.fb = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.z) #31 ; 0 uses
  resume { ptr, i32 } %.pn49.pn.pn

.loopexit:                                        ; preds = %bb.e, %bb.a, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge
  %.032 = phi i64 [ %.043.lcssa, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge ], [ 0, %bb.a ], [ 0, %bb.e ]
  ret i64 %.032
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8facebook5velox6memory13MmapAllocator30allocateContiguousWithoutRetryEmPNS1_10AllocationERNS1_20ContiguousAllocationEm(ptr noundef nonnull align 8 dereferenceable(1088) %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = shl i64 %1, 12                           ; 2 uses
  %i.c = load i8, ptr @_ZN3fLB28FLAGS_velox_time_allocationsE, align 1, !tbaa !152, !range !60, !noundef !61
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
  %i.t = invoke noundef zeroext i1 @_ZN8facebook5velox6memory13MmapAllocator22allocateContiguousImplEmPNS1_10AllocationERNS1_20ContiguousAllocationEm(ptr noundef nonnull align 8 dereferenceable(1088) %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4)
          to label %_ZN8facebook5velox10ClockTimerD2Ev.exit.i unwind label %_ZN8facebook5velox10ClockTimerD2Ev.exit10.i

_ZN8facebook5velox10ClockTimerD2Ev.exit.i:        ; preds = %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.v = atomicrmw add ptr %i.u, i64 1 seq_cst, align 8 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.x = atomicrmw add ptr %i.w, i64 %i.b seq_cst, align 8 ; 0 uses
  %i.y = tail call noundef i64 @llvm.x86.rdtsc()
  %i.z = sub i64 %i.y, %i.s
  %i.aa = atomicrmw add ptr %i.r, i64 %i.z seq_cst, align 8 ; 0 uses
  br label %"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_13MmapAllocator30allocateContiguousWithoutRetryEmPNS1_10AllocationERNS1_20ContiguousAllocationEmE3$_0EEvliT_.exit"

_ZN8facebook5velox10ClockTimerD2Ev.exit10.i:      ; preds = %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = tail call noundef i64 @llvm.x86.rdtsc()
  %i.ad = sub i64 %i.ac, %i.s
  %i.ae = atomicrmw add ptr %i.r, i64 %i.ad seq_cst, align 8 ; 0 uses
  resume { ptr, i32 } %i.ab

bb.d:                                             ; preds = %bb.a
  %i.af = tail call noundef zeroext i1 @_ZN8facebook5velox6memory13MmapAllocator22allocateContiguousImplEmPNS1_10AllocationERNS1_20ContiguousAllocationEm(ptr noundef nonnull align 8 dereferenceable(1088) %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4)
  br label %"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_13MmapAllocator30allocateContiguousWithoutRetryEmPNS1_10AllocationERNS1_20ContiguousAllocationEmE3$_0EEvliT_.exit"

"_ZN8facebook5velox6memory5Stats14recordAllocateIZNS1_13MmapAllocator30allocateContiguousWithoutRetryEmPNS1_10AllocationERNS1_20ContiguousAllocationEmE3$_0EEvliT_.exit": ; preds = %_ZN8facebook5velox10ClockTimerD2Ev.exit.i, %bb.d
  %.0.in = phi i1 [ %i.t, %_ZN8facebook5velox10ClockTimerD2Ev.exit.i ], [ %i.af, %bb.d ]
  ret i1 %.0.in
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8facebook5velox6memory13MmapAllocator22allocateContiguousImplEmPNS1_10AllocationERNS1_20ContiguousAllocationEm(ptr noundef nonnull align 8 dereferenceable(1088) %0, i64 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.123", align 16 ; 5 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.132", align 16 ; 9 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.131", align 16 ; 5 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.124", align 16 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = icmp eq i64 %4, 0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %1, %4
  br i1 %.not, label %bb.c, label %bb.f, !prof !110

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !209
  store i64 %1, ptr %5, align 16, !tbaa !109, !noalias !209
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %4, ptr %i.b, align 16, !tbaa !109, !noalias !209
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.11, i64 11, i64 68, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !209
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6memory13MmapAllocator22allocateContiguousImplEmPNS1_10AllocationERNS1_20ContiguousAllocationEmE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr nonnull @.str.11) #39
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %9, align 8, !tbaa !121    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.g = load i64, ptr %i.e, align 8, !tbaa !109
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  br label %bb.cm

bb.f:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %4, %bb.b ], [ %1, %bb.a ]      ; 3 uses
  %.not68 = icmp eq ptr %2, null
  br i1 %.not68, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = tail call noundef i64 @_ZN8facebook5velox6memory13MmapAllocator25freeNonContiguousInternalERNS1_10AllocationE(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr noundef nonnull align 8 dereferenceable(36) %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.060 = phi i64 [ %i.i, %bb.g ], [ 0, %bb.f ]
  %i.j = tail call noundef i64 @_ZNK8facebook5velox6memory20ContiguousAllocation8numPagesEv(ptr noundef nonnull align 8 dereferenceable(32) %3) ; 5 uses
  %.not69 = icmp eq i64 %i.j, 0
  br i1 %.not69, label %bb.aa, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN8facebook5velox6memory15MemoryAllocator12useHugePagesERKNS1_20ContiguousAllocationEb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 892
  %i.l = load i8, ptr %i.k, align 4, !tbaa !62, !range !60, !noundef !61
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 3 uses
  %i.o = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #31 ; 2 uses
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.o) #39
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !101
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !212
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !214
  invoke void @_ZN8facebook5velox6memory17ManagedMmapArenas4freeEPvm(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef %i.s, i64 noundef %i.u)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.v = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #31 ; 0 uses
  br label %bb.z

bb.m:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #31 ; 0 uses
  br label %bb.cm

bb.n:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !212
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !214
  %i.ac = tail call i32 @munmap(ptr noundef %i.z, i64 noundef %i.ab) #31
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.o, label %bb.z

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull @.str, i32 noundef 259, i32 noundef 2)
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %10)
          to label %bb.p unwind label %bb.s       ; 3 uses

bb.p:                                             ; preds = %bb.o
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.5, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.p
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.12, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.ah = tail call ptr @__errno_location() #41
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  invoke void @_ZN5folly8errnoStrB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i32 noundef %i.ai)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106
  %i.aj = load ptr, ptr %11, align 8, !tbaa !121
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !125
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef %i.aj, i64 noundef %i.al)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.u ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.q
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.13, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109 unwind label %bb.u ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit109: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  invoke void @_ZNK8facebook5velox6memory20ContiguousAllocation8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.r unwind label %bb.v

end_hunk_2
begin_hunk_3_@_ZN8facebook5velox6memory13MmapAllocator22allocateContiguousImplEmPNS1_10AllocationERNS1_20ContiguousAllocationEm:bb.a
  br label %bb.cb

bb.ca:                                            ; preds = %._crit_edge.i.i179
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iw, ptr align 1 %i.ip, i64 %i.iq, i1 false)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %._crit_edge.i.i179
  %i.iy = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 %i.iq, ptr %i.iy, align 8, !tbaa !125
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.iq
  store i8 0, ptr %i.iz, align 1, !tbaa !109
  invoke void @_ZN8facebook5velox6memory15MemoryAllocator26setAllocatorFailureMessageENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull %23)
          to label %bb.cc unwind label %bb.cj

bb.cc:                                            ; preds = %bb.cb
  %i.ja = load ptr, ptr %23, align 8, !tbaa !121  ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.io
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.cc
  %i.jc = load i64, ptr %i.io, align 8, !tbaa !109
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jd) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187
  %i.je = atomicrmw sub ptr %i.bx, i64 %1 seq_cst, align 8 ; 0 uses
  %i.jf = atomicrmw sub ptr %i.bv, i64 %1 seq_cst, align 8 ; 0 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jh = atomicrmw sub ptr %i.jg, i64 %1 seq_cst, align 8 ; 0 uses
  %i.ji = load ptr, ptr %19, align 8, !tbaa !121  ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.jk = icmp eq ptr %i.ji, %i.jj
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189
  %i.jl = load i64, ptr %i.jj, align 8, !tbaa !109
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jm) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  br label %bb.cl

bb.cd:                                            ; preds = %bb.bt
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

bb.ce:                                            ; preds = %.noexc102
  %i.jo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jp = load ptr, ptr %21, align 8, !tbaa !121  ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.jr = icmp eq ptr %i.jp, %i.jq
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %bb.ce
  %i.js = load i64, ptr %i.jq, align 8, !tbaa !109
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.jt) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193, %bb.cd
  %.pn78 = phi { ptr, i32 } [ %i.jn, %bb.cd ], [ %i.jo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193 ], [ %i.jo, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #31
  %i.ju = load ptr, ptr %20, align 8, !tbaa !121  ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.jw = icmp eq ptr %i.ju, %i.jv
  br i1 %i.jw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195
  %i.jx = load i64, ptr %i.jv, align 8, !tbaa !109
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jy) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

bb.cf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit176, %bb.bw, %bb.bv
  %i.ka = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %22) #31
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn80 = phi { ptr, i32 } [ %i.ka, %bb.cg ], [ %i.jz, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i180, %.noexc6.i181, %.noexc.i182
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

bb.cj:                                            ; preds = %bb.cb
  %i.kc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kd = load ptr, ptr %23, align 8, !tbaa !121  ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.io
  br i1 %i.ke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %bb.cj
  %i.kf = load i64, ptr %i.io, align 8, !tbaa !109
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kg) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199, %bb.ci, %bb.ch
  %.pn82 = phi { ptr, i32 } [ %.pn80, %bb.ch ], [ %i.kb, %bb.ci ], [ %i.kc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199 ], [ %i.kc, %bb.cj ] ; 2 uses
  %i.kh = load ptr, ptr %19, align 8, !tbaa !121  ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !109
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
  %.pn82.pn = phi { ptr, i32 } [ %.pn78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198 ], [ %.pn82, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202 ], [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #31
  br label %bb.cm

bb.ck:                                            ; preds = %_ZN8facebook5velox6memory15MemoryAllocator25testingHasInjectedFailureENS2_15InjectedFailureE.exit.thread
  %i.km = shl i64 %1, 12
  %i.kn = shl i64 %.0, 12
  call void @_ZN8facebook5velox6memory20ContiguousAllocation3setEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %.041, i64 noundef %i.km, i64 noundef %i.kn)
  call void @_ZN8facebook5velox6memory15MemoryAllocator12useHugePagesERKNS1_20ContiguousAllocationEb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext true)
  br label %bb.cl

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %bb.aa
  %.3 = phi i1 [ true, %bb.aa ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ], [ %or.cond.not, %bb.ck ], [ %or.cond.not, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ]
  ret i1 %.3

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %bb.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %bb.m, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn92.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.pn.pn.pn, %bb.y ], [ %i.w, %bb.m ], [ %.pn92.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ], [ %.pn76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ], [ %.pn82.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ], [ %i.gy, %bb.br ]
  resume { ptr, i32 } %.pn92.pn.pn.pn.pn.pn
}

declare noundef i64 @_ZNK8facebook5velox6memory20ContiguousAllocation8numPagesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

declare void @_ZN8facebook5velox6memory15MemoryAllocator12useHugePagesERKNS1_20ContiguousAllocationEb(ptr noundef nonnull align 8 dereferenceable(888), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #9

declare void @_ZN8facebook5velox6memory17ManagedMmapArenas4freeEPvm(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN5folly8errnoStrB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

declare void @_ZNK8facebook5velox6memory20ContiguousAllocation8toStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

declare void @_ZN8facebook5velox6memory20ContiguousAllocation5clearEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

declare noundef ptr @_ZN8facebook5velox6memory17ManagedMmapArenas8allocateEm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZN8facebook5velox6memory20ContiguousAllocation3setEPvmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory13MmapAllocator14freeContiguousERNS1_20ContiguousAllocationE(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !224  ; 2 uses
  %i.c = load i8, ptr @_ZN3fLB28FLAGS_velox_time_allocationsE, align 1, !tbaa !152, !range !60, !noundef !61
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
  invoke void @_ZN8facebook5velox6memory13MmapAllocator18freeContiguousImplERNS1_20ContiguousAllocationE(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN8facebook5velox10ClockTimerD2Ev.exit.i unwind label %_ZN8facebook5velox10ClockTimerD2Ev.exit8.i

_ZN8facebook5velox10ClockTimerD2Ev.exit.i:        ; preds = %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i
  %i.u = tail call noundef i64 @llvm.x86.rdtsc()
  %i.v = sub i64 %i.u, %i.t
  %i.w = atomicrmw add ptr %i.s, i64 %i.v seq_cst, align 8 ; 0 uses
  br label %"_ZN8facebook5velox6memory5Stats10recordFreeIZNS1_13MmapAllocator14freeContiguousERNS1_20ContiguousAllocationEE3$_0EEvlT_.exit"

_ZN8facebook5velox10ClockTimerD2Ev.exit8.i:       ; preds = %_ZN8facebook5velox6memory5Stats9sizeIndexEl.exit.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = tail call noundef i64 @llvm.x86.rdtsc()
  %i.z = sub i64 %i.y, %i.t
  %i.aa = atomicrmw add ptr %i.s, i64 %i.z seq_cst, align 8 ; 0 uses
  resume { ptr, i32 } %i.x

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6memory13MmapAllocator18freeContiguousImplERNS1_20ContiguousAllocationE(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %"_ZN8facebook5velox6memory5Stats10recordFreeIZNS1_13MmapAllocator14freeContiguousERNS1_20ContiguousAllocationEE3$_0EEvlT_.exit"

"_ZN8facebook5velox6memory5Stats10recordFreeIZNS1_13MmapAllocator14freeContiguousERNS1_20ContiguousAllocationEE3$_0EEvlT_.exit": ; preds = %_ZN8facebook5velox10ClockTimerD2Ev.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox6memory13MmapAllocator18freeContiguousImplERNS1_20ContiguousAllocationE(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = tail call noundef zeroext i1 @_ZNK8facebook5velox6memory20ContiguousAllocation5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  br i1 %i.a, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6memory15MemoryAllocator12useHugePagesERKNS1_20ContiguousAllocationEb(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 892
  %i.c = load i8, ptr %i.b, align 4, !tbaa !62, !range !60, !noundef !61
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 3 uses
  %i.f = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #31 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.f) #39
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !101
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !212
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !214
  invoke void @_ZN8facebook5velox6memory17ManagedMmapArenas4freeEPvm(ptr noundef nonnull align 8 dereferenceable(72) %i.h, ptr noundef %i.j, i64 noundef %i.l)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.m = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #31 ; 0 uses
  br label %bb.s

bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #31 ; 0 uses
  br label %bb.u

bb.g:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !212
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !214
  %i.t = tail call i32 @munmap(ptr noundef %i.q, i64 noundef %i.s) #31
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str, i32 noundef 382, i32 noundef 2)
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.i unwind label %bb.l       ; 3 uses

bb.i:                                             ; preds = %bb.h
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.5, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.i
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.18, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.y = tail call ptr @__errno_location() #41
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  invoke void @_ZN5folly8errnoStrB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i32 noundef %i.z)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24
  %i.aa = load ptr, ptr %3, align 8, !tbaa !121
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !125
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.aa, i64 noundef %i.ac)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.n ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.j
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.13, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  invoke void @_ZNK8facebook5velox6memory20ContiguousAllocation8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25
  %i.af = load ptr, ptr %4, align 8, !tbaa !121
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !125
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.af, i64 noundef %i.ah)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26 unwind label %bb.p ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26: ; preds = %bb.k
  %i.aj = load ptr, ptr %4, align 8, !tbaa !121   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !109
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.ao = load ptr, ptr %3, align 8, !tbaa !121   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !109
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.s

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.i, %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.n:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.j
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.p:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %4, align 8, !tbaa !121   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.p
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !109
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

end_hunk_3
