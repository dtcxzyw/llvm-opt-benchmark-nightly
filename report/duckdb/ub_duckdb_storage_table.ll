Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_table?download=true
inline.NumInlined: 22010
inline.NumDeleted: 8913
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 651
loop-unroll.NumUnrolled: 661
begin_hunk_0_@_ZN6duckdb17ChunkConstantInfo4ReadERNS_10ReadStreamE:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.duckdb::unique_ptr.22", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.b = load ptr, ptr %1, align 8, !tbaa !213
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr null, ptr noundef nonnull %i.a, i64 noundef 8), !inline_history !1
  %i.e = load i64, ptr %i.a, align 8, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !1933)
  %i.f = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38, !noalias !1933 ; 3 uses
  invoke void @_ZN6duckdb17ChunkConstantInfoC1Em(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 noundef %i.e)
          to label %_ZN6duckdb9make_uniqINS_17ChunkConstantInfoEJRmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !1933

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb17ChunkConstantInfoESt14default_deleteIS1_EED2Ev.exit4, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.m, %_ZNSt10unique_ptrIN6duckdb17ChunkConstantInfoESt14default_deleteIS1_EED2Ev.exit4 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.f) #39, !noalias !1933
  br label %common.resume

_ZN6duckdb9make_uniqINS_17ChunkConstantInfoEJRmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.f, ptr %2, align 8, !tbaa !220, !alias.scope !1933
  %i.h = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17ChunkConstantInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_17ChunkConstantInfoEJRmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.i, align 8, !tbaa !222
  %i.j = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17ChunkConstantInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt10unique_ptrIN6duckdb17ChunkConstantInfoESt14default_deleteIS1_EED2Ev.exit unwind label %bb.d

_ZNSt10unique_ptrIN6duckdb17ChunkConstantInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 0, ptr %i.k, align 8, !tbaa !223
  %i.l = load ptr, ptr %2, align 8, !tbaa !220
  store ptr %i.l, ptr %0, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

bb.d:                                             ; preds = %bb.c, %_ZN6duckdb9make_uniqINS_17ChunkConstantInfoEJRmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %2, align 8, !tbaa !220    ; 3 uses
  %.not.i2 = icmp eq ptr %i.n, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIN6duckdb17ChunkConstantInfoESt14default_deleteIS1_EED2Ev.exit4, label %_ZNKSt14default_deleteIN6duckdb17ChunkConstantInfoEEclEPS1_.exit.i3

_ZNKSt14default_deleteIN6duckdb17ChunkConstantInfoEEclEPS1_.exit.i3: ; preds = %bb.d
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !213
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #37, !inline_history !2
  br label %_ZNSt10unique_ptrIN6duckdb17ChunkConstantInfoESt14default_deleteIS1_EED2Ev.exit4

_ZNSt10unique_ptrIN6duckdb17ChunkConstantInfoESt14default_deleteIS1_EED2Ev.exit4: ; preds = %bb.d, %_ZNKSt14default_deleteIN6duckdb17ChunkConstantInfoEEclEPS1_.exit.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15ChunkVectorInfo4ReadERNS_18FixedSizeAllocatorERNS_10ReadStreamE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.duckdb::unique_ptr.36", align 8 ; 9 uses
  %4 = alloca %"struct.duckdb::ValidityMask", align 8 ; 9 uses
  %5 = alloca %"class.duckdb::SegmentHandle", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.b = load ptr, ptr %2, align 8, !tbaa !213
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr null, ptr noundef nonnull %i.a, i64 noundef 8), !inline_history !1
  %i.e = load i64, ptr %i.a, align 8, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  %i.f = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #38, !noalias !1940 ; 3 uses
  invoke void @_ZN6duckdb15ChunkVectorInfoC1ERNS_18FixedSizeAllocatorEmm(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(240) %1, i64 noundef %i.e, i64 noundef 0)
          to label %bb.c unwind label %bb.b, !noalias !1940

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb15ChunkVectorInfoESt14default_deleteIS1_EED2Ev.exit22, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn.pn, %_ZNSt10unique_ptrIN6duckdb15ChunkVectorInfoESt14default_deleteIS1_EED2Ev.exit22 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.f) #39, !noalias !1940
  br label %common.resume

bb.c:                                             ; preds = %bb.a
  store ptr %i.f, ptr %3, align 8, !tbaa !229, !alias.scope !1940
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  store i64 2048, ptr %i.h, align 8, !tbaa !238
  invoke void @_ZN6duckdb12ValidityMask4ReadERNS_10ReadStreamEm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 2048)
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.i = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ChunkVectorInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %bb.d
  %i.j = invoke i64 @_ZN6duckdb15ChunkVectorInfo28GetInitializedDeletedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %i.i)
          to label %bb.f unwind label %bb.t       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.k = and i64 %i.j, 4294967295                 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.m = load i64, ptr %i.l, align 8, !tbaa !246, !noalias !1941
  %.not.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.not.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.n, %bb.g ], [ %.sroa.06.0.i.i.i, %bb.h ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !247, !noalias !1941, !nonnull !248, !noundef !248 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !218, !noalias !1941
  %i.q = icmp eq i64 %i.k, %i.p
  br i1 %i.q, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, label %bb.h, !llvm.loop !3

bb.i:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.t = load i64, ptr %i.s, align 8, !tbaa !250, !noalias !1941 ; 2 uses
  %i.u = urem i64 %i.k, %i.t                      ; 2 uses
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !251, !noalias !1941
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !252, !noalias !1941, !nonnull !248, !noundef !248
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !247, !noalias !1941 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !218, !noalias !1941
  %i.ab = icmp eq i64 %i.k, %i.aa
  br i1 %i.ab, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.y, %bb.i ]
  %i.ac = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !247, !noalias !1941, !nonnull !248, !noundef !248 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !218, !noalias !1941 ; 2 uses
  %i.af = urem i64 %i.ae, %i.t
  %.not19.i.i.i.i.i = icmp eq i64 %i.af, %i.u
  call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ag = icmp eq i64 %i.k, %i.ae
  br i1 %i.ag, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.h, %bb.i
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.h ], [ %i.y, %bb.i ], [ %i.ac, %.lr.ph.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !261, !noalias !1941
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !262, !noalias !1941
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.am = invoke noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i
  %i.an = lshr i64 %i.j, 32
  %i.ao = and i64 %i.an, 16777215
  %i.ap = mul i64 %i.ai, %i.ao
  %i.aq = add i64 %i.ap, %i.ak
  invoke void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(136) %i.am, i64 noundef %i.aq)
          to label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit unwind label %bb.t

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit: ; preds = %.noexc
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !266 ; 3 uses
  %i.at = load ptr, ptr %4, align 8, !tbaa !267   ; 3 uses
  %.not.i19 = icmp eq ptr %i.at, null
  br i1 %.not.i19, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.preheader: ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16384) %i.as, i8 0, i64 16384, i1 false), !tbaa !218
  br label %.split.us

.split.us:                                        ; preds = %bb.u, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.us.preheader
  %i.au = load ptr, ptr %3, align 8, !tbaa !229
  store ptr null, ptr %3, align 8, !tbaa !229
  store ptr %i.au, ptr %0, align 8, !tbaa !217
  %i.av = load ptr, ptr %5, align 8, !tbaa !268
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.split.us
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %5, align 8, !tbaa !268
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %6 = atomicrmw add ptr %i.ax, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %.split.us, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !269 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  %i.bd = load atomic i64, ptr %i.bc acquire, align 8 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 4294967297
  %i.bf = trunc i64 %i.bd to i32                  ; 2 uses
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.bc, align 8, !tbaa !271
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 0, ptr %i.bg, align 4, !tbaa !272
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !213
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #37, !inline_history !5
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !213
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #37, !inline_history !5
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !273
  %.not.i.i.i.i.i = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = add nsw i32 %i.bf, -1
  store i32 %i.bo, ptr %i.bc, align 8, !tbaa !206
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bp = atomicrmw volatile add ptr %i.bc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i = phi i32 [ %i.bf, %bb.p ], [ %i.bp, %bb.q ]
  %i.bq = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bq, label %bb.r, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, !prof !274

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #37
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit:    ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.br = load ptr, ptr %3, align 8, !tbaa !229   ; 3 uses
  %.not.i18 = icmp eq ptr %i.br, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrIN6duckdb15ChunkVectorInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ChunkVectorInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ChunkVectorInfoEEclEPS1_.exit.i: ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !213
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(56) %i.br) #37, !inline_history !1938
  br label %_ZNSt10unique_ptrIN6duckdb15ChunkVectorInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ChunkVectorInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb15ChunkVectorInfoEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

bb.s:                                             ; preds = %bb.c
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %.noexc, %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, %bb.e, %bb.d
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.v

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, %bb.u
  %.025 = phi i64 [ %i.cm, %bb.u ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit ] ; 6 uses
  %i.bx = lshr i64 %.025, 6
  %i.by = and i64 %.025, 62
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bx
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !218
  %i.cb = shl nuw nsw i64 1, %i.by
  %i.cc = and i64 %i.ca, %i.cb
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.025
  store i64 0, ptr %i.cd, align 8, !tbaa !218
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %i.ce = or disjoint i64 %.025, 1                ; 2 uses
  %i.cf = lshr i64 %.025, 6
  %i.cg = and i64 %i.ce, 63
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.cf
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !218
  %i.cj = shl nuw i64 1, %i.cg
  %i.ck = and i64 %i.ci, %i.cj
  %.not.1 = icmp eq i64 %i.ck, 0
  br i1 %.not.1, label %bb.u, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.1

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.1: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.1
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ce
  store i64 0, ptr %i.cl, align 8, !tbaa !218
  br label %bb.u

bb.u:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.1
  %i.cm = add nuw nsw i64 %.025, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cm, 2048
  br i1 %exitcond.not.1, label %.split.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !1939

bb.v:                                             ; preds = %bb.t, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.t ], [ %i.bv, %bb.s ]
  call void @_ZN6duckdb21TemplatedValidityMaskImED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.cn = load ptr, ptr %3, align 8, !tbaa !229   ; 3 uses
  %.not.i20 = icmp eq ptr %i.cn, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN6duckdb15ChunkVectorInfoESt14default_deleteIS1_EED2Ev.exit22, label %_ZNKSt14default_deleteIN6duckdb15ChunkVectorInfoEEclEPS1_.exit.i21

_ZNKSt14default_deleteIN6duckdb15ChunkVectorInfoEEclEPS1_.exit.i21: ; preds = %bb.v
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !213
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(56) %i.cn) #37, !inline_history !1938
  br label %_ZNSt10unique_ptrIN6duckdb15ChunkVectorInfoESt14default_deleteIS1_EED2Ev.exit22

_ZNSt10unique_ptrIN6duckdb15ChunkVectorInfoESt14default_deleteIS1_EED2Ev.exit22: ; preds = %bb.v, %_ZNKSt14default_deleteIN6duckdb15ChunkVectorInfoEEclEPS1_.exit.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %common.resume
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6duckdb22SerializationExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6duckdb9ChunkInfo24GetCommittedDeletedCountEm(ptr noundef nonnull align 8 dereferenceable(17) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"struct.duckdb::ScanOptions", align 8 ; 6 uses
  %3 = alloca %"struct.duckdb::TransactionData", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.a = load i64, ptr @_ZN6duckdb20TRANSACTION_ID_STARTE, align 8, !tbaa !218
  call void @_ZN6duckdb15TransactionDataC1Emm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0, i64 noundef %i.a)
  call void @_ZN6duckdb11ScanOptionsC1ENS_15TransactionDataE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull byval(%"struct.duckdb::TransactionData") align 8 %3)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 1, ptr %i.b, align 8, !tbaa !282
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 2, ptr %i.c, align 4, !tbaa !283
  %i.d = load ptr, ptr %0, align 8, !tbaa !213
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull byval(%"struct.duckdb::ScanOptions") align 8 %2, ptr null, i64 noundef %1)
  %i.h = sub i64 %1, %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret i64 %i.h
}

declare void @_ZN6duckdb15TransactionDataC1Emm(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb9ChunkInfo21GetCheckpointRowCountENS_15TransactionDataEm(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr nofree noundef readonly byval(%"struct.duckdb::TransactionData") align 8 captures(none) %1, i64 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"struct.duckdb::ScanOptions", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @_ZN6duckdb11ScanOptionsC1ENS_15TransactionDataE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull byval(%"struct.duckdb::TransactionData") align 8 %1)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 1, ptr %i.a, align 4, !tbaa !283
  %i.b = load ptr, ptr %0, align 8, !tbaa !213
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
end_hunk_0
begin_hunk_1_@_ZNK6duckdb15ChunkVectorInfo12GetSelVectorENS_11ScanOptionsENS_12optional_ptrINS_15SelectionVectorELb1EEEm:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !285
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !286
  %i.s = tail call noundef i64 @_ZNK6duckdb15ChunkVectorInfo21TemplatedGetSelVectorINS_22StandardInsertOperatorENS_23CommittedDeleteOperatorEEEmmmNS_12optional_ptrINS_15SelectionVectorELb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.p, i64 noundef %i.r, ptr %2, i64 noundef %3)
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !283
  switch i32 %i.u, label %.thread [
    i32 0, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !285
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !286
  %i.z = tail call noundef i64 @_ZNK6duckdb15ChunkVectorInfo21TemplatedGetSelVectorINS_26IncludeAllInsertedOperatorENS_22StandardDeleteOperatorEEEmmmNS_12optional_ptrINS_15SelectionVectorELb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.w, i64 noundef %i.y, ptr %2, i64 noundef %3)
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !285
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !286
  %i.ae = tail call noundef i64 @_ZNK6duckdb15ChunkVectorInfo21TemplatedGetSelVectorINS_26IncludeAllInsertedOperatorENS_23CommittedDeleteOperatorEEEmmmNS_12optional_ptrINS_15SelectionVectorELb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ab, i64 noundef %i.ad, ptr %2, i64 noundef %3)
  br label %bb.n

.thread:                                          ; preds = %bb.a, %bb.b, %bb.f
  %i.af = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.i:                                             ; preds = %.thread
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.o unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.thread
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i1 [ false, %bb.j ], [ true, %bb.i ]  ; 2 uses
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ai = load ptr, ptr %4, align 8, !tbaa !227   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.ai) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br i1 %.0, label %bb.l, label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br i1 %.0, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn33 = phi { ptr, i32 } [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.af) #37
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn32 = phi { ptr, i32 } [ %.pn33, %bb.l ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn32

bb.n:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.c
  %.026 = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ], [ %i.s, %bb.e ], [ %i.z, %bb.g ], [ %i.ae, %bb.h ]
  ret i64 %.026

bb.o:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK6duckdb15ChunkVectorInfo21TemplatedGetSelVectorINS_22StandardInsertOperatorENS_22StandardDeleteOperatorEEEmmmNS_12optional_ptrINS_15SelectionVectorELb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::optional_ptr.21", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::SegmentHandle", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::SegmentHandle", align 8 ; 9 uses
  %8 = alloca %"class.duckdb::SegmentHandle", align 8 ; 9 uses
  %9 = alloca %"class.duckdb::SegmentHandle", align 8 ; 9 uses
  store ptr %3, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !291
  %i.c = icmp ult i64 %i.b, 72057594037927936
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !291
  %i.f = icmp ugt i64 %i.e, 72057594037927935     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_ZNK6duckdb15ChunkVectorInfo16ConstantInsertIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.h = icmp ult i64 %i.g, %1
  %i.i = icmp eq i64 %i.g, %2
  %i.j = or i1 %i.h, %i.i                         ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %. = select i1 %i.j, i64 %4, i64 0
  br label %bb.bc

bb.d:                                             ; preds = %bb.b
  br i1 %i.j, label %bb.e, label %bb.bc

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.m = tail call i64 @_ZNK6duckdb15ChunkVectorInfo17GetDeletedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.n = and i64 %i.m, 4294967295                 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.p = load i64, ptr %i.o, align 8, !tbaa !246, !noalias !1973
  %.not.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.not.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.q, %bb.f ], [ %.sroa.06.0.i.i.i, %bb.g ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !247, !noalias !1973, !nonnull !248, !noundef !248 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !218, !noalias !1973
  %i.t = icmp eq i64 %i.n, %i.s
  br i1 %i.t, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %bb.g, !llvm.loop !3

bb.h:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.w = load i64, ptr %i.v, align 8, !tbaa !250, !noalias !1973 ; 2 uses
  %i.x = urem i64 %i.n, %i.w                      ; 2 uses
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !251, !noalias !1973
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !252, !noalias !1973, !nonnull !248, !noundef !248
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !247, !noalias !1973 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !218, !noalias !1973
  %i.ae = icmp eq i64 %i.n, %i.ad
  br i1 %i.ae, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.ab, %bb.h ]
  %i.af = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !247, !noalias !1973, !nonnull !248, !noundef !248 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !218, !noalias !1973 ; 2 uses
  %i.ai = urem i64 %i.ah, %i.w
  %.not19.i.i.i.i.i = icmp eq i64 %i.ai, %i.x
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.aj = icmp eq i64 %i.n, %i.ah
  br i1 %i.aj, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.g, %bb.h
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.ab, %bb.h ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ak = lshr i64 %i.m, 32
  %i.al = and i64 %i.ak, 16777215
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !261, !noalias !1973
  %i.ao = mul i64 %i.an, %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !262, !noalias !1973
  %i.ar = add i64 %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.at = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as), !noalias !1973
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(136) %i.at, i64 noundef %i.ar)
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !266
  %.not126 = icmp eq i64 %4, 0
  br i1 %.not126, label %._crit_edge122, label %.lr.ph121

._crit_edge122:                                   ; preds = %bb.q, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %.049.lcssa = phi i64 [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit ], [ %.1, %bb.q ]
  %i.aw = load ptr, ptr %6, align 8, !tbaa !268
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge122
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %6, align 8, !tbaa !268
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %10 = atomicrmw add ptr %i.ay, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %._crit_edge122, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.bc

.lr.ph121:                                        ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, %bb.q
  %.049120 = phi i64 [ %.1, %bb.q ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit ] ; 3 uses
  %.055118 = phi i64 [ %i.bn, %bb.q ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.055118
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !218 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %1
  %i.be = icmp eq i64 %i.bc, %2
  %i.bf = or i1 %i.bd, %i.be
  br i1 %i.bf, label %bb.q, label %bb.l

bb.l:                                             ; preds = %.lr.ph121
  %i.bg = load ptr, ptr %5, align 8, !tbaa !298
  %.not98 = icmp eq ptr %i.bg, null
  br i1 %.not98, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNK6duckdb12optional_ptrINS_15SelectionVectorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bh = load ptr, ptr %5, align 8, !tbaa !298
  %i.bi = trunc i64 %.055118 to i32
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !305
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.049120
  store i32 %i.bi, ptr %i.bk, align 4, !tbaa !206
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.bd

bb.p:                                             ; preds = %bb.n, %bb.l
  %i.bm = add i64 %.049120, 1
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph121, %bb.p
  %.1 = phi i64 [ %.049120, %.lr.ph121 ], [ %i.bm, %bb.p ] ; 2 uses
  %i.bn = add nuw i64 %.055118, 1                 ; 2 uses
  %exitcond135.not = icmp eq i64 %i.bn, %4
  br i1 %exitcond135.not, label %._crit_edge122, label %.lr.ph121, !llvm.loop !1964

bb.r:                                             ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.f, label %bb.af, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.bq = tail call i64 @_ZNK6duckdb15ChunkVectorInfo18GetInsertedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.br = and i64 %i.bq, 4294967295               ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 88
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !246, !noalias !1974
  %.not.not.i.i.i63 = icmp eq i64 %i.bt, 0
  br i1 %.not.not.i.i.i63, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.sroa.06.0.in.i.i.i68 = phi ptr [ %i.bu, %bb.t ], [ %.sroa.06.0.i.i.i69, %bb.u ]
  %.sroa.06.0.i.i.i69 = load ptr, ptr %.sroa.06.0.in.i.i.i68, align 8, !tbaa !247, !noalias !1974, !nonnull !248, !noundef !248 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i69, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !218, !noalias !1974
  %i.bx = icmp eq i64 %i.br, %i.bw
  br i1 %i.bx, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70, label %bb.u, !llvm.loop !3

bb.v:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !250, !noalias !1974 ; 2 uses
  %i.cb = urem i64 %i.br, %i.ca                   ; 2 uses
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !251, !noalias !1974
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !252, !noalias !1974, !nonnull !248, !noundef !248
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !247, !noalias !1974 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !218, !noalias !1974
  %i.ci = icmp eq i64 %i.br, %i.ch
  br i1 %i.ci, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70, label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %bb.v, %.lr.ph.i.i.i.i.i64
  %.020.i.i.i.i.i65 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i64 ], [ %i.cf, %bb.v ]
  %i.cj = load ptr, ptr %.020.i.i.i.i.i65, align 8, !tbaa !247, !noalias !1974, !nonnull !248, !noundef !248 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !218, !noalias !1974 ; 2 uses
  %i.cm = urem i64 %i.cl, %i.ca
  %.not19.i.i.i.i.i66 = icmp eq i64 %i.cm, %i.cb
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i66)
  %i.cn = icmp eq i64 %i.br, %i.cl
  br i1 %i.cn, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70, label %.lr.ph.i.i.i.i.i64, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70: ; preds = %.lr.ph.i.i.i.i.i64, %bb.u, %bb.v
  %.sroa.06.1.i.i.i67 = phi ptr [ %.sroa.06.0.i.i.i69, %bb.u ], [ %i.cf, %bb.v ], [ %i.cj, %.lr.ph.i.i.i.i.i64 ]
  %i.co = lshr i64 %i.bq, 32
  %i.cp = and i64 %i.co, 16777215
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !261, !noalias !1974
  %i.cs = mul i64 %i.cr, %i.cp
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !262, !noalias !1974
  %i.cv = add i64 %i.cs, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i67, i64 16
  %i.cx = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cw), !noalias !1974
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(136) %i.cx, i64 noundef %i.cv)
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !266
  %.not124 = icmp eq i64 %4, 0
  br i1 %.not124, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ae, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70
  %.053.lcssa = phi i64 [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70 ], [ %.154, %bb.ae ]
  %i.da = load ptr, ptr %7, align 8, !tbaa !268
  %.not.i71 = icmp eq ptr %i.da, null
  br i1 %.not.i71, label %_ZN6duckdb13SegmentHandleD2Ev.exit72, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.db = load ptr, ptr %7, align 8, !tbaa !268
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %11 = atomicrmw add ptr %i.dc, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit72

