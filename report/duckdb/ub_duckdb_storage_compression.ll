inline.NumInlined: 14179
inline.NumDeleted: 6830
begin_hunk_0_@_ZN6duckdb25BitpackingInitCompressionIiLb1EEENS_10unique_ptrINS_16CompressionStateESt14default_deleteIS2_ELb1EEERNS_24ColumnDataCheckpointDataENS1_INS_12AnalyzeStateES3_IS8_ELb1EEE:bb.a
_ZNSt10unique_ptrIN6duckdb26BitpackingCompressionStateIiLb1EiEESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.c, ptr %0, align 8, !tbaa !230
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18BitpackingCompressIiLb1EEEvRNS_16CompressionStateERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb26BitpackingCompressionStateIiLb1EiE6AppendERNS_19UnifiedVectorFormatEm(ptr noundef nonnull align 8 dereferenceable(18592) %0, ptr noundef nonnull align 8 dereferenceable(73) %3, i64 noundef %2)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.c, align 8, !tbaa !235
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !237
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !238
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !238
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.f:                                             ; preds = %bb.d
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.g ], [ %i.p, %bb.h ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !67

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !234  ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.t, align 8, !tbaa !235
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !237
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #30, !inline_history !240
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #30, !inline_history !240
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
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
  br i1 %i.ah, label %bb.o, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !67

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #30
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.p:                                             ; preds = %bb.b, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.ai
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb26BitpackingFinalizeCompressIiLb1EEEvRNS_16CompressionStateE(ptr noundef nonnull align 8 dereferenceable(16) %0) #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = tail call noundef zeroext i1 @_ZN6duckdb15BitpackingStateIiiE5FlushINS_26BitpackingCompressionStateIiLb1EiE16BitpackingWriterEEEbv(ptr noundef nonnull align 8 dereferenceable(18507) %i.a) ; 0 uses
  tail call void @_ZN6duckdb26BitpackingCompressionStateIiLb1EiE12FlushSegmentEv(ptr noundef nonnull align 8 dereferenceable(18592) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !218  ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !218
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb26BitpackingCompressionStateIiLb1EiE8FinalizeEv.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i: ; preds = %bb.a
  tail call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.d) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #32
  br label %_ZN6duckdb26BitpackingCompressionStateIiLb1EiE8FinalizeEv.exit

_ZN6duckdb26BitpackingCompressionStateIiLb1EiE8FinalizeEv.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18BitpackingInitScanIiEENS_10unique_ptrINS_16SegmentScanStateESt14default_deleteIS2_ELb1EEERKNS_12QueryContextERNS_13ColumnSegmentE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(240) %2) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8280) ptr @_Znwm(i64 noundef 8280) #33, !noalias !2406 ; 3 uses
  invoke void @_ZN6duckdb19BitpackingScanStateIiiEC2ERKNS_12QueryContextERNS_13ColumnSegmentE(ptr noundef nonnull align 8 dereferenceable(8280) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(240) %2)
          to label %_ZNSt10unique_ptrIN6duckdb19BitpackingScanStateIiiEESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !2406

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #32, !noalias !2406
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN6duckdb19BitpackingScanStateIiiEESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14BitpackingScanIiEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3) #1 comdat {
bb.a:
  tail call void @_ZN6duckdb21BitpackingScanPartialIiijEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21BitpackingScanPartialIiijEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !461  ; 3 uses
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge107, label %.lr.ph106

.lr.ph106:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8256 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8232 ; 2 uses
  %i.g = getelementptr [4 x i8], ptr %i.d, i64 %4 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8248 ; 5 uses
  %i.i = getelementptr i8, ptr %i.b, i64 8244     ; 6 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %2
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8264
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8240
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.n = getelementptr i8, ptr %i.b, i64 8252     ; 3 uses
  %.pre = load i64, ptr %i.e, align 8, !tbaa !2409
  %5 = shl i64 %2, 2
  %6 = add i64 %5, -4
  %i.o = shl i64 %4, 2                            ; 2 uses
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.o
  %i.p = getelementptr i8, ptr %i.d, i64 %i.o
  %scevgep165 = getelementptr i8, ptr %i.p, i64 -4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph106, %bb.l
  %i.q = phi i64 [ %.pre, %.lr.ph106 ], [ %.sink, %bb.l ] ; 2 uses
  %.0104 = phi i64 [ 0, %.lr.ph106 ], [ %.1, %bb.l ] ; 10 uses
  %i.r = icmp eq i64 %i.q, 2048
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb19BitpackingScanStateIiiE13LoadNextGroupEv(ptr noundef nonnull align 8 dereferenceable(8280) %i.b)
  %.pre109 = load i64, ptr %i.e, align 8, !tbaa !2409
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi i64 [ %.pre109, %bb.c ], [ %i.q, %bb.b ] ; 10 uses
  %i.t = and i64 %i.s, 31                         ; 3 uses
  %i.u = load i8, ptr %i.f, align 8, !tbaa !2411
  switch i8 %i.u, label %bb.f [
    i8 2, label %.lr.ph.i.i.i.preheader
    i8 3, label %bb.e
  ]

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.0104 ; 3 uses
  %i.w = load i32, ptr %i.h, align 8, !tbaa !3    ; 2 uses
  %7 = shl i64 %.0104, 2
  %8 = sub i64 %6, %7                             ; 2 uses
  %9 = lshr exact i64 %8, 2
  %i.x = add nuw nsw i64 %9, 1                    ; 2 uses
  %min.iters.check135 = icmp ult i64 %8, 28
  br i1 %min.iters.check135, label %.lr.ph.i.i.i.preheader169, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec138 = and i64 %i.x, 9223372036854775800   ; 3 uses
  %i.y = shl i64 %n.vec138, 2
  %i.z = getelementptr i8, ptr %i.v, i64 %i.y
  %broadcast.splatinsert139 = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat140 = shufflevector <4 x i32> %broadcast.splatinsert139, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph136
  %index142 = phi i64 [ 0, %vector.ph136 ], [ %index.next143, %vector.body141 ] ; 2 uses
  %i.aa = shl i64 %index142, 2
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat140, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat140, ptr %i.ab, align 4, !tbaa !3
  %index.next143 = add nuw i64 %index142, 8       ; 2 uses
  %i.ac = icmp eq i64 %index.next143, %n.vec138
  br i1 %i.ac, label %middle.block144, label %vector.body141, !llvm.loop !2412

middle.block144:                                  ; preds = %vector.body141
  %cmp.n145 = icmp eq i64 %i.x, %n.vec138
  br i1 %cmp.n145, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.preheader169

.lr.ph.i.i.i.preheader169:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block144
  %.06.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block144 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader169, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader169 ] ; 2 uses
  store i32 %i.w, ptr %.06.i.i.i, align 4, !tbaa !3
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %i.j
  br i1 %.not.i.i.i, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !2413

