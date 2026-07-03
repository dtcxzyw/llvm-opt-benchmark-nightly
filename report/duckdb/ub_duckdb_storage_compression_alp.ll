inline.NumInlined: 1905
inline.NumDeleted: 977
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN6duckdb11AlpCompressIfEEvRNS_16CompressionStateERNS_6VectorEm:bb.a
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22, !inline_history !174
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !89
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22, !inline_history !174
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !172
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.n:                                             ; preds = %bb.l
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.w, %bb.m ], [ %i.ag, %bb.n ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ah, label %bb.o, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !173

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.p:                                             ; preds = %bb.b, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.ai
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19AlpFinalizeCompressIfEEvRNS_16CompressionStateE(ptr noundef nonnull align 8 dereferenceable(16) %0) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !188
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb19AlpCompressionStateIfE14CompressVectorEv(ptr noundef nonnull align 8 dereferenceable(28840) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6duckdb19AlpCompressionStateIfE12FlushSegmentEv(ptr noundef nonnull align 8 dereferenceable(28840) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !208  ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !208
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb19AlpCompressionStateIfE8FinalizeEv.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i: ; preds = %bb.c
  tail call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.d) #22
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #24
  br label %_ZN6duckdb19AlpCompressionStateIfE8FinalizeEv.exit

_ZN6duckdb19AlpCompressionStateIfE8FinalizeEv.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb11AlpInitScanIfEENS_10unique_ptrINS_16SegmentScanStateESt14default_deleteIS2_ELb1EEERKNS_12QueryContextERNS_13ColumnSegmentE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(240) %2) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.a = tail call noalias noundef nonnull dereferenceable(18536) ptr @_Znwm(i64 noundef 18536) #23, !noalias !209 ; 3 uses
  invoke void @_ZN6duckdb12AlpScanStateIfEC2ERNS_13ColumnSegmentE(ptr noundef nonnull align 8 dereferenceable(18536) %i.a, ptr noundef nonnull align 8 dereferenceable(240) %2)
          to label %_ZN6duckdb14make_uniq_baseINS_16SegmentScanStateENS_12AlpScanStateIfEEJRNS_13ColumnSegmentEEEENS_10unique_ptrIT_St14default_deleteIS7_ELb1EEEDpOT1_.exit unwind label %bb.b, !noalias !209

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #24, !noalias !209
  resume { ptr, i32 } %i.b

_ZN6duckdb14make_uniq_baseINS_16SegmentScanStateENS_12AlpScanStateIfEEJRNS_13ColumnSegmentEEEENS_10unique_ptrIT_St14default_deleteIS7_ELb1EEEDpOT1_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !212, !alias.scope !209
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb7AlpScanIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3) #1 comdat {
bb.a:
  tail call void @_ZN6duckdb14AlpScanPartialIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14AlpScanPartialIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 6 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIfEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %4
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 18528
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %.pre = load i64, ptr %i.f, align 8, !tbaa !221
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN6duckdb12AlpScanStateIfE10ScanVectorIfLb0EEEvPfm.exit
  %i.j = phi i64 [ %.pre, %.lr.ph ], [ %i.z, %_ZN6duckdb12AlpScanStateIfE10ScanVectorIfLb0EEEvPfm.exit ] ; 2 uses
  %.017 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %_ZN6duckdb12AlpScanStateIfE10ScanVectorIfLb0EEEvPfm.exit ] ; 3 uses
  %i.k = sub nuw i64 %2, %.017
  %i.l = and i64 %i.j, 1023                       ; 2 uses
  %i.m = sub nuw nsw i64 1024, %i.l
  %i.n = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %i.m) ; 5 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.017 ; 2 uses
  %i.p = icmp eq i64 %i.l, 0
  %i.q = load i64, ptr %i.g, align 8
  %i.r = icmp ult i64 %i.j, %i.q
  %or.cond.i = select i1 %i.p, i1 %i.r, i1 false
  br i1 %or.cond.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = icmp eq i64 %i.n, 1024
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb12AlpScanStateIfE10LoadVectorILb0EEEvPf(ptr noundef nonnull align 8 dereferenceable(18536) %i.b, ptr noundef %i.o)
  br label %_ZN6duckdb12AlpScanStateIfE10ScanVectorIfLb0EEEvPfm.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb12AlpScanStateIfE10LoadVectorILb0EEEvPf(ptr noundef nonnull align 8 dereferenceable(18536) %i.b, ptr noundef nonnull %i.h)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.t = load i64, ptr %i.i, align 8, !tbaa !225
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.t
  %i.v = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 4 %i.u, i64 %i.v, i1 false)
  %i.w = load i64, ptr %i.i, align 8, !tbaa !225
  %i.x = add i64 %i.w, %i.n
  store i64 %i.x, ptr %i.i, align 8, !tbaa !225
  br label %_ZN6duckdb12AlpScanStateIfE10ScanVectorIfLb0EEEvPfm.exit

_ZN6duckdb12AlpScanStateIfE10ScanVectorIfLb0EEEvPfm.exit: ; preds = %bb.d, %bb.f
  %i.y = load i64, ptr %i.f, align 8, !tbaa !221
  %i.z = add i64 %i.y, %i.n                       ; 2 uses
  store i64 %i.z, ptr %i.f, align 8, !tbaa !221
  %i.aa = add i64 %i.n, %.017                     ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %2
  br i1 %i.ab, label %bb.b, label %._crit_edge, !llvm.loop !226

._crit_edge:                                      ; preds = %_ZN6duckdb12AlpScanStateIfE10ScanVectorIfLb0EEEvPfm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb11AlpFetchRowIfEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::AlpScanState", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6duckdb12AlpScanStateIfEC2ERNS_13ColumnSegmentE(ptr noundef nonnull align 8 dereferenceable(18536) %5, ptr noundef nonnull align 8 dereferenceable(240) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !221  ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.b, 1023                       ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw nsw i64 1024, %i.c
  %i.f = call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.e) ; 2 uses
  invoke void @_ZN6duckdb12AlpScanStateIfE10ScanVectorIfLb1EEEvPfm(ptr noundef nonnull align 8 dereferenceable(18536) %5, ptr noundef null, i64 noundef %i.f)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.c
  %i.g = sub i64 %2, %i.f
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.b, %bb.a
  %.012.i = phi i64 [ %2, %bb.b ], [ %i.g, %.noexc ], [ %2, %bb.a ] ; 3 uses
  %i.h = lshr i64 %.012.i, 10                     ; 4 uses
  %.not18.i = icmp eq i64 %i.h, 0
  br i1 %.not18.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %.promoted.i = load i64, ptr %i.a, align 8      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 18528
  %i.k = load i64, ptr %i.j, align 8, !tbaa !227  ; 5 uses
  %.promoted16.i.a = load ptr, ptr %i.i, align 8, !tbaa !228
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.l = icmp ult i64 %.012.i, 4096
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.h, 18014398509481980
  br label %bb.g

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.af, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod18)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %i.m = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.p, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.n = sub i64 %i.k, %i.m
  %i.o = call noundef i64 @llvm.umin.i64(i64 %i.n, i64 1024)
  %i.p = add i64 %i.o, %i.m                       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.e, !llvm.loop !229

._crit_edge.i:                                    ; preds = %bb.e, %._crit_edge.i.unr-lcssa
  %.lcssa = phi i64 [ %i.af, %._crit_edge.i.unr-lcssa ], [ %i.p, %bb.e ]
  %i.q = mul nsw i64 %i.h, -4
  %scevgep.i = getelementptr i8, ptr %.promoted16.i.a, i64 %i.q
  store ptr %scevgep.i, ptr %i.i, align 8, !tbaa !228
  store i64 %.lcssa, ptr %i.a, align 8, !tbaa !221
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %bb.d
  %i.r = and i64 %.012.i, 1023                    ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.t = phi i64 [ %.promoted.i, %.lr.ph.i.new ], [ %i.af, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.g ]
  %i.u = sub i64 %i.k, %i.t
  %i.v = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 1024)
  %i.w = add i64 %i.v, %i.t                       ; 2 uses
  %i.x = sub i64 %i.k, %i.w
  %i.y = call noundef i64 @llvm.umin.i64(i64 %i.x, i64 1024)
  %i.z = add i64 %i.y, %i.w                       ; 2 uses
  %i.aa = sub i64 %i.k, %i.z
  %i.ab = call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 1024)
  %i.ac = add i64 %i.ab, %i.z                     ; 2 uses
  %i.ad = sub i64 %i.k, %i.ac
  %i.ae = call noundef i64 @llvm.umin.i64(i64 %i.ad, i64 1024)
  %i.af = add i64 %i.ae, %i.ac                    ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %bb.g, !llvm.loop !230