bb.y:                                             ; preds = %bb.w
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit72:             ; preds = %._crit_edge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.bc

.lr.ph:                                           ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70, %bb.ae
  %.052110 = phi i64 [ %i.dr, %bb.ae ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70 ] ; 3 uses
  %.053109 = phi i64 [ %.154, %bb.ae ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70 ] ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.052110
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !218 ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %1
  %i.di = icmp eq i64 %i.dg, %2
  %i.dj = or i1 %i.dh, %i.di
  br i1 %i.dj, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %.lr.ph
  %i.dk = load ptr, ptr %5, align 8, !tbaa !298
  %.not = icmp eq ptr %i.dk, null
  br i1 %.not, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZNK6duckdb12optional_ptrINS_15SelectionVectorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dl = load ptr, ptr %5, align 8, !tbaa !298
  %i.dm = trunc i64 %.052110 to i32
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !305
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.053109
  store i32 %i.dm, ptr %i.do, align 4, !tbaa !206
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.bd

bb.ad:                                            ; preds = %bb.ab, %bb.z
  %i.dq = add i64 %.053109, 1
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %bb.ad
  %.154 = phi i64 [ %i.dq, %bb.ad ], [ %.053109, %.lr.ph ] ; 2 uses
  %i.dr = add nuw i64 %.052110, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dr, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1967

bb.af:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.ds = load ptr, ptr %i.bo, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.dt = tail call i64 @_ZNK6duckdb15ChunkVectorInfo18GetInsertedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.du = and i64 %i.dt, 4294967295               ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 88
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !246, !noalias !1975
  %.not.not.i.i.i74 = icmp eq i64 %i.dw, 0
  br i1 %.not.not.i.i.i74, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 80
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.sroa.06.0.in.i.i.i79 = phi ptr [ %i.dx, %bb.ag ], [ %.sroa.06.0.i.i.i80, %bb.ah ]
  %.sroa.06.0.i.i.i80 = load ptr, ptr %.sroa.06.0.in.i.i.i79, align 8, !tbaa !247, !noalias !1975, !nonnull !248, !noundef !248 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i80, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !218, !noalias !1975
  %i.ea = icmp eq i64 %i.du, %i.dz
  br i1 %i.ea, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81, label %bb.ah, !llvm.loop !3

bb.ai:                                            ; preds = %bb.af
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ds, i64 72
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !250, !noalias !1975 ; 2 uses
  %i.ee = urem i64 %i.du, %i.ed                   ; 2 uses
  %i.ef = load ptr, ptr %i.eb, align 8, !tbaa !251, !noalias !1975
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ee
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !252, !noalias !1975, !nonnull !248, !noundef !248
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !247, !noalias !1975 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !218, !noalias !1975
  %i.el = icmp eq i64 %i.du, %i.ek
  br i1 %i.el, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81, label %.lr.ph.i.i.i.i.i75

.lr.ph.i.i.i.i.i75:                               ; preds = %bb.ai, %.lr.ph.i.i.i.i.i75
  %.020.i.i.i.i.i76 = phi ptr [ %i.em, %.lr.ph.i.i.i.i.i75 ], [ %i.ei, %bb.ai ]
  %i.em = load ptr, ptr %.020.i.i.i.i.i76, align 8, !tbaa !247, !noalias !1975, !nonnull !248, !noundef !248 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !218, !noalias !1975 ; 2 uses
  %i.ep = urem i64 %i.eo, %i.ed
  %.not19.i.i.i.i.i77 = icmp eq i64 %i.ep, %i.ee
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i77)
  %i.eq = icmp eq i64 %i.du, %i.eo
  br i1 %i.eq, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81, label %.lr.ph.i.i.i.i.i75, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81: ; preds = %.lr.ph.i.i.i.i.i75, %bb.ah, %bb.ai
  %.sroa.06.1.i.i.i78 = phi ptr [ %.sroa.06.0.i.i.i80, %bb.ah ], [ %i.ei, %bb.ai ], [ %i.em, %.lr.ph.i.i.i.i.i75 ]
  %i.er = lshr i64 %i.dt, 32
  %i.es = and i64 %i.er, 16777215
  %i.et = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !261, !noalias !1975
  %i.ev = mul i64 %i.eu, %i.es
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !262, !noalias !1975
  %i.ey = add i64 %i.ev, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i78, i64 16
  %i.fa = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ez), !noalias !1975
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(136) %i.fa, i64 noundef %i.ey)
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.fd = load ptr, ptr %i.bo, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.fe = invoke i64 @_ZNK6duckdb15ChunkVectorInfo17GetDeletedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.aj unwind label %bb.at     ; 2 uses

bb.aj:                                            ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81
  %i.ff = and i64 %i.fe, 4294967295               ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 88
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !246, !noalias !1976
  %.not.not.i.i.i82 = icmp eq i64 %i.fh, 0
  br i1 %.not.not.i.i.i82, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 80
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.sroa.06.0.in.i.i.i87 = phi ptr [ %i.fi, %bb.ak ], [ %.sroa.06.0.i.i.i88, %bb.al ]
  %.sroa.06.0.i.i.i88 = load ptr, ptr %.sroa.06.0.in.i.i.i87, align 8, !tbaa !247, !noalias !1976, !nonnull !248, !noundef !248 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i88, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !218, !noalias !1976
  %i.fl = icmp eq i64 %i.ff, %i.fk
  br i1 %i.fl, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, label %bb.al, !llvm.loop !3

bb.am:                                            ; preds = %bb.aj
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fd, i64 64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fd, i64 72
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !250, !noalias !1976 ; 2 uses
  %i.fp = urem i64 %i.ff, %i.fo                   ; 2 uses
  %i.fq = load ptr, ptr %i.fm, align 8, !tbaa !251, !noalias !1976
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fp
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !252, !noalias !1976, !nonnull !248, !noundef !248
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !247, !noalias !1976 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !218, !noalias !1976
  %i.fw = icmp eq i64 %i.ff, %i.fv
  br i1 %i.fw, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, label %.lr.ph.i.i.i.i.i83

.lr.ph.i.i.i.i.i83:                               ; preds = %bb.am, %.lr.ph.i.i.i.i.i83
  %.020.i.i.i.i.i84 = phi ptr [ %i.fx, %.lr.ph.i.i.i.i.i83 ], [ %i.ft, %bb.am ]
  %i.fx = load ptr, ptr %.020.i.i.i.i.i84, align 8, !tbaa !247, !noalias !1976, !nonnull !248, !noundef !248 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !218, !noalias !1976 ; 2 uses
  %i.ga = urem i64 %i.fz, %i.fo
  %.not19.i.i.i.i.i85 = icmp eq i64 %i.ga, %i.fp
  call void @llvm.assume(i1 %.not19.i.i.i.i.i85)
  %i.gb = icmp eq i64 %i.ff, %i.fz
  br i1 %i.gb, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, label %.lr.ph.i.i.i.i.i83, !llvm.loop !4

_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i: ; preds = %.lr.ph.i.i.i.i.i83, %bb.al, %bb.am
  %.sroa.06.1.i.i.i86 = phi ptr [ %.sroa.06.0.i.i.i88, %bb.al ], [ %i.ft, %bb.am ], [ %i.fx, %.lr.ph.i.i.i.i.i83 ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !261, !noalias !1976
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !262, !noalias !1976
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i86, i64 16
  %i.gh = invoke noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gg)
          to label %.noexc unwind label %bb.at

.noexc:                                           ; preds = %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i
  %i.gi = lshr i64 %i.fe, 32
  %i.gj = and i64 %i.gi, 16777215
  %i.gk = mul i64 %i.gd, %i.gj
  %i.gl = add i64 %i.gk, %i.gf
  invoke void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(136) %i.gh, i64 noundef %i.gl)
          to label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90 unwind label %bb.at

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90: ; preds = %.noexc
  %i.gm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !266
  %.not125 = icmp eq i64 %4, 0
  br i1 %.not125, label %._crit_edge116, label %.lr.ph115

._crit_edge116:                                   ; preds = %bb.ba, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90
  %.050.lcssa = phi i64 [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90 ], [ %.151, %bb.ba ]
  %i.go = load ptr, ptr %9, align 8, !tbaa !268
  %.not.i91 = icmp eq ptr %i.go, null
  br i1 %.not.i91, label %_ZN6duckdb13SegmentHandleD2Ev.exit92, label %bb.an

bb.an:                                            ; preds = %._crit_edge116
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gp = load ptr, ptr %9, align 8, !tbaa !268
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %12 = atomicrmw add ptr %i.gq, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit92

bb.ap:                                            ; preds = %bb.an
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit92:             ; preds = %._crit_edge116, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.gt = load ptr, ptr %8, align 8, !tbaa !268
  %.not.i93 = icmp eq ptr %i.gt, null
  br i1 %.not.i93, label %_ZN6duckdb13SegmentHandleD2Ev.exit94, label %bb.aq

bb.aq:                                            ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit92
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gu = load ptr, ptr %8, align 8, !tbaa !268
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %13 = atomicrmw add ptr %i.gv, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit94

bb.as:                                            ; preds = %bb.aq
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  call void @__clang_call_terminate(ptr %i.gx) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit94:             ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit92, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.bc

bb.at:                                            ; preds = %.noexc, %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph115:                                        ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90, %bb.ba
  %.0113 = phi i64 [ %i.hq, %bb.ba ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90 ] ; 4 uses
  %.050112 = phi i64 [ %.151, %bb.ba ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90 ] ; 4 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.0113
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !218 ; 2 uses
  %i.hb = icmp ult i64 %i.ha, %1
  %i.hc = icmp eq i64 %i.ha, %2
  %i.hd = or i1 %i.hb, %i.hc
  br i1 %i.hd, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %.lr.ph115
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %.0113
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !218 ; 2 uses
  %i.hg = icmp ult i64 %i.hf, %1
  %i.hh = icmp eq i64 %i.hf, %2
  %i.hi = or i1 %i.hg, %i.hh
  br i1 %i.hi, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hj = load ptr, ptr %5, align 8, !tbaa !298
  %.not97 = icmp eq ptr %i.hj, null
  br i1 %.not97, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZNK6duckdb12optional_ptrINS_15SelectionVectorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hk = load ptr, ptr %5, align 8, !tbaa !298
  %i.hl = trunc i64 %.0113 to i32
  %i.hm = load ptr, ptr %i.hk, align 8, !tbaa !305
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %.050112
  store i32 %i.hl, ptr %i.hn, align 4, !tbaa !206
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.ho = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #37
  br label %bb.bb

bb.az:                                            ; preds = %bb.ax, %bb.av
  %i.hp = add i64 %.050112, 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.au, %.lr.ph115, %bb.az
  %.151 = phi i64 [ %.050112, %bb.au ], [ %i.hp, %bb.az ], [ %.050112, %.lr.ph115 ] ; 2 uses
  %i.hq = add nuw i64 %.0113, 1                   ; 2 uses
  %exitcond134.not = icmp eq i64 %i.hq, %4
  br i1 %exitcond134.not, label %._crit_edge116, label %.lr.ph115, !llvm.loop !1972

bb.bb:                                            ; preds = %bb.ay, %bb.at
  %.pn = phi { ptr, i32 } [ %i.ho, %bb.ay ], [ %i.gy, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.bd

bb.bc:                                            ; preds = %bb.d, %bb.c, %_ZN6duckdb13SegmentHandleD2Ev.exit94, %_ZN6duckdb13SegmentHandleD2Ev.exit72, %_ZN6duckdb13SegmentHandleD2Ev.exit
  %.048 = phi i64 [ %.049.lcssa, %_ZN6duckdb13SegmentHandleD2Ev.exit ], [ %.050.lcssa, %_ZN6duckdb13SegmentHandleD2Ev.exit94 ], [ %., %bb.c ], [ %.053.lcssa, %_ZN6duckdb13SegmentHandleD2Ev.exit72 ], [ 0, %bb.d ]
  ret i64 %.048

bb.bd:                                            ; preds = %bb.bb, %bb.ac, %bb.o
  %.pn61 = phi { ptr, i32 } [ %i.bl, %bb.o ], [ %.pn, %bb.bb ], [ %i.dp, %bb.ac ]
  resume { ptr, i32 } %.pn61
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK6duckdb15ChunkVectorInfo21TemplatedGetSelVectorINS_22StandardInsertOperatorENS_25IncludeAllDeletedOperatorEEEmmmNS_12optional_ptrINS_15SelectionVectorELb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::optional_ptr.21", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::SegmentHandle", align 8 ; 8 uses
  %7 = alloca %"class.duckdb::SegmentHandle", align 8 ; 9 uses
  %8 = alloca %"class.duckdb::SegmentHandle", align 8 ; 9 uses
  %9 = alloca %"class.duckdb::SegmentHandle", align 8 ; 8 uses
  store ptr %3, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !291
  %i.c = icmp ult i64 %i.b, 72057594037927936
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !291
  %i.f = icmp ugt i64 %i.e, 72057594037927935     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_ZNK6duckdb15ChunkVectorInfo16ConstantInsertIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.h = icmp ult i64 %i.g, %1
  %i.i = icmp eq i64 %i.g, %2
  %i.j = or i1 %i.h, %i.i                         ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %. = select i1 %i.j, i64 %4, i64 0
  br label %bb.ay

bb.d:                                             ; preds = %bb.b
  br i1 %i.j, label %bb.e, label %bb.ay

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.m = tail call i64 @_ZNK6duckdb15ChunkVectorInfo17GetDeletedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.n = and i64 %i.m, 4294967295                 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.p = load i64, ptr %i.o, align 8, !tbaa !246, !noalias !1988
  %.not.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.not.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.q, %bb.f ], [ %.sroa.06.0.i.i.i, %bb.g ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !247, !noalias !1988, !nonnull !248, !noundef !248 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !218, !noalias !1988
  %i.t = icmp eq i64 %i.n, %i.s
  br i1 %i.t, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %bb.g, !llvm.loop !3

bb.h:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.w = load i64, ptr %i.v, align 8, !tbaa !250, !noalias !1988 ; 2 uses
  %i.x = urem i64 %i.n, %i.w                      ; 2 uses
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !251, !noalias !1988
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !252, !noalias !1988, !nonnull !248, !noundef !248
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !247, !noalias !1988 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !218, !noalias !1988
  %i.ae = icmp eq i64 %i.n, %i.ad
  br i1 %i.ae, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.ab, %bb.h ]
  %i.af = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !247, !noalias !1988, !nonnull !248, !noundef !248 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !218, !noalias !1988 ; 2 uses
  %i.ai = urem i64 %i.ah, %i.w
  %.not19.i.i.i.i.i = icmp eq i64 %i.ai, %i.x
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.aj = icmp eq i64 %i.n, %i.ah
  br i1 %i.aj, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.g, %bb.h
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.ab, %bb.h ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ak = lshr i64 %i.m, 32
  %i.al = and i64 %i.ak, 16777215
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !261, !noalias !1988
  %i.ao = mul i64 %i.an, %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !262, !noalias !1988
  %i.ar = add i64 %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.at = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as), !noalias !1988
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(136) %i.at, i64 noundef %i.ar)
  %.not124 = icmp eq i64 %4, 0
  %i.au = load ptr, ptr %5, align 8               ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  %or.cond = select i1 %.not124, i1 true, i1 %i.av
  br i1 %or.cond, label %._crit_edge120, label %.lr.ph119.split

._crit_edge120:                                   ; preds = %bb.o, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %i.aw = load ptr, ptr %6, align 8, !tbaa !268
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge120
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %6, align 8, !tbaa !268
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %10 = atomicrmw add ptr %i.ay, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %._crit_edge120, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.ay

bb.l:                                             ; preds = %bb.m
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.az

.lr.ph119.split:                                  ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, %bb.o
  %i.bc = phi ptr [ %i.bh, %bb.o ], [ %i.au, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit ]
  %.049118 = phi i64 [ %i.bi, %bb.o ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit ] ; 3 uses
  %.not98 = icmp eq ptr %i.bc, null
  br i1 %.not98, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph119.split
  invoke void @_ZNK6duckdb12optional_ptrINS_15SelectionVectorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.bd = load ptr, ptr %5, align 8, !tbaa !298   ; 2 uses
  %i.be = trunc i64 %.049118 to i32
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !305
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %.049118
  store i32 %i.be, ptr %i.bg, align 4, !tbaa !206
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph119.split, %bb.n
  %i.bh = phi ptr [ null, %.lr.ph119.split ], [ %i.bd, %bb.n ]
  %i.bi = add nuw i64 %.049118, 1                 ; 2 uses
  %exitcond136.not = icmp eq i64 %i.bi, %4
  br i1 %exitcond136.not, label %._crit_edge120, label %.lr.ph119.split, !llvm.loop !1979

bb.p:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.f, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.bl = tail call i64 @_ZNK6duckdb15ChunkVectorInfo18GetInsertedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.bm = and i64 %i.bl, 4294967295               ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !246, !noalias !1989
  %.not.not.i.i.i63 = icmp eq i64 %i.bo, 0
  br i1 %.not.not.i.i.i63, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.sroa.06.0.in.i.i.i68 = phi ptr [ %i.bp, %bb.r ], [ %.sroa.06.0.i.i.i69, %bb.s ]
  %.sroa.06.0.i.i.i69 = load ptr, ptr %.sroa.06.0.in.i.i.i68, align 8, !tbaa !247, !noalias !1989, !nonnull !248, !noundef !248 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i69, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !218, !noalias !1989
  %i.bs = icmp eq i64 %i.bm, %i.br
  br i1 %i.bs, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70, label %bb.s, !llvm.loop !3

bb.t:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !250, !noalias !1989 ; 2 uses
  %i.bw = urem i64 %i.bm, %i.bv                   ; 2 uses
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !251, !noalias !1989
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !252, !noalias !1989, !nonnull !248, !noundef !248
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !247, !noalias !1989 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !218, !noalias !1989
  %i.cd = icmp eq i64 %i.bm, %i.cc
  br i1 %i.cd, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70, label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %bb.t, %.lr.ph.i.i.i.i.i64
  %.020.i.i.i.i.i65 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i64 ], [ %i.ca, %bb.t ]
  %i.ce = load ptr, ptr %.020.i.i.i.i.i65, align 8, !tbaa !247, !noalias !1989, !nonnull !248, !noundef !248 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !218, !noalias !1989 ; 2 uses
  %i.ch = urem i64 %i.cg, %i.bv
  %.not19.i.i.i.i.i66 = icmp eq i64 %i.ch, %i.bw
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i66)
  %i.ci = icmp eq i64 %i.bm, %i.cg
  br i1 %i.ci, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70, label %.lr.ph.i.i.i.i.i64, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70: ; preds = %.lr.ph.i.i.i.i.i64, %bb.s, %bb.t
  %.sroa.06.1.i.i.i67 = phi ptr [ %.sroa.06.0.i.i.i69, %bb.s ], [ %i.ca, %bb.t ], [ %i.ce, %.lr.ph.i.i.i.i.i64 ]
  %i.cj = lshr i64 %i.bl, 32
  %i.ck = and i64 %i.cj, 16777215
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !261, !noalias !1989
  %i.cn = mul i64 %i.cm, %i.ck
  %i.co = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !262, !noalias !1989
  %i.cq = add i64 %i.cn, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i67, i64 16
  %i.cs = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cr), !noalias !1989
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(136) %i.cs, i64 noundef %i.cq)
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !266
  %.not122 = icmp eq i64 %4, 0
  br i1 %.not122, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ac, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70
  %.053.lcssa = phi i64 [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70 ], [ %.154, %bb.ac ]
  %i.cv = load ptr, ptr %7, align 8, !tbaa !268
  %.not.i71 = icmp eq ptr %i.cv, null
  br i1 %.not.i71, label %_ZN6duckdb13SegmentHandleD2Ev.exit72, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cw = load ptr, ptr %7, align 8, !tbaa !268
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %11 = atomicrmw add ptr %i.cx, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit72