_ZSt4fillIPiiEvT_S1_RKT0_.exit.loopexit:          ; preds = %.lr.ph.i.i.i, %middle.block144
  %i.ae = sub i64 %2, %.0104
  %i.af = sub i64 2048, %i.s
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %i.af) ; 2 uses
  %i.ah = add i64 %i.ag, %i.s
  br label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.ai = sub i64 %2, %.0104
  %i.aj = sub i64 2048, %i.s
  %i.ak = tail call noundef i64 @llvm.umin.i64(i64 %i.ai, i64 %i.aj) ; 10 uses
  %i.al = getelementptr [4 x i8], ptr %i.g, i64 %.0104 ; 5 uses
  %.not108 = icmp eq i64 %i.ak, 0
  br i1 %.not108, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %min.iters.check149 = icmp ult i64 %i.ak, 8
  br i1 %min.iters.check149, label %.lr.ph.preheader170, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.am = add i64 %.0104, %i.ak
  %i.an = shl i64 %i.am, 2
  %scevgep147 = getelementptr i8, ptr %scevgep, i64 %i.an
  %bound0 = icmp ult ptr %i.al, %i.n
  %bound1 = icmp ult ptr %i.i, %scevgep147
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader170, label %vector.ph150

vector.ph150:                                     ; preds = %vector.memcheck
  %n.vec152 = and i64 %i.ak, -8                   ; 3 uses
  %i.ao = load i32, ptr %i.h, align 8, !tbaa !2414, !alias.scope !2415
  %broadcast.splatinsert157 = insertelement <4 x i32> poison, i32 %i.ao, i64 0
  %broadcast.splat158 = shufflevector <4 x i32> %broadcast.splatinsert157, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ap = load i32, ptr %i.i, align 4, !tbaa !2418, !alias.scope !2415
  %broadcast.splatinsert159 = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat160 = shufflevector <4 x i32> %broadcast.splatinsert159, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert153 = insertelement <4 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat154 = shufflevector <4 x i64> %broadcast.splatinsert153, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i64> splat (i64 4), %broadcast.splat154
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph150
  %index156 = phi i64 [ 0, %vector.ph150 ], [ %index.next161, %vector.body155 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph150 ], [ %vec.ind.next, %vector.body155 ] ; 3 uses
  %i.aq = add <4 x i64> %vec.ind, %broadcast.splat154
  %.reass = add <4 x i64> %vec.ind, %invariant.op
  %i.ar = trunc <4 x i64> %i.aq to <4 x i32>
  %i.as = trunc <4 x i64> %.reass to <4 x i32>
  %i.at = mul <4 x i32> %broadcast.splat158, %i.ar
  %i.au = mul <4 x i32> %broadcast.splat158, %i.as
  %i.av = add <4 x i32> %i.at, %broadcast.splat160
  %i.aw = add <4 x i32> %i.au, %broadcast.splat160
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index156 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <4 x i32> %i.av, ptr %i.ax, align 4, !tbaa !3, !alias.scope !2419, !noalias !2415
  store <4 x i32> %i.aw, ptr %i.ay, align 4, !tbaa !3, !alias.scope !2419, !noalias !2415
  %index.next161 = add nuw i64 %index156, 8       ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.az = icmp eq i64 %index.next161, %n.vec152
  br i1 %i.az, label %middle.block162, label %vector.body155, !llvm.loop !2421

middle.block162:                                  ; preds = %vector.body155
  %cmp.n163 = icmp eq i64 %i.ak, %n.vec152
  br i1 %cmp.n163, label %._crit_edge, label %.lr.ph.preheader170

.lr.ph.preheader170:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block162
  %.090103.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec152, %middle.block162 ] ; 5 uses
  %.neg = or disjoint i64 %.090103.ph, 1
  %xtraiter = and i64 %i.ak, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader170
  %i.ba = add i64 %.090103.ph, %i.s
  %i.bb = load i32, ptr %i.h, align 8, !tbaa !2414
  %i.bc = load i32, ptr %i.i, align 4, !tbaa !2418
  %i.bd = trunc i64 %i.ba to i32
  %i.be = mul i32 %i.bb, %i.bd
  %i.bf = add i32 %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.090103.ph
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !3
  %i.bh = or disjoint i64 %.090103.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader170
  %.090103.unr = phi i64 [ %.090103.ph, %.lr.ph.preheader170 ], [ %i.bh, %.lr.ph.prol ]
  %i.bi = icmp eq i64 %i.ak, %.neg
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block162, %bb.e
  %i.bj = add i64 %i.ak, %i.s
  br label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.090103 = phi i64 [ %i.bz, %.lr.ph ], [ %.090103.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.bk = add i64 %.090103, %i.s
  %i.bl = load i32, ptr %i.h, align 8, !tbaa !2414
  %i.bm = load i32, ptr %i.i, align 4, !tbaa !2418
  %i.bn = trunc i64 %i.bk to i32
  %i.bo = mul i32 %i.bl, %i.bn
  %i.bp = add i32 %i.bo, %i.bm
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.090103
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !3
  %i.br = add nuw i64 %.090103, 1                 ; 2 uses
  %i.bs = add i64 %i.br, %i.s
  %i.bt = load i32, ptr %i.h, align 8, !tbaa !2414
  %i.bu = load i32, ptr %i.i, align 4, !tbaa !2418
  %i.bv = trunc i64 %i.bs to i32
  %i.bw = mul i32 %i.bt, %i.bv
  %i.bx = add i32 %i.bw, %i.bu
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.br
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !3
  %i.bz = add nuw i64 %.090103, 2                 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bz, %i.ak
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !2422

bb.f:                                             ; preds = %bb.d
  %i.ca = sub i64 %2, %.0104
  %i.cb = sub nuw nsw i64 32, %i.t
  %i.cc = tail call noundef i64 @llvm.umin.i64(i64 %i.ca, i64 %i.cb) ; 19 uses
  %i.cd = load ptr, ptr %i.k, align 8, !tbaa !2423
  %i.ce = load i8, ptr %i.l, align 8, !tbaa !2424 ; 2 uses
  %i.cf = zext i8 %i.ce to i64                    ; 2 uses
  %i.cg = mul i64 %i.s, %i.cf
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ch
  %i.cj = mul nuw nsw i64 %i.t, %i.cf
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.0104 ; 31 uses
  %i.co = icmp eq i64 %i.cc, 32
  %i.cp = zext i8 %i.ce to i32                    ; 2 uses
  br i1 %i.co, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN18duckdb_fastpforlib10fastunpackEPKjPjj(ptr noundef %i.cm, ptr noundef %i.cn, i32 noundef %i.cp)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN18duckdb_fastpforlib10fastunpackEPKjPjj(ptr noundef %i.cm, ptr noundef nonnull %i.m, i32 noundef %i.cp)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.t
  %i.cr = shl nuw nsw i64 %i.cc, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cn, ptr nonnull align 4 %i.cq, i64 %i.cr, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cs = load i8, ptr %i.f, align 8, !tbaa !2411
  %i.ct = icmp eq i8 %i.cs, 4
  %i.cu = load i32, ptr %i.i, align 4, !tbaa !2418 ; 5 uses
  %.not.i.not = icmp eq i32 %i.cu, 0              ; 2 uses
  br i1 %i.ct, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i.not, label %_ZN6duckdbL21ApplyFrameOfReferenceIiEEvPT_S1_m.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %min.iters.check = icmp samesign ult i64 %i.cc, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader167, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.cc, 56                      ; 5 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb25BitpackingInitCompressionIlLb1EEENS_10unique_ptrINS_16CompressionStateESt14default_deleteIS2_ELb1EEERNS_24ColumnDataCheckpointDataENS1_INS_12AnalyzeStateES3_IS8_ELb1EEE:bb.a
_ZNSt10unique_ptrIN6duckdb26BitpackingCompressionStateIlLb1ElEESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.c, ptr %0, align 8, !tbaa !230
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18BitpackingCompressIlLb1EEEvRNS_16CompressionStateERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb26BitpackingCompressionStateIlLb1ElE6AppendERNS_19UnifiedVectorFormatEm(ptr noundef nonnull align 8 dereferenceable(35000) %0, ptr noundef nonnull align 8 dereferenceable(73) %3, i64 noundef %2)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.c, align 8, !tbaa !235
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !237
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !238
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !238
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.f:                                             ; preds = %bb.d
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.g ], [ %i.p, %bb.h ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !67

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !234  ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.t, align 8, !tbaa !235
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !237
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #30, !inline_history !240
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #30, !inline_history !240
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
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
  br i1 %i.ah, label %bb.o, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !67

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #30
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.p:                                             ; preds = %bb.b, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.ai
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb26BitpackingFinalizeCompressIlLb1EEEvRNS_16CompressionStateE(ptr noundef nonnull align 8 dereferenceable(16) %0) #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = tail call noundef zeroext i1 @_ZN6duckdb15BitpackingStateIllE5FlushINS_26BitpackingCompressionStateIlLb1ElE16BitpackingWriterEEEbv(ptr noundef nonnull align 8 dereferenceable(34919) %i.a) ; 0 uses
  tail call void @_ZN6duckdb26BitpackingCompressionStateIlLb1ElE12FlushSegmentEv(ptr noundef nonnull align 8 dereferenceable(35000) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !218  ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !218
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb26BitpackingCompressionStateIlLb1ElE8FinalizeEv.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i: ; preds = %bb.a
  tail call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.d) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #32
  br label %_ZN6duckdb26BitpackingCompressionStateIlLb1ElE8FinalizeEv.exit

_ZN6duckdb26BitpackingCompressionStateIlLb1ElE8FinalizeEv.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18BitpackingInitScanIlEENS_10unique_ptrINS_16SegmentScanStateESt14default_deleteIS2_ELb1EEERKNS_12QueryContextERNS_13ColumnSegmentE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(240) %2) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16488) ptr @_Znwm(i64 noundef 16488) #33, !noalias !2513 ; 3 uses
  invoke void @_ZN6duckdb19BitpackingScanStateIllEC2ERKNS_12QueryContextERNS_13ColumnSegmentE(ptr noundef nonnull align 8 dereferenceable(16488) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(240) %2)
          to label %_ZNSt10unique_ptrIN6duckdb19BitpackingScanStateIllEESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !2513

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #32, !noalias !2513
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN6duckdb19BitpackingScanStateIllEESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14BitpackingScanIlEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3) #1 comdat {
bb.a:
  tail call void @_ZN6duckdb21BitpackingScanPartialIllmEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21BitpackingScanPartialIllmEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 10 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !461  ; 3 uses
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge107, label %.lr.ph106