bb.h:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb12AlpScanStateIfE10ScanVectorIfLb1EEEvPfm(ptr noundef nonnull align 8 dereferenceable(18536) %5, ptr noundef null, i64 noundef %i.r)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !214
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %4 ; 2 uses
  store i32 0, ptr %i.ai, align 4, !tbaa !3
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !221 ; 2 uses
  %i.ak = and i64 %i.aj, 1023
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 18528
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp ult i64 %i.aj, %i.an
  %or.cond = select i1 %i.al, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 64
  invoke void @_ZN6duckdb12AlpScanStateIfE10LoadVectorILb0EEEvPf(ptr noundef nonnull align 8 dereferenceable(18536) %5, ptr noundef nonnull %i.ap)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.au = load i64, ptr %i.as, align 8, !tbaa !225
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4
  store i32 %i.aw, ptr %i.ai, align 4
  %i.ax = load <2 x i64>, ptr %i.a, align 8, !tbaa !159
  %i.ay = add <2 x i64> %i.ax, splat (i64 1)
  store <2 x i64> %i.ay, ptr %i.a, align 8, !tbaa !159
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12AlpScanStateIfEE, i64 16), ptr %5, align 8, !tbaa !89
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.az) #22, !inline_history !231
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.n:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.l ], [ %i.aq, %bb.k ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12AlpScanStateIfEE, i64 16), ptr %5, align 8, !tbaa !89
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ba) #22, !inline_history !231
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb7AlpSkipIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2) #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !221  ; 2 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub nuw nsw i64 1024, %i.e
  %i.h = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.g) ; 2 uses
  tail call void @_ZN6duckdb12AlpScanStateIfE10ScanVectorIfLb1EEEvPfm(ptr noundef nonnull align 8 dereferenceable(18536) %i.b, ptr noundef null, i64 noundef %i.h)
  %i.i = sub i64 %2, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.012.i = phi i64 [ %2, %bb.b ], [ %i.i, %bb.c ], [ %2, %bb.a ] ; 3 uses
  %i.j = lshr i64 %.012.i, 10                     ; 4 uses
  %.not18.i = icmp eq i64 %i.j, 0
  br i1 %.not18.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %.promoted.i = load i64, ptr %i.c, align 8      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 18528
  %i.m = load i64, ptr %i.l, align 8, !tbaa !227  ; 5 uses
  %.promoted16.i.a = load ptr, ptr %i.k, align 8, !tbaa !228
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.n = icmp ult i64 %.012.i, 4096
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.j, 18014398509481980
  br label %bb.g

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ah, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %i.o = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.r, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.p = sub i64 %i.m, %i.o
  %i.q = tail call noundef i64 @llvm.umin.i64(i64 %i.p, i64 1024)
  %i.r = add i64 %i.q, %i.o                       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.e, !llvm.loop !232

._crit_edge.i:                                    ; preds = %bb.e, %._crit_edge.i.unr-lcssa
  %.lcssa = phi i64 [ %i.ah, %._crit_edge.i.unr-lcssa ], [ %i.r, %bb.e ]
  %i.s = mul nsw i64 %i.j, -4
  %scevgep.i = getelementptr i8, ptr %.promoted16.i.a, i64 %i.s
  store ptr %scevgep.i, ptr %i.k, align 8, !tbaa !228
  store i64 %.lcssa, ptr %i.c, align 8, !tbaa !221
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %bb.d
  %i.t = and i64 %.012.i, 1023                    ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZN6duckdb12AlpScanStateIfE4SkipERNS_13ColumnSegmentEm.exit, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.v = phi i64 [ %.promoted.i, %.lr.ph.i.new ], [ %i.ah, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.g ]
  %i.w = sub i64 %i.m, %i.v
  %i.x = tail call noundef i64 @llvm.umin.i64(i64 %i.w, i64 1024)
  %i.y = add i64 %i.x, %i.v                       ; 2 uses
  %i.z = sub i64 %i.m, %i.y
  %i.aa = tail call noundef i64 @llvm.umin.i64(i64 %i.z, i64 1024)
  %i.ab = add i64 %i.aa, %i.y                     ; 2 uses
  %i.ac = sub i64 %i.m, %i.ab
  %i.ad = tail call noundef i64 @llvm.umin.i64(i64 %i.ac, i64 1024)
  %i.ae = add i64 %i.ad, %i.ab                    ; 2 uses
  %i.af = sub i64 %i.m, %i.ae
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %i.af, i64 1024)
  %i.ah = add i64 %i.ag, %i.ae                    ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %bb.g, !llvm.loop !230

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN6duckdb12AlpScanStateIfE10ScanVectorIfLb1EEEvPfm(ptr noundef nonnull align 8 dereferenceable(18536) %i.b, ptr noundef null, i64 noundef %i.t)
  br label %_ZN6duckdb12AlpScanStateIfE4SkipERNS_13ColumnSegmentEm.exit

_ZN6duckdb12AlpScanStateIfE4SkipERNS_13ColumnSegmentEm.exit: ; preds = %bb.f, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb14GetAlpFunctionIdEENS_19CompressionFunctionENS_12PhysicalTypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::CompressionFunction") align 8 captures(none) initializes((0, 2), (8, 193)) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  store i8 10, ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %1, ptr %i.a, align 1, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN6duckdb14AlpInitAnalyzeIdEENS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS2_ELb1EEERNS_10ColumnDataENS_12PhysicalTypeE, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN6duckdb10AlpAnalyzeIdEEbRNS_12AnalyzeStateERNS_6VectorEm, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN6duckdb15AlpFinalAnalyzeIdEEmRNS_12AnalyzeStateE, ptr %i.d, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @_ZN6duckdb18AlpInitCompressionIdEENS_10unique_ptrINS_16CompressionStateESt14default_deleteIS2_ELb1EEERNS_24ColumnDataCheckpointDataENS1_INS_12AnalyzeStateES3_IS8_ELb1EEE, ptr %i.e, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN6duckdb11AlpCompressIdEEvRNS_16CompressionStateERNS_6VectorEm, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN6duckdb19AlpFinalizeCompressIdEEvRNS_16CompressionStateE, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.h, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @_ZN6duckdb11AlpInitScanIdEENS_10unique_ptrINS_16SegmentScanStateESt14default_deleteIS2_ELb1EEERKNS_12QueryContextERNS_13ColumnSegmentE, ptr %i.i, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr @_ZN6duckdb7AlpScanIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE, ptr %i.j, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr @_ZN6duckdb14AlpScanPartialIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm, ptr %i.k, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store ptr @_ZN6duckdb11AlpFetchRowIdEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm, ptr %i.m, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZN6duckdb7AlpSkipIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm, ptr %i.n, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.o, i8 0, i64 73, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14AlpInitAnalyzeIdEENS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS2_ELb1EEERNS_10ColumnDataENS_12PhysicalTypeE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(296) %1, i8 noundef zeroext %2) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.267", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26, !nonnull !83, !align !84
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.c = tail call noalias noundef nonnull dereferenceable(26784) ptr @_Znwm(i64 noundef 26784) #23, !noalias !233 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = ptrtoint ptr %i.b to i64
  store i64 %i.e, ptr %i.d, align 8, !tbaa !88, !noalias !233
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb15AlpAnalyzeStateIdEE, i64 16), ptr %i.c, align 8, !tbaa !89, !noalias !233
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 18560
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false), !noalias !233
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 26776
  store i64 0, ptr %i.h, align 8, !tbaa !236, !noalias !233
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(94) %i.f, i8 0, i64 94, i1 false), !noalias !233
  store ptr %i.c, ptr %3, align 8, !tbaa !245, !alias.scope !233
  %i.i = invoke noundef nonnull align 8 dereferenceable(224) ptr @_ZNK6duckdb10ColumnData17GetStorageManagerEv(ptr noundef nonnull align 8 dereferenceable(296) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.k = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_ZNK6duckdb14StorageManager17GetStorageVersionEv.exit unwind label %bb.c

_ZNK6duckdb14StorageManager17GetStorageVersionEv.exit: ; preds = %bb.b
  %i.l = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15AlpAnalyzeStateIdEESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt10unique_ptrIN6duckdb15AlpAnalyzeStateIdEESt14default_deleteIS2_EED2Ev.exit unwind label %bb.c

_ZNSt10unique_ptrIN6duckdb15AlpAnalyzeStateIdEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNK6duckdb14StorageManager17GetStorageVersionEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 26776
  store i64 %i.k, ptr %i.m, align 8, !tbaa !236
  %i.n = load ptr, ptr %3, align 8, !tbaa !245
  store ptr %i.n, ptr %0, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.c:                                             ; preds = %bb.b, %_ZNK6duckdb14StorageManager17GetStorageVersionEv.exit, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %3, align 8, !tbaa !245    ; 3 uses
  %.not.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i3, label %_ZNSt10unique_ptrIN6duckdb15AlpAnalyzeStateIdEESt14default_deleteIS2_EED2Ev.exit5, label %_ZNKSt14default_deleteIN6duckdb15AlpAnalyzeStateIdEEEclEPS2_.exit.i4

_ZNKSt14default_deleteIN6duckdb15AlpAnalyzeStateIdEEEclEPS2_.exit.i4: ; preds = %bb.c
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(26784) %i.p) #22, !inline_history !247
  br label %_ZNSt10unique_ptrIN6duckdb15AlpAnalyzeStateIdEESt14default_deleteIS2_EED2Ev.exit5

_ZNSt10unique_ptrIN6duckdb15AlpAnalyzeStateIdEESt14default_deleteIS2_EED2Ev.exit5: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb15AlpAnalyzeStateIdEEEclEPS2_.exit.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb10AlpAnalyzeIdEEbRNS_12AnalyzeStateERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 13 uses
  %4 = alloca %"class.duckdb::vector.115", align 8 ; 11 uses
  %5 = alloca %"class.duckdb::vector.284", align 16 ; 18 uses
  %6 = alloca %"class.duckdb::vector.284", align 16 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116, !nonnull !83, !align !84 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.f = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.g = sub i64 %i.d, %i.f
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !116, !nonnull !83, !align !84
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !117
  %.not.i.i = icmp eq i64 %i.j, -1
  br i1 %.not.i.i, label %_ZNK6duckdb15CompressionInfo18GetBlockHeaderSizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_ZNK6duckdb15CompressionInfo18GetBlockHeaderSizeEv.exit