bb.w:                                             ; preds = %bb.u
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit72:             ; preds = %._crit_edge, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.ay

.lr.ph:                                           ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70, %bb.ac
  %.052110 = phi i64 [ %i.dm, %bb.ac ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70 ] ; 3 uses
  %.053109 = phi i64 [ %.154, %bb.ac ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70 ] ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.052110
  %i.db = load i64, ptr %i.da, align 8, !tbaa !218 ; 2 uses
  %i.dc = icmp ult i64 %i.db, %1
  %i.dd = icmp eq i64 %i.db, %2
  %i.de = or i1 %i.dc, %i.dd
  br i1 %i.de, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %.lr.ph
  %i.df = load ptr, ptr %5, align 8, !tbaa !298
  %.not = icmp eq ptr %i.df, null
  br i1 %.not, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_ZNK6duckdb12optional_ptrINS_15SelectionVectorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dg = load ptr, ptr %5, align 8, !tbaa !298
  %i.dh = trunc i64 %.052110 to i32
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !305
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.053109
  store i32 %i.dh, ptr %i.dj, align 4, !tbaa !206
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.az

bb.ab:                                            ; preds = %bb.z, %bb.x
  %i.dl = add i64 %.053109, 1
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.ab
  %.154 = phi i64 [ %i.dl, %bb.ab ], [ %.053109, %.lr.ph ] ; 2 uses
  %i.dm = add nuw i64 %.052110, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dm, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1982

bb.ad:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.dn = load ptr, ptr %i.bj, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.do = tail call i64 @_ZNK6duckdb15ChunkVectorInfo18GetInsertedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.dp = and i64 %i.do, 4294967295               ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 88
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !246, !noalias !1990
  %.not.not.i.i.i74 = icmp eq i64 %i.dr, 0
  br i1 %.not.not.i.i.i74, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 80
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.sroa.06.0.in.i.i.i79 = phi ptr [ %i.ds, %bb.ae ], [ %.sroa.06.0.i.i.i80, %bb.af ]
  %.sroa.06.0.i.i.i80 = load ptr, ptr %.sroa.06.0.in.i.i.i79, align 8, !tbaa !247, !noalias !1990, !nonnull !248, !noundef !248 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i80, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !218, !noalias !1990
  %i.dv = icmp eq i64 %i.dp, %i.du
  br i1 %i.dv, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81, label %bb.af, !llvm.loop !3

bb.ag:                                            ; preds = %bb.ad
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !250, !noalias !1990 ; 2 uses
  %i.dz = urem i64 %i.dp, %i.dy                   ; 2 uses
  %i.ea = load ptr, ptr %i.dw, align 8, !tbaa !251, !noalias !1990
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dz
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !252, !noalias !1990, !nonnull !248, !noundef !248
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !247, !noalias !1990 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !218, !noalias !1990
  %i.eg = icmp eq i64 %i.dp, %i.ef
  br i1 %i.eg, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81, label %.lr.ph.i.i.i.i.i75

.lr.ph.i.i.i.i.i75:                               ; preds = %bb.ag, %.lr.ph.i.i.i.i.i75
  %.020.i.i.i.i.i76 = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i75 ], [ %i.ed, %bb.ag ]
  %i.eh = load ptr, ptr %.020.i.i.i.i.i76, align 8, !tbaa !247, !noalias !1990, !nonnull !248, !noundef !248 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !218, !noalias !1990 ; 2 uses
  %i.ek = urem i64 %i.ej, %i.dy
  %.not19.i.i.i.i.i77 = icmp eq i64 %i.ek, %i.dz
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i77)
  %i.el = icmp eq i64 %i.dp, %i.ej
  br i1 %i.el, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81, label %.lr.ph.i.i.i.i.i75, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81: ; preds = %.lr.ph.i.i.i.i.i75, %bb.af, %bb.ag
  %.sroa.06.1.i.i.i78 = phi ptr [ %.sroa.06.0.i.i.i80, %bb.af ], [ %i.ed, %bb.ag ], [ %i.eh, %.lr.ph.i.i.i.i.i75 ]
  %i.em = lshr i64 %i.do, 32
  %i.en = and i64 %i.em, 16777215
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !261, !noalias !1990
  %i.eq = mul i64 %i.ep, %i.en
  %i.er = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.es = load i64, ptr %i.er, align 8, !tbaa !262, !noalias !1990
  %i.et = add i64 %i.eq, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i78, i64 16
  %i.ev = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eu), !noalias !1990
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(136) %i.ev, i64 noundef %i.et)
  %i.ew = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.ey = load ptr, ptr %i.bj, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.ez = invoke i64 @_ZNK6duckdb15ChunkVectorInfo17GetDeletedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.ah unwind label %bb.ar     ; 2 uses

bb.ah:                                            ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81
  %i.fa = and i64 %i.ez, 4294967295               ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 88
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !246, !noalias !1991
  %.not.not.i.i.i82 = icmp eq i64 %i.fc, 0
  br i1 %.not.not.i.i.i82, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 80
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.06.0.in.i.i.i87 = phi ptr [ %i.fd, %bb.ai ], [ %.sroa.06.0.i.i.i88, %bb.aj ]
  %.sroa.06.0.i.i.i88 = load ptr, ptr %.sroa.06.0.in.i.i.i87, align 8, !tbaa !247, !noalias !1991, !nonnull !248, !noundef !248 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i88, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !218, !noalias !1991
  %i.fg = icmp eq i64 %i.fa, %i.ff
  br i1 %i.fg, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, label %bb.aj, !llvm.loop !3

bb.ak:                                            ; preds = %bb.ah
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 72
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !250, !noalias !1991 ; 2 uses
  %i.fk = urem i64 %i.fa, %i.fj                   ; 2 uses
  %i.fl = load ptr, ptr %i.fh, align 8, !tbaa !251, !noalias !1991
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fk
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !252, !noalias !1991, !nonnull !248, !noundef !248
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !247, !noalias !1991 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !218, !noalias !1991
  %i.fr = icmp eq i64 %i.fa, %i.fq
  br i1 %i.fr, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, label %.lr.ph.i.i.i.i.i83

.lr.ph.i.i.i.i.i83:                               ; preds = %bb.ak, %.lr.ph.i.i.i.i.i83
  %.020.i.i.i.i.i84 = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i83 ], [ %i.fo, %bb.ak ]
  %i.fs = load ptr, ptr %.020.i.i.i.i.i84, align 8, !tbaa !247, !noalias !1991, !nonnull !248, !noundef !248 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !218, !noalias !1991 ; 2 uses
  %i.fv = urem i64 %i.fu, %i.fj
  %.not19.i.i.i.i.i85 = icmp eq i64 %i.fv, %i.fk
  call void @llvm.assume(i1 %.not19.i.i.i.i.i85)
  %i.fw = icmp eq i64 %i.fa, %i.fu
  br i1 %i.fw, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, label %.lr.ph.i.i.i.i.i83, !llvm.loop !4

_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i: ; preds = %.lr.ph.i.i.i.i.i83, %bb.aj, %bb.ak
  %.sroa.06.1.i.i.i86 = phi ptr [ %.sroa.06.0.i.i.i88, %bb.aj ], [ %i.fo, %bb.ak ], [ %i.fs, %.lr.ph.i.i.i.i.i83 ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !261, !noalias !1991
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !262, !noalias !1991
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i86, i64 16
  %i.gc = invoke noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gb)
          to label %.noexc unwind label %bb.ar

.noexc:                                           ; preds = %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i
  %i.gd = lshr i64 %i.ez, 32
  %i.ge = and i64 %i.gd, 16777215
  %i.gf = mul i64 %i.fy, %i.ge
  %i.gg = add i64 %i.gf, %i.ga
  invoke void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(136) %i.gc, i64 noundef %i.gg)
          to label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90.preheader unwind label %bb.ar

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90.preheader: ; preds = %.noexc
  %.not123 = icmp eq i64 %4, 0
  br i1 %.not123, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90._crit_edge, label %.lr.ph115

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90._crit_edge: ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90.preheader
  %.050.lcssa = phi i64 [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90.preheader ], [ %.151, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90 ]
  %i.gh = load ptr, ptr %9, align 8, !tbaa !268
  %.not.i91 = icmp eq ptr %i.gh, null
  br i1 %.not.i91, label %_ZN6duckdb13SegmentHandleD2Ev.exit92, label %bb.al

bb.al:                                            ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90._crit_edge
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gi = load ptr, ptr %9, align 8, !tbaa !268
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %12 = atomicrmw add ptr %i.gj, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit92

bb.an:                                            ; preds = %bb.al
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit92:             ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90._crit_edge, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.gm = load ptr, ptr %8, align 8, !tbaa !268
  %.not.i93 = icmp eq ptr %i.gm, null
  br i1 %.not.i93, label %_ZN6duckdb13SegmentHandleD2Ev.exit94, label %bb.ao

bb.ao:                                            ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit92
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gn = load ptr, ptr %8, align 8, !tbaa !268
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %13 = atomicrmw add ptr %i.go, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit94

bb.aq:                                            ; preds = %bb.ao
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit94:             ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit92, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.ay

bb.ar:                                            ; preds = %.noexc, %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.lr.ph115:                                        ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90.preheader, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90
  %.0113 = phi i64 [ %i.he, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90 ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90.preheader ] ; 3 uses
  %.050112 = phi i64 [ %.151, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90 ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90.preheader ] ; 3 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.0113
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !218 ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %1
  %i.gv = icmp eq i64 %i.gt, %2
  %i.gw = or i1 %i.gu, %i.gv
  br i1 %i.gw, label %bb.at, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90

bb.as:                                            ; preds = %bb.au
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #37
  br label %bb.ax

bb.at:                                            ; preds = %.lr.ph115
  %i.gy = load ptr, ptr %5, align 8, !tbaa !298
  %.not97 = icmp eq ptr %i.gy, null
  br i1 %.not97, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_ZNK6duckdb12optional_ptrINS_15SelectionVectorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.av unwind label %bb.as

bb.av:                                            ; preds = %bb.au
  %i.gz = load ptr, ptr %5, align 8, !tbaa !298
  %i.ha = trunc i64 %.0113 to i32
  %i.hb = load ptr, ptr %i.gz, align 8, !tbaa !305
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %.050112
  store i32 %i.ha, ptr %i.hc, align 4, !tbaa !206
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.at
  %i.hd = add i64 %.050112, 1
  br label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90: ; preds = %.lr.ph115, %bb.aw
  %.151 = phi i64 [ %.050112, %.lr.ph115 ], [ %i.hd, %bb.aw ] ; 2 uses
  %i.he = add nuw i64 %.0113, 1                   ; 2 uses
  %exitcond135.not = icmp eq i64 %i.he, %4
  br i1 %exitcond135.not, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90._crit_edge, label %.lr.ph115, !llvm.loop !1987

bb.ax:                                            ; preds = %bb.as, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.gx, %bb.as ], [ %i.gr, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.az

bb.ay:                                            ; preds = %bb.d, %bb.c, %_ZN6duckdb13SegmentHandleD2Ev.exit94, %_ZN6duckdb13SegmentHandleD2Ev.exit72, %_ZN6duckdb13SegmentHandleD2Ev.exit
  %.048 = phi i64 [ %4, %_ZN6duckdb13SegmentHandleD2Ev.exit ], [ %.050.lcssa, %_ZN6duckdb13SegmentHandleD2Ev.exit94 ], [ %., %bb.c ], [ %.053.lcssa, %_ZN6duckdb13SegmentHandleD2Ev.exit72 ], [ 0, %bb.d ]
  ret i64 %.048

bb.az:                                            ; preds = %bb.ax, %bb.aa, %bb.l
  %.pn61 = phi { ptr, i32 } [ %i.bb, %bb.l ], [ %.pn, %bb.ax ], [ %i.dk, %bb.aa ]
  resume { ptr, i32 } %.pn61
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK6duckdb15ChunkVectorInfo21TemplatedGetSelVectorINS_22StandardInsertOperatorENS_23CommittedDeleteOperatorEEEmmmNS_12optional_ptrINS_15SelectionVectorELb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::optional_ptr.21", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::SegmentHandle", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::SegmentHandle", align 8 ; 9 uses
  %8 = alloca %"class.duckdb::SegmentHandle", align 8 ; 9 uses
  %9 = alloca %"class.duckdb::SegmentHandle", align 8 ; 9 uses
  store ptr %3, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !291
  %i.c = icmp ult i64 %i.b, 72057594037927936
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !291
  %i.f = icmp ugt i64 %i.e, 72057594037927935     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_ZNK6duckdb15ChunkVectorInfo16ConstantInsertIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.h = icmp ult i64 %i.g, %1
  %i.i = icmp eq i64 %i.g, %2
  %i.j = or i1 %i.h, %i.i                         ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %. = select i1 %i.j, i64 %4, i64 0
  br label %bb.bc

bb.d:                                             ; preds = %bb.b
  br i1 %i.j, label %bb.e, label %bb.bc

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.m = tail call i64 @_ZNK6duckdb15ChunkVectorInfo17GetDeletedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.n = and i64 %i.m, 4294967295                 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.p = load i64, ptr %i.o, align 8, !tbaa !246, !noalias !2003
  %.not.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.not.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.q, %bb.f ], [ %.sroa.06.0.i.i.i, %bb.g ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !247, !noalias !2003, !nonnull !248, !noundef !248 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !218, !noalias !2003
  %i.t = icmp eq i64 %i.n, %i.s
  br i1 %i.t, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %bb.g, !llvm.loop !3

bb.h:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.w = load i64, ptr %i.v, align 8, !tbaa !250, !noalias !2003 ; 2 uses
  %i.x = urem i64 %i.n, %i.w                      ; 2 uses
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !251, !noalias !2003
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !252, !noalias !2003, !nonnull !248, !noundef !248
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !247, !noalias !2003 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !218, !noalias !2003
  %i.ae = icmp eq i64 %i.n, %i.ad
  br i1 %i.ae, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.ab, %bb.h ]
  %i.af = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !247, !noalias !2003, !nonnull !248, !noundef !248 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !218, !noalias !2003 ; 2 uses
  %i.ai = urem i64 %i.ah, %i.w
  %.not19.i.i.i.i.i = icmp eq i64 %i.ai, %i.x
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.aj = icmp eq i64 %i.n, %i.ah
  br i1 %i.aj, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.g, %bb.h
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.ab, %bb.h ], [ %i.af, %.lr.ph.i.i.i.i.i ]
  %i.ak = lshr i64 %i.m, 32
  %i.al = and i64 %i.ak, 16777215
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !261, !noalias !2003
  %i.ao = mul i64 %i.an, %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !262, !noalias !2003
  %i.ar = add i64 %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.at = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as), !noalias !2003
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(136) %i.at, i64 noundef %i.ar)
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !266
  %.not126 = icmp eq i64 %4, 0
  br i1 %.not126, label %._crit_edge122, label %.lr.ph121

._crit_edge122:                                   ; preds = %bb.q, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %.049.lcssa = phi i64 [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit ], [ %.1, %bb.q ]
  %i.aw = load ptr, ptr %6, align 8, !tbaa !268
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge122
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %6, align 8, !tbaa !268
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %10 = atomicrmw add ptr %i.ay, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %._crit_edge122, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.bc

.lr.ph121:                                        ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, %bb.q
  %.049120 = phi i64 [ %.1, %bb.q ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit ] ; 3 uses
  %.055118 = phi i64 [ %i.bl, %bb.q ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.055118
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !218
  %i.bd = icmp ult i64 %i.bc, %1
  br i1 %i.bd, label %bb.q, label %bb.l

bb.l:                                             ; preds = %.lr.ph121
  %i.be = load ptr, ptr %5, align 8, !tbaa !298
  %.not98 = icmp eq ptr %i.be, null
  br i1 %.not98, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNK6duckdb12optional_ptrINS_15SelectionVectorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bf = load ptr, ptr %5, align 8, !tbaa !298
  %i.bg = trunc i64 %.055118 to i32
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !305
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.049120
  store i32 %i.bg, ptr %i.bi, align 4, !tbaa !206
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.bd

bb.p:                                             ; preds = %bb.n, %bb.l
  %i.bk = add i64 %.049120, 1
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph121, %bb.p
  %.1 = phi i64 [ %.049120, %.lr.ph121 ], [ %i.bk, %bb.p ] ; 2 uses
  %i.bl = add nuw i64 %.055118, 1                 ; 2 uses
  %exitcond135.not = icmp eq i64 %i.bl, %4
  br i1 %exitcond135.not, label %._crit_edge122, label %.lr.ph121, !llvm.loop !1994

bb.r:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.f, label %bb.af, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.bo = tail call i64 @_ZNK6duckdb15ChunkVectorInfo18GetInsertedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.bp = and i64 %i.bo, 4294967295               ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !246, !noalias !2004
  %.not.not.i.i.i63 = icmp eq i64 %i.br, 0
  br i1 %.not.not.i.i.i63, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.sroa.06.0.in.i.i.i68 = phi ptr [ %i.bs, %bb.t ], [ %.sroa.06.0.i.i.i69, %bb.u ]
  %.sroa.06.0.i.i.i69 = load ptr, ptr %.sroa.06.0.in.i.i.i68, align 8, !tbaa !247, !noalias !2004, !nonnull !248, !noundef !248 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i69, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !218, !noalias !2004
  %i.bv = icmp eq i64 %i.bp, %i.bu
  br i1 %i.bv, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70, label %bb.u, !llvm.loop !3

bb.v:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !250, !noalias !2004 ; 2 uses
  %i.bz = urem i64 %i.bp, %i.by                   ; 2 uses
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !251, !noalias !2004
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !252, !noalias !2004, !nonnull !248, !noundef !248
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !247, !noalias !2004 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !218, !noalias !2004
  %i.cg = icmp eq i64 %i.bp, %i.cf
  br i1 %i.cg, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70, label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %bb.v, %.lr.ph.i.i.i.i.i64
  %.020.i.i.i.i.i65 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i64 ], [ %i.cd, %bb.v ]
  %i.ch = load ptr, ptr %.020.i.i.i.i.i65, align 8, !tbaa !247, !noalias !2004, !nonnull !248, !noundef !248 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !218, !noalias !2004 ; 2 uses
  %i.ck = urem i64 %i.cj, %i.by
  %.not19.i.i.i.i.i66 = icmp eq i64 %i.ck, %i.bz
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i66)
  %i.cl = icmp eq i64 %i.bp, %i.cj
  br i1 %i.cl, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70, label %.lr.ph.i.i.i.i.i64, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70: ; preds = %.lr.ph.i.i.i.i.i64, %bb.u, %bb.v
  %.sroa.06.1.i.i.i67 = phi ptr [ %.sroa.06.0.i.i.i69, %bb.u ], [ %i.cd, %bb.v ], [ %i.ch, %.lr.ph.i.i.i.i.i64 ]
  %i.cm = lshr i64 %i.bo, 32
  %i.cn = and i64 %i.cm, 16777215
  %i.co = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !261, !noalias !2004
  %i.cq = mul i64 %i.cp, %i.cn
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !262, !noalias !2004
  %i.ct = add i64 %i.cq, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i67, i64 16
  %i.cv = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cu), !noalias !2004
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(136) %i.cv, i64 noundef %i.ct)
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !266
  %.not124 = icmp eq i64 %4, 0
  br i1 %.not124, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ae, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70
  %.053.lcssa = phi i64 [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70 ], [ %.154, %bb.ae ]
  %i.cy = load ptr, ptr %7, align 8, !tbaa !268
  %.not.i71 = icmp eq ptr %i.cy, null
  br i1 %.not.i71, label %_ZN6duckdb13SegmentHandleD2Ev.exit72, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cz = load ptr, ptr %7, align 8, !tbaa !268
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %11 = atomicrmw add ptr %i.da, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit72

bb.y:                                             ; preds = %bb.w
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit72:             ; preds = %._crit_edge, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.bc