.lr.ph106:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16464 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16424 ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %i.d, i64 %4 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16448 ; 5 uses
  %i.i = getelementptr i8, ptr %i.b, i64 16440    ; 6 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %2
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16472
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16432
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16456 ; 2 uses
  %.pre = load i64, ptr %i.e, align 8, !tbaa !2516
  %5 = shl i64 %2, 3
  %6 = add i64 %5, -8
  %i.o = shl i64 %4, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.o
  %scevgep149 = getelementptr i8, ptr %i.b, i64 16472
  %i.p = getelementptr i8, ptr %i.d, i64 %i.o
  %scevgep167 = getelementptr i8, ptr %i.p, i64 -8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph106, %bb.l
  %i.q = phi i64 [ %.pre, %.lr.ph106 ], [ %.sink, %bb.l ] ; 2 uses
  %.0104 = phi i64 [ 0, %.lr.ph106 ], [ %.1, %bb.l ] ; 10 uses
  %i.r = icmp eq i64 %i.q, 2048
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb19BitpackingScanStateIllE13LoadNextGroupEv(ptr noundef nonnull align 8 dereferenceable(16488) %i.b)
  %.pre109 = load i64, ptr %i.e, align 8, !tbaa !2516
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi i64 [ %.pre109, %bb.c ], [ %i.q, %bb.b ] ; 5 uses
  %i.t = and i64 %i.s, 31                         ; 3 uses
  %i.u = load i8, ptr %i.f, align 8, !tbaa !2518
  switch i8 %i.u, label %bb.f [
    i8 2, label %.lr.ph.i.i.i.preheader
    i8 3, label %bb.e
  ]

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0104 ; 3 uses
  %i.w = load i64, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %7 = shl i64 %.0104, 3
  %8 = sub i64 %6, %7                             ; 2 uses
  %9 = lshr exact i64 %8, 3
  %i.x = add nuw nsw i64 %9, 1                    ; 2 uses
  %min.iters.check136 = icmp ult i64 %8, 24
  br i1 %min.iters.check136, label %.lr.ph.i.i.i.preheader171, label %vector.ph137

vector.ph137:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec139 = and i64 %i.x, 4611686018427387900   ; 3 uses
  %i.y = shl i64 %n.vec139, 3
  %i.z = getelementptr i8, ptr %i.v, i64 %i.y
  %broadcast.splatinsert140 = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %broadcast.splat141 = shufflevector <2 x i64> %broadcast.splatinsert140, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph137
  %index143 = phi i64 [ 0, %vector.ph137 ], [ %index.next144, %vector.body142 ] ; 2 uses
  %i.aa = shl i64 %index143, 3
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat141, ptr %next.gep, align 8, !tbaa !21
  store <2 x i64> %broadcast.splat141, ptr %i.ab, align 8, !tbaa !21
  %index.next144 = add nuw i64 %index143, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next144, %n.vec139
  br i1 %i.ac, label %middle.block145, label %vector.body142, !llvm.loop !2519

middle.block145:                                  ; preds = %vector.body142
  %cmp.n146 = icmp eq i64 %i.x, %n.vec139
  br i1 %cmp.n146, label %_ZSt4fillIPllEvT_S1_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.preheader171

.lr.ph.i.i.i.preheader171:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block145
  %.06.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block145 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader171, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader171 ] ; 2 uses
  store i64 %i.w, ptr %.06.i.i.i, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %i.j
  br i1 %.not.i.i.i, label %_ZSt4fillIPllEvT_S1_RKT0_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !2520