_ZNK6duckdb15CompressionInfo18GetBlockHeaderSizeEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.k, %bb.b ], [ 8, %bb.a ]
  %i.l = add i64 %i.g, %.0.i.i
  %i.m = icmp ugt i64 %i.l, 262143                ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.ba

bb.c:                                             ; preds = %_ZNK6duckdb15CompressionInfo18GetBlockHeaderSizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !248  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !249
  %i.r = urem i64 %i.o, 7
  %i.s = icmp ne i64 %i.r, 0
  %i.t = icmp ult i64 %2, 32
  %i.u = icmp ne i64 %i.q, 0
  %or.cond.i = and i1 %i.t, %i.u
  %.0.i = or i1 %i.s, %or.cond.i
  %i.v = add i64 %i.o, 1
  store i64 %i.v, ptr %i.n, align 8, !tbaa !248
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !250
  %i.y = add i64 %i.x, %2
  store i64 %i.y, ptr %i.w, align 8, !tbaa !250
  br i1 %.0.i, label %bb.ba, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv(ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !122 ; 2 uses
  %i.ab = call noundef i64 @llvm.umin.i64(i64 %2, i64 1024)
  %i.ac = invoke noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.ab)
          to label %bb.g unwind label %bb.l       ; 3 uses

bb.g:                                             ; preds = %bb.f
  %i.ad = uitofp i32 %i.ac to double              ; 2 uses
  %i.ae = fmul nnan double %i.ad, 3.125000e-02
  %i.af = call double @llvm.ceil.f64(double %i.ae)
  %i.ag = fptoui double %i.af to i32
  %i.ah = call noundef i32 @llvm.umax.i32(i32 %i.ag, i32 1) ; 2 uses
  %i.ai = uitofp i32 %i.ah to double
  %i.aj = fdiv double %i.ad, %i.ai
  %i.ak = call double @llvm.ceil.f64(double %i.aj)
  %i.al = fptoui double %i.ak to i32              ; 2 uses
  %.sroa.2.0.insert.ext.i = zext i32 %i.ah to i64
  %.sroa.0.0.insert.ext.i = zext i32 %i.ac to i64 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
end_hunk_0
begin_hunk_1_@_ZN6duckdb11AlpCompressIdEEvRNS_16CompressionStateERNS_6VectorEm:bb.a
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22, !inline_history !174
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !89
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22, !inline_history !174
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !172
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.n:                                             ; preds = %bb.l
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.w, %bb.m ], [ %i.ag, %bb.n ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.ah, label %bb.o, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !173

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #22
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.p:                                             ; preds = %bb.b, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.ai
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19AlpFinalizeCompressIdEEvRNS_16CompressionStateE(ptr noundef nonnull align 8 dereferenceable(16) %0) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !276
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb19AlpCompressionStateIdE14CompressVectorEv(ptr noundef nonnull align 8 dereferenceable(37032) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6duckdb19AlpCompressionStateIdE12FlushSegmentEv(ptr noundef nonnull align 8 dereferenceable(37032) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !208  ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !208
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb19AlpCompressionStateIdE8FinalizeEv.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i: ; preds = %bb.c
  tail call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.d) #22
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #24
  br label %_ZN6duckdb19AlpCompressionStateIdE8FinalizeEv.exit

_ZN6duckdb19AlpCompressionStateIdE8FinalizeEv.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb11AlpInitScanIdEENS_10unique_ptrINS_16SegmentScanStateESt14default_deleteIS2_ELb1EEERKNS_12QueryContextERNS_13ColumnSegmentE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.11") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(240) %2) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.a = tail call noalias noundef nonnull dereferenceable(26728) ptr @_Znwm(i64 noundef 26728) #23, !noalias !279 ; 3 uses
  invoke void @_ZN6duckdb12AlpScanStateIdEC2ERNS_13ColumnSegmentE(ptr noundef nonnull align 8 dereferenceable(26728) %i.a, ptr noundef nonnull align 8 dereferenceable(240) %2)
          to label %_ZN6duckdb14make_uniq_baseINS_16SegmentScanStateENS_12AlpScanStateIdEEJRNS_13ColumnSegmentEEEENS_10unique_ptrIT_St14default_deleteIS7_ELb1EEEDpOT1_.exit unwind label %bb.b, !noalias !279

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #24, !noalias !279
  resume { ptr, i32 } %i.b

_ZN6duckdb14make_uniq_baseINS_16SegmentScanStateENS_12AlpScanStateIdEEJRNS_13ColumnSegmentEEEENS_10unique_ptrIT_St14default_deleteIS7_ELb1EEEDpOT1_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !212, !alias.scope !279
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb7AlpScanIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3) #1 comdat {
bb.a:
  tail call void @_ZN6duckdb14AlpScanPartialIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14AlpScanPartialIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 6 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %4
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 26720
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %.pre = load i64, ptr %i.f, align 8, !tbaa !282
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb0EEEvPdm.exit
  %i.j = phi i64 [ %.pre, %.lr.ph ], [ %i.z, %_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb0EEEvPdm.exit ] ; 2 uses
  %.017 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb0EEEvPdm.exit ] ; 3 uses
  %i.k = sub nuw i64 %2, %.017
  %i.l = and i64 %i.j, 1023                       ; 2 uses
  %i.m = sub nuw nsw i64 1024, %i.l
  %i.n = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %i.m) ; 5 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.017 ; 2 uses
  %i.p = icmp eq i64 %i.l, 0
  %i.q = load i64, ptr %i.g, align 8
  %i.r = icmp ult i64 %i.j, %i.q
  %or.cond.i = select i1 %i.p, i1 %i.r, i1 false
  br i1 %or.cond.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = icmp eq i64 %i.n, 1024
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb12AlpScanStateIdE10LoadVectorILb0EEEvPd(ptr noundef nonnull align 8 dereferenceable(26728) %i.b, ptr noundef %i.o)
  br label %_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb0EEEvPdm.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN6duckdb12AlpScanStateIdE10LoadVectorILb0EEEvPd(ptr noundef nonnull align 8 dereferenceable(26728) %i.b, ptr noundef nonnull %i.h)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.t = load i64, ptr %i.i, align 8, !tbaa !285
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.t
  %i.v = shl nuw nsw i64 %i.n, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 8 %i.u, i64 %i.v, i1 false)
  %i.w = load i64, ptr %i.i, align 8, !tbaa !285
  %i.x = add i64 %i.w, %i.n
  store i64 %i.x, ptr %i.i, align 8, !tbaa !285
  br label %_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb0EEEvPdm.exit

_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb0EEEvPdm.exit: ; preds = %bb.d, %bb.f
  %i.y = load i64, ptr %i.f, align 8, !tbaa !282
  %i.z = add i64 %i.y, %i.n                       ; 2 uses
  store i64 %i.z, ptr %i.f, align 8, !tbaa !282
  %i.aa = add i64 %i.n, %.017                     ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %2
  br i1 %i.ab, label %bb.b, label %._crit_edge, !llvm.loop !286

._crit_edge:                                      ; preds = %_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb0EEEvPdm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb11AlpFetchRowIdEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::AlpScanState.309", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN6duckdb12AlpScanStateIdEC2ERNS_13ColumnSegmentE(ptr noundef nonnull align 8 dereferenceable(26728) %5, ptr noundef nonnull align 8 dereferenceable(240) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !282  ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.b, 1023                       ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw nsw i64 1024, %i.c
  %i.f = call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.e) ; 2 uses
  invoke void @_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb1EEEvPdm(ptr noundef nonnull align 8 dereferenceable(26728) %5, ptr noundef null, i64 noundef %i.f)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.c
  %i.g = sub i64 %2, %i.f
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %bb.b, %bb.a
  %.012.i = phi i64 [ %2, %bb.b ], [ %i.g, %.noexc ], [ %2, %bb.a ] ; 3 uses
  %i.h = lshr i64 %.012.i, 10                     ; 4 uses
  %.not18.i = icmp eq i64 %i.h, 0
  br i1 %.not18.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %.promoted.i = load i64, ptr %i.a, align 8      ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 26720
  %i.k = load i64, ptr %i.j, align 8, !tbaa !287  ; 5 uses
  %.promoted16.i.a = load ptr, ptr %i.i, align 8, !tbaa !288
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.l = icmp ult i64 %.012.i, 4096
  br i1 %i.l, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.h, 18014398509481980
  br label %bb.g

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.af, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod18 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod18)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %i.m = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.p, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.n = sub i64 %i.k, %i.m
  %i.o = call noundef i64 @llvm.umin.i64(i64 %i.n, i64 1024)
  %i.p = add i64 %i.o, %i.m                       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.e, !llvm.loop !289

._crit_edge.i:                                    ; preds = %bb.e, %._crit_edge.i.unr-lcssa
  %.lcssa = phi i64 [ %i.af, %._crit_edge.i.unr-lcssa ], [ %i.p, %bb.e ]
  %i.q = mul nsw i64 %i.h, -4
  %scevgep.i = getelementptr i8, ptr %.promoted16.i.a, i64 %i.q
  store ptr %scevgep.i, ptr %i.i, align 8, !tbaa !288
  store i64 %.lcssa, ptr %i.a, align 8, !tbaa !282
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %bb.d
  %i.r = and i64 %.012.i, 1023                    ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.t = phi i64 [ %.promoted.i, %.lr.ph.i.new ], [ %i.af, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.g ]
  %i.u = sub i64 %i.k, %i.t
  %i.v = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 1024)
  %i.w = add i64 %i.v, %i.t                       ; 2 uses
  %i.x = sub i64 %i.k, %i.w
  %i.y = call noundef i64 @llvm.umin.i64(i64 %i.x, i64 1024)
  %i.z = add i64 %i.y, %i.w                       ; 2 uses
  %i.aa = sub i64 %i.k, %i.z
  %i.ab = call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 1024)
  %i.ac = add i64 %i.ab, %i.z                     ; 2 uses
  %i.ad = sub i64 %i.k, %i.ac
  %i.ae = call noundef i64 @llvm.umin.i64(i64 %i.ad, i64 1024)
  %i.af = add i64 %i.ae, %i.ac                    ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %bb.g, !llvm.loop !290