.lr.ph:                                           ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70, %bb.ae
  %.052110 = phi i64 [ %i.dp, %bb.ae ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70 ] ; 3 uses
  %.053109 = phi i64 [ %.154, %bb.ae ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.052110
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !218 ; 2 uses
  %i.df = icmp ult i64 %i.de, %1
  %i.dg = icmp eq i64 %i.de, %2
  %i.dh = or i1 %i.df, %i.dg
  br i1 %i.dh, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %.lr.ph
  %i.di = load ptr, ptr %5, align 8, !tbaa !298
  %.not = icmp eq ptr %i.di, null
  br i1 %.not, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZNK6duckdb12optional_ptrINS_15SelectionVectorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dj = load ptr, ptr %5, align 8, !tbaa !298
  %i.dk = trunc i64 %.052110 to i32
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !305
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %.053109
  store i32 %i.dk, ptr %i.dm, align 4, !tbaa !206
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.bd

bb.ad:                                            ; preds = %bb.ab, %bb.z
  %i.do = add i64 %.053109, 1
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %bb.ad
  %.154 = phi i64 [ %i.do, %bb.ad ], [ %.053109, %.lr.ph ] ; 2 uses
  %i.dp = add nuw i64 %.052110, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dp, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1997

bb.af:                                            ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.dq = load ptr, ptr %i.bm, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.dr = tail call i64 @_ZNK6duckdb15ChunkVectorInfo18GetInsertedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.ds = and i64 %i.dr, 4294967295               ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !246, !noalias !2005
  %.not.not.i.i.i74 = icmp eq i64 %i.du, 0
  br i1 %.not.not.i.i.i74, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 80
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.sroa.06.0.in.i.i.i79 = phi ptr [ %i.dv, %bb.ag ], [ %.sroa.06.0.i.i.i80, %bb.ah ]
  %.sroa.06.0.i.i.i80 = load ptr, ptr %.sroa.06.0.in.i.i.i79, align 8, !tbaa !247, !noalias !2005, !nonnull !248, !noundef !248 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i80, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !218, !noalias !2005
  %i.dy = icmp eq i64 %i.ds, %i.dx
  br i1 %i.dy, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81, label %bb.ah, !llvm.loop !3

bb.ai:                                            ; preds = %bb.af
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !250, !noalias !2005 ; 2 uses
  %i.ec = urem i64 %i.ds, %i.eb                   ; 2 uses
  %i.ed = load ptr, ptr %i.dz, align 8, !tbaa !251, !noalias !2005
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ec
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !252, !noalias !2005, !nonnull !248, !noundef !248
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !247, !noalias !2005 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !218, !noalias !2005
  %i.ej = icmp eq i64 %i.ds, %i.ei
  br i1 %i.ej, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81, label %.lr.ph.i.i.i.i.i75

.lr.ph.i.i.i.i.i75:                               ; preds = %bb.ai, %.lr.ph.i.i.i.i.i75
  %.020.i.i.i.i.i76 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i75 ], [ %i.eg, %bb.ai ]
  %i.ek = load ptr, ptr %.020.i.i.i.i.i76, align 8, !tbaa !247, !noalias !2005, !nonnull !248, !noundef !248 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !218, !noalias !2005 ; 2 uses
  %i.en = urem i64 %i.em, %i.eb
  %.not19.i.i.i.i.i77 = icmp eq i64 %i.en, %i.ec
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i77)
  %i.eo = icmp eq i64 %i.ds, %i.em
  br i1 %i.eo, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81, label %.lr.ph.i.i.i.i.i75, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81: ; preds = %.lr.ph.i.i.i.i.i75, %bb.ah, %bb.ai
  %.sroa.06.1.i.i.i78 = phi ptr [ %.sroa.06.0.i.i.i80, %bb.ah ], [ %i.eg, %bb.ai ], [ %i.ek, %.lr.ph.i.i.i.i.i75 ]
  %i.ep = lshr i64 %i.dr, 32
  %i.eq = and i64 %i.ep, 16777215
  %i.er = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.es = load i64, ptr %i.er, align 8, !tbaa !261, !noalias !2005
  %i.et = mul i64 %i.es, %i.eq
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !262, !noalias !2005
  %i.ew = add i64 %i.et, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i78, i64 16
  %i.ey = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ex), !noalias !2005
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(136) %i.ey, i64 noundef %i.ew)
  %i.ez = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !266
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.fb = load ptr, ptr %i.bm, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.fc = invoke i64 @_ZNK6duckdb15ChunkVectorInfo17GetDeletedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.aj unwind label %bb.at     ; 2 uses

bb.aj:                                            ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81
  %i.fd = and i64 %i.fc, 4294967295               ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 88
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !246, !noalias !2006
  %.not.not.i.i.i82 = icmp eq i64 %i.ff, 0
  br i1 %.not.not.i.i.i82, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 80
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.sroa.06.0.in.i.i.i87 = phi ptr [ %i.fg, %bb.ak ], [ %.sroa.06.0.i.i.i88, %bb.al ]
  %.sroa.06.0.i.i.i88 = load ptr, ptr %.sroa.06.0.in.i.i.i87, align 8, !tbaa !247, !noalias !2006, !nonnull !248, !noundef !248 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i88, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !218, !noalias !2006
  %i.fj = icmp eq i64 %i.fd, %i.fi
  br i1 %i.fj, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, label %bb.al, !llvm.loop !3

bb.am:                                            ; preds = %bb.aj
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fb, i64 72
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !250, !noalias !2006 ; 2 uses
  %i.fn = urem i64 %i.fd, %i.fm                   ; 2 uses
  %i.fo = load ptr, ptr %i.fk, align 8, !tbaa !251, !noalias !2006
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fn
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !252, !noalias !2006, !nonnull !248, !noundef !248
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !247, !noalias !2006 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !218, !noalias !2006
  %i.fu = icmp eq i64 %i.fd, %i.ft
  br i1 %i.fu, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, label %.lr.ph.i.i.i.i.i83

.lr.ph.i.i.i.i.i83:                               ; preds = %bb.am, %.lr.ph.i.i.i.i.i83
  %.020.i.i.i.i.i84 = phi ptr [ %i.fv, %.lr.ph.i.i.i.i.i83 ], [ %i.fr, %bb.am ]
  %i.fv = load ptr, ptr %.020.i.i.i.i.i84, align 8, !tbaa !247, !noalias !2006, !nonnull !248, !noundef !248 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !218, !noalias !2006 ; 2 uses
  %i.fy = urem i64 %i.fx, %i.fm
  %.not19.i.i.i.i.i85 = icmp eq i64 %i.fy, %i.fn
  call void @llvm.assume(i1 %.not19.i.i.i.i.i85)
  %i.fz = icmp eq i64 %i.fd, %i.fx
  br i1 %i.fz, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, label %.lr.ph.i.i.i.i.i83, !llvm.loop !4

_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i: ; preds = %.lr.ph.i.i.i.i.i83, %bb.al, %bb.am
  %.sroa.06.1.i.i.i86 = phi ptr [ %.sroa.06.0.i.i.i88, %bb.al ], [ %i.fr, %bb.am ], [ %i.fv, %.lr.ph.i.i.i.i.i83 ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !261, !noalias !2006
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !262, !noalias !2006
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i86, i64 16
  %i.gf = invoke noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ge)
          to label %.noexc unwind label %bb.at

.noexc:                                           ; preds = %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i
  %i.gg = lshr i64 %i.fc, 32
  %i.gh = and i64 %i.gg, 16777215
  %i.gi = mul i64 %i.gb, %i.gh
  %i.gj = add i64 %i.gi, %i.gd
  invoke void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(136) %i.gf, i64 noundef %i.gj)
          to label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90 unwind label %bb.at

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90: ; preds = %.noexc
  %i.gk = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !266
  %.not125 = icmp eq i64 %4, 0
  br i1 %.not125, label %._crit_edge116, label %.lr.ph115

._crit_edge116:                                   ; preds = %bb.ba, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90
  %.050.lcssa = phi i64 [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90 ], [ %.151, %bb.ba ]
  %i.gm = load ptr, ptr %9, align 8, !tbaa !268
  %.not.i91 = icmp eq ptr %i.gm, null
  br i1 %.not.i91, label %_ZN6duckdb13SegmentHandleD2Ev.exit92, label %bb.an

bb.an:                                            ; preds = %._crit_edge116
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gn = load ptr, ptr %9, align 8, !tbaa !268
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %12 = atomicrmw add ptr %i.go, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit92

bb.ap:                                            ; preds = %bb.an
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit92:             ; preds = %._crit_edge116, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.gr = load ptr, ptr %8, align 8, !tbaa !268
  %.not.i93 = icmp eq ptr %i.gr, null
  br i1 %.not.i93, label %_ZN6duckdb13SegmentHandleD2Ev.exit94, label %bb.aq

bb.aq:                                            ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit92
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gs = load ptr, ptr %8, align 8, !tbaa !268
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %13 = atomicrmw add ptr %i.gt, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit94

bb.as:                                            ; preds = %bb.aq
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  call void @__clang_call_terminate(ptr %i.gv) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit94:             ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit92, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.bc

bb.at:                                            ; preds = %.noexc, %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph115:                                        ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90, %bb.ba
  %.0113 = phi i64 [ %i.hm, %bb.ba ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90 ] ; 4 uses
  %.050112 = phi i64 [ %.151, %bb.ba ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90 ] ; 4 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.0113
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !218 ; 2 uses
  %i.gz = icmp ult i64 %i.gy, %1
  %i.ha = icmp eq i64 %i.gy, %2
  %i.hb = or i1 %i.gz, %i.ha
  br i1 %i.hb, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %.lr.ph115
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %.0113
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !218
  %i.he = icmp ult i64 %i.hd, %1
  br i1 %i.he, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hf = load ptr, ptr %5, align 8, !tbaa !298
  %.not97 = icmp eq ptr %i.hf, null
  br i1 %.not97, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZNK6duckdb12optional_ptrINS_15SelectionVectorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hg = load ptr, ptr %5, align 8, !tbaa !298
  %i.hh = trunc i64 %.0113 to i32
  %i.hi = load ptr, ptr %i.hg, align 8, !tbaa !305
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %.050112
  store i32 %i.hh, ptr %i.hj, align 4, !tbaa !206
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #37
  br label %bb.bb

bb.az:                                            ; preds = %bb.ax, %bb.av
  %i.hl = add i64 %.050112, 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.au, %.lr.ph115, %bb.az
  %.151 = phi i64 [ %.050112, %bb.au ], [ %i.hl, %bb.az ], [ %.050112, %.lr.ph115 ] ; 2 uses
  %i.hm = add nuw i64 %.0113, 1                   ; 2 uses
  %exitcond134.not = icmp eq i64 %i.hm, %4
  br i1 %exitcond134.not, label %._crit_edge116, label %.lr.ph115, !llvm.loop !2002

bb.bb:                                            ; preds = %bb.ay, %bb.at
  %.pn = phi { ptr, i32 } [ %i.hk, %bb.ay ], [ %i.gw, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.bd

bb.bc:                                            ; preds = %bb.d, %bb.c, %_ZN6duckdb13SegmentHandleD2Ev.exit94, %_ZN6duckdb13SegmentHandleD2Ev.exit72, %_ZN6duckdb13SegmentHandleD2Ev.exit
  %.048 = phi i64 [ %.049.lcssa, %_ZN6duckdb13SegmentHandleD2Ev.exit ], [ %.050.lcssa, %_ZN6duckdb13SegmentHandleD2Ev.exit94 ], [ %., %bb.c ], [ %.053.lcssa, %_ZN6duckdb13SegmentHandleD2Ev.exit72 ], [ 0, %bb.d ]
  ret i64 %.048

bb.bd:                                            ; preds = %bb.bb, %bb.ac, %bb.o
  %.pn61 = phi { ptr, i32 } [ %i.bj, %bb.o ], [ %.pn, %bb.bb ], [ %i.dn, %bb.ac ]
  resume { ptr, i32 } %.pn61
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK6duckdb15ChunkVectorInfo21TemplatedGetSelVectorINS_26IncludeAllInsertedOperatorENS_22StandardDeleteOperatorEEEmmmNS_12optional_ptrINS_15SelectionVectorELb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::optional_ptr.21", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::SegmentHandle", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::SegmentHandle", align 8 ; 8 uses
  %8 = alloca %"class.duckdb::SegmentHandle", align 8 ; 8 uses
  %9 = alloca %"class.duckdb::SegmentHandle", align 8 ; 9 uses
  store ptr %3, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !291
  %i.c = icmp ult i64 %i.b, 72057594037927936
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !291
  %i.f = icmp ugt i64 %i.e, 72057594037927935     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_ZNK6duckdb15ChunkVectorInfo16ConstantInsertIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br i1 %i.f, label %bb.c, label %bb.ax

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.j = tail call i64 @_ZNK6duckdb15ChunkVectorInfo17GetDeletedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.m = load i64, ptr %i.l, align 8, !tbaa !246, !noalias !2018
  %.not.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.not.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.n, %bb.d ], [ %.sroa.06.0.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !247, !noalias !2018, !nonnull !248, !noundef !248 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !218, !noalias !2018
  %i.q = icmp eq i64 %i.k, %i.p
  br i1 %i.q, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %bb.e, !llvm.loop !3

bb.f:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.t = load i64, ptr %i.s, align 8, !tbaa !250, !noalias !2018 ; 2 uses
  %i.u = urem i64 %i.k, %i.t                      ; 2 uses
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !251, !noalias !2018
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !252, !noalias !2018, !nonnull !248, !noundef !248
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !247, !noalias !2018 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !218, !noalias !2018
  %i.ab = icmp eq i64 %i.k, %i.aa
  br i1 %i.ab, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.y, %bb.f ]
  %i.ac = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !247, !noalias !2018, !nonnull !248, !noundef !248 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !218, !noalias !2018 ; 2 uses
  %i.af = urem i64 %i.ae, %i.t
  %.not19.i.i.i.i.i = icmp eq i64 %i.af, %i.u
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ag = icmp eq i64 %i.k, %i.ae
  br i1 %i.ag, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.e, %bb.f
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.y, %bb.f ], [ %i.ac, %.lr.ph.i.i.i.i.i ]
  %i.ah = lshr i64 %i.j, 32
  %i.ai = and i64 %i.ah, 16777215
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !261, !noalias !2018
  %i.al = mul i64 %i.ak, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !262, !noalias !2018
  %i.ao = add i64 %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.aq = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap), !noalias !2018
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(136) %i.aq, i64 noundef %i.ao)
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !266
  %.not125 = icmp eq i64 %4, 0
  br i1 %.not125, label %._crit_edge121, label %.lr.ph120

._crit_edge121:                                   ; preds = %bb.o, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %.049.lcssa = phi i64 [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit ], [ %.1, %bb.o ]
  %i.at = load ptr, ptr %6, align 8, !tbaa !268
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge121
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %6, align 8, !tbaa !268
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %10 = atomicrmw add ptr %i.av, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %._crit_edge121, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.ax

.lr.ph120:                                        ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, %bb.o
  %.049119 = phi i64 [ %.1, %bb.o ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit ] ; 3 uses
  %.055117 = phi i64 [ %i.bk, %bb.o ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.055117
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !218 ; 2 uses
  %i.ba = icmp ult i64 %i.az, %1
  %i.bb = icmp eq i64 %i.az, %2
  %i.bc = or i1 %i.ba, %i.bb
  br i1 %i.bc, label %bb.o, label %bb.j

bb.j:                                             ; preds = %.lr.ph120
  %i.bd = load ptr, ptr %5, align 8, !tbaa !298
  %.not98 = icmp eq ptr %i.bd, null
  br i1 %.not98, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNK6duckdb12optional_ptrINS_15SelectionVectorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.be = load ptr, ptr %5, align 8, !tbaa !298
  %i.bf = trunc i64 %.055117 to i32
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !305
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.049119
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !206
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.ay

bb.n:                                             ; preds = %bb.l, %bb.j
  %i.bj = add i64 %.049119, 1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph120, %bb.n
  %.1 = phi i64 [ %.049119, %.lr.ph120 ], [ %i.bj, %bb.n ] ; 2 uses
  %i.bk = add nuw i64 %.055117, 1                 ; 2 uses
  %exitcond137.not = icmp eq i64 %i.bk, %4
  br i1 %exitcond137.not, label %._crit_edge121, label %.lr.ph120, !llvm.loop !2009

bb.p:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.f, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.bn = tail call i64 @_ZNK6duckdb15ChunkVectorInfo18GetInsertedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.bo = and i64 %i.bn, 4294967295               ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 88
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !246, !noalias !2019
  %.not.not.i.i.i63 = icmp eq i64 %i.bq, 0
  br i1 %.not.not.i.i.i63, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.sroa.06.0.in.i.i.i68 = phi ptr [ %i.br, %bb.r ], [ %.sroa.06.0.i.i.i69, %bb.s ]
  %.sroa.06.0.i.i.i69 = load ptr, ptr %.sroa.06.0.in.i.i.i68, align 8, !tbaa !247, !noalias !2019, !nonnull !248, !noundef !248 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i69, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !218, !noalias !2019
  %i.bu = icmp eq i64 %i.bo, %i.bt
  br i1 %i.bu, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70, label %bb.s, !llvm.loop !3

bb.t:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !250, !noalias !2019 ; 2 uses
  %i.by = urem i64 %i.bo, %i.bx                   ; 2 uses
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !251, !noalias !2019
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !252, !noalias !2019, !nonnull !248, !noundef !248
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !247, !noalias !2019 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !218, !noalias !2019
  %i.cf = icmp eq i64 %i.bo, %i.ce
  br i1 %i.cf, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70, label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %bb.t, %.lr.ph.i.i.i.i.i64
  %.020.i.i.i.i.i65 = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i64 ], [ %i.cc, %bb.t ]
  %i.cg = load ptr, ptr %.020.i.i.i.i.i65, align 8, !tbaa !247, !noalias !2019, !nonnull !248, !noundef !248 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !218, !noalias !2019 ; 2 uses
  %i.cj = urem i64 %i.ci, %i.bx
  %.not19.i.i.i.i.i66 = icmp eq i64 %i.cj, %i.by
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i66)
  %i.ck = icmp eq i64 %i.bo, %i.ci
  br i1 %i.ck, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70, label %.lr.ph.i.i.i.i.i64, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70: ; preds = %.lr.ph.i.i.i.i.i64, %bb.s, %bb.t
  %.sroa.06.1.i.i.i67 = phi ptr [ %.sroa.06.0.i.i.i69, %bb.s ], [ %i.cc, %bb.t ], [ %i.cg, %.lr.ph.i.i.i.i.i64 ]
  %i.cl = lshr i64 %i.bn, 32
  %i.cm = and i64 %i.cl, 16777215
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !261, !noalias !2019
  %i.cp = mul i64 %i.co, %i.cm
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !262, !noalias !2019
  %i.cs = add i64 %i.cp, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i67, i64 16
  %i.cu = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ct), !noalias !2019
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(136) %i.cu, i64 noundef %i.cs)
  %.not123 = icmp eq i64 %4, 0
  %i.cv = load ptr, ptr %5, align 8               ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  %or.cond = select i1 %.not123, i1 true, i1 %i.cw
  br i1 %or.cond, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.aa, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70
  %i.cx = load ptr, ptr %7, align 8, !tbaa !268
  %.not.i71 = icmp eq ptr %i.cx, null
  br i1 %.not.i71, label %_ZN6duckdb13SegmentHandleD2Ev.exit72, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cy = load ptr, ptr %7, align 8, !tbaa !268
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %11 = atomicrmw add ptr %i.cz, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit72

bb.w:                                             ; preds = %bb.u
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit72:             ; preds = %._crit_edge, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.ax

bb.x:                                             ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.ay

.lr.ph.split:                                     ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70, %bb.aa
  %i.dd = phi ptr [ %i.di, %bb.aa ], [ %i.cv, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70 ]
  %.052110 = phi i64 [ %i.dj, %bb.aa ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70 ] ; 3 uses
  %.not = icmp eq ptr %i.dd, null
  br i1 %.not, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %.lr.ph.split
  invoke void @_ZNK6duckdb12optional_ptrINS_15SelectionVectorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.z unwind label %bb.x

bb.z:                                             ; preds = %bb.y
  %i.de = load ptr, ptr %5, align 8, !tbaa !298   ; 2 uses
  %i.df = trunc i64 %.052110 to i32
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !305
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %.052110
  store i32 %i.df, ptr %i.dh, align 4, !tbaa !206
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.split, %bb.z
  %i.di = phi ptr [ null, %.lr.ph.split ], [ %i.de, %bb.z ]
  %i.dj = add nuw i64 %.052110, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dj, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !2012

bb.ab:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.dk = load ptr, ptr %i.bl, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.dl = tail call i64 @_ZNK6duckdb15ChunkVectorInfo18GetInsertedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.dm = and i64 %i.dl, 4294967295               ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 88
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !246, !noalias !2020
  %.not.not.i.i.i74 = icmp eq i64 %i.do, 0
  br i1 %.not.not.i.i.i74, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 80
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.06.0.in.i.i.i79 = phi ptr [ %i.dp, %bb.ac ], [ %.sroa.06.0.i.i.i80, %bb.ad ]
  %.sroa.06.0.i.i.i80 = load ptr, ptr %.sroa.06.0.in.i.i.i79, align 8, !tbaa !247, !noalias !2020, !nonnull !248, !noundef !248 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i80, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !218, !noalias !2020
  %i.ds = icmp eq i64 %i.dm, %i.dr
  br i1 %i.ds, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81, label %bb.ad, !llvm.loop !3