_ZSt4fillIPllEvT_S1_RKT0_.exit.loopexit:          ; preds = %.lr.ph.i.i.i, %middle.block145
  %i.ae = sub i64 %2, %.0104
  %i.af = sub i64 2048, %i.s
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %i.af) ; 2 uses
  %i.ah = load i64, ptr %i.e, align 8, !tbaa !2516
  %i.ai = add i64 %i.ah, %i.ag
  br label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.aj = sub i64 %2, %.0104
  %i.ak = sub i64 2048, %i.s
  %i.al = tail call noundef i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ak) ; 10 uses
  %i.am = getelementptr [8 x i8], ptr %i.g, i64 %.0104 ; 5 uses
  %.not108 = icmp eq i64 %i.al, 0
  br i1 %.not108, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %min.iters.check151 = icmp ult i64 %i.al, 4
  br i1 %min.iters.check151, label %.lr.ph.preheader172, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.an = add i64 %.0104, %i.al
  %i.ao = shl i64 %i.an, 3
  %scevgep148 = getelementptr i8, ptr %scevgep, i64 %i.ao
  %bound0 = icmp ult ptr %i.am, %scevgep149
  %bound1 = icmp ult ptr %i.i, %scevgep148
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader172, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck
  %n.vec154 = and i64 %i.al, -4                   ; 3 uses
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !2516, !alias.scope !2521
  %broadcast.splatinsert157 = insertelement <2 x i64> poison, i64 %i.ap, i64 0
  %broadcast.splat158 = shufflevector <2 x i64> %broadcast.splatinsert157, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !2524, !alias.scope !2521
  %broadcast.splatinsert159 = insertelement <2 x i64> poison, i64 %i.aq, i64 0
  %broadcast.splat160 = shufflevector <2 x i64> %broadcast.splatinsert159, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = load i64, ptr %i.i, align 8, !tbaa !2525, !alias.scope !2521
  %broadcast.splatinsert161 = insertelement <2 x i64> poison, i64 %i.ar, i64 0
  %broadcast.splat162 = shufflevector <2 x i64> %broadcast.splatinsert161, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat158
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph152
  %index156 = phi i64 [ 0, %vector.ph152 ], [ %index.next163, %vector.body155 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph152 ], [ %vec.ind.next, %vector.body155 ] ; 3 uses
  %i.as = add <2 x i64> %broadcast.splat158, %vec.ind
  %.reass = add <2 x i64> %vec.ind, %invariant.op
  %i.at = mul <2 x i64> %broadcast.splat160, %i.as
  %i.au = mul <2 x i64> %broadcast.splat160, %.reass
  %i.av = add <2 x i64> %i.at, %broadcast.splat162
  %i.aw = add <2 x i64> %i.au, %broadcast.splat162
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %index156 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %i.av, ptr %i.ax, align 8, !tbaa !21, !alias.scope !2526, !noalias !2521
  store <2 x i64> %i.aw, ptr %i.ay, align 8, !tbaa !21, !alias.scope !2526, !noalias !2521
  %index.next163 = add nuw i64 %index156, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.az = icmp eq i64 %index.next163, %n.vec154
  br i1 %i.az, label %middle.block164, label %vector.body155, !llvm.loop !2528

middle.block164:                                  ; preds = %vector.body155
  %cmp.n165 = icmp eq i64 %i.al, %n.vec154
  br i1 %cmp.n165, label %._crit_edge.loopexit, label %.lr.ph.preheader172

.lr.ph.preheader172:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block164
  %.090103.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec154, %middle.block164 ] ; 5 uses
  %.neg = or disjoint i64 %.090103.ph, 1
  %xtraiter = and i64 %i.al, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader172
  %i.ba = load i64, ptr %i.e, align 8, !tbaa !2516
  %i.bb = add i64 %i.ba, %.090103.ph
  %i.bc = load i64, ptr %i.h, align 8, !tbaa !2524
  %i.bd = mul i64 %i.bc, %i.bb
  %i.be = load i64, ptr %i.i, align 8, !tbaa !2525
  %i.bf = add i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.090103.ph
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !21
  %i.bh = or disjoint i64 %.090103.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader172
  %.090103.unr = phi i64 [ %.090103.ph, %.lr.ph.preheader172 ], [ %i.bh, %.lr.ph.prol ]
  %i.bi = icmp eq i64 %i.al, %.neg
  br i1 %i.bi, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block164
  %.pre110 = load i64, ptr %i.e, align 8, !tbaa !2516
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.bj = phi i64 [ %.pre110, %._crit_edge.loopexit ], [ %i.s, %bb.e ]
  %i.bk = add i64 %i.bj, %i.al
  br label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.090103 = phi i64 [ %i.ca, %.lr.ph ], [ %.090103.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.bl = load i64, ptr %i.e, align 8, !tbaa !2516
  %i.bm = add i64 %i.bl, %.090103
  %i.bn = load i64, ptr %i.h, align 8, !tbaa !2524
  %i.bo = mul i64 %i.bn, %i.bm
  %i.bp = load i64, ptr %i.i, align 8, !tbaa !2525
  %i.bq = add i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.090103
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !21
  %i.bs = add nuw i64 %.090103, 1                 ; 2 uses
  %i.bt = load i64, ptr %i.e, align 8, !tbaa !2516
  %i.bu = add i64 %i.bt, %i.bs
  %i.bv = load i64, ptr %i.h, align 8, !tbaa !2524
  %i.bw = mul i64 %i.bv, %i.bu
  %i.bx = load i64, ptr %i.i, align 8, !tbaa !2525
  %i.by = add i64 %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.bs
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !21
  %i.ca = add nuw i64 %.090103, 2                 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ca, %i.al
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !2529

bb.f:                                             ; preds = %bb.d
  %i.cb = sub i64 %2, %.0104
  %i.cc = sub nuw nsw i64 32, %i.t
  %i.cd = tail call noundef i64 @llvm.umin.i64(i64 %i.cb, i64 %i.cc) ; 19 uses
  %i.ce = load ptr, ptr %i.k, align 8, !tbaa !2530
  %i.cf = load i8, ptr %i.l, align 8, !tbaa !2531 ; 2 uses
  %i.cg = zext i8 %i.cf to i64                    ; 2 uses
  %i.ch = mul i64 %i.s, %i.cg
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ci
  %i.ck = mul nuw nsw i64 %i.t, %i.cg
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds i8, ptr %i.cj, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0104 ; 47 uses
  %i.cp = icmp eq i64 %i.cd, 32
  %i.cq = zext i8 %i.cf to i32                    ; 2 uses
  br i1 %i.cp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN18duckdb_fastpforlib10fastunpackEPKjPmj(ptr noundef %i.cn, ptr noundef %i.co, i32 noundef %i.cq)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN18duckdb_fastpforlib10fastunpackEPKjPmj(ptr noundef %i.cn, ptr noundef nonnull %i.m, i32 noundef %i.cq)
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.t
  %i.cs = shl nuw nsw i64 %i.cd, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.co, ptr nonnull align 8 %i.cr, i64 %i.cs, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ct = load i8, ptr %i.f, align 8, !tbaa !2518
  %i.cu = icmp eq i8 %i.ct, 4
  %i.cv = load i64, ptr %i.i, align 8, !tbaa !2525 ; 5 uses
  %.not.i.not = icmp eq i64 %i.cv, 0              ; 2 uses
  br i1 %i.cu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i.not, label %_ZN6duckdbL21ApplyFrameOfReferenceIlEEvPT_S1_m.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %min.iters.check = icmp samesign ult i64 %i.cd, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader169, label %vector.ph
end_hunk_1
begin_hunk_2_@_ZN6duckdb25BitpackingInitCompressionIjLb1EEENS_10unique_ptrINS_16CompressionStateESt14default_deleteIS2_ELb1EEERNS_24ColumnDataCheckpointDataENS1_INS_12AnalyzeStateES3_IS8_ELb1EEE:bb.a
_ZNSt10unique_ptrIN6duckdb26BitpackingCompressionStateIjLb1EiEESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.c, ptr %0, align 8, !tbaa !230
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18BitpackingCompressIjLb1EEEvRNS_16CompressionStateERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb26BitpackingCompressionStateIjLb1EiE6AppendERNS_19UnifiedVectorFormatEm(ptr noundef nonnull align 8 dereferenceable(18592) %0, ptr noundef nonnull align 8 dereferenceable(73) %3, i64 noundef %2)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.c, align 8, !tbaa !235
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !237
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !238
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !238
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.f:                                             ; preds = %bb.d
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.g ], [ %i.p, %bb.h ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !67

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !234  ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.t, align 8, !tbaa !235
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !237
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #30, !inline_history !240
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #30, !inline_history !240
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
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
  br i1 %i.ah, label %bb.o, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !67

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #30
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.p:                                             ; preds = %bb.b, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.ai
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb26BitpackingFinalizeCompressIjLb1EEEvRNS_16CompressionStateE(ptr noundef nonnull align 8 dereferenceable(16) %0) #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = tail call noundef zeroext i1 @_ZN6duckdb15BitpackingStateIjiE5FlushINS_26BitpackingCompressionStateIjLb1EiE16BitpackingWriterEEEbv(ptr noundef nonnull align 8 dereferenceable(18507) %i.a) ; 0 uses
  tail call void @_ZN6duckdb26BitpackingCompressionStateIjLb1EiE12FlushSegmentEv(ptr noundef nonnull align 8 dereferenceable(18592) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !218  ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !218
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb26BitpackingCompressionStateIjLb1EiE8FinalizeEv.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i: ; preds = %bb.a
  tail call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.d) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #32
  br label %_ZN6duckdb26BitpackingCompressionStateIjLb1EiE8FinalizeEv.exit

_ZN6duckdb26BitpackingCompressionStateIjLb1EiE8FinalizeEv.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18BitpackingInitScanIjEENS_10unique_ptrINS_16SegmentScanStateESt14default_deleteIS2_ELb1EEERKNS_12QueryContextERNS_13ColumnSegmentE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(240) %2) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8280) ptr @_Znwm(i64 noundef 8280) #33, !noalias !2798 ; 3 uses
  invoke void @_ZN6duckdb19BitpackingScanStateIjiEC2ERKNS_12QueryContextERNS_13ColumnSegmentE(ptr noundef nonnull align 8 dereferenceable(8280) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(240) %2)
          to label %_ZNSt10unique_ptrIN6duckdb19BitpackingScanStateIjiEESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !2798

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #32, !noalias !2798
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN6duckdb19BitpackingScanStateIjiEESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14BitpackingScanIjEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3) #1 comdat {
bb.a:
  tail call void @_ZN6duckdb21BitpackingScanPartialIjijEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21BitpackingScanPartialIjijEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 9 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIjEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !461  ; 3 uses
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge106, label %.lr.ph105