bb.h:                                             ; preds = %bb.f
  invoke void @_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb1EEEvPdm(ptr noundef nonnull align 8 dereferenceable(26728) %5, ptr noundef null, i64 noundef %i.r)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !214
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %4 ; 2 uses
  store i64 0, ptr %i.ai, align 8, !tbaa !159
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !282 ; 2 uses
  %i.ak = and i64 %i.aj, 1023
  %i.al = icmp eq i64 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 26720
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = icmp ult i64 %i.aj, %i.an
  %or.cond = select i1 %i.al, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 64
  invoke void @_ZN6duckdb12AlpScanStateIdE10LoadVectorILb0EEEvPd(ptr noundef nonnull align 8 dereferenceable(26728) %5, ptr noundef nonnull %i.ap)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.c
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.au = load i64, ptr %i.as, align 8, !tbaa !285
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8
  store i64 %i.aw, ptr %i.ai, align 8
  %i.ax = load <2 x i64>, ptr %i.a, align 8, !tbaa !159
  %i.ay = add <2 x i64> %i.ax, splat (i64 1)
  store <2 x i64> %i.ay, ptr %i.a, align 8, !tbaa !159
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12AlpScanStateIdEE, i64 16), ptr %5, align 8, !tbaa !89
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.az) #22, !inline_history !291
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.n:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.l ], [ %i.aq, %bb.k ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb12AlpScanStateIdEE, i64 16), ptr %5, align 8, !tbaa !89
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ba) #22, !inline_history !291
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb7AlpSkipIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2) #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !282  ; 2 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.d, 1023                       ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub nuw nsw i64 1024, %i.e
  %i.h = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.g) ; 2 uses
  tail call void @_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb1EEEvPdm(ptr noundef nonnull align 8 dereferenceable(26728) %i.b, ptr noundef null, i64 noundef %i.h)
  %i.i = sub i64 %2, %i.h
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.012.i = phi i64 [ %2, %bb.b ], [ %i.i, %bb.c ], [ %2, %bb.a ] ; 3 uses
  %i.j = lshr i64 %.012.i, 10                     ; 4 uses
  %.not18.i = icmp eq i64 %i.j, 0
  br i1 %.not18.i, label %bb.f, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %.promoted.i = load i64, ptr %i.c, align 8      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 26720
  %i.m = load i64, ptr %i.l, align 8, !tbaa !287  ; 5 uses
  %.promoted16.i.a = load ptr, ptr %i.k, align 8, !tbaa !288
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.n = icmp ult i64 %.012.i, 4096
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.j, 18014398509481980
  br label %bb.g

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ah, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod7)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %i.o = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.r, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.p = sub i64 %i.m, %i.o
  %i.q = tail call noundef i64 @llvm.umin.i64(i64 %i.p, i64 1024)
  %i.r = add i64 %i.q, %i.o                       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.e, !llvm.loop !292

._crit_edge.i:                                    ; preds = %bb.e, %._crit_edge.i.unr-lcssa
  %.lcssa = phi i64 [ %i.ah, %._crit_edge.i.unr-lcssa ], [ %i.r, %bb.e ]
  %i.s = mul nsw i64 %i.j, -4
  %scevgep.i = getelementptr i8, ptr %.promoted16.i.a, i64 %i.s
  store ptr %scevgep.i, ptr %i.k, align 8, !tbaa !288
  store i64 %.lcssa, ptr %i.c, align 8, !tbaa !282
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %bb.d
  %i.t = and i64 %.012.i, 1023                    ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZN6duckdb12AlpScanStateIdE4SkipERNS_13ColumnSegmentEm.exit, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.new
  %i.v = phi i64 [ %.promoted.i, %.lr.ph.i.new ], [ %i.ah, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.g ]
  %i.w = sub i64 %i.m, %i.v
  %i.x = tail call noundef i64 @llvm.umin.i64(i64 %i.w, i64 1024)
  %i.y = add i64 %i.x, %i.v                       ; 2 uses
  %i.z = sub i64 %i.m, %i.y
  %i.aa = tail call noundef i64 @llvm.umin.i64(i64 %i.z, i64 1024)
  %i.ab = add i64 %i.aa, %i.y                     ; 2 uses
  %i.ac = sub i64 %i.m, %i.ab
  %i.ad = tail call noundef i64 @llvm.umin.i64(i64 %i.ac, i64 1024)
  %i.ae = add i64 %i.ad, %i.ab                    ; 2 uses
  %i.af = sub i64 %i.m, %i.ae
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %i.af, i64 1024)
  %i.ah = add i64 %i.ag, %i.ae                    ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %bb.g, !llvm.loop !290

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN6duckdb12AlpScanStateIdE10ScanVectorIdLb1EEEvPdm(ptr noundef nonnull align 8 dereferenceable(26728) %i.b, ptr noundef null, i64 noundef %i.t)
  br label %_ZN6duckdb12AlpScanStateIdE4SkipERNS_13ColumnSegmentEm.exit

_ZN6duckdb12AlpScanStateIdE4SkipERNS_13ColumnSegmentEm.exit: ; preds = %bb.f, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17AlpCompressionFun11GetFunctionENS_12PhysicalTypeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::CompressionFunction") align 8 captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  switch i8 %1, label %bb.c [
    i8 11, label %bb.h
    i8 12, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.j unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !293    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.0, label %bb.g, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.0, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn13 = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.a) #22
  br label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.b
  %_ZN6duckdb14AlpInitAnalyzeIdEENS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS2_ELb1EEERNS_10ColumnDataENS_12PhysicalTypeE.sink = phi ptr [ @_ZN6duckdb14AlpInitAnalyzeIdEENS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS2_ELb1EEERNS_10ColumnDataENS_12PhysicalTypeE, %bb.b ], [ @_ZN6duckdb14AlpInitAnalyzeIfEENS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS2_ELb1EEERNS_10ColumnDataENS_12PhysicalTypeE, %bb.a ]
  %_ZN6duckdb10AlpAnalyzeIdEEbRNS_12AnalyzeStateERNS_6VectorEm.sink = phi ptr [ @_ZN6duckdb10AlpAnalyzeIdEEbRNS_12AnalyzeStateERNS_6VectorEm, %bb.b ], [ @_ZN6duckdb10AlpAnalyzeIfEEbRNS_12AnalyzeStateERNS_6VectorEm, %bb.a ]
  %_ZN6duckdb15AlpFinalAnalyzeIdEEmRNS_12AnalyzeStateE.sink = phi ptr [ @_ZN6duckdb15AlpFinalAnalyzeIdEEmRNS_12AnalyzeStateE, %bb.b ], [ @_ZN6duckdb15AlpFinalAnalyzeIfEEmRNS_12AnalyzeStateE, %bb.a ]
  %_ZN6duckdb18AlpInitCompressionIdEENS_10unique_ptrINS_16CompressionStateESt14default_deleteIS2_ELb1EEERNS_24ColumnDataCheckpointDataENS1_INS_12AnalyzeStateES3_IS8_ELb1EEE.sink = phi ptr [ @_ZN6duckdb18AlpInitCompressionIdEENS_10unique_ptrINS_16CompressionStateESt14default_deleteIS2_ELb1EEERNS_24ColumnDataCheckpointDataENS1_INS_12AnalyzeStateES3_IS8_ELb1EEE, %bb.b ], [ @_ZN6duckdb18AlpInitCompressionIfEENS_10unique_ptrINS_16CompressionStateESt14default_deleteIS2_ELb1EEERNS_24ColumnDataCheckpointDataENS1_INS_12AnalyzeStateES3_IS8_ELb1EEE, %bb.a ]
  %_ZN6duckdb11AlpCompressIdEEvRNS_16CompressionStateERNS_6VectorEm.sink = phi ptr [ @_ZN6duckdb11AlpCompressIdEEvRNS_16CompressionStateERNS_6VectorEm, %bb.b ], [ @_ZN6duckdb11AlpCompressIfEEvRNS_16CompressionStateERNS_6VectorEm, %bb.a ]
  %_ZN6duckdb19AlpFinalizeCompressIdEEvRNS_16CompressionStateE.sink = phi ptr [ @_ZN6duckdb19AlpFinalizeCompressIdEEvRNS_16CompressionStateE, %bb.b ], [ @_ZN6duckdb19AlpFinalizeCompressIfEEvRNS_16CompressionStateE, %bb.a ]
  %_ZN6duckdb11AlpInitScanIdEENS_10unique_ptrINS_16SegmentScanStateESt14default_deleteIS2_ELb1EEERKNS_12QueryContextERNS_13ColumnSegmentE.sink = phi ptr [ @_ZN6duckdb11AlpInitScanIdEENS_10unique_ptrINS_16SegmentScanStateESt14default_deleteIS2_ELb1EEERKNS_12QueryContextERNS_13ColumnSegmentE, %bb.b ], [ @_ZN6duckdb11AlpInitScanIfEENS_10unique_ptrINS_16SegmentScanStateESt14default_deleteIS2_ELb1EEERKNS_12QueryContextERNS_13ColumnSegmentE, %bb.a ]
  %_ZN6duckdb7AlpScanIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE.sink = phi ptr [ @_ZN6duckdb7AlpScanIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE, %bb.b ], [ @_ZN6duckdb7AlpScanIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE, %bb.a ]
  %_ZN6duckdb14AlpScanPartialIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm.sink = phi ptr [ @_ZN6duckdb14AlpScanPartialIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm, %bb.b ], [ @_ZN6duckdb14AlpScanPartialIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm, %bb.a ]
  %_ZN6duckdb11AlpFetchRowIdEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm.sink = phi ptr [ @_ZN6duckdb11AlpFetchRowIdEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm, %bb.b ], [ @_ZN6duckdb11AlpFetchRowIfEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm, %bb.a ]
  %_ZN6duckdb7AlpSkipIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm.sink = phi ptr [ @_ZN6duckdb7AlpSkipIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm, %bb.b ], [ @_ZN6duckdb7AlpSkipIfEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm, %bb.a ]
  store i8 10, ptr %0, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %1, ptr %i.g, align 1, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %_ZN6duckdb14AlpInitAnalyzeIdEENS_10unique_ptrINS_12AnalyzeStateESt14default_deleteIS2_ELb1EEERNS_10ColumnDataENS_12PhysicalTypeE.sink, ptr %i.h, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %_ZN6duckdb10AlpAnalyzeIdEEbRNS_12AnalyzeStateERNS_6VectorEm.sink, ptr %i.i, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %_ZN6duckdb15AlpFinalAnalyzeIdEEmRNS_12AnalyzeStateE.sink, ptr %i.j, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %_ZN6duckdb18AlpInitCompressionIdEENS_10unique_ptrINS_16CompressionStateESt14default_deleteIS2_ELb1EEERNS_24ColumnDataCheckpointDataENS1_INS_12AnalyzeStateES3_IS8_ELb1EEE.sink, ptr %i.k, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %_ZN6duckdb11AlpCompressIdEEvRNS_16CompressionStateERNS_6VectorEm.sink, ptr %i.l, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %_ZN6duckdb19AlpFinalizeCompressIdEEvRNS_16CompressionStateE.sink, ptr %i.m, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.n, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %_ZN6duckdb11AlpInitScanIdEENS_10unique_ptrINS_16SegmentScanStateESt14default_deleteIS2_ELb1EEERKNS_12QueryContextERNS_13ColumnSegmentE.sink, ptr %i.o, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %_ZN6duckdb7AlpScanIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE.sink, ptr %i.p, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %_ZN6duckdb14AlpScanPartialIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm.sink, ptr %i.q, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store ptr %_ZN6duckdb11AlpFetchRowIdEEvRNS_13ColumnSegmentERNS_16ColumnFetchStateElRNS_6VectorEm.sink, ptr %i.s, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %_ZN6duckdb7AlpSkipIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEm.sink, ptr %i.t, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %i.u, i8 0, i64 73, i1 false)
  ret void

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn13, %bb.g ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn12