bb.ae:                                            ; preds = %bb.ab
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 72
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !250, !noalias !2020 ; 2 uses
  %i.dw = urem i64 %i.dm, %i.dv                   ; 2 uses
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !251, !noalias !2020
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !252, !noalias !2020, !nonnull !248, !noundef !248
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !247, !noalias !2020 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !218, !noalias !2020
  %i.ed = icmp eq i64 %i.dm, %i.ec
  br i1 %i.ed, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81, label %.lr.ph.i.i.i.i.i75

.lr.ph.i.i.i.i.i75:                               ; preds = %bb.ae, %.lr.ph.i.i.i.i.i75
  %.020.i.i.i.i.i76 = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i75 ], [ %i.ea, %bb.ae ]
  %i.ee = load ptr, ptr %.020.i.i.i.i.i76, align 8, !tbaa !247, !noalias !2020, !nonnull !248, !noundef !248 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !218, !noalias !2020 ; 2 uses
  %i.eh = urem i64 %i.eg, %i.dv
  %.not19.i.i.i.i.i77 = icmp eq i64 %i.eh, %i.dw
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i77)
  %i.ei = icmp eq i64 %i.dm, %i.eg
  br i1 %i.ei, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81, label %.lr.ph.i.i.i.i.i75, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81: ; preds = %.lr.ph.i.i.i.i.i75, %bb.ad, %bb.ae
  %.sroa.06.1.i.i.i78 = phi ptr [ %.sroa.06.0.i.i.i80, %bb.ad ], [ %i.ea, %bb.ae ], [ %i.ee, %.lr.ph.i.i.i.i.i75 ]
  %i.ej = lshr i64 %i.dl, 32
  %i.ek = and i64 %i.ej, 16777215
  %i.el = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.em = load i64, ptr %i.el, align 8, !tbaa !261, !noalias !2020
  %i.en = mul i64 %i.em, %i.ek
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !262, !noalias !2020
  %i.eq = add i64 %i.en, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i78, i64 16
  %i.es = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.er), !noalias !2020
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(136) %i.es, i64 noundef %i.eq)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.et = load ptr, ptr %i.bl, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.eu = invoke i64 @_ZNK6duckdb15ChunkVectorInfo17GetDeletedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.af unwind label %bb.ap     ; 2 uses

bb.af:                                            ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81
  %i.ev = and i64 %i.eu, 4294967295               ; 4 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 88
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !246, !noalias !2021
  %.not.not.i.i.i82 = icmp eq i64 %i.ex, 0
  br i1 %.not.not.i.i.i82, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 80
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.sroa.06.0.in.i.i.i87 = phi ptr [ %i.ey, %bb.ag ], [ %.sroa.06.0.i.i.i88, %bb.ah ]
  %.sroa.06.0.i.i.i88 = load ptr, ptr %.sroa.06.0.in.i.i.i87, align 8, !tbaa !247, !noalias !2021, !nonnull !248, !noundef !248 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i88, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !218, !noalias !2021
  %i.fb = icmp eq i64 %i.ev, %i.fa
  br i1 %i.fb, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, label %bb.ah, !llvm.loop !3

bb.ai:                                            ; preds = %bb.af
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 72
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !250, !noalias !2021 ; 2 uses
  %i.ff = urem i64 %i.ev, %i.fe                   ; 2 uses
  %i.fg = load ptr, ptr %i.fc, align 8, !tbaa !251, !noalias !2021
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.ff
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !252, !noalias !2021, !nonnull !248, !noundef !248
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !247, !noalias !2021 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !218, !noalias !2021
  %i.fm = icmp eq i64 %i.ev, %i.fl
  br i1 %i.fm, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, label %.lr.ph.i.i.i.i.i83

.lr.ph.i.i.i.i.i83:                               ; preds = %bb.ai, %.lr.ph.i.i.i.i.i83
  %.020.i.i.i.i.i84 = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i83 ], [ %i.fj, %bb.ai ]
  %i.fn = load ptr, ptr %.020.i.i.i.i.i84, align 8, !tbaa !247, !noalias !2021, !nonnull !248, !noundef !248 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !218, !noalias !2021 ; 2 uses
  %i.fq = urem i64 %i.fp, %i.fe
  %.not19.i.i.i.i.i85 = icmp eq i64 %i.fq, %i.ff
  call void @llvm.assume(i1 %.not19.i.i.i.i.i85)
  %i.fr = icmp eq i64 %i.ev, %i.fp
  br i1 %i.fr, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, label %.lr.ph.i.i.i.i.i83, !llvm.loop !4

_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i: ; preds = %.lr.ph.i.i.i.i.i83, %bb.ah, %bb.ai
  %.sroa.06.1.i.i.i86 = phi ptr [ %.sroa.06.0.i.i.i88, %bb.ah ], [ %i.fj, %bb.ai ], [ %i.fn, %.lr.ph.i.i.i.i.i83 ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !261, !noalias !2021
  %i.fu = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !262, !noalias !2021
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i86, i64 16
  %i.fx = invoke noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fw)
          to label %.noexc unwind label %bb.ap

.noexc:                                           ; preds = %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i
  %i.fy = lshr i64 %i.eu, 32
  %i.fz = and i64 %i.fy, 16777215
  %i.ga = mul i64 %i.ft, %i.fz
  %i.gb = add i64 %i.ga, %i.fv
  invoke void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(136) %i.fx, i64 noundef %i.gb)
          to label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90 unwind label %bb.ap

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90: ; preds = %.noexc
  %i.gc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !266
  %.not124 = icmp eq i64 %4, 0
  br i1 %.not124, label %._crit_edge115, label %.lr.ph114

._crit_edge115:                                   ; preds = %bb.av, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90
  %.050.lcssa = phi i64 [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90 ], [ %.151, %bb.av ]
  %i.ge = load ptr, ptr %9, align 8, !tbaa !268
  %.not.i91 = icmp eq ptr %i.ge, null
  br i1 %.not.i91, label %_ZN6duckdb13SegmentHandleD2Ev.exit92, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge115
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gf = load ptr, ptr %9, align 8, !tbaa !268
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %12 = atomicrmw add ptr %i.gg, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit92

bb.al:                                            ; preds = %bb.aj
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit92:             ; preds = %._crit_edge115, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.gj = load ptr, ptr %8, align 8, !tbaa !268
  %.not.i93 = icmp eq ptr %i.gj, null
  br i1 %.not.i93, label %_ZN6duckdb13SegmentHandleD2Ev.exit94, label %bb.am

bb.am:                                            ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit92
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gk = load ptr, ptr %8, align 8, !tbaa !268
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %13 = atomicrmw add ptr %i.gl, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit94

bb.ao:                                            ; preds = %bb.am
  %i.gm = landingpad { ptr, i32 }
          catch ptr null
  %i.gn = extractvalue { ptr, i32 } %i.gm, 0
  call void @__clang_call_terminate(ptr %i.gn) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit94:             ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit92, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.ax

bb.ap:                                            ; preds = %.noexc, %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aq:                                            ; preds = %bb.as
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #37
  br label %bb.aw

.lr.ph114:                                        ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90, %bb.av
  %.0112 = phi i64 [ %i.hb, %bb.av ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90 ] ; 3 uses
  %.050111 = phi i64 [ %.151, %bb.av ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90 ] ; 3 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.0112
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !218 ; 2 uses
  %i.gs = icmp ult i64 %i.gr, %1
  %i.gt = icmp eq i64 %i.gr, %2
  %i.gu = or i1 %i.gs, %i.gt
  br i1 %i.gu, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph114
  %i.gv = load ptr, ptr %5, align 8, !tbaa !298
  %.not97 = icmp eq ptr %i.gv, null
  br i1 %.not97, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZNK6duckdb12optional_ptrINS_15SelectionVectorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.at unwind label %bb.aq

bb.at:                                            ; preds = %bb.as
  %i.gw = load ptr, ptr %5, align 8, !tbaa !298
  %i.gx = trunc i64 %.0112 to i32
  %i.gy = load ptr, ptr %i.gw, align 8, !tbaa !305
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.050111
  store i32 %i.gx, ptr %i.gz, align 4, !tbaa !206
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ar
  %i.ha = add i64 %.050111, 1
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph114, %bb.au
  %.151 = phi i64 [ %.050111, %.lr.ph114 ], [ %i.ha, %bb.au ] ; 2 uses
  %i.hb = add nuw i64 %.0112, 1                   ; 2 uses
  %exitcond136.not = icmp eq i64 %i.hb, %4
  br i1 %exitcond136.not, label %._crit_edge115, label %.lr.ph114, !llvm.loop !2017

bb.aw:                                            ; preds = %bb.aq, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.gp, %bb.aq ], [ %i.go, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.ay

bb.ax:                                            ; preds = %bb.b, %_ZN6duckdb13SegmentHandleD2Ev.exit94, %_ZN6duckdb13SegmentHandleD2Ev.exit72, %_ZN6duckdb13SegmentHandleD2Ev.exit
  %.048 = phi i64 [ %.049.lcssa, %_ZN6duckdb13SegmentHandleD2Ev.exit ], [ %.050.lcssa, %_ZN6duckdb13SegmentHandleD2Ev.exit94 ], [ %4, %_ZN6duckdb13SegmentHandleD2Ev.exit72 ], [ %4, %bb.b ]
  ret i64 %.048

bb.ay:                                            ; preds = %bb.aw, %bb.x, %bb.m
  %.pn61 = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %.pn, %bb.aw ], [ %i.dc, %bb.x ]
  resume { ptr, i32 } %.pn61
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK6duckdb15ChunkVectorInfo21TemplatedGetSelVectorINS_26IncludeAllInsertedOperatorENS_23CommittedDeleteOperatorEEEmmmNS_12optional_ptrINS_15SelectionVectorELb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::optional_ptr.21", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::SegmentHandle", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::SegmentHandle", align 8 ; 8 uses
  %8 = alloca %"class.duckdb::SegmentHandle", align 8 ; 8 uses
  %9 = alloca %"class.duckdb::SegmentHandle", align 8 ; 9 uses
  store ptr %3, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !291
  %i.c = icmp ult i64 %i.b, 72057594037927936
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !291
  %i.f = icmp ugt i64 %i.e, 72057594037927935     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_ZNK6duckdb15ChunkVectorInfo16ConstantInsertIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 0 uses
  br i1 %i.f, label %bb.c, label %bb.ax

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.j = tail call i64 @_ZNK6duckdb15ChunkVectorInfo17GetDeletedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.m = load i64, ptr %i.l, align 8, !tbaa !246, !noalias !2033
  %.not.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.not.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.n, %bb.d ], [ %.sroa.06.0.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !247, !noalias !2033, !nonnull !248, !noundef !248 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !218, !noalias !2033
  %i.q = icmp eq i64 %i.k, %i.p
  br i1 %i.q, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %bb.e, !llvm.loop !3

bb.f:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.t = load i64, ptr %i.s, align 8, !tbaa !250, !noalias !2033 ; 2 uses
  %i.u = urem i64 %i.k, %i.t                      ; 2 uses
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !251, !noalias !2033
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !252, !noalias !2033, !nonnull !248, !noundef !248
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !247, !noalias !2033 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !218, !noalias !2033
  %i.ab = icmp eq i64 %i.k, %i.aa
  br i1 %i.ab, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.y, %bb.f ]
  %i.ac = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !247, !noalias !2033, !nonnull !248, !noundef !248 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !218, !noalias !2033 ; 2 uses
  %i.af = urem i64 %i.ae, %i.t
  %.not19.i.i.i.i.i = icmp eq i64 %i.af, %i.u
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ag = icmp eq i64 %i.k, %i.ae
  br i1 %i.ag, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.e, %bb.f
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.y, %bb.f ], [ %i.ac, %.lr.ph.i.i.i.i.i ]
  %i.ah = lshr i64 %i.j, 32
  %i.ai = and i64 %i.ah, 16777215
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !261, !noalias !2033
  %i.al = mul i64 %i.ak, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !262, !noalias !2033
  %i.ao = add i64 %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.aq = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap), !noalias !2033
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(136) %i.aq, i64 noundef %i.ao)
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !266
  %.not125 = icmp eq i64 %4, 0
  br i1 %.not125, label %._crit_edge121, label %.lr.ph120

._crit_edge121:                                   ; preds = %bb.o, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %.049.lcssa = phi i64 [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit ], [ %.1, %bb.o ]
  %i.at = load ptr, ptr %6, align 8, !tbaa !268
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge121
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %6, align 8, !tbaa !268
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %10 = atomicrmw add ptr %i.av, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %._crit_edge121, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.ax

.lr.ph120:                                        ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, %bb.o
  %.049119 = phi i64 [ %.1, %bb.o ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit ] ; 3 uses
  %.055117 = phi i64 [ %i.bi, %bb.o ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.055117
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !218
  %i.ba = icmp ult i64 %i.az, %1
  br i1 %i.ba, label %bb.o, label %bb.j

bb.j:                                             ; preds = %.lr.ph120
  %i.bb = load ptr, ptr %5, align 8, !tbaa !298
  %.not98 = icmp eq ptr %i.bb, null
  br i1 %.not98, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNK6duckdb12optional_ptrINS_15SelectionVectorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr %5, align 8, !tbaa !298
  %i.bd = trunc i64 %.055117 to i32
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !305
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %.049119
  store i32 %i.bd, ptr %i.bf, align 4, !tbaa !206
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.ay

bb.n:                                             ; preds = %bb.l, %bb.j
  %i.bh = add i64 %.049119, 1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph120, %bb.n
  %.1 = phi i64 [ %.049119, %.lr.ph120 ], [ %i.bh, %bb.n ] ; 2 uses
  %i.bi = add nuw i64 %.055117, 1                 ; 2 uses
  %exitcond137.not = icmp eq i64 %i.bi, %4
  br i1 %exitcond137.not, label %._crit_edge121, label %.lr.ph120, !llvm.loop !2024

bb.p:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.f, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.bl = tail call i64 @_ZNK6duckdb15ChunkVectorInfo18GetInsertedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.bm = and i64 %i.bl, 4294967295               ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !246, !noalias !2034
  %.not.not.i.i.i63 = icmp eq i64 %i.bo, 0
  br i1 %.not.not.i.i.i63, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %.sroa.06.0.in.i.i.i68 = phi ptr [ %i.bp, %bb.r ], [ %.sroa.06.0.i.i.i69, %bb.s ]
  %.sroa.06.0.i.i.i69 = load ptr, ptr %.sroa.06.0.in.i.i.i68, align 8, !tbaa !247, !noalias !2034, !nonnull !248, !noundef !248 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i69, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !218, !noalias !2034
  %i.bs = icmp eq i64 %i.bm, %i.br
  br i1 %i.bs, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70, label %bb.s, !llvm.loop !3

bb.t:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !250, !noalias !2034 ; 2 uses
  %i.bw = urem i64 %i.bm, %i.bv                   ; 2 uses
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !251, !noalias !2034
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !252, !noalias !2034, !nonnull !248, !noundef !248
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !247, !noalias !2034 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !218, !noalias !2034
  %i.cd = icmp eq i64 %i.bm, %i.cc
  br i1 %i.cd, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70, label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %bb.t, %.lr.ph.i.i.i.i.i64
  %.020.i.i.i.i.i65 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i64 ], [ %i.ca, %bb.t ]
  %i.ce = load ptr, ptr %.020.i.i.i.i.i65, align 8, !tbaa !247, !noalias !2034, !nonnull !248, !noundef !248 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !218, !noalias !2034 ; 2 uses
  %i.ch = urem i64 %i.cg, %i.bv
  %.not19.i.i.i.i.i66 = icmp eq i64 %i.ch, %i.bw
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i66)
  %i.ci = icmp eq i64 %i.bm, %i.cg
  br i1 %i.ci, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70, label %.lr.ph.i.i.i.i.i64, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70: ; preds = %.lr.ph.i.i.i.i.i64, %bb.s, %bb.t
  %.sroa.06.1.i.i.i67 = phi ptr [ %.sroa.06.0.i.i.i69, %bb.s ], [ %i.ca, %bb.t ], [ %i.ce, %.lr.ph.i.i.i.i.i64 ]
  %i.cj = lshr i64 %i.bl, 32
  %i.ck = and i64 %i.cj, 16777215
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !261, !noalias !2034
  %i.cn = mul i64 %i.cm, %i.ck
  %i.co = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !262, !noalias !2034
  %i.cq = add i64 %i.cn, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i67, i64 16
  %i.cs = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cr), !noalias !2034
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(136) %i.cs, i64 noundef %i.cq)
  %.not123 = icmp eq i64 %4, 0
  %i.ct = load ptr, ptr %5, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  %or.cond = select i1 %.not123, i1 true, i1 %i.cu
  br i1 %or.cond, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.aa, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70
  %i.cv = load ptr, ptr %7, align 8, !tbaa !268
  %.not.i71 = icmp eq ptr %i.cv, null
  br i1 %.not.i71, label %_ZN6duckdb13SegmentHandleD2Ev.exit72, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cw = load ptr, ptr %7, align 8, !tbaa !268
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %11 = atomicrmw add ptr %i.cx, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit72

bb.w:                                             ; preds = %bb.u
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit72:             ; preds = %._crit_edge, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.ax

.lr.ph.split:                                     ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70, %bb.aa
  %i.da = phi ptr [ %i.dg, %bb.aa ], [ %i.ct, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70 ]
  %.052110 = phi i64 [ %i.dh, %bb.aa ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit70 ] ; 3 uses
  %.not = icmp eq ptr %i.da, null
  br i1 %.not, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %.lr.ph.split
  invoke void @_ZNK6duckdb12optional_ptrINS_15SelectionVectorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.db = load ptr, ptr %5, align 8, !tbaa !298   ; 2 uses
  %i.dc = trunc i64 %.052110 to i32
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !305
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.052110
  store i32 %i.dc, ptr %i.de, align 4, !tbaa !206
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.ay

bb.aa:                                            ; preds = %.lr.ph.split, %bb.y
  %i.dg = phi ptr [ null, %.lr.ph.split ], [ %i.db, %bb.y ]
  %i.dh = add nuw i64 %.052110, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dh, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !2027

bb.ab:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.di = load ptr, ptr %i.bj, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.dj = tail call i64 @_ZNK6duckdb15ChunkVectorInfo18GetInsertedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.dk = and i64 %i.dj, 4294967295               ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 88
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !246, !noalias !2035
  %.not.not.i.i.i74 = icmp eq i64 %i.dm, 0
  br i1 %.not.not.i.i.i74, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 80
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.06.0.in.i.i.i79 = phi ptr [ %i.dn, %bb.ac ], [ %.sroa.06.0.i.i.i80, %bb.ad ]
  %.sroa.06.0.i.i.i80 = load ptr, ptr %.sroa.06.0.in.i.i.i79, align 8, !tbaa !247, !noalias !2035, !nonnull !248, !noundef !248 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i80, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !218, !noalias !2035
  %i.dq = icmp eq i64 %i.dk, %i.dp
  br i1 %i.dq, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81, label %bb.ad, !llvm.loop !3

bb.ae:                                            ; preds = %bb.ab
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 72
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !250, !noalias !2035 ; 2 uses
  %i.du = urem i64 %i.dk, %i.dt                   ; 2 uses
  %i.dv = load ptr, ptr %i.dr, align 8, !tbaa !251, !noalias !2035
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.du
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !252, !noalias !2035, !nonnull !248, !noundef !248
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !247, !noalias !2035 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !218, !noalias !2035
  %i.eb = icmp eq i64 %i.dk, %i.ea
  br i1 %i.eb, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81, label %.lr.ph.i.i.i.i.i75

.lr.ph.i.i.i.i.i75:                               ; preds = %bb.ae, %.lr.ph.i.i.i.i.i75
  %.020.i.i.i.i.i76 = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i75 ], [ %i.dy, %bb.ae ]
  %i.ec = load ptr, ptr %.020.i.i.i.i.i76, align 8, !tbaa !247, !noalias !2035, !nonnull !248, !noundef !248 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !218, !noalias !2035 ; 2 uses
  %i.ef = urem i64 %i.ee, %i.dt
  %.not19.i.i.i.i.i77 = icmp eq i64 %i.ef, %i.du
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i77)
  %i.eg = icmp eq i64 %i.dk, %i.ee
  br i1 %i.eg, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81, label %.lr.ph.i.i.i.i.i75, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81: ; preds = %.lr.ph.i.i.i.i.i75, %bb.ad, %bb.ae
  %.sroa.06.1.i.i.i78 = phi ptr [ %.sroa.06.0.i.i.i80, %bb.ad ], [ %i.dy, %bb.ae ], [ %i.ec, %.lr.ph.i.i.i.i.i75 ]
  %i.eh = lshr i64 %i.dj, 32
  %i.ei = and i64 %i.eh, 16777215
  %i.ej = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !261, !noalias !2035
  %i.el = mul i64 %i.ek, %i.ei
  %i.em = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.en = load i64, ptr %i.em, align 8, !tbaa !262, !noalias !2035
  %i.eo = add i64 %i.el, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i78, i64 16
  %i.eq = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ep), !noalias !2035
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(136) %i.eq, i64 noundef %i.eo)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  %i.er = load ptr, ptr %i.bj, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.es = invoke i64 @_ZNK6duckdb15ChunkVectorInfo17GetDeletedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.af unwind label %bb.ap     ; 2 uses