.lr.ph105:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8256 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8232 ; 2 uses
  %i.g = getelementptr [4 x i8], ptr %i.d, i64 %4 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8248 ; 5 uses
  %i.i = getelementptr i8, ptr %i.b, i64 8244     ; 6 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %2
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8264
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8240
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.n = getelementptr i8, ptr %i.b, i64 8252     ; 3 uses
  %.pre = load i64, ptr %i.e, align 8, !tbaa !2801
  %5 = shl i64 %2, 2
  %6 = add i64 %5, -4
  %i.o = shl i64 %4, 2                            ; 2 uses
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.o
  %i.p = getelementptr i8, ptr %i.d, i64 %i.o
  %scevgep164 = getelementptr i8, ptr %i.p, i64 -4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph105, %bb.l
  %i.q = phi i64 [ %.pre, %.lr.ph105 ], [ %.sink, %bb.l ] ; 2 uses
  %.0103 = phi i64 [ 0, %.lr.ph105 ], [ %.1, %bb.l ] ; 10 uses
  %i.r = icmp eq i64 %i.q, 2048
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb19BitpackingScanStateIjiE13LoadNextGroupEv(ptr noundef nonnull align 8 dereferenceable(8280) %i.b)
  %.pre108 = load i64, ptr %i.e, align 8, !tbaa !2801
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi i64 [ %.pre108, %bb.c ], [ %i.q, %bb.b ] ; 10 uses
  %i.t = and i64 %i.s, 31                         ; 3 uses
  %i.u = load i8, ptr %i.f, align 8, !tbaa !2803
  switch i8 %i.u, label %bb.f [
    i8 2, label %.lr.ph.i.i.i.preheader
    i8 3, label %bb.e
  ]

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.0103 ; 3 uses
  %i.w = load i32, ptr %i.h, align 8, !tbaa !3    ; 2 uses
  %7 = shl i64 %.0103, 2
  %8 = sub i64 %6, %7                             ; 2 uses
  %9 = lshr exact i64 %8, 2
  %i.x = add nuw nsw i64 %9, 1                    ; 2 uses
  %min.iters.check134 = icmp ult i64 %8, 28
  br i1 %min.iters.check134, label %.lr.ph.i.i.i.preheader168, label %vector.ph135

vector.ph135:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec137 = and i64 %i.x, 9223372036854775800   ; 3 uses
  %i.y = shl i64 %n.vec137, 2
  %i.z = getelementptr i8, ptr %i.v, i64 %i.y
  %broadcast.splatinsert138 = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat139 = shufflevector <4 x i32> %broadcast.splatinsert138, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph135
  %index141 = phi i64 [ 0, %vector.ph135 ], [ %index.next142, %vector.body140 ] ; 2 uses
  %i.aa = shl i64 %index141, 2
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat139, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat139, ptr %i.ab, align 4, !tbaa !3
  %index.next142 = add nuw i64 %index141, 8       ; 2 uses
  %i.ac = icmp eq i64 %index.next142, %n.vec137
  br i1 %i.ac, label %middle.block143, label %vector.body140, !llvm.loop !2804

middle.block143:                                  ; preds = %vector.body140
  %cmp.n144 = icmp eq i64 %i.x, %n.vec137
  br i1 %cmp.n144, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.preheader168

.lr.ph.i.i.i.preheader168:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block143
  %.06.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block143 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader168, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader168 ] ; 2 uses
  store i32 %i.w, ptr %.06.i.i.i, align 4, !tbaa !3
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %i.j
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !2805