bb.j:                                             ; preds = %bb.e
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN6duckdb17AlpCompressionFun15TypeIsSupportedENS_12PhysicalTypeE(i8 noundef zeroext %0) local_unnamed_addr #6 align 2 {
bb.a:
  %.off = add i8 %0, -11
  %switch = icmp ult i8 %.off, 2
  ret i1 %switch
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(224) ptr @_ZNK6duckdb10ColumnData17GetStorageManagerEv(ptr noundef nonnull align 8 dereferenceable(296)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_15AlpAnalyzeStateIfEESt14default_deleteIS2_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !110    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_15AlpAnalyzeStateIfEESt14default_deleteIS2_ELb1EE13AssertNotNullEb.exit, !prof !173
end_hunk_1
begin_hunk_2_@_ZN6duckdb19AlpCompressionStateIfE6AppendERNS_19UnifiedVectorFormatEm:bb.a

bb.d:                                             ; preds = %bb.c, %.loopexit
  %.not = icmp eq i64 %i.dk, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !482

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19AlpCompressionStateIfE14CompressVectorEv(ptr noundef nonnull align 8 dereferenceable(28840) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !473  ; 5 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit_crit_edge, label %bb.b

._ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !188
  br label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4212 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8, !tbaa !188  ; 4 uses
  %.not11.i.i = icmp eq i64 %i.g, 0
  br i1 %.not11.i.i, label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.010.i.i = phi i64 [ %i.m, %bb.d ], [ 0, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.010.i.i
  %i.i = load i16, ptr %i.h, align 2, !tbaa !143
  %i.j = zext i16 %i.i to i64
  %.not.i.i = icmp eq i64 %.010.i.i, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.010.i.i
  %i.l = load float, ptr %i.k, align 4, !tbaa !149
  br label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.m = add nuw nsw i64 %.010.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.g
  br i1 %exitcond.not.i.i, label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i, label %.lr.ph.i.i, !llvm.loop !157

_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.08.i.i = phi float [ %i.l, %bb.c ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.d ] ; 5 uses
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.n = icmp ult i64 %i.c, 4
  br i1 %i.n, label %.lr.ph.i8.i.epil.preheader, label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i.new

_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i.new: ; preds = %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i
  %unroll_iter = and i64 %i.c, -4
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i.new
  %.07.i.i = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i.new ], [ %i.ah, %.lr.ph.i8.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i.new ], [ %niter.next.3, %.lr.ph.i8.i ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.07.i.i
  %i.p = load i16, ptr %i.o, align 4, !tbaa !143
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  store float %.08.i.i, ptr %i.r, align 4, !tbaa !149
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.07.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !143
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  store float %.08.i.i, ptr %i.w, align 4, !tbaa !149
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.07.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i16, ptr %i.y, align 8, !tbaa !143
  %i.aa = zext i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aa
  store float %.08.i.i, ptr %i.ab, align 4, !tbaa !149
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.07.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 6
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !143
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.af
  store float %.08.i.i, ptr %i.ag, align 4, !tbaa !149
  %i.ah = add nuw i64 %.07.i.i, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit.loopexit.unr-lcssa, label %.lr.ph.i8.i, !llvm.loop !158

_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i8.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit, label %.lr.ph.i8.i.epil.preheader

.lr.ph.i8.i.epil.preheader:                       ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit.loopexit.unr-lcssa, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i
  %.07.i.i.epil.init = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIfEET_PKS3_PKtm.exit.i ], [ %i.ah, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod26 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod26)
  br label %.lr.ph.i8.i.epil

.lr.ph.i8.i.epil:                                 ; preds = %.lr.ph.i8.i.epil, %.lr.ph.i8.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.am, %.lr.ph.i8.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i8.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i8.i.epil ], [ 0, %.lr.ph.i8.i.epil.preheader ]
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.07.i.i.epil
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !143
  %i.ak = zext i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ak
  store float %.08.i.i, ptr %i.al, align 4, !tbaa !149
  %i.am = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit, label %.lr.ph.i8.i.epil, !llvm.loop !483

_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit: ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit.loopexit.unr-lcssa, %.lr.ph.i8.i.epil, %._ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit_crit_edge
  %i.an = phi i64 [ %.pre, %._ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit_crit_edge ], [ %i.g, %.lr.ph.i8.i.epil ], [ %i.g, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit.loopexit.unr-lcssa ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4212
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 6264 ; 2 uses
  tail call void @_ZN6duckdb3alp14AlpCompressionIfLb0EE8CompressEPKfmPKtmRNS0_18AlpCompressionDataIfLb0EEE(ptr noundef nonnull %i.ao, i64 noundef %i.an, ptr noundef nonnull %i.aq, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(22576) %i.ar)
  %i.as = load i64, ptr %i.ap, align 8, !tbaa !188
  %i.at = shl i64 %i.as, 2                        ; 2 uses
  %i.au = or disjoint i64 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 6272
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !484
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 6266 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !485
  %i.az = zext i16 %i.ay to i64
  %i.ba = mul nuw nsw i64 %i.az, 6
  %i.bb = add i64 %i.aw, 13
  %i.bc = add i64 %i.bb, %i.ba                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !437, !nonnull !83, !align !84
  %i.bf = tail call noundef nonnull align 8 dereferenceable(224) ptr @_ZN6duckdb24ColumnDataCheckpointData17GetStorageManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 136
  %i.bh = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
  %i.bi = icmp ule i64 %i.bc, %i.at
  %i.bj = icmp ult i64 %i.bh, 7
  %i.bk = or i1 %i.bi, %i.bj                      ; 2 uses
  %i.bl = select i1 %i.bk, i64 %i.bc, i64 %i.au
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bm)
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !463
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !464
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !486
  %i.bs = add i64 %i.bl, 11
  %i.bt = add i64 %i.bs, %i.br
  %i.bu = and i64 %i.bt, -8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !470
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4
  %.not.i = icmp ult ptr %i.bv, %i.by
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit
  tail call void @_ZN6duckdb19AlpCompressionStateIfE12FlushSegmentEv(ptr noundef nonnull align 8 dereferenceable(28840) %0)
  tail call void @_ZN6duckdb19AlpCompressionStateIfE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(28840) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIfEEvPT_PKtmm.exit
  %i.bz = load i64, ptr %i.b, align 8, !tbaa !473
  %.not12 = icmp eq i64 %i.bz, 0
  br i1 %.not12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  store i8 1, ptr %i.cc, align 8, !tbaa !487
  %.pre18 = load i64, ptr %i.b, align 8, !tbaa !473
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cd = phi i64 [ %.pre18, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.ce = load i64, ptr %i.ap, align 8, !tbaa !188
  %.not13 = icmp eq i64 %i.ce, %i.cd
  br i1 %.not13, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cg = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 81
  store i8 1, ptr %i.ch, align 1, !tbaa !488
  %i.ci = load i64, ptr %i.ap, align 8, !tbaa !188
  %.not16 = icmp eq i64 %i.ci, 0
  br i1 %.not16, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.015 = phi i64 [ %i.cq, %.lr.ph ], [ 0, %bb.i ] ; 2 uses
  %i.cj = call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf) ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.015
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !149
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 104 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 120 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store float %i.cl, ptr %i.a, align 4, !tbaa !149
  %i.co = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.cm, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.val.i.i.i = load float, ptr %i.a, align 4
  %.val7.i.i.i = load float, ptr %i.cm, align 4
  %1 = select i1 %i.co, float %.val.i.i.i, float %.val7.i.i.i
  store float %1, ptr %i.cm, align 4, !tbaa !149
  %i.cp = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.cn)
  %.val8.i.i.i = load float, ptr %i.a, align 4
  %.val9.i.i.i = load float, ptr %i.cn, align 4
  %2 = select i1 %i.cp, float %.val8.i.i.i, float %.val9.i.i.i
  store float %2, ptr %i.cn, align 4, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cq = add nuw i64 %.015, 1                    ; 2 uses
  %i.cr = load i64, ptr %i.ap, align 8, !tbaa !188 ; 2 uses
  %i.cs = icmp ult i64 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph, label %.loopexit, !llvm.loop !489