bb.af:                                            ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81
  %i.et = and i64 %i.es, 4294967295               ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 88
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !246, !noalias !2036
  %.not.not.i.i.i82 = icmp eq i64 %i.ev, 0
  br i1 %.not.not.i.i.i82, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 80
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.sroa.06.0.in.i.i.i87 = phi ptr [ %i.ew, %bb.ag ], [ %.sroa.06.0.i.i.i88, %bb.ah ]
  %.sroa.06.0.i.i.i88 = load ptr, ptr %.sroa.06.0.in.i.i.i87, align 8, !tbaa !247, !noalias !2036, !nonnull !248, !noundef !248 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i88, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !218, !noalias !2036
  %i.ez = icmp eq i64 %i.et, %i.ey
  br i1 %i.ez, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, label %bb.ah, !llvm.loop !3

bb.ai:                                            ; preds = %bb.af
  %i.fa = getelementptr inbounds nuw i8, ptr %i.er, i64 64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 72
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !250, !noalias !2036 ; 2 uses
  %i.fd = urem i64 %i.et, %i.fc                   ; 2 uses
  %i.fe = load ptr, ptr %i.fa, align 8, !tbaa !251, !noalias !2036
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fd
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !252, !noalias !2036, !nonnull !248, !noundef !248
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !247, !noalias !2036 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !218, !noalias !2036
  %i.fk = icmp eq i64 %i.et, %i.fj
  br i1 %i.fk, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, label %.lr.ph.i.i.i.i.i83

.lr.ph.i.i.i.i.i83:                               ; preds = %bb.ai, %.lr.ph.i.i.i.i.i83
  %.020.i.i.i.i.i84 = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i83 ], [ %i.fh, %bb.ai ]
  %i.fl = load ptr, ptr %.020.i.i.i.i.i84, align 8, !tbaa !247, !noalias !2036, !nonnull !248, !noundef !248 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !218, !noalias !2036 ; 2 uses
  %i.fo = urem i64 %i.fn, %i.fc
  %.not19.i.i.i.i.i85 = icmp eq i64 %i.fo, %i.fd
  call void @llvm.assume(i1 %.not19.i.i.i.i.i85)
  %i.fp = icmp eq i64 %i.et, %i.fn
  br i1 %i.fp, label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, label %.lr.ph.i.i.i.i.i83, !llvm.loop !4

_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i: ; preds = %.lr.ph.i.i.i.i.i83, %bb.ah, %bb.ai
  %.sroa.06.1.i.i.i86 = phi ptr [ %.sroa.06.0.i.i.i88, %bb.ah ], [ %i.fh, %bb.ai ], [ %i.fl, %.lr.ph.i.i.i.i.i83 ]
  %i.fq = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !261, !noalias !2036
  %i.fs = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !262, !noalias !2036
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i86, i64 16
  %i.fv = invoke noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fu)
          to label %.noexc unwind label %bb.ap

.noexc:                                           ; preds = %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i
  %i.fw = lshr i64 %i.es, 32
  %i.fx = and i64 %i.fw, 16777215
  %i.fy = mul i64 %i.fr, %i.fx
  %i.fz = add i64 %i.fy, %i.ft
  invoke void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(136) %i.fv, i64 noundef %i.fz)
          to label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90 unwind label %bb.ap

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90: ; preds = %.noexc
  %i.ga = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !266
  %.not124 = icmp eq i64 %4, 0
  br i1 %.not124, label %._crit_edge115, label %.lr.ph114

._crit_edge115:                                   ; preds = %bb.av, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90
  %.050.lcssa = phi i64 [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90 ], [ %.151, %bb.av ]
  %i.gc = load ptr, ptr %9, align 8, !tbaa !268
  %.not.i91 = icmp eq ptr %i.gc, null
  br i1 %.not.i91, label %_ZN6duckdb13SegmentHandleD2Ev.exit92, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge115
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gd = load ptr, ptr %9, align 8, !tbaa !268
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %12 = atomicrmw add ptr %i.ge, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit92

bb.al:                                            ; preds = %bb.aj
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit92:             ; preds = %._crit_edge115, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  %i.gh = load ptr, ptr %8, align 8, !tbaa !268
  %.not.i93 = icmp eq ptr %i.gh, null
  br i1 %.not.i93, label %_ZN6duckdb13SegmentHandleD2Ev.exit94, label %bb.am

bb.am:                                            ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit92
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gi = load ptr, ptr %8, align 8, !tbaa !268
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %13 = atomicrmw add ptr %i.gj, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit94

bb.ao:                                            ; preds = %bb.am
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit94:             ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit92, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.ax

bb.ap:                                            ; preds = %.noexc, %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15FixedSizeBufferESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE4findERSB_.exit.i, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit81
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.lr.ph114:                                        ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90, %bb.av
  %.0112 = phi i64 [ %i.gx, %bb.av ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90 ] ; 3 uses
  %.050111 = phi i64 [ %.151, %bb.av ], [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit90 ] ; 3 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.0112
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !218
  %i.gp = icmp ult i64 %i.go, %1
  br i1 %i.gp, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph114
  %i.gq = load ptr, ptr %5, align 8, !tbaa !298
  %.not97 = icmp eq ptr %i.gq, null
  br i1 %.not97, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZNK6duckdb12optional_ptrINS_15SelectionVectorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gr = load ptr, ptr %5, align 8, !tbaa !298
  %i.gs = trunc i64 %.0112 to i32
  %i.gt = load ptr, ptr %i.gr, align 8, !tbaa !305
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %.050111
  store i32 %i.gs, ptr %i.gu, align 4, !tbaa !206
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #37
  br label %bb.aw

bb.au:                                            ; preds = %bb.as, %bb.aq
  %i.gw = add i64 %.050111, 1
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph114, %bb.au
  %.151 = phi i64 [ %.050111, %.lr.ph114 ], [ %i.gw, %bb.au ] ; 2 uses
  %i.gx = add nuw i64 %.0112, 1                   ; 2 uses
  %exitcond136.not = icmp eq i64 %i.gx, %4
  br i1 %exitcond136.not, label %._crit_edge115, label %.lr.ph114, !llvm.loop !2032

bb.aw:                                            ; preds = %bb.at, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.gv, %bb.at ], [ %i.gm, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.ay

bb.ax:                                            ; preds = %bb.b, %_ZN6duckdb13SegmentHandleD2Ev.exit94, %_ZN6duckdb13SegmentHandleD2Ev.exit72, %_ZN6duckdb13SegmentHandleD2Ev.exit
  %.048 = phi i64 [ %.049.lcssa, %_ZN6duckdb13SegmentHandleD2Ev.exit ], [ %.050.lcssa, %_ZN6duckdb13SegmentHandleD2Ev.exit94 ], [ %4, %_ZN6duckdb13SegmentHandleD2Ev.exit72 ], [ %4, %bb.b ]
  ret i64 %.048

bb.ay:                                            ; preds = %bb.aw, %bb.z, %bb.m
  %.pn61 = phi { ptr, i32 } [ %i.bg, %bb.m ], [ %.pn, %bb.aw ], [ %i.df, %bb.z ]
  resume { ptr, i32 } %.pn61
}

declare void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ChunkVectorInfo5FetchENS_15TransactionDataEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef readonly byval(%"struct.duckdb::TransactionData") align 8 captures(none) %1, i64 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::SegmentHandle", align 8 ; 7 uses
  %4 = alloca %"class.duckdb::SegmentHandle", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !291
  %i.c = icmp ult i64 %i.b, 72057594037927936
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_ZNK6duckdb15ChunkVectorInfo16ConstantInsertIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.g = tail call i64 @_ZNK6duckdb15ChunkVectorInfo18GetInsertedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.h = and i64 %i.g, 4294967295                 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.j = load i64, ptr %i.i, align 8, !tbaa !246, !noalias !2041
  %.not.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.not.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.k, %bb.d ], [ %.sroa.06.0.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !247, !noalias !2041, !nonnull !248, !noundef !248 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !218, !noalias !2041
  %i.n = icmp eq i64 %i.h, %i.m
  br i1 %i.n, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %bb.e, !llvm.loop !3

bb.f:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.q = load i64, ptr %i.p, align 8, !tbaa !250, !noalias !2041 ; 2 uses
  %i.r = urem i64 %i.h, %i.q                      ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !251, !noalias !2041
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !252, !noalias !2041, !nonnull !248, !noundef !248
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !247, !noalias !2041 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !218, !noalias !2041
  %i.y = icmp eq i64 %i.h, %i.x
  br i1 %i.y, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.v, %bb.f ]
  %i.z = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !247, !noalias !2041, !nonnull !248, !noundef !248 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !218, !noalias !2041 ; 2 uses
  %i.ac = urem i64 %i.ab, %i.q
  %.not19.i.i.i.i.i = icmp eq i64 %i.ac, %i.r
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ad = icmp eq i64 %i.h, %i.ab
  br i1 %i.ad, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.e, %bb.f
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.v, %bb.f ], [ %i.z, %.lr.ph.i.i.i.i.i ]
  %i.ae = lshr i64 %i.g, 32
  %i.af = and i64 %i.ae, 16777215
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !261, !noalias !2041
  %i.ai = mul i64 %i.ah, %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !262, !noalias !2041
  %i.al = add i64 %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.an = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.am), !noalias !2041
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(136) %i.an, i64 noundef %i.al)
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !266
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %2
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !218
  %i.as = load ptr, ptr %3, align 8, !tbaa !268
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %3, align 8, !tbaa !268
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %5 = atomicrmw add ptr %i.au, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.ar, %_ZN6duckdb13SegmentHandleD2Ev.exit ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !291
  %i.az = icmp ugt i64 %i.ay, 72057594037927935
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = load i64, ptr @_ZN6duckdb14NOT_DELETED_IDE, align 8, !tbaa !218
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.bd = call i64 @_ZNK6duckdb15ChunkVectorInfo17GetDeletedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.be = and i64 %i.bd, 4294967295               ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !246, !noalias !2042
  %.not.not.i.i.i11 = icmp eq i64 %i.bg, 0
  br i1 %.not.not.i.i.i11, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 80
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.sroa.06.0.in.i.i.i16 = phi ptr [ %i.bh, %bb.m ], [ %.sroa.06.0.i.i.i17, %bb.n ]
  %.sroa.06.0.i.i.i17 = load ptr, ptr %.sroa.06.0.in.i.i.i16, align 8, !tbaa !247, !noalias !2042, !nonnull !248, !noundef !248 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i17, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !218, !noalias !2042
  %i.bk = icmp eq i64 %i.be, %i.bj
  br i1 %i.bk, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit18, label %bb.n, !llvm.loop !3

bb.o:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !250, !noalias !2042 ; 2 uses
  %i.bo = urem i64 %i.be, %i.bn                   ; 2 uses
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !251, !noalias !2042
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !252, !noalias !2042, !nonnull !248, !noundef !248
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !247, !noalias !2042 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !218, !noalias !2042
  %i.bv = icmp eq i64 %i.be, %i.bu
  br i1 %i.bv, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit18, label %.lr.ph.i.i.i.i.i12

.lr.ph.i.i.i.i.i12:                               ; preds = %bb.o, %.lr.ph.i.i.i.i.i12
  %.020.i.i.i.i.i13 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i12 ], [ %i.bs, %bb.o ]
  %i.bw = load ptr, ptr %.020.i.i.i.i.i13, align 8, !tbaa !247, !noalias !2042, !nonnull !248, !noundef !248 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !218, !noalias !2042 ; 2 uses
  %i.bz = urem i64 %i.by, %i.bn
  %.not19.i.i.i.i.i14 = icmp eq i64 %i.bz, %i.bo
  call void @llvm.assume(i1 %.not19.i.i.i.i.i14)
  %i.ca = icmp eq i64 %i.be, %i.by
  br i1 %i.ca, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit18, label %.lr.ph.i.i.i.i.i12, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit18: ; preds = %.lr.ph.i.i.i.i.i12, %bb.n, %bb.o
  %.sroa.06.1.i.i.i15 = phi ptr [ %.sroa.06.0.i.i.i17, %bb.n ], [ %i.bs, %bb.o ], [ %i.bw, %.lr.ph.i.i.i.i.i12 ]
  %i.cb = lshr i64 %i.bd, 32
  %i.cc = and i64 %i.cb, 16777215
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !261, !noalias !2042
  %i.cf = mul i64 %i.ce, %i.cc
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !262, !noalias !2042
  %i.ci = add i64 %i.cf, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i15, i64 16
  %i.ck = call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj), !noalias !2042
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(136) %i.ck, i64 noundef %i.ci)
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !266
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %2
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !218
  %i.cp = load ptr, ptr %4, align 8, !tbaa !268
  %.not.i19 = icmp eq ptr %i.cp, null
  br i1 %.not.i19, label %_ZN6duckdb13SegmentHandleD2Ev.exit20, label %bb.p

bb.p:                                             ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit18
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cq = load ptr, ptr %4, align 8, !tbaa !268
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %6 = atomicrmw add ptr %i.cr, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit20

bb.r:                                             ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          catch ptr null
  %i.ct = extractvalue { ptr, i32 } %i.cs, 0
  call void @__clang_call_terminate(ptr %i.ct) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit20:             ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit18, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.s

bb.s:                                             ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit20, %bb.k
  %.07 = phi i64 [ %i.co, %_ZN6duckdb13SegmentHandleD2Ev.exit20 ], [ %i.ba, %bb.k ] ; 2 uses
  %.sroa.122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.122.0.copyload = load i64, ptr %.sroa.122.0..sroa_idx, align 8, !tbaa !218 ; 2 uses
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.223.0.copyload = load i64, ptr %.sroa.223.0..sroa_idx, align 8, !tbaa !218 ; 2 uses
  %i.cu = icmp ult i64 %.0, %.sroa.223.0.copyload
  %i.cv = icmp eq i64 %.0, %.sroa.122.0.copyload
  %i.cw = or i1 %i.cv, %i.cu
  %i.cx = icmp uge i64 %.07, %.sroa.223.0.copyload
  %i.cy = icmp ne i64 %.07, %.sroa.122.0.copyload
  %.not25 = and i1 %i.cy, %i.cx
  %i.cz = select i1 %i.cw, i1 %.not25, i1 false
  ret i1 %i.cz
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6duckdb15ChunkVectorInfo16ConstantInsertIdEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !291
  %i.c = icmp ult i64 %i.b, 72057594037927936
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !227    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.g) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #37
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !293
  ret i64 %i.k

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define range(i64 72057594037927936, 0) i64 @_ZNK6duckdb15ChunkVectorInfo18GetInsertedPointerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !291  ; 2 uses
  %i.c = icmp ult i64 %i.b, 72057594037927936
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !227    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.g) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #37
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret i64 %i.b

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !268
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %0, align 8, !tbaa !268
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %1 = atomicrmw add ptr %i.c, i64 -1 seq_cst, align 8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define range(i64 72057594037927936, 0) i64 @_ZNK6duckdb15ChunkVectorInfo17GetDeletedPointerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !291  ; 2 uses
  %i.c = icmp ugt i64 %i.b, 72057594037927935
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !227    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.g) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #37
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret i64 %i.b

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define i64 @_ZN6duckdb15ChunkVectorInfo29GetInitializedInsertedPointerEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::SegmentHandle", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !291  ; 2 uses
  %i.c = icmp ult i64 %i.b, 72057594037927936
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_ZNK6duckdb15ChunkVectorInfo16ConstantInsertIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !294, !nonnull !248, !align !295
  %i.g = tail call i64 @_ZN6duckdb18FixedSizeAllocator3NewEv(ptr noundef nonnull align 8 dereferenceable(240) %i.f) ; 3 uses
  %i.h = and i64 %i.g, 72057594037927935
  %i.i = or disjoint i64 %i.h, 72057594037927936
  store i64 %i.i, ptr %i.a, align 8, !tbaa !291
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.k = and i64 %i.g, 4294967295                 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.m = load i64, ptr %i.l, align 8, !tbaa !246, !noalias !2046
  %.not.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.not.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.n, %bb.c ], [ %.sroa.06.0.i.i.i, %bb.d ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !247, !noalias !2046, !nonnull !248, !noundef !248 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !218, !noalias !2046
  %i.q = icmp eq i64 %i.k, %i.p
  br i1 %i.q, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %bb.d, !llvm.loop !3

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.t = load i64, ptr %i.s, align 8, !tbaa !250, !noalias !2046 ; 2 uses
  %i.u = urem i64 %i.k, %i.t                      ; 2 uses
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !251, !noalias !2046
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !252, !noalias !2046, !nonnull !248, !noundef !248
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !247, !noalias !2046 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !218, !noalias !2046
  %i.ab = icmp eq i64 %i.k, %i.aa
  br i1 %i.ab, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.y, %bb.e ]
  %i.ac = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !247, !noalias !2046, !nonnull !248, !noundef !248 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !218, !noalias !2046 ; 2 uses
  %i.af = urem i64 %i.ae, %i.t
  %.not19.i.i.i.i.i = icmp eq i64 %i.af, %i.u
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ag = icmp eq i64 %i.k, %i.ae
  br i1 %i.ag, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %bb.e
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.d ], [ %i.y, %bb.e ], [ %i.ac, %.lr.ph.i.i.i.i.i ]
  %i.ah = lshr i64 %i.g, 32
  %i.ai = and i64 %i.ah, 16777215
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !261, !noalias !2046
  %i.al = mul i64 %i.ak, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !262, !noalias !2046
  %i.ao = add i64 %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.aq = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap), !noalias !2046
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(136) %i.aq, i64 noundef %i.ao)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !266 ; 4 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %index = phi i64 [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.at, align 8, !tbaa !218
  store <2 x i64> %broadcast.splat, ptr %i.au, align 8, !tbaa !218
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store <2 x i64> %broadcast.splat, ptr %i.aw, align 8, !tbaa !218
  store <2 x i64> %broadcast.splat, ptr %i.ax, align 8, !tbaa !218
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  store <2 x i64> %broadcast.splat, ptr %i.az, align 8, !tbaa !218
  store <2 x i64> %broadcast.splat, ptr %i.ba, align 8, !tbaa !218
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  store <2 x i64> %broadcast.splat, ptr %i.bc, align 8, !tbaa !218
  store <2 x i64> %broadcast.splat, ptr %i.bd, align 8, !tbaa !218
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.be = icmp eq i64 %index.next.3, 2048
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !2045

middle.block:                                     ; preds = %vector.body
  %i.bf = load ptr, ptr %1, align 8, !tbaa !268
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %middle.block
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr %1, align 8, !tbaa !268
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %2 = atomicrmw add ptr %i.bh, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %middle.block, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %.sroa.06.0.copyload.pre = load i64, ptr %i.a, align 8, !tbaa !218
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit, %bb.a
  %.sroa.06.0.copyload = phi i64 [ %.sroa.06.0.copyload.pre, %_ZN6duckdb13SegmentHandleD2Ev.exit ], [ %i.b, %bb.a ]
  ret i64 %.sroa.06.0.copyload
}