_ZSt4fillIPjjEvT_S1_RKT0_.exit.loopexit:          ; preds = %.lr.ph.i.i.i, %middle.block143
  %i.ae = sub i64 %2, %.0103
  %i.af = sub i64 2048, %i.s
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %i.af) ; 2 uses
  %i.ah = add i64 %i.ag, %i.s
  br label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.ai = sub i64 %2, %.0103
  %i.aj = sub i64 2048, %i.s
  %i.ak = tail call noundef i64 @llvm.umin.i64(i64 %i.ai, i64 %i.aj) ; 10 uses
  %i.al = getelementptr [4 x i8], ptr %i.g, i64 %.0103 ; 5 uses
  %.not107 = icmp eq i64 %i.ak, 0
  br i1 %.not107, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %min.iters.check148 = icmp ult i64 %i.ak, 8
  br i1 %min.iters.check148, label %.lr.ph.preheader169, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.am = add i64 %.0103, %i.ak
  %i.an = shl i64 %i.am, 2
  %scevgep146 = getelementptr i8, ptr %scevgep, i64 %i.an
  %bound0 = icmp ult ptr %i.al, %i.n
  %bound1 = icmp ult ptr %i.i, %scevgep146
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader169, label %vector.ph149

vector.ph149:                                     ; preds = %vector.memcheck
  %n.vec151 = and i64 %i.ak, -8                   ; 3 uses
  %i.ao = load i32, ptr %i.h, align 8, !tbaa !2806, !alias.scope !2807
  %broadcast.splatinsert156 = insertelement <4 x i32> poison, i32 %i.ao, i64 0
  %broadcast.splat157 = shufflevector <4 x i32> %broadcast.splatinsert156, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ap = load i32, ptr %i.i, align 4, !tbaa !2810, !alias.scope !2807
  %broadcast.splatinsert158 = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %broadcast.splat159 = shufflevector <4 x i32> %broadcast.splatinsert158, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert152 = insertelement <4 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat153 = shufflevector <4 x i64> %broadcast.splatinsert152, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i64> splat (i64 4), %broadcast.splat153
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph149
  %index155 = phi i64 [ 0, %vector.ph149 ], [ %index.next160, %vector.body154 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph149 ], [ %vec.ind.next, %vector.body154 ] ; 3 uses
  %i.aq = add <4 x i64> %vec.ind, %broadcast.splat153
  %.reass = add <4 x i64> %vec.ind, %invariant.op
  %i.ar = trunc <4 x i64> %i.aq to <4 x i32>
  %i.as = trunc <4 x i64> %.reass to <4 x i32>
  %i.at = mul <4 x i32> %broadcast.splat157, %i.ar
  %i.au = mul <4 x i32> %broadcast.splat157, %i.as
  %i.av = add <4 x i32> %i.at, %broadcast.splat159
  %i.aw = add <4 x i32> %i.au, %broadcast.splat159
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index155 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <4 x i32> %i.av, ptr %i.ax, align 4, !tbaa !3, !alias.scope !2811, !noalias !2807
  store <4 x i32> %i.aw, ptr %i.ay, align 4, !tbaa !3, !alias.scope !2811, !noalias !2807
  %index.next160 = add nuw i64 %index155, 8       ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.az = icmp eq i64 %index.next160, %n.vec151
  br i1 %i.az, label %middle.block161, label %vector.body154, !llvm.loop !2813

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %i.ak, %n.vec151
  br i1 %cmp.n162, label %._crit_edge, label %.lr.ph.preheader169

.lr.ph.preheader169:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block161
  %.090102.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec151, %middle.block161 ] ; 5 uses
  %.neg = or disjoint i64 %.090102.ph, 1
  %xtraiter = and i64 %i.ak, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader169
  %i.ba = add i64 %.090102.ph, %i.s
  %i.bb = load i32, ptr %i.h, align 8, !tbaa !2806
  %i.bc = load i32, ptr %i.i, align 4, !tbaa !2810
  %i.bd = trunc i64 %i.ba to i32
  %i.be = mul i32 %i.bb, %i.bd
  %i.bf = add i32 %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.090102.ph
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !3
  %i.bh = or disjoint i64 %.090102.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader169
  %.090102.unr = phi i64 [ %.090102.ph, %.lr.ph.preheader169 ], [ %i.bh, %.lr.ph.prol ]
  %i.bi = icmp eq i64 %i.ak, %.neg
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block161, %bb.e
  %i.bj = add i64 %i.ak, %i.s
  br label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.090102 = phi i64 [ %i.bz, %.lr.ph ], [ %.090102.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.bk = add i64 %.090102, %i.s
  %i.bl = load i32, ptr %i.h, align 8, !tbaa !2806
  %i.bm = load i32, ptr %i.i, align 4, !tbaa !2810
  %i.bn = trunc i64 %i.bk to i32
  %i.bo = mul i32 %i.bl, %i.bn
  %i.bp = add i32 %i.bo, %i.bm
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.090102
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !3
  %i.br = add nuw i64 %.090102, 1                 ; 2 uses
  %i.bs = add i64 %i.br, %i.s
  %i.bt = load i32, ptr %i.h, align 8, !tbaa !2806
  %i.bu = load i32, ptr %i.i, align 4, !tbaa !2810
  %i.bv = trunc i64 %i.bs to i32
  %i.bw = mul i32 %i.bt, %i.bv
  %i.bx = add i32 %i.bw, %i.bu
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.br
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !3
  %i.bz = add nuw i64 %.090102, 2                 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.bz, %i.ak
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !2814

bb.f:                                             ; preds = %bb.d
  %i.ca = sub i64 %2, %.0103
  %i.cb = sub nuw nsw i64 32, %i.t
  %i.cc = tail call noundef i64 @llvm.umin.i64(i64 %i.ca, i64 %i.cb) ; 19 uses
  %i.cd = load ptr, ptr %i.k, align 8, !tbaa !2815
  %i.ce = load i8, ptr %i.l, align 8, !tbaa !2816 ; 2 uses
  %i.cf = zext i8 %i.ce to i64                    ; 2 uses
  %i.cg = mul i64 %i.s, %i.cf
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ch
  %i.cj = mul nuw nsw i64 %i.t, %i.cf
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.ci, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.0103 ; 31 uses
  %i.co = icmp eq i64 %i.cc, 32
  %i.cp = zext i8 %i.ce to i32                    ; 2 uses
  br i1 %i.co, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN18duckdb_fastpforlib10fastunpackEPKjPjj(ptr noundef %i.cm, ptr noundef %i.cn, i32 noundef %i.cp)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN18duckdb_fastpforlib10fastunpackEPKjPjj(ptr noundef %i.cm, ptr noundef nonnull %i.m, i32 noundef %i.cp)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.t
  %i.cr = shl nuw nsw i64 %i.cc, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cn, ptr nonnull align 4 %i.cq, i64 %i.cr, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cs = load i8, ptr %i.f, align 8, !tbaa !2803
  %i.ct = icmp eq i8 %i.cs, 4
  %i.cu = load i32, ptr %i.i, align 4, !tbaa !2810 ; 5 uses
  %.not.i.not = icmp eq i32 %i.cu, 0              ; 2 uses
  br i1 %i.ct, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i.not, label %_ZN6duckdbL21ApplyFrameOfReferenceIiEEvPT_S1_m.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %min.iters.check = icmp samesign ult i64 %i.cc, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader166, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.cc, 56                      ; 5 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 8 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb25BitpackingInitCompressionImLb1EEENS_10unique_ptrINS_16CompressionStateESt14default_deleteIS2_ELb1EEERNS_24ColumnDataCheckpointDataENS1_INS_12AnalyzeStateES3_IS8_ELb1EEE:bb.a
_ZNSt10unique_ptrIN6duckdb26BitpackingCompressionStateImLb1ElEESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.c, ptr %0, align 8, !tbaa !230
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18BitpackingCompressImLb1EEEvRNS_16CompressionStateERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %3)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %3)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6duckdb26BitpackingCompressionStateImLb1ElE6AppendERNS_19UnifiedVectorFormatEm(ptr noundef nonnull align 8 dereferenceable(35000) %0, ptr noundef nonnull align 8 dereferenceable(73) %3, i64 noundef %2)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.c, align 8, !tbaa !235
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !237
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !238
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !238
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.f:                                             ; preds = %bb.d
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.g ], [ %i.p, %bb.h ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !67

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !234  ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.t, align 8, !tbaa !235
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !237
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #30, !inline_history !240
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #30, !inline_history !240
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
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
  br i1 %i.ah, label %bb.o, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !67

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #30
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void

bb.p:                                             ; preds = %bb.b, %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.ai
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb26BitpackingFinalizeCompressImLb1EEEvRNS_16CompressionStateE(ptr noundef nonnull align 8 dereferenceable(16) %0) #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = tail call noundef zeroext i1 @_ZN6duckdb15BitpackingStateImlE5FlushINS_26BitpackingCompressionStateImLb1ElE16BitpackingWriterEEEbv(ptr noundef nonnull align 8 dereferenceable(34919) %i.a) ; 0 uses
  tail call void @_ZN6duckdb26BitpackingCompressionStateImLb1ElE12FlushSegmentEv(ptr noundef nonnull align 8 dereferenceable(35000) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !218  ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !218
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb26BitpackingCompressionStateImLb1ElE8FinalizeEv.exit, label %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i: ; preds = %bb.a
  tail call void @_ZN6duckdb13ColumnSegmentD1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.d) #30
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #32
  br label %_ZN6duckdb26BitpackingCompressionStateImLb1ElE8FinalizeEv.exit

_ZN6duckdb26BitpackingCompressionStateImLb1ElE8FinalizeEv.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb13ColumnSegmentEEclEPS1_.exit.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18BitpackingInitScanImEENS_10unique_ptrINS_16SegmentScanStateESt14default_deleteIS2_ELb1EEERKNS_12QueryContextERNS_13ColumnSegmentE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(240) %2) #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16488) ptr @_Znwm(i64 noundef 16488) #33, !noalias !2899 ; 3 uses
  invoke void @_ZN6duckdb19BitpackingScanStateImlEC2ERKNS_12QueryContextERNS_13ColumnSegmentE(ptr noundef nonnull align 8 dereferenceable(16488) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(240) %2)
          to label %_ZNSt10unique_ptrIN6duckdb19BitpackingScanStateImlEESt14default_deleteIS2_EED2Ev.exit unwind label %bb.b, !noalias !2899

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #32, !noalias !2899
  resume { ptr, i32 } %i.b