.loopexit:                                        ; preds = %.lr.ph, %bb.i, %bb.h
  %i.ct = phi i64 [ %i.cd, %bb.h ], [ 0, %bb.i ], [ %i.cr, %.lr.ph ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cv = call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cu)
  %i.cw = atomicrmw add ptr %i.cv, i64 %i.ct seq_cst, align 8 ; 0 uses
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  call void @_ZN6duckdb19AlpCompressionStateIfE21FlushCompressedVectorEv(ptr noundef nonnull align 8 dereferenceable(28840) %0)
  br label %bb.l

bb.k:                                             ; preds = %.loopexit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !469
  store i8 -1, ptr %i.cy, align 1
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !469
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1 ; 2 uses
  store ptr %i.da, ptr %i.cx, align 8, !tbaa !469
  %i.db = load i64, ptr %i.ap, align 8, !tbaa !188
  %i.dc = shl i64 %i.db, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.da, ptr nonnull align 4 %i.ao, i64 %i.dc, i1 false)
  %i.dd = load i64, ptr %i.ap, align 8, !tbaa !188
  %i.de = shl i64 %i.dd, 2                        ; 2 uses
  %i.df = load ptr, ptr %i.cx, align 8, !tbaa !469
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.de
  store ptr %i.dg, ptr %i.cx, align 8, !tbaa !469
  %i.dh = or disjoint i64 %i.de, 1
  %i.di = load i64, ptr %i.bq, align 8, !tbaa !486
  %i.dj = add i64 %i.dh, %i.di
  store i64 %i.dj, ptr %i.bq, align 8, !tbaa !486
  %i.dk = load ptr, ptr %i.bw, align 8, !tbaa !470
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -4 ; 2 uses
  store ptr %i.dl, ptr %i.bw, align 8, !tbaa !470
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8
  store i32 %i.dn, ptr %i.dl, align 1
  %i.do = load i64, ptr %i.bq, align 8, !tbaa !486
  %i.dp = add i64 %i.do, 4
  %i.dq = call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.dp)
  store i32 %i.dq, ptr %i.dm, align 8, !tbaa !436
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !490
  %i.dt = add i64 %i.ds, 1
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !490
  store i16 0, ptr %i.ar, align 8
  store i16 0, ptr %i.ax, align 2, !tbaa !485
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 6268
  store i16 0, ptr %i.du, align 4, !tbaa !491
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb3alp14AlpCompressionIfLb0EE8CompressEPKfmPKtmRNS0_18AlpCompressionDataIfLb0EEE(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(22576) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 14360 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 14368
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !353
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !296
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24
  %i.j = icmp ugt i64 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb3alp14AlpCompressionIfLb0EE25FindBestFactorAndExponentEPKfmRNS0_18AlpCompressionDataIfLb0EEE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(22576) %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_3alp14AlpCombinationELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
  %i.l = load i16, ptr %i.k, align 8
  store i16 %i.l, ptr %4, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not125 = icmp eq i64 %1, 0                    ; 2 uses
  br i1 %.not125, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12312
  %.sroa.041.0.copyload.pre = load i16, ptr %4, align 8
  br label %bb.e

.lr.ph108:                                        ; preds = %_ZN6duckdb3alp14AlpCompressionIfLb0EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 12312
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph, %_ZN6duckdb3alp14AlpCompressionIfLb0EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit
  %.sroa.041.0.copyload = phi i16 [ %.sroa.041.0.copyload.pre, %.lr.ph ], [ %.sroa.0.0.copyload, %_ZN6duckdb3alp14AlpCompressionIfLb0EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit ] ; 2 uses
  %.0106 = phi i16 [ 0, %.lr.ph ], [ %i.az, %_ZN6duckdb3alp14AlpCompressionIfLb0EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit ] ; 2 uses
  %.089105 = phi i64 [ 0, %.lr.ph ], [ %i.ba, %_ZN6duckdb3alp14AlpCompressionIfLb0EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit ] ; 4 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.089105
  %i.q = load float, ptr %i.p, align 4, !tbaa !149 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i16 %.sroa.041.0.copyload, 8
  %.sroa.2.0.extract.trunc.i = zext nneg i16 %.sroa.2.0.extract.shift.i to i64
  %i.r = and i16 %.sroa.041.0.copyload, 255
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIfE7EXP_ARRE, i64 %i.s
  %i.u = load float, ptr %i.t, align 4, !tbaa !149
  %i.v = fmul float %i.q, %i.u
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIfE8FRAC_ARRE, i64 %.sroa.2.0.extract.trunc.i
  %i.x = load float, ptr %i.w, align 4, !tbaa !149
  %i.y = fmul float %i.v, %i.x                    ; 6 uses
  %i.z = tail call noundef zeroext i1 @_ZN6duckdb5Value8IsFiniteIfEEbT_(float noundef %i.y)
  br i1 %i.z, label %bb.f, label %_ZN6duckdb3alp14AlpCompressionIfLb0EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call noundef zeroext i1 @_ZN6duckdb5Value5IsNanIfEEbT_(float noundef %i.y)
  br i1 %i.aa, label %_ZN6duckdb3alp14AlpCompressionIfLb0EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call float @llvm.fabs.f32(float %i.y)
  %i.ac = fpext float %i.ab to double
  %or.cond.i.i.i = fcmp ogt double %i.ac, f0x43DFFFFFFFFFFFFF
  br i1 %or.cond.i.i.i, label %_ZN6duckdb3alp14AlpCompressionIfLb0EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = fcmp oeq float %i.y, 0.000000e+00
  %i.ae = bitcast float %i.y to i32
  %i.af = icmp slt i32 %i.ae, 0
  %or.cond.i.i = and i1 %i.ad, %i.af
  br i1 %or.cond.i.i, label %_ZN6duckdb3alp14AlpCompressionIfLb0EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit, label %_ZN6duckdb3alp14AlpCompressionIfLb0EE20IsImpossibleToEncodeEf.exit.thread3.i.i

_ZN6duckdb3alp14AlpCompressionIfLb0EE20IsImpossibleToEncodeEf.exit.thread3.i.i: ; preds = %bb.h
  %i.ag = fadd float %i.y, f0x4B400000
  %i.ah = fadd float %i.ag, f0xCB400000
  %i.ai = fptosi float %i.ah to i64
  br label %_ZN6duckdb3alp14AlpCompressionIfLb0EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit

_ZN6duckdb3alp14AlpCompressionIfLb0EE11EncodeValueEfNS0_18AlpEncodingIndicesE.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %_ZN6duckdb3alp14AlpCompressionIfLb0EE20IsImpossibleToEncodeEf.exit.thread3.i.i
  %.0.i.i = phi i64 [ %i.ai, %_ZN6duckdb3alp14AlpCompressionIfLb0EE20IsImpossibleToEncodeEf.exit.thread3.i.i ], [ 9223372036854774784, %bb.h ], [ 9223372036854774784, %bb.g ], [ 9223372036854774784, %bb.f ], [ 9223372036854774784, %bb.e ] ; 2 uses
  %.sroa.0.0.copyload = load i16, ptr %4, align 8 ; 3 uses
  %.sroa.2.0.extract.shift.i100 = lshr i16 %.sroa.0.0.copyload, 8
  %.sroa.2.0.extract.trunc.i101 = zext nneg i16 %.sroa.2.0.extract.shift.i100 to i64
  %i.aj = sitofp i64 %.0.i.i to float
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb12AlpConstants8FACT_ARRE, i64 %.sroa.2.0.extract.trunc.i101
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !159
  %i.am = sitofp i64 %i.al to float
  %i.an = fmul nnan float %i.aj, %i.am
  %i.ao = and i16 %.sroa.0.0.copyload, 255
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIfE8FRAC_ARRE, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !149
  %i.as = fmul float %i.ar, %i.an
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.089105
  store i64 %.0.i.i, ptr %i.at, align 8, !tbaa !159
  %i.au = fcmp une float %i.as, %i.q
  %i.av = trunc i64 %.089105 to i16
  %i.aw = zext i16 %.0106 to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.aw
  store i16 %i.av, ptr %i.ax, align 2, !tbaa !143
  %i.ay = zext i1 %i.au to i16
  %i.az = add i16 %.0106, %i.ay                   ; 7 uses
  %i.ba = add nuw i64 %.089105, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %1
  br i1 %exitcond.not, label %.lr.ph108, label %bb.e, !llvm.loop !492

bb.i:                                             ; preds = %.lr.ph108, %bb.k
  %.092107 = phi i64 [ 0, %.lr.ph108 ], [ %i.bh, %bb.k ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.092107
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !143
  %i.bd = zext i16 %i.bc to i64
  %.not = icmp eq i64 %.092107, %i.bd
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.092107
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !159
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.bh = add nuw nsw i64 %.092107, 1             ; 2 uses
  %exitcond134.not = icmp eq i64 %i.bh, %1
  br i1 %exitcond134.not, label %.loopexit, label %bb.i, !llvm.loop !493

.loopexit:                                        ; preds = %bb.k, %bb.j
  %.091 = phi i64 [ %i.bg, %bb.j ], [ 0, %bb.k ]  ; 6 uses
  %i.bi = zext i16 %i.az to i64                   ; 2 uses
  %.not127 = icmp eq i16 %i.az, 0
  br i1 %.not127, label %._crit_edge, label %.lr.ph110

.lr.ph110:                                        ; preds = %.loopexit
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 12312 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8216 ; 3 uses
  %xtraiter = and i64 %i.bi, 1
end_hunk_2
begin_hunk_3_@_ZN6duckdb19AlpCompressionStateIdE6AppendERNS_19UnifiedVectorFormatEm:bb.a

bb.d:                                             ; preds = %bb.c, %.loopexit
  %.not = icmp eq i64 %i.dk, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !576

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19AlpCompressionStateIdE14CompressVectorEv(ptr noundef nonnull align 8 dereferenceable(37032) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !569  ; 5 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit_crit_edge, label %bb.b

._ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !276
  br label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8312 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8, !tbaa !276  ; 4 uses
  %.not11.i.i = icmp eq i64 %i.g, 0
  br i1 %.not11.i.i, label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %.010.i.i = phi i64 [ %i.m, %bb.d ], [ 0, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.010.i.i
  %i.i = load i16, ptr %i.h, align 2, !tbaa !143
  %i.j = zext i16 %i.i to i64
  %.not.i.i = icmp eq i64 %.010.i.i, %i.j
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.010.i.i
  %i.l = load double, ptr %i.k, align 8, !tbaa !255
  br label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.m = add nuw nsw i64 %.010.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.g
  br i1 %exitcond.not.i.i, label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i, label %.lr.ph.i.i, !llvm.loop !259

_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %.08.i.i = phi double [ %i.l, %bb.c ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.d ] ; 5 uses
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.n = icmp ult i64 %i.c, 4
  br i1 %i.n, label %.lr.ph.i8.i.epil.preheader, label %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i.new

_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i.new: ; preds = %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i
  %unroll_iter = and i64 %i.c, -4
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i.new
  %.07.i.i = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i.new ], [ %i.ah, %.lr.ph.i8.i ] ; 5 uses
  %niter = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i.new ], [ %niter.next.3, %.lr.ph.i8.i ]
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.07.i.i
  %i.p = load i16, ptr %i.o, align 8, !tbaa !143
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.q
  store double %.08.i.i, ptr %i.r, align 8, !tbaa !255
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.07.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !143
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.v
  store double %.08.i.i, ptr %i.w, align 8, !tbaa !255
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.07.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i16, ptr %i.y, align 4, !tbaa !143
  %i.aa = zext i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aa
  store double %.08.i.i, ptr %i.ab, align 8, !tbaa !255
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.07.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 6
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !143
  %i.af = zext i16 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.af
  store double %.08.i.i, ptr %i.ag, align 8, !tbaa !255
  %i.ah = add nuw i64 %.07.i.i, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit.loopexit.unr-lcssa, label %.lr.ph.i8.i, !llvm.loop !260

_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i8.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit, label %.lr.ph.i8.i.epil.preheader

.lr.ph.i8.i.epil.preheader:                       ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit.loopexit.unr-lcssa, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i
  %.07.i.i.epil.init = phi i64 [ 0, %_ZN6duckdb3alp8AlpUtils33FindFirstValueNotInPositionsArrayIdEET_PKS3_PKtm.exit.i ], [ %i.ah, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod26 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod26)
  br label %.lr.ph.i8.i.epil

.lr.ph.i8.i.epil:                                 ; preds = %.lr.ph.i8.i.epil, %.lr.ph.i8.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.am, %.lr.ph.i8.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i8.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i8.i.epil ], [ 0, %.lr.ph.i8.i.epil.preheader ]
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.07.i.i.epil
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !143
  %i.ak = zext i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ak
  store double %.08.i.i, ptr %i.al, align 8, !tbaa !255
  %i.am = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit, label %.lr.ph.i8.i.epil, !llvm.loop !577

_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit: ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit.loopexit.unr-lcssa, %.lr.ph.i8.i.epil, %._ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit_crit_edge
  %i.an = phi i64 [ %.pre, %._ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit_crit_edge ], [ %i.g, %.lr.ph.i8.i.epil ], [ %i.g, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit.loopexit.unr-lcssa ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8312
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 10360 ; 2 uses
  tail call void @_ZN6duckdb3alp14AlpCompressionIdLb0EE8CompressEPKdmPKtmRNS0_18AlpCompressionDataIdLb0EEE(ptr noundef nonnull %i.ao, i64 noundef %i.an, ptr noundef nonnull %i.aq, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(26672) %i.ar)
  %i.as = load i64, ptr %i.ap, align 8, !tbaa !276
  %i.at = shl i64 %i.as, 3                        ; 2 uses
  %i.au = or disjoint i64 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 10368
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !578
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 10362 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !579
  %i.az = zext i16 %i.ay to i64
  %i.ba = mul nuw nsw i64 %i.az, 10
  %i.bb = add i64 %i.aw, 13
  %i.bc = add i64 %i.bb, %i.ba                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !564, !nonnull !83, !align !84
  %i.bf = tail call noundef nonnull align 8 dereferenceable(224) ptr @_ZN6duckdb24ColumnDataCheckpointData17GetStorageManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 136
  %i.bh = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
  %i.bi = icmp ule i64 %i.bc, %i.at
  %i.bj = icmp ult i64 %i.bh, 7
  %i.bk = or i1 %i.bi, %i.bj                      ; 2 uses
  %i.bl = select i1 %i.bk, i64 %i.bc, i64 %i.au
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bm)
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !463
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !464
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !580
  %i.bs = add i64 %i.bl, 11
  %i.bt = add i64 %i.bs, %i.br
  %i.bu = and i64 %i.bt, -8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !567
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4
  %.not.i = icmp ult ptr %i.bv, %i.by
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit
  tail call void @_ZN6duckdb19AlpCompressionStateIdE12FlushSegmentEv(ptr noundef nonnull align 8 dereferenceable(37032) %0)
  tail call void @_ZN6duckdb19AlpCompressionStateIdE18CreateEmptySegmentEv(ptr noundef nonnull align 8 dereferenceable(37032) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6duckdb3alp8AlpUtils27FindAndReplaceNullsInVectorIdEEvPT_PKtmm.exit
  %i.bz = load i64, ptr %i.b, align 8, !tbaa !569
  %.not12 = icmp eq i64 %i.bz, 0
  br i1 %.not12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cb = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  store i8 1, ptr %i.cc, align 8, !tbaa !487
  %.pre18 = load i64, ptr %i.b, align 8, !tbaa !569
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cd = phi i64 [ %.pre18, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.ce = load i64, ptr %i.ap, align 8, !tbaa !276
  %.not13 = icmp eq i64 %i.ce, %i.cd
  br i1 %.not13, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cg = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 81
  store i8 1, ptr %i.ch, align 1, !tbaa !488
  %i.ci = load i64, ptr %i.ap, align 8, !tbaa !276
  %.not16 = icmp eq i64 %i.ci, 0
  br i1 %.not16, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.015 = phi i64 [ %i.cq, %.lr.ph ], [ 0, %bb.i ] ; 2 uses
  %i.cj = call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf) ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.015
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !255
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 104 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 120 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.cl, ptr %i.a, align 8, !tbaa !255
  %i.co = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.val.i.i.i = load double, ptr %i.a, align 8
  %.val7.i.i.i = load double, ptr %i.cm, align 8
  %1 = select i1 %i.co, double %.val.i.i.i, double %.val7.i.i.i
  store double %1, ptr %i.cm, align 8, !tbaa !255
  %i.cp = call noundef zeroext i1 @_ZN6duckdb11GreaterThan9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.cn)
  %.val8.i.i.i = load double, ptr %i.a, align 8
  %.val9.i.i.i = load double, ptr %i.cn, align 8
  %2 = select i1 %i.cp, double %.val8.i.i.i, double %.val9.i.i.i
  store double %2, ptr %i.cn, align 8, !tbaa !255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cq = add nuw i64 %.015, 1                    ; 2 uses
  %i.cr = load i64, ptr %i.ap, align 8, !tbaa !276 ; 2 uses
  %i.cs = icmp ult i64 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph, label %.loopexit, !llvm.loop !581

.loopexit:                                        ; preds = %.lr.ph, %bb.i, %bb.h
  %i.ct = phi i64 [ %i.cd, %bb.h ], [ 0, %bb.i ], [ %i.cr, %.lr.ph ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cv = call noundef ptr @_ZNK6duckdb10unique_ptrINS_13ColumnSegmentESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cu)
  %i.cw = atomicrmw add ptr %i.cv, i64 %i.ct seq_cst, align 8 ; 0 uses
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  call void @_ZN6duckdb19AlpCompressionStateIdE21FlushCompressedVectorEv(ptr noundef nonnull align 8 dereferenceable(37032) %0)
  br label %bb.l

bb.k:                                             ; preds = %.loopexit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !566
  store i8 -1, ptr %i.cy, align 1
  %i.cz = load ptr, ptr %i.cx, align 8, !tbaa !566
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1 ; 2 uses
  store ptr %i.da, ptr %i.cx, align 8, !tbaa !566
  %i.db = load i64, ptr %i.ap, align 8, !tbaa !276
  %i.dc = shl i64 %i.db, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.da, ptr nonnull align 8 %i.ao, i64 %i.dc, i1 false)
  %i.dd = load i64, ptr %i.ap, align 8, !tbaa !276
  %i.de = shl i64 %i.dd, 3                        ; 2 uses
  %i.df = load ptr, ptr %i.cx, align 8, !tbaa !566
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.de
  store ptr %i.dg, ptr %i.cx, align 8, !tbaa !566
  %i.dh = or disjoint i64 %i.de, 1
  %i.di = load i64, ptr %i.bq, align 8, !tbaa !580
  %i.dj = add i64 %i.dh, %i.di
  store i64 %i.dj, ptr %i.bq, align 8, !tbaa !580
  %i.dk = load ptr, ptr %i.bw, align 8, !tbaa !567
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -4 ; 2 uses
  store ptr %i.dl, ptr %i.bw, align 8, !tbaa !567
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8
  store i32 %i.dn, ptr %i.dl, align 1
  %i.do = load i64, ptr %i.bq, align 8, !tbaa !580
  %i.dp = add i64 %i.do, 4
  %i.dq = call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.dp)
  store i32 %i.dq, ptr %i.dm, align 8, !tbaa !563
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !582
  %i.dt = add i64 %i.ds, 1
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !582
  store i16 0, ptr %i.ar, align 8
  store i16 0, ptr %i.ax, align 2, !tbaa !579
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 10364
  store i16 0, ptr %i.du, align 4, !tbaa !583
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb3alp14AlpCompressionIdLb0EE8CompressEPKdmPKtmRNS0_18AlpCompressionDataIdLb0EEE(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(26672) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [32 x i64], align 16              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 18456 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 18464
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !353
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !296
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24
  %i.j = icmp ugt i64 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb3alp14AlpCompressionIdLb0EE25FindBestFactorAndExponentEPKdmRNS0_18AlpCompressionDataIdLb0EEE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(26672) %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_3alp14AlpCombinationELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
  %i.l = load i16, ptr %i.k, align 8
  store i16 %i.l, ptr %4, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not125 = icmp eq i64 %1, 0                    ; 2 uses
  br i1 %.not125, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16408
  %.sroa.041.0.copyload.pre = load i16, ptr %4, align 8
  br label %bb.e

.lr.ph108:                                        ; preds = %_ZN6duckdb3alp14AlpCompressionIdLb0EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16408
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph, %_ZN6duckdb3alp14AlpCompressionIdLb0EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit
  %.sroa.041.0.copyload = phi i16 [ %.sroa.041.0.copyload.pre, %.lr.ph ], [ %.sroa.0.0.copyload, %_ZN6duckdb3alp14AlpCompressionIdLb0EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit ] ; 2 uses
  %.0106 = phi i16 [ 0, %.lr.ph ], [ %i.az, %_ZN6duckdb3alp14AlpCompressionIdLb0EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit ] ; 2 uses
  %.089105 = phi i64 [ 0, %.lr.ph ], [ %i.ba, %_ZN6duckdb3alp14AlpCompressionIdLb0EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit ] ; 4 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.089105
  %i.q = load double, ptr %i.p, align 8, !tbaa !255 ; 2 uses
  %.sroa.2.0.extract.shift.i = lshr i16 %.sroa.041.0.copyload, 8
  %.sroa.2.0.extract.trunc.i = zext nneg i16 %.sroa.2.0.extract.shift.i to i64
  %i.r = and i16 %.sroa.041.0.copyload, 255
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIdE7EXP_ARRE, i64 %i.s
  %i.u = load double, ptr %i.t, align 8, !tbaa !255
  %i.v = fmul double %i.q, %i.u
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIdE8FRAC_ARRE, i64 %.sroa.2.0.extract.trunc.i
  %i.x = load double, ptr %i.w, align 8, !tbaa !255
  %i.y = fmul double %i.v, %i.x                   ; 6 uses
  %i.z = tail call noundef zeroext i1 @_ZN6duckdb5Value8IsFiniteIdEEbT_(double noundef %i.y)
  br i1 %i.z, label %bb.f, label %_ZN6duckdb3alp14AlpCompressionIdLb0EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call noundef zeroext i1 @_ZN6duckdb5Value5IsNanIdEEbT_(double noundef %i.y)
  %i.ab = tail call double @llvm.fabs.f64(double %i.y)
  %i.ac = fcmp ogt double %i.ab, f0x43DFFFFFFFFFFFFF
  %or.cond3.i.i.i = or i1 %i.ac, %i.aa
  br i1 %or.cond3.i.i.i, label %_ZN6duckdb3alp14AlpCompressionIdLb0EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = fcmp oeq double %i.y, 0.000000e+00
  %i.ae = bitcast double %i.y to i64
  %i.af = icmp slt i64 %i.ae, 0
  %or.cond.i.i = and i1 %i.ad, %i.af
  br i1 %or.cond.i.i, label %_ZN6duckdb3alp14AlpCompressionIdLb0EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit, label %_ZN6duckdb3alp14AlpCompressionIdLb0EE20IsImpossibleToEncodeEd.exit.thread3.i.i

_ZN6duckdb3alp14AlpCompressionIdLb0EE20IsImpossibleToEncodeEd.exit.thread3.i.i: ; preds = %bb.g
  %i.ag = fadd double %i.y, f0x4338000000000000
  %i.ah = fadd double %i.ag, f0xC338000000000000
  %i.ai = fptosi double %i.ah to i64
  br label %_ZN6duckdb3alp14AlpCompressionIdLb0EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit

_ZN6duckdb3alp14AlpCompressionIdLb0EE11EncodeValueEdNS0_18AlpEncodingIndicesE.exit: ; preds = %bb.e, %bb.f, %bb.g, %_ZN6duckdb3alp14AlpCompressionIdLb0EE20IsImpossibleToEncodeEd.exit.thread3.i.i
  %.0.i.i = phi i64 [ %i.ai, %_ZN6duckdb3alp14AlpCompressionIdLb0EE20IsImpossibleToEncodeEd.exit.thread3.i.i ], [ 9223372036854774784, %bb.g ], [ 9223372036854774784, %bb.e ], [ 9223372036854774784, %bb.f ] ; 2 uses
  %.sroa.0.0.copyload = load i16, ptr %4, align 8 ; 3 uses
  %.sroa.2.0.extract.shift.i100 = lshr i16 %.sroa.0.0.copyload, 8
  %.sroa.2.0.extract.trunc.i101 = zext nneg i16 %.sroa.2.0.extract.shift.i100 to i64
  %i.aj = sitofp i64 %.0.i.i to double
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb12AlpConstants8FACT_ARRE, i64 %.sroa.2.0.extract.trunc.i101
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !159
  %i.am = sitofp i64 %i.al to double
  %i.an = fmul nnan double %i.aj, %i.am
  %i.ao = and i16 %.sroa.0.0.copyload, 255
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr @_ZN6duckdb17AlpTypedConstantsIdE8FRAC_ARRE, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !255
  %i.as = fmul double %i.ar, %i.an
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.089105
  store i64 %.0.i.i, ptr %i.at, align 8, !tbaa !159
  %i.au = fcmp une double %i.as, %i.q
  %i.av = trunc i64 %.089105 to i16
  %i.aw = zext i16 %.0106 to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.aw
  store i16 %i.av, ptr %i.ax, align 2, !tbaa !143
  %i.ay = zext i1 %i.au to i16
  %i.az = add i16 %.0106, %i.ay                   ; 7 uses
  %i.ba = add nuw i64 %.089105, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %1
  br i1 %exitcond.not, label %.lr.ph108, label %bb.e, !llvm.loop !584

bb.h:                                             ; preds = %.lr.ph108, %bb.j
  %.092107 = phi i64 [ 0, %.lr.ph108 ], [ %i.bh, %bb.j ] ; 4 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.092107
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !143
  %i.bd = zext i16 %i.bc to i64
  %.not = icmp eq i64 %.092107, %i.bd
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.092107
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !159
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bh = add nuw nsw i64 %.092107, 1             ; 2 uses
  %exitcond134.not = icmp eq i64 %i.bh, %1
  br i1 %exitcond134.not, label %.loopexit, label %bb.h, !llvm.loop !585

.loopexit:                                        ; preds = %bb.j, %bb.i
  %.091 = phi i64 [ %i.bg, %bb.i ], [ 0, %bb.j ]  ; 6 uses
  %i.bi = zext i16 %i.az to i64                   ; 2 uses
  %.not127 = icmp eq i16 %i.az, 0
  br i1 %.not127, label %._crit_edge, label %.lr.ph110

.lr.ph110:                                        ; preds = %.loopexit
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16408 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8216 ; 3 uses
  %xtraiter = and i64 %i.bi, 1
  %i.bm = icmp eq i16 %i.az, 1
  br i1 %i.bm, label %.epil.preheader, label %.lr.ph110.new

end_hunk_3