declare i64 @_ZN6duckdb18FixedSizeAllocator3NewEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define i64 @_ZN6duckdb15ChunkVectorInfo28GetInitializedDeletedPointerEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::SegmentHandle", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !291  ; 2 uses
  %i.c = icmp ugt i64 %i.b, 72057594037927935
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !294, !nonnull !248, !align !295
  %i.f = tail call i64 @_ZN6duckdb18FixedSizeAllocator3NewEv(ptr noundef nonnull align 8 dereferenceable(240) %i.e) ; 3 uses
  %i.g = and i64 %i.f, 72057594037927935
  %i.h = or disjoint i64 %i.g, 72057594037927936
  store i64 %i.h, ptr %i.a, align 8, !tbaa !291
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.j = and i64 %i.f, 4294967295                 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.l = load i64, ptr %i.k, align 8, !tbaa !246, !noalias !2050
  %.not.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.not.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.m, %bb.c ], [ %.sroa.06.0.i.i.i, %bb.d ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !247, !noalias !2050, !nonnull !248, !noundef !248 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !218, !noalias !2050
  %i.p = icmp eq i64 %i.j, %i.o
  br i1 %i.p, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %bb.d, !llvm.loop !3

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !250, !noalias !2050 ; 2 uses
  %i.t = urem i64 %i.j, %i.s                      ; 2 uses
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !251, !noalias !2050
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !252, !noalias !2050, !nonnull !248, !noundef !248
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !247, !noalias !2050 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !218, !noalias !2050
  %i.aa = icmp eq i64 %i.j, %i.z
  br i1 %i.aa, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.x, %bb.e ]
  %i.ab = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !247, !noalias !2050, !nonnull !248, !noundef !248 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !218, !noalias !2050 ; 2 uses
  %i.ae = urem i64 %i.ad, %i.s
  %.not19.i.i.i.i.i = icmp eq i64 %i.ae, %i.t
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.af = icmp eq i64 %i.j, %i.ad
  br i1 %i.af, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %bb.e
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.d ], [ %i.x, %bb.e ], [ %i.ab, %.lr.ph.i.i.i.i.i ]
  %i.ag = lshr i64 %i.f, 32
  %i.ah = and i64 %i.ag, 16777215
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !261, !noalias !2050
  %i.ak = mul i64 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !262, !noalias !2050
  %i.an = add i64 %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ap = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao), !noalias !2050
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(136) %i.ap, i64 noundef %i.an)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !266 ; 4 uses
  %i.as = load i64, ptr @_ZN6duckdb14NOT_DELETED_IDE, align 8, !tbaa !218
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %index = phi i64 [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.at, align 8, !tbaa !218
  store <2 x i64> %broadcast.splat, ptr %i.au, align 8, !tbaa !218
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store <2 x i64> %broadcast.splat, ptr %i.aw, align 8, !tbaa !218
  store <2 x i64> %broadcast.splat, ptr %i.ax, align 8, !tbaa !218
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  store <2 x i64> %broadcast.splat, ptr %i.az, align 8, !tbaa !218
  store <2 x i64> %broadcast.splat, ptr %i.ba, align 8, !tbaa !218
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  store <2 x i64> %broadcast.splat, ptr %i.bc, align 8, !tbaa !218
  store <2 x i64> %broadcast.splat, ptr %i.bd, align 8, !tbaa !218
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.be = icmp eq i64 %index.next.3, 2048
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !2049

middle.block:                                     ; preds = %vector.body
  %i.bf = load ptr, ptr %1, align 8, !tbaa !268
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %middle.block
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bg = load ptr, ptr %1, align 8, !tbaa !268
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %2 = atomicrmw add ptr %i.bh, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %middle.block, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  %.sroa.05.0.copyload.pre = load i64, ptr %i.a, align 8, !tbaa !218
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit, %bb.a
  %.sroa.05.0.copyload = phi i64 [ %.sroa.05.0.copyload.pre, %_ZN6duckdb13SegmentHandleD2Ev.exit ], [ %i.b, %bb.a ]
  ret i64 %.sroa.05.0.copyload
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb15ChunkVectorInfo6DeleteEmPlm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::SegmentHandle", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.c = tail call i64 @_ZN6duckdb15ChunkVectorInfo28GetInitializedDeletedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.d = and i64 %i.c, 4294967295                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !246, !noalias !2056
  %.not.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.g, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !247, !noalias !2056, !nonnull !248, !noundef !248 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !218, !noalias !2056
  %i.j = icmp eq i64 %i.d, %i.i
  br i1 %i.j, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %bb.c, !llvm.loop !3

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.m = load i64, ptr %i.l, align 8, !tbaa !250, !noalias !2056 ; 2 uses
  %i.n = urem i64 %i.d, %i.m                      ; 2 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !251, !noalias !2056
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !252, !noalias !2056, !nonnull !248, !noundef !248
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !247, !noalias !2056 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !218, !noalias !2056
  %i.u = icmp eq i64 %i.d, %i.t
  br i1 %i.u, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i ], [ %i.r, %bb.d ]
  %i.v = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !247, !noalias !2056, !nonnull !248, !noundef !248 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !218, !noalias !2056 ; 2 uses
  %i.y = urem i64 %i.x, %i.m
  %.not19.i.i.i.i.i = icmp eq i64 %i.y, %i.n
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.z = icmp eq i64 %i.d, %i.x
  br i1 %i.z, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.r, %bb.d ], [ %i.v, %.lr.ph.i.i.i.i.i ]
  %i.aa = lshr i64 %i.c, 32
  %i.ab = and i64 %i.aa, 16777215
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !261, !noalias !2056
  %i.ae = mul i64 %i.ad, %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !262, !noalias !2056
  %i.ah = add i64 %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.aj = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai), !noalias !2056
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(136) %i.aj, i64 noundef %i.ah)
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !266 ; 6 uses
  %.not51 = icmp eq i64 %3, 0
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %i.am = load i64, ptr @_ZN6duckdb14NOT_DELETED_IDE, align 8 ; 6 uses
  br label %bb.h

._crit_edge:                                      ; preds = %bb.p, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %.031.lcssa = phi i64 [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit ], [ %.132, %bb.p ]
  %i.an = load ptr, ptr %4, align 8, !tbaa !268
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %4, align 8, !tbaa !268
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %7 = atomicrmw add ptr %i.ap, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %._crit_edge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret i64 %.031.lcssa

bb.h:                                             ; preds = %.lr.ph, %bb.p
  %.03047 = phi i64 [ 0, %.lr.ph ], [ %i.cb, %bb.p ] ; 6 uses
  %.03146 = phi i64 [ 0, %.lr.ph ], [ %.132, %bb.p ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.03047 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !218
  %i.au = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.at ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !218 ; 2 uses
  %i.aw = icmp eq i64 %i.av, %1
  br i1 %i.aw, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not = icmp eq i64 %i.av, %i.am
  br i1 %.not, label %bb.o, label %.preheader

.preheader:                                       ; preds = %bb.i
  %.not52 = icmp eq i64 %.03047, 0
  br i1 %.not52, label %._crit_edge50, label %.lr.ph49.preheader

.lr.ph49.preheader:                               ; preds = %.preheader
  %xtraiter = and i64 %.03047, 3                  ; 3 uses
  %i.ax = icmp ult i64 %.03047, 4
  br i1 %i.ax, label %.lr.ph49.epil.preheader, label %.lr.ph49.preheader.new

.lr.ph49.preheader.new:                           ; preds = %.lr.ph49.preheader
  %unroll_iter = and i64 %.03047, -4
  br label %.lr.ph49

._crit_edge50.loopexit.unr-lcssa:                 ; preds = %.lr.ph49
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge50, label %.lr.ph49.epil.preheader

.lr.ph49.epil.preheader:                          ; preds = %._crit_edge50.loopexit.unr-lcssa, %.lr.ph49.preheader
  %.02948.epil.init = phi i64 [ 0, %.lr.ph49.preheader ], [ %i.bs, %._crit_edge50.loopexit.unr-lcssa ]
  %lcmp.mod71 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod71)
  br label %.lr.ph49.epil

.lr.ph49.epil:                                    ; preds = %.lr.ph49.epil, %.lr.ph49.epil.preheader
  %.02948.epil = phi i64 [ %i.bb, %.lr.ph49.epil ], [ %.02948.epil.init, %.lr.ph49.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph49.epil ], [ 0, %.lr.ph49.epil.preheader ]
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.02948.epil
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !218
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.az
  store i64 %i.am, ptr %i.ba, align 8, !tbaa !218
  %i.bb = add nuw i64 %.02948.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge50, label %.lr.ph49.epil, !llvm.loop !2053

._crit_edge50:                                    ; preds = %._crit_edge50.loopexit.unr-lcssa, %.lr.ph49.epil, %.preheader
  %i.bc = call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

.lr.ph49:                                         ; preds = %.lr.ph49, %.lr.ph49.preheader.new
  %.02948 = phi i64 [ 0, %.lr.ph49.preheader.new ], [ %i.bs, %.lr.ph49 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph49.preheader.new ], [ %niter.next.3, %.lr.ph49 ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.02948
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !218
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.be
  store i64 %i.am, ptr %i.bf, align 8, !tbaa !218
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.02948
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !218
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.bi
  store i64 %i.am, ptr %i.bj, align 8, !tbaa !218
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.02948
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !218
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.bm
  store i64 %i.am, ptr %i.bn, align 8, !tbaa !218
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.02948
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !218
  %i.br = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.bq
  store i64 %i.am, ptr %i.br, align 8, !tbaa !218
  %i.bs = add nuw i64 %.02948, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge50.loopexit.unr-lcssa, label %.lr.ph49, !llvm.loop !2054

bb.j:                                             ; preds = %._crit_edge50
  invoke void @_ZN6duckdb20TransactionExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTIN6duckdb20TransactionExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.q unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %._crit_edge50
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.j ]  ; 2 uses
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bv = load ptr, ptr %5, align 8, !tbaa !227   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.bv) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br i1 %.0, label %bb.m, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br i1 %.0, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn41 = phi { ptr, i32 } [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.bc) #37
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn40 = phi { ptr, i32 } [ %.pn41, %bb.m ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  resume { ptr, i32 } %.pn40

bb.o:                                             ; preds = %bb.i
  store i64 %1, ptr %i.au, align 8, !tbaa !218
  %i.by = load i64, ptr %i.as, align 8, !tbaa !218
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.03146
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !218
  %i.ca = add i64 %.03146, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.h, %bb.o
  %.132 = phi i64 [ %.03146, %bb.h ], [ %i.ca, %bb.o ] ; 2 uses
  %i.cb = add nuw i64 %.03047, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !2055

bb.q:                                             ; preds = %bb.k
  unreachable
}

declare void @_ZN6duckdb20TransactionExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15ChunkVectorInfo12CommitDeleteEmRKNS_10DeleteInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(44) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::SegmentHandle", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.c = tail call i64 @_ZNK6duckdb15ChunkVectorInfo17GetDeletedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.d = and i64 %i.c, 4294967295                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !246, !noalias !2061
  %.not.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.g, %bb.b ], [ %.sroa.06.0.i.i.i, %bb.c ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !247, !noalias !2061, !nonnull !248, !noundef !248 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !218, !noalias !2061
  %i.j = icmp eq i64 %i.d, %i.i
  br i1 %i.j, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %bb.c, !llvm.loop !3

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.m = load i64, ptr %i.l, align 8, !tbaa !250, !noalias !2061 ; 2 uses
  %i.n = urem i64 %i.d, %i.m                      ; 2 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !251, !noalias !2061
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !252, !noalias !2061, !nonnull !248, !noundef !248
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !247, !noalias !2061 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !218, !noalias !2061
  %i.u = icmp eq i64 %i.d, %i.t
  br i1 %i.u, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i ], [ %i.r, %bb.d ]
  %i.v = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !247, !noalias !2061, !nonnull !248, !noundef !248 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !218, !noalias !2061 ; 2 uses
  %i.y = urem i64 %i.x, %i.m
  %.not19.i.i.i.i.i = icmp eq i64 %i.y, %i.n
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.z = icmp eq i64 %i.d, %i.x
  br i1 %i.z, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.d
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.r, %bb.d ], [ %i.v, %.lr.ph.i.i.i.i.i ]
  %i.aa = lshr i64 %i.c, 32
  %i.ab = and i64 %i.aa, 16777215
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !261, !noalias !2061
  %i.ae = mul i64 %i.ad, %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !262, !noalias !2061
  %i.ah = add i64 %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.aj = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai), !noalias !2061
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(136) %i.aj, i64 noundef %i.ah)
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !266 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.an = load i8, ptr %i.am, align 8, !tbaa !314, !range !315, !noundef !248
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.preheader, label %bb.e

.preheader:                                       ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !2062
  %.not24 = icmp eq i64 %i.aq, 0
  br i1 %.not24, label %.loopexit, label %.lr.ph23

.lr.ph23:                                         ; preds = %.preheader, %.lr.ph23
  %.01722 = phi i64 [ %i.as, %.lr.ph23 ], [ 0, %.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.01722
  store i64 %1, ptr %i.ar, align 8, !tbaa !218
  %i.as = add nuw i64 %.01722, 1                  ; 2 uses
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !2062
  %i.au = icmp ult i64 %i.as, %i.at
  br i1 %i.au, label %.lr.ph23, label %.loopexit, !llvm.loop !2059

bb.e:                                             ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %i.av = invoke noundef ptr @_ZNK6duckdb10DeleteInfo7GetRowsEv(ptr noundef nonnull align 8 dereferenceable(44) %2)
          to label %.preheader18 unwind label %bb.f

.preheader18:                                     ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !2062
  %.not = icmp eq i64 %i.ax, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %i.ay

.lr.ph:                                           ; preds = %.preheader18, %.lr.ph
  %.021 = phi i64 [ %i.bd, %.lr.ph ], [ 0, %.preheader18 ] ; 2 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %.021
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !317
  %i.bb = zext i16 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bb
  store i64 %1, ptr %i.bc, align 8, !tbaa !218
  %i.bd = add nuw i64 %.021, 1                    ; 2 uses
  %i.be = load i64, ptr %i.aw, align 8, !tbaa !2062
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph, label %.loopexit, !llvm.loop !2060

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph23, %.preheader18, %.preheader
  %i.bg = load ptr, ptr %3, align 8, !tbaa !268
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bh = load ptr, ptr %3, align 8, !tbaa !268
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %4 = atomicrmw add ptr %i.bi, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
  call void @__clang_call_terminate(ptr %i.bk) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %.loopexit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10DeleteInfo7GetRowsEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !314, !range !315, !noundef !248
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.159, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !227    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.g) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #37
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 42
  ret ptr %i.j

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15ChunkVectorInfo6AppendEmmm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::SegmentHandle", align 8 ; 7 uses
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.b, align 8, !tbaa !293
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !291
  %i.e = icmp ult i64 %i.d, 72057594037927936
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef i64 @_ZNK6duckdb15ChunkVectorInfo16ConstantInsertIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.g = icmp eq i64 %i.f, %3
  br i1 %i.g, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.j = tail call i64 @_ZN6duckdb15ChunkVectorInfo29GetInitializedInsertedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.m = load i64, ptr %i.l, align 8, !tbaa !246, !noalias !2067
  %.not.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.not.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.n, %bb.f ], [ %.sroa.06.0.i.i.i, %bb.g ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !247, !noalias !2067, !nonnull !248, !noundef !248 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !218, !noalias !2067
  %i.q = icmp eq i64 %i.k, %i.p
  br i1 %i.q, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %bb.g, !llvm.loop !3

bb.h:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.t = load i64, ptr %i.s, align 8, !tbaa !250, !noalias !2067 ; 2 uses
  %i.u = urem i64 %i.k, %i.t                      ; 2 uses
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !251, !noalias !2067
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !252, !noalias !2067, !nonnull !248, !noundef !248
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !247, !noalias !2067 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !218, !noalias !2067
  %i.ab = icmp eq i64 %i.k, %i.aa
  br i1 %i.ab, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.y, %bb.h ]
  %i.ac = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !247, !noalias !2067, !nonnull !248, !noundef !248 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !218, !noalias !2067 ; 2 uses
  %i.af = urem i64 %i.ae, %i.t
  %.not19.i.i.i.i.i = icmp eq i64 %i.af, %i.u
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ag = icmp eq i64 %i.k, %i.ae
  br i1 %i.ag, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.g, %bb.h
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.y, %bb.h ], [ %i.ac, %.lr.ph.i.i.i.i.i ]
  %i.ah = lshr i64 %i.j, 32
  %i.ai = and i64 %i.ah, 16777215
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !261, !noalias !2067
  %i.al = mul i64 %i.ak, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !262, !noalias !2067
  %i.ao = add i64 %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.aq = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap), !noalias !2067
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(136) %i.aq, i64 noundef %i.ao)
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !266 ; 2 uses
  %i.at = icmp ult i64 %1, %2
  br i1 %i.at, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %i.au = sub nuw i64 %2, %1                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.au, 4
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.au, -4                      ; 3 uses
  %i.av = add i64 %1, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %3, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.ax, align 8, !tbaa !218
  store <2 x i64> %broadcast.splat, ptr %i.ay, align 8, !tbaa !218
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !2065

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.012.ph = phi i64 [ %1, %.lr.ph.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %i.ba = load ptr, ptr %4, align 8, !tbaa !268
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %4, align 8, !tbaa !268
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %5 = atomicrmw add ptr %i.bc, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %._crit_edge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.012 = phi i64 [ %i.bg, %.lr.ph ], [ %.012.ph, %.lr.ph.preheader18 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.012
  store i64 %3, ptr %i.bf, align 8, !tbaa !218
  %i.bg = add nuw i64 %.012, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bg, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2066

bb.l:                                             ; preds = %bb.d, %_ZN6duckdb13SegmentHandleD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15ChunkVectorInfo12CommitAppendEmmm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::SegmentHandle", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !291
  %i.c = icmp ult i64 %i.b, 72057594037927936
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %1, ptr %i.d, align 8, !tbaa !293
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.g = tail call i64 @_ZNK6duckdb15ChunkVectorInfo18GetInsertedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.h = and i64 %i.g, 4294967295                 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.j = load i64, ptr %i.i, align 8, !tbaa !246, !noalias !2072
  %.not.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.not.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.k, %bb.d ], [ %.sroa.06.0.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !247, !noalias !2072, !nonnull !248, !noundef !248 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !218, !noalias !2072
  %i.n = icmp eq i64 %i.h, %i.m
  br i1 %i.n, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %bb.e, !llvm.loop !3

bb.f:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.q = load i64, ptr %i.p, align 8, !tbaa !250, !noalias !2072 ; 2 uses
  %i.r = urem i64 %i.h, %i.q                      ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !251, !noalias !2072
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !252, !noalias !2072, !nonnull !248, !noundef !248
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !247, !noalias !2072 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !218, !noalias !2072
  %i.y = icmp eq i64 %i.h, %i.x
  br i1 %i.y, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.v, %bb.f ]
  %i.z = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !247, !noalias !2072, !nonnull !248, !noundef !248 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !218, !noalias !2072 ; 2 uses
  %i.ac = urem i64 %i.ab, %i.q
  %.not19.i.i.i.i.i = icmp eq i64 %i.ac, %i.r
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ad = icmp eq i64 %i.h, %i.ab
  br i1 %i.ad, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.e, %bb.f
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.v, %bb.f ], [ %i.z, %.lr.ph.i.i.i.i.i ]
  %i.ae = lshr i64 %i.g, 32
  %i.af = and i64 %i.ae, 16777215
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !261, !noalias !2072
  %i.ai = mul i64 %i.ah, %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !262, !noalias !2072
  %i.al = add i64 %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.an = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.am), !noalias !2072
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(136) %i.an, i64 noundef %i.al)
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !266 ; 2 uses
  %i.aq = icmp ult i64 %2, %3
  br i1 %i.aq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %i.ar = sub nuw i64 %3, %2                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ar, 4
  br i1 %min.iters.check, label %.lr.ph.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ar, -4                      ; 3 uses
  %i.as = add i64 %2, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %1, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.au, align 8, !tbaa !218
  store <2 x i64> %broadcast.splat, ptr %i.av, align 8, !tbaa !218
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !2070

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader15