_ZNSt10unique_ptrIN6duckdb19BitpackingScanStateImlEESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14BitpackingScanImEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3) #1 comdat {
bb.a:
  tail call void @_ZN6duckdb21BitpackingScanPartialImlmEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21BitpackingScanPartialImlmEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(284) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4) #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_16SegmentScanStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 10 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !461  ; 3 uses
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge106, label %.lr.ph105

.lr.ph105:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16464 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16424 ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %i.d, i64 %4 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16448 ; 5 uses
  %i.i = getelementptr i8, ptr %i.b, i64 16440    ; 6 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %2
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16472
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16432
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16456 ; 2 uses
  %.pre = load i64, ptr %i.e, align 8, !tbaa !2902
  %5 = shl i64 %2, 3
  %6 = add i64 %5, -8
  %i.o = shl i64 %4, 3                            ; 2 uses
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.o
  %scevgep148 = getelementptr i8, ptr %i.b, i64 16472
  %i.p = getelementptr i8, ptr %i.d, i64 %i.o
  %scevgep166 = getelementptr i8, ptr %i.p, i64 -8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph105, %bb.l
  %i.q = phi i64 [ %.pre, %.lr.ph105 ], [ %.sink, %bb.l ] ; 2 uses
  %.0103 = phi i64 [ 0, %.lr.ph105 ], [ %.1, %bb.l ] ; 10 uses
  %i.r = icmp eq i64 %i.q, 2048
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6duckdb19BitpackingScanStateImlE13LoadNextGroupEv(ptr noundef nonnull align 8 dereferenceable(16488) %i.b)
  %.pre108 = load i64, ptr %i.e, align 8, !tbaa !2902
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = phi i64 [ %.pre108, %bb.c ], [ %i.q, %bb.b ] ; 5 uses
  %i.t = and i64 %i.s, 31                         ; 3 uses
  %i.u = load i8, ptr %i.f, align 8, !tbaa !2904
  switch i8 %i.u, label %bb.f [
    i8 2, label %.lr.ph.i.i.i.preheader
    i8 3, label %bb.e
  ]

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0103 ; 3 uses
  %i.w = load i64, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %7 = shl i64 %.0103, 3
  %8 = sub i64 %6, %7                             ; 2 uses
  %9 = lshr exact i64 %8, 3
  %i.x = add nuw nsw i64 %9, 1                    ; 2 uses
  %min.iters.check135 = icmp ult i64 %8, 24
  br i1 %min.iters.check135, label %.lr.ph.i.i.i.preheader170, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec138 = and i64 %i.x, 4611686018427387900   ; 3 uses
  %i.y = shl i64 %n.vec138, 3
  %i.z = getelementptr i8, ptr %i.v, i64 %i.y
  %broadcast.splatinsert139 = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %broadcast.splat140 = shufflevector <2 x i64> %broadcast.splatinsert139, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph136
  %index142 = phi i64 [ 0, %vector.ph136 ], [ %index.next143, %vector.body141 ] ; 2 uses
  %i.aa = shl i64 %index142, 3
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat140, ptr %next.gep, align 8, !tbaa !21
  store <2 x i64> %broadcast.splat140, ptr %i.ab, align 8, !tbaa !21
  %index.next143 = add nuw i64 %index142, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next143, %n.vec138
  br i1 %i.ac, label %middle.block144, label %vector.body141, !llvm.loop !2905

middle.block144:                                  ; preds = %vector.body141
  %cmp.n145 = icmp eq i64 %i.x, %n.vec138
  br i1 %cmp.n145, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.preheader170

.lr.ph.i.i.i.preheader170:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block144
  %.06.i.i.i.ph = phi ptr [ %i.v, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block144 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader170, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader170 ] ; 2 uses
  store i64 %i.w, ptr %.06.i.i.i, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %i.j
  br i1 %.not.i.i.i, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !2906