.lr.ph.preheader15:                               ; preds = %.lr.ph.preheader, %middle.block
  %.09.ph = phi i64 [ %2, %.lr.ph.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !268
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %4, align 8, !tbaa !268
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %5 = atomicrmw add ptr %i.az, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %._crit_edge, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.preheader15, %.lr.ph
  %.09 = phi i64 [ %i.bd, %.lr.ph ], [ %.09.ph, %.lr.ph.preheader15 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.09
  store i64 %1, ptr %i.bc, align 8, !tbaa !218
  %i.bd = add nuw i64 %.09, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2071

bb.j:                                             ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb15ChunkVectorInfo7CleanupEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::SegmentHandle", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !291
  %i.c = icmp ugt i64 %i.b, 72057594037927935
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !291
  %i.f = icmp ult i64 %i.e, 72057594037927936
  br i1 %i.f, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.i = tail call i64 @_ZNK6duckdb15ChunkVectorInfo18GetInsertedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.j = and i64 %i.i, 4294967295                 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.l = load i64, ptr %i.k, align 8, !tbaa !246, !noalias !2076
  %.not.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.not.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.m, %bb.d ], [ %.sroa.06.0.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !247, !noalias !2076, !nonnull !248, !noundef !248 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !218, !noalias !2076
  %i.p = icmp eq i64 %i.j, %i.o
  br i1 %i.p, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %bb.e, !llvm.loop !3

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !250, !noalias !2076 ; 2 uses
  %i.t = urem i64 %i.j, %i.s                      ; 2 uses
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !251, !noalias !2076
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !252, !noalias !2076, !nonnull !248, !noundef !248
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !247, !noalias !2076 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !218, !noalias !2076
  %i.aa = icmp eq i64 %i.j, %i.z
  br i1 %i.aa, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.x, %bb.f ]
  %i.ab = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !247, !noalias !2076, !nonnull !248, !noundef !248 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !218, !noalias !2076 ; 2 uses
  %i.ae = urem i64 %i.ad, %i.s
  %.not19.i.i.i.i.i = icmp eq i64 %i.ae, %i.t
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.af = icmp eq i64 %i.j, %i.ad
  br i1 %i.af, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.e, %bb.f
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.x, %bb.f ], [ %i.ab, %.lr.ph.i.i.i.i.i ]
  %i.ag = lshr i64 %i.i, 32
  %i.ah = and i64 %i.ag, 16777215
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !261, !noalias !2076
  %i.ak = mul i64 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !262, !noalias !2076
  %i.an = add i64 %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ap = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao), !noalias !2076
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(136) %i.ap, i64 noundef %i.an)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !266
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %.0913 = phi i64 [ 1, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit ], [ %i.au, %bb.g ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.0913
  %i.at = load i64, ptr %i.as, align 8, !tbaa !218
  %.not = icmp ugt i64 %i.at, %1                  ; 2 uses
  %i.au = add nuw nsw i64 %.0913, 1               ; 2 uses
  %exitcond = icmp eq i64 %i.au, 2048
  %or.cond = select i1 %.not, i1 true, i1 %exitcond
  br i1 %or.cond, label %bb.h, label %bb.g, !llvm.loop !2075

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %2, align 8, !tbaa !268
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %2, align 8, !tbaa !268
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %3 = atomicrmw add ptr %i.ax, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %bb.h, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br i1 %.not, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.ba = tail call noundef i64 @_ZNK6duckdb15ChunkVectorInfo16ConstantInsertIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.bb = icmp ugt i64 %i.ba, %1
  br i1 %i.bb, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit, %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %_ZN6duckdb13SegmentHandleD2Ev.exit, %bb.a, %bb.m
  %.1 = phi i1 [ false, %_ZN6duckdb13SegmentHandleD2Ev.exit ], [ false, %bb.a ], [ true, %bb.m ], [ false, %bb.l ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb15ChunkVectorInfo10HasDeletesEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::SegmentHandle", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !291  ; 3 uses
  %i.c = icmp ugt i64 %i.b, 72057594037927935
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @_ZN6duckdb18MAX_TRANSACTION_IDE, align 8, !tbaa !218
  %i.e = icmp eq i64 %1, %i.d
  br i1 %i.e, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !294, !nonnull !248, !align !295 ; 6 uses
  %i.h = and i64 %i.b, 4294967295                 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.j = load i64, ptr %i.i, align 8, !tbaa !246, !noalias !2080
  %.not.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.not.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.k, %bb.d ], [ %.sroa.06.0.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !247, !noalias !2080, !nonnull !248, !noundef !248 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !218, !noalias !2080
  %i.n = icmp eq i64 %i.h, %i.m
  br i1 %i.n, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %bb.e, !llvm.loop !3

bb.f:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.q = load i64, ptr %i.p, align 8, !tbaa !250, !noalias !2080 ; 2 uses
  %i.r = urem i64 %i.h, %i.q                      ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !251, !noalias !2080
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !252, !noalias !2080, !nonnull !248, !noundef !248
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !247, !noalias !2080 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !218, !noalias !2080
  %i.y = icmp eq i64 %i.h, %i.x
  br i1 %i.y, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.v, %bb.f ]
  %i.z = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !247, !noalias !2080, !nonnull !248, !noundef !248 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !218, !noalias !2080 ; 2 uses
  %i.ac = urem i64 %i.ab, %i.q
  %.not19.i.i.i.i.i = icmp eq i64 %i.ac, %i.r
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ad = icmp eq i64 %i.h, %i.ab
  br i1 %i.ad, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.e, %bb.f
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.v, %bb.f ], [ %i.z, %.lr.ph.i.i.i.i.i ]
  %i.ae = lshr i64 %i.b, 32
  %i.af = and i64 %i.ae, 16777215
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !261, !noalias !2080
  %i.ai = mul i64 %i.ah, %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !262, !noalias !2080
  %i.al = add i64 %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.an = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.am), !noalias !2080
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(136) %i.an, i64 noundef %i.al)
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !266
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %.0813 = phi i64 [ 0, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit ], [ %i.as, %bb.g ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.0813
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !218
  %.not.not = icmp ule i64 %i.ar, %1              ; 2 uses
  %i.as = add nuw nsw i64 %.0813, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, 2048
  %or.cond = select i1 %.not.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.critedge, label %bb.g, !llvm.loop !2079

.critedge:                                        ; preds = %bb.g
  %i.at = load ptr, ptr %2, align 8, !tbaa !268
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.critedge
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %2, align 8, !tbaa !268
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %3 = atomicrmw add ptr %i.av, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %.critedge, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.a, %_ZN6duckdb13SegmentHandleD2Ev.exit
  %.2 = phi i1 [ false, %bb.a ], [ %.not.not, %_ZN6duckdb13SegmentHandleD2Ev.exit ], [ true, %bb.b ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb15ChunkVectorInfo8ToStringB5cxx11Em(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, i64 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.duckdb::SegmentHandle", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !287
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  store i64 0, ptr %i.b, align 8, !tbaa !288
  store i8 0, ptr %i.a, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2094)
  %i.c = icmp ult i64 %2, 10
  br i1 %i.c, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.g
  %.029.i.i = phi i32 [ %i.k, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.j, %bb.g ], [ %2, %bb.a ] ; 5 uses
  %i.d = icmp ult i64 %.02328.i.i, 100
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.f = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.j = udiv i64 %.02328.i.i, 10000
  %i.k = add i32 %.029.i.i, 4                     ; 2 uses
  %i.l = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.l, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !7

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.022.i.i = phi i32 [ %i.i, %bb.f ], [ %i.e, %bb.b ], [ %i.g, %bb.d ], [ 1, %bb.a ], [ %i.k, %bb.g ]
  %i.m = zext i32 %.022.i.i to i64
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !287, !alias.scope !2094
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.m, i8 noundef signext 0)
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.o = load ptr, ptr %4, align 8, !tbaa !227, !alias.scope !2094 ; 4 uses
  %i.p = icmp ugt i64 %2, 99
  br i1 %i.p, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !288, !alias.scope !2094
  %i.s = trunc i64 %i.r to i32
  %i.t = add i32 %i.s, -1
  br label %.lr.ph.i6.i

.lr.ph.i6.i:                                      ; preds = %.lr.ph.i6.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.w, %.lr.ph.i6.i ], [ %2, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.ag, %.lr.ph.i6.i ], [ %i.t, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.u = urem i64 %.020.i.i, 100
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = udiv i64 %.020.i.i, 100                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.v ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !273, !noalias !2094
  %i.aa = zext i32 %.01819.i.i to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aa
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !273
  %i.ac = load i8, ptr %i.x, align 2, !tbaa !273, !noalias !2094
  %i.ad = add i32 %.01819.i.i, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ae
  store i8 %i.ac, ptr %i.af, align 1, !tbaa !273
  %i.ag = add i32 %.01819.i.i, -2
  %i.ah = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.ah, label %.lr.ph.i6.i, label %._crit_edge.i.i, !llvm.loop !8

._crit_edge.i.i:                                  ; preds = %.lr.ph.i6.i, %.noexc
  %.0.lcssa.i.i = phi i64 [ %2, %.noexc ], [ %i.w, %.lr.ph.i6.i ] ; 3 uses
  %i.ai = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.aj = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ak = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !273, !noalias !2094
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 %i.am, ptr %i.an, align 1, !tbaa !273
  %i.ao = load i8, ptr %i.ak, align 2, !tbaa !273, !noalias !2094
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ap = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.aq = or disjoint i8 %i.ap, 48
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %storemerge.i.i = phi i8 [ %i.aq, %bb.i ], [ %i.ao, %bb.h ]
  store i8 %storemerge.i.i, ptr %i.o, align 1, !tbaa !273
  %i.ar = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.10, i64 noundef 15)
          to label %.noexc32 unwind label %bb.ac  ; 6 uses

.noexc32:                                         ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.as, ptr %3, align 8, !tbaa !287, !alias.scope !2095
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !227 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.k:                                             ; preds = %.noexc32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !288 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc32
  store ptr %i.at, ptr %3, align 8, !tbaa !227, !alias.scope !2095
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !273
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !273, !alias.scope !2095
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !288
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %i.bb = phi i64 [ %i.ax, %bb.k ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !288, !alias.scope !2095
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !227
  store i64 0, ptr %i.bc, align 8, !tbaa !288
  store i8 0, ptr %i.au, align 8, !tbaa !273
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !288 ; 2 uses
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !288
  %i.bg = sub i64 4611686018427387903, %i.bf
  %i.bh = icmp ult i64 %i.bg, %i.be
  br i1 %i.bh, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.191) #40
          to label %.noexc33 unwind label %bb.ad

.noexc33:                                         ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.l
  %i.bi = load ptr, ptr %3, align 8, !tbaa !227
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bi, i64 noundef %i.be)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.ad ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bk = load ptr, ptr %3, align 8, !tbaa !227   ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.as
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  call void @_ZdlPv(ptr noundef %i.bk) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  %i.bm = load ptr, ptr %4, align 8, !tbaa !227   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.n
end_hunk_1
begin_hunk_2_@_ZNK6duckdb15ChunkVectorInfo8ToStringB5cxx11Em:bb.a
  br i1 %i.gw, label %bb.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i92

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.191) #40
          to label %.noexc93 unwind label %.loopexit.split-lp

.noexc93:                                         ; preds = %bb.as
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i92: ; preds = %bb.ar
  %i.gx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.2, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit95 unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i92
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp:                               ; preds = %bb.as
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i92, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.0153
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !218 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2099)
  %i.ha = icmp ult i64 %i.gz, 10
  br i1 %i.ha, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i99, label %.lr.ph.i.i96

.lr.ph.i.i96:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit95, %bb.ay
  %.029.i.i97 = phi i32 [ %i.hi, %bb.ay ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit95 ] ; 4 uses
  %.02328.i.i98 = phi i64 [ %i.hh, %bb.ay ], [ %i.gz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit95 ] ; 5 uses
  %i.hb = icmp ult i64 %.02328.i.i98, 100
  br i1 %i.hb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph.i.i96
  %i.hc = add i32 %.029.i.i97, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i99

bb.au:                                            ; preds = %.lr.ph.i.i96
  %i.hd = icmp ult i64 %.02328.i.i98, 1000
  br i1 %i.hd, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.he = add i32 %.029.i.i97, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i99

bb.aw:                                            ; preds = %bb.au
  %i.hf = icmp ult i64 %.02328.i.i98, 10000
  br i1 %i.hf, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hg = add i32 %.029.i.i97, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i99

bb.ay:                                            ; preds = %bb.aw
  %i.hh = udiv i64 %.02328.i.i98, 10000
  %i.hi = add i32 %.029.i.i97, 4                  ; 2 uses
  %i.hj = icmp ult i64 %.02328.i.i98, 100000
  br i1 %i.hj, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i99, label %.lr.ph.i.i96, !llvm.loop !7

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i99:  ; preds = %bb.ay, %bb.ax, %bb.av, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit95
  %.022.i.i100 = phi i32 [ %i.hg, %bb.ax ], [ %i.hc, %bb.at ], [ %i.he, %bb.av ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit95 ], [ %i.hi, %bb.ay ]
  %i.hk = zext i32 %.022.i.i100 to i64
  store ptr %i.gn, ptr %8, align 8, !tbaa !287, !alias.scope !2099
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.hk, i8 noundef signext 0)
          to label %.noexc108 unwind label %bb.bd

.noexc108:                                        ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i99
  %i.hl = load ptr, ptr %8, align 8, !tbaa !227, !alias.scope !2099 ; 4 uses
  %i.hm = icmp ugt i64 %i.gz, 99
  br i1 %i.hm, label %.lr.ph.preheader.i.i104, label %._crit_edge.i.i101

.lr.ph.preheader.i.i104:                          ; preds = %.noexc108
  %i.hn = load i64, ptr %i.go, align 8, !tbaa !288, !alias.scope !2099
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = add i32 %i.ho, -1
  br label %.lr.ph.i6.i105

.lr.ph.i6.i105:                                   ; preds = %.lr.ph.i6.i105, %.lr.ph.preheader.i.i104
  %.020.i.i106 = phi i64 [ %i.hs, %.lr.ph.i6.i105 ], [ %i.gz, %.lr.ph.preheader.i.i104 ] ; 3 uses
  %.01819.i.i107 = phi i32 [ %i.ic, %.lr.ph.i6.i105 ], [ %i.hp, %.lr.ph.preheader.i.i104 ] ; 3 uses
  %i.hq = urem i64 %.020.i.i106, 100
  %i.hr = shl nuw nsw i64 %i.hq, 1
  %i.hs = udiv i64 %.020.i.i106, 100              ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.hr ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 1
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !273, !noalias !2099
  %i.hw = zext i32 %.01819.i.i107 to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hw
  store i8 %i.hv, ptr %i.hx, align 1, !tbaa !273
  %i.hy = load i8, ptr %i.ht, align 2, !tbaa !273, !noalias !2099
  %i.hz = add i32 %.01819.i.i107, -1
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.ia
  store i8 %i.hy, ptr %i.ib, align 1, !tbaa !273
  %i.ic = add i32 %.01819.i.i107, -2
  %i.id = icmp ugt i64 %.020.i.i106, 9999
  br i1 %i.id, label %.lr.ph.i6.i105, label %._crit_edge.i.i101, !llvm.loop !8

._crit_edge.i.i101:                               ; preds = %.lr.ph.i6.i105, %.noexc108
  %.0.lcssa.i.i102 = phi i64 [ %i.gz, %.noexc108 ], [ %i.hs, %.lr.ph.i6.i105 ] ; 3 uses
  %i.ie = icmp samesign ugt i64 %.0.lcssa.i.i102, 9
  br i1 %i.ie, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %._crit_edge.i.i101
  %i.if = shl nuw nsw i64 %.0.lcssa.i.i102, 1
  %i.ig = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.if ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !273, !noalias !2099
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hl, i64 1
  store i8 %i.ii, ptr %i.ij, align 1, !tbaa !273
  %i.ik = load i8, ptr %i.ig, align 2, !tbaa !273, !noalias !2099
  br label %bb.bb

bb.ba:                                            ; preds = %._crit_edge.i.i101
  %i.il = trunc nuw nsw i64 %.0.lcssa.i.i102 to i8
  %i.im = or disjoint i8 %i.il, 48
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %storemerge.i.i103 = phi i8 [ %i.im, %bb.ba ], [ %i.ik, %bb.az ]
  store i8 %storemerge.i.i103, ptr %i.hl, align 1, !tbaa !273
  %i.in = load i64, ptr %i.go, align 8, !tbaa !288 ; 2 uses
  %i.io = load i64, ptr %i.b, align 8, !tbaa !288
  %i.ip = sub i64 4611686018427387903, %i.io
  %i.iq = icmp ult i64 %i.ip, %i.in
  br i1 %i.iq, label %bb.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i110

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.191) #40
          to label %.noexc111 unwind label %.loopexit.split-lp128

.noexc111:                                        ; preds = %bb.bc
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i110: ; preds = %bb.bb
  %i.ir = load ptr, ptr %8, align 8, !tbaa !227
  %i.is = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ir, i64 noundef %i.in)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit113 unwind label %.loopexit127 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i110
  %i.it = load ptr, ptr %8, align 8, !tbaa !227   ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.gn
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit113
  call void @_ZdlPv(ptr noundef %i.it) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  %i.iv = add nuw i64 %.0153, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.iv, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.aq, !llvm.loop !2093

bb.bd:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i99
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

.loopexit127:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i110
  %lpad.loopexit129 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp128:                            ; preds = %bb.bc
  %lpad.loopexit.split-lp130 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.be:                                            ; preds = %.loopexit.split-lp128, %.loopexit127
  %lpad.phi131 = phi { ptr, i32 } [ %lpad.loopexit129, %.loopexit127 ], [ %lpad.loopexit.split-lp130, %.loopexit.split-lp128 ] ; 2 uses
  %i.ix = load ptr, ptr %8, align 8, !tbaa !227   ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.gn
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %bb.be
  call void @_ZdlPv(ptr noundef %i.ix) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117, %bb.bd
  %.pn22 = phi { ptr, i32 } [ %i.iw, %bb.bd ], [ %lpad.phi131, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117 ], [ %lpad.phi131, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  br label %bb.bi

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i88
  %i.iz = load ptr, ptr %7, align 8, !tbaa !268
  %.not.i = icmp eq ptr %i.iz, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit91
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.bg unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ja = load ptr, ptr %7, align 8, !tbaa !268
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %9 = atomicrmw add ptr %i.jb, i64 -1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.bh:                                            ; preds = %bb.bf
  %i.jc = landingpad { ptr, i32 }
          catch ptr null
  %i.jd = extractvalue { ptr, i32 } %i.jc, 0
  call void @__clang_call_terminate(ptr %i.jd) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit91, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.bk

bb.bi:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %bb.ap
  %.pn22.pn.pn = phi { ptr, i32 } [ %i.gt, %bb.ap ], [ %.pn22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #37
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.ao
  %.pn22.pn.pn.pn = phi { ptr, i32 } [ %.pn22.pn.pn, %bb.bi ], [ %i.gs, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.bl

bb.bk:                                            ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.je = load i64, ptr %i.b, align 8, !tbaa !288
  %i.jf = icmp eq i64 %i.je, 4611686018427387903
  br i1 %i.jf, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i120

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.bk, %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.191) #40
          to label %.cont unwind label %bb.ae

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i120: ; preds = %bb.bk
  %i.jg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit123 unwind label %bb.ae ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i120
  ret void

bb.bl:                                            ; preds = %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn30 = phi { ptr, i32 } [ %i.ep, %bb.ae ], [ %.pn27.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81 ], [ %.pn22.pn.pn.pn, %bb.bj ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ]
  %i.jh = load ptr, ptr %0, align 8, !tbaa !227   ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.a
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.bl
  call void @_ZdlPv(ptr noundef %i.jh) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  resume { ptr, i32 } %.pn30
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb15ChunkVectorInfo5WriteERNS_11WriteStreamEm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %4 = alloca %"struct.duckdb::ScanOptions", align 8 ; 2 uses
  %5 = alloca %"struct.duckdb::TransactionData", align 8 ; 2 uses
  %6 = alloca %"struct.duckdb::ValidityMask", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 2048)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.ag, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn26, %bb.ag ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.f) #37
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.a
  %i.h = load i64, ptr @_ZN6duckdb18MAX_TRANSACTION_IDE, align 8, !tbaa !218
  %i.i = icmp eq i64 %2, %i.h
  %i.j = load i64, ptr @_ZN6duckdb20TRANSACTION_ID_STARTE, align 8
  %i.k = add i64 %i.j, -1
  %i.l = add i64 %2, 1
  %i.m = select i1 %i.i, i64 %i.k, i64 %i.l
  invoke void @_ZN6duckdb15TransactionDataC1Emm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef -1, i64 noundef %i.m)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  invoke void @_ZN6duckdb11ScanOptionsC1ENS_15TransactionDataE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull byval(%"struct.duckdb::TransactionData") align 8 %5)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !213
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = invoke noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull byval(%"struct.duckdb::ScanOptions") align 8 %4, ptr nonnull %3, i64 noundef 2048)
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  switch i64 %i.q, label %bb.j [
    i64 2048, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 2, ptr %i.e, align 1, !tbaa !211
  %i.r = load ptr, ptr %1, align 8, !tbaa !213
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.e, i64 noundef 1)
          to label %_ZN6duckdb11WriteStream5WriteINS_13ChunkInfoTypeEEEvT_.exit unwind label %bb.g, !inline_history !0

_ZN6duckdb11WriteStream5WriteINS_13ChunkInfoTypeEEEvT_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.y

bb.g:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.d, %bb.c, %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 0, ptr %i.d, align 1, !tbaa !211
  %i.u = load ptr, ptr %1, align 8, !tbaa !213
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 1)
          to label %bb.i unwind label %bb.g, !inline_history !0

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.x, ptr %i.c, align 8, !tbaa !218
  %i.y = load ptr, ptr %1, align 8, !tbaa !213
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 8)
          to label %_ZN6duckdb11WriteStream5WriteImEEvT_.exit unwind label %bb.g, !inline_history !6

_ZN6duckdb11WriteStream5WriteImEEvT_.exit:        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.y

bb.j:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.ab, ptr %i.b, align 1, !tbaa !211
  %i.ac = load ptr, ptr %1, align 8, !tbaa !213
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.k unwind label %bb.g, !inline_history !2101

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.af, ptr %i.a, align 8, !tbaa !218
  %i.ag = load ptr, ptr %1, align 8, !tbaa !213
  %i.ah = load ptr, ptr %i.ag, align 8
  invoke void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 8)
          to label %bb.l unwind label %bb.g, !inline_history !6

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 24, i1 false)
  store i64 2048, ptr %i.ai, align 8, !tbaa !238
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 2048)
          to label %.lr.ph unwind label %bb.m

._crit_edge:                                      ; preds = %bb.p
  invoke void @_ZN6duckdb12ValidityMask5WriteERNS_11WriteStreamEm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 2048)
          to label %bb.r unwind label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.lr.ph:                                           ; preds = %bb.l, %bb.p
  %.035 = phi i64 [ %i.az, %bb.p ], [ 0, %bb.l ]  ; 3 uses
  %i.ak = load ptr, ptr %3, align 8, !tbaa !305   ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.035
  %i.am = load i32, ptr %i.al, align 4, !tbaa !206
  %i.an = zext i32 %i.am to i64
end_hunk_2