_ZSt4fillIPmmEvT_S1_RKT0_.exit.loopexit:          ; preds = %.lr.ph.i.i.i, %middle.block144
  %i.ae = sub i64 %2, %.0103
  %i.af = sub i64 2048, %i.s
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 %i.af) ; 2 uses
  %i.ah = load i64, ptr %i.e, align 8, !tbaa !2902
  %i.ai = add i64 %i.ah, %i.ag
  br label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.aj = sub i64 %2, %.0103
  %i.ak = sub i64 2048, %i.s
  %i.al = tail call noundef i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ak) ; 10 uses
  %i.am = getelementptr [8 x i8], ptr %i.g, i64 %.0103 ; 5 uses
  %.not107 = icmp eq i64 %i.al, 0
  br i1 %.not107, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %min.iters.check150 = icmp ult i64 %i.al, 4
  br i1 %min.iters.check150, label %.lr.ph.preheader171, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.an = add i64 %.0103, %i.al
  %i.ao = shl i64 %i.an, 3
  %scevgep147 = getelementptr i8, ptr %scevgep, i64 %i.ao
  %bound0 = icmp ult ptr %i.am, %scevgep148
  %bound1 = icmp ult ptr %i.i, %scevgep147
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader171, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck
  %n.vec153 = and i64 %i.al, -4                   ; 3 uses
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !2902, !alias.scope !2907
  %broadcast.splatinsert156 = insertelement <2 x i64> poison, i64 %i.ap, i64 0
  %broadcast.splat157 = shufflevector <2 x i64> %broadcast.splatinsert156, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !2910, !alias.scope !2907
  %broadcast.splatinsert158 = insertelement <2 x i64> poison, i64 %i.aq, i64 0
  %broadcast.splat159 = shufflevector <2 x i64> %broadcast.splatinsert158, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = load i64, ptr %i.i, align 8, !tbaa !2911, !alias.scope !2907
  %broadcast.splatinsert160 = insertelement <2 x i64> poison, i64 %i.ar, i64 0
  %broadcast.splat161 = shufflevector <2 x i64> %broadcast.splatinsert160, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat157
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph151
  %index155 = phi i64 [ 0, %vector.ph151 ], [ %index.next162, %vector.body154 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph151 ], [ %vec.ind.next, %vector.body154 ] ; 3 uses
  %i.as = add <2 x i64> %broadcast.splat157, %vec.ind
  %.reass = add <2 x i64> %vec.ind, %invariant.op
  %i.at = mul <2 x i64> %broadcast.splat159, %i.as
  %i.au = mul <2 x i64> %broadcast.splat159, %.reass
  %i.av = add <2 x i64> %i.at, %broadcast.splat161
  %i.aw = add <2 x i64> %i.au, %broadcast.splat161
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %index155 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %i.av, ptr %i.ax, align 8, !tbaa !21, !alias.scope !2912, !noalias !2907
  store <2 x i64> %i.aw, ptr %i.ay, align 8, !tbaa !21, !alias.scope !2912, !noalias !2907
  %index.next162 = add nuw i64 %index155, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.az = icmp eq i64 %index.next162, %n.vec153
  br i1 %i.az, label %middle.block163, label %vector.body154, !llvm.loop !2914

middle.block163:                                  ; preds = %vector.body154
  %cmp.n164 = icmp eq i64 %i.al, %n.vec153
  br i1 %cmp.n164, label %._crit_edge.loopexit, label %.lr.ph.preheader171

.lr.ph.preheader171:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block163
  %.090102.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec153, %middle.block163 ] ; 5 uses
  %.neg = or disjoint i64 %.090102.ph, 1
  %xtraiter = and i64 %i.al, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader171
  %i.ba = load i64, ptr %i.e, align 8, !tbaa !2902
  %i.bb = add i64 %i.ba, %.090102.ph
  %i.bc = load i64, ptr %i.h, align 8, !tbaa !2910
  %i.bd = mul i64 %i.bc, %i.bb
  %i.be = load i64, ptr %i.i, align 8, !tbaa !2911
  %i.bf = add i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.090102.ph
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !21
  %i.bh = or disjoint i64 %.090102.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader171
  %.090102.unr = phi i64 [ %.090102.ph, %.lr.ph.preheader171 ], [ %i.bh, %.lr.ph.prol ]
  %i.bi = icmp eq i64 %i.al, %.neg
  br i1 %i.bi, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block163
  %.pre109 = load i64, ptr %i.e, align 8, !tbaa !2902
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.bj = phi i64 [ %.pre109, %._crit_edge.loopexit ], [ %i.s, %bb.e ]
  %i.bk = add i64 %i.bj, %i.al
  br label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.090102 = phi i64 [ %i.ca, %.lr.ph ], [ %.090102.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.bl = load i64, ptr %i.e, align 8, !tbaa !2902
  %i.bm = add i64 %i.bl, %.090102
  %i.bn = load i64, ptr %i.h, align 8, !tbaa !2910
  %i.bo = mul i64 %i.bn, %i.bm
  %i.bp = load i64, ptr %i.i, align 8, !tbaa !2911
  %i.bq = add i64 %i.bo, %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.090102
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !21
  %i.bs = add nuw i64 %.090102, 1                 ; 2 uses
  %i.bt = load i64, ptr %i.e, align 8, !tbaa !2902
  %i.bu = add i64 %i.bt, %i.bs
  %i.bv = load i64, ptr %i.h, align 8, !tbaa !2910
  %i.bw = mul i64 %i.bv, %i.bu
  %i.bx = load i64, ptr %i.i, align 8, !tbaa !2911
  %i.by = add i64 %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.bs
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !21
  %i.ca = add nuw i64 %.090102, 2                 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ca, %i.al
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !2915

bb.f:                                             ; preds = %bb.d
  %i.cb = sub i64 %2, %.0103
  %i.cc = sub nuw nsw i64 32, %i.t
  %i.cd = tail call noundef i64 @llvm.umin.i64(i64 %i.cb, i64 %i.cc) ; 19 uses
  %i.ce = load ptr, ptr %i.k, align 8, !tbaa !2916
  %i.cf = load i8, ptr %i.l, align 8, !tbaa !2917 ; 2 uses
  %i.cg = zext i8 %i.cf to i64                    ; 2 uses
  %i.ch = mul i64 %i.s, %i.cg
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ci
  %i.ck = mul nuw nsw i64 %i.t, %i.cg
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds i8, ptr %i.cj, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0103 ; 47 uses
  %i.cp = icmp eq i64 %i.cd, 32
  %i.cq = zext i8 %i.cf to i32                    ; 2 uses
  br i1 %i.cp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN18duckdb_fastpforlib10fastunpackEPKjPmj(ptr noundef %i.cn, ptr noundef %i.co, i32 noundef %i.cq)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN18duckdb_fastpforlib10fastunpackEPKjPmj(ptr noundef %i.cn, ptr noundef nonnull %i.m, i32 noundef %i.cq)
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.t
  %i.cs = shl nuw nsw i64 %i.cd, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.co, ptr nonnull align 8 %i.cr, i64 %i.cs, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ct = load i8, ptr %i.f, align 8, !tbaa !2904
  %i.cu = icmp eq i8 %i.ct, 4
  %i.cv = load i64, ptr %i.i, align 8, !tbaa !2911 ; 5 uses
  %.not.i.not = icmp eq i64 %i.cv, 0              ; 2 uses
  br i1 %i.cu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i.not, label %_ZN6duckdbL21ApplyFrameOfReferenceIlEEvPT_S1_m.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j
  %min.iters.check = icmp samesign ult i64 %i.cd, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader168, label %vector.ph
end_hunk_3
