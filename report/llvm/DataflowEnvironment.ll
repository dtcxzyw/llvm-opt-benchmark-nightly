Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DataflowEnvironment?download=true
inline.NumInlined: 3638
inline.NumDeleted: 1985
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5clang8dataflow11Environment16pushCallInternalEPKNS_12FunctionDeclEN4llvm8ArrayRefIPKNS_4ExprEEE:bb.a
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !81
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i = phi i32 [ %i.bc, %bb.j ], [ %i.bm, %bb.k ]
  %i.bn = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bn, label %bb.l, label %_ZNSt12__shared_ptrIN4llvm8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS0_12DenseMapInfoIS5_vEENS0_6detail12DenseMapPairIS5_S8_EEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !84

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #18
  br label %_ZNSt12__shared_ptrIN4llvm8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS0_12DenseMapInfoIS5_vEENS0_6detail12DenseMapPairIS5_S8_EEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4llvm8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS0_12DenseMapInfoIS5_vEENS0_6detail12DenseMapPairIS5_S8_EEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h, %._crit_edge
  %i.bo = load i32, ptr %i.au, align 4, !tbaa !86 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZN4llvm8DenseMapIPKN5clang4ExprEPNS1_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN4llvm8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS0_12DenseMapInfoIS5_vEENS0_6detail12DenseMapPairIS5_S8_EEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bq = load ptr, ptr %5, align 16, !tbaa !87
  %i.br = zext i32 %i.bo to i64                   ; 2 uses
  %i.bs = shl nuw nsw i64 %i.br, 4
  %i.bt = add nuw nsw i64 %i.br, 31
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = and i64 %i.bu, 1073741820
  %i.bw = add nuw nsw i64 %i.bv, %i.bs
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bq, i64 noundef %i.bw, i64 noundef 8) #18
  br label %_ZN4llvm8DenseMapIPKN5clang4ExprEPNS1_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang4ExprEPNS1_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S7_EEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN4llvm8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS0_12DenseMapInfoIS5_vEENS0_6detail12DenseMapPairIS5_S8_EEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %i.bx = phi i64 [ 0, %.lr.ph ], [ %i.ch, %bb.n ]
  %.017 = phi ptr [ %i.ae, %.lr.ph ], [ %i.cf, %bb.n ] ; 2 uses
  %.0716 = phi i32 [ 0, %.lr.ph ], [ %i.cg, %bb.n ]
  %i.by = load ptr, ptr %.017, align 8, !tbaa !132 ; 3 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bx
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !162
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cb, align 8, !tbaa !83
  %i.cc = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5clang8dataflow11Environment20createObjectInternalEPKNS_9ValueDeclENS_8QualTypeEPKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.by, i64 %.sroa.0.0.copyload.i.i, ptr noundef %i.ca)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %i.by, ptr %i.a, align 8, !tbaa !134
  %i.cd = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang9ValueDeclEPNS2_8dataflow15StorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E24lookupOrInsertIntoBucketIS5_JEEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.cd, 0
  %i.ce = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.cf = getelementptr inbounds nuw i8, ptr %.017, i64 8
  %i.cg = add i32 %.0716, 1                       ; 2 uses
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %i.ci = icmp ugt i64 %3, %i.ch
  br i1 %i.ci, label %bb.n, label %._crit_edge, !llvm.loop !449
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK5clang8dataflow11Environment8pushCallEPKNS_16CXXConstructExprE(ptr dead_on_unwind noalias nonnull writable sret(%"class.clang::dataflow::Environment") align 8 %0, ptr noundef nonnull align 8 dereferenceable(228) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5clang8dataflow11EnvironmentC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef nonnull align 8 dereferenceable(228) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87, !noalias !460 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !166, !noalias !460 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !86, !noalias !460 ; 3 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add i32 %i.g, -1                         ; 2 uses
  %i.j = ptrtoint ptr %2 to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.i, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = lshr i64 %i.p, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !81
  %i.t = and i32 %i.o, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.thread.i, !prof !146

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.w = phi i64 [ %i.ac, %bb.c ], [ %i.p, %bb.b ]
  %.017.i.i.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !162
  %i.z = icmp eq ptr %2, %i.y
  br i1 %i.z, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.i, label %bb.c, !prof !147

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = add nuw i32 %.017.i.i.i, 1
  %i.ab = and i32 %i.aa, %i.i                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !81
  %i.ag = and i32 %i.ab, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.thread.i, !prof !148

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.i: ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !167 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.thread.i, label %_ZNK5clang8dataflow11Environment23getResultObjectLocationERKNS_4ExprE.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.thread.i: ; preds = %bb.c, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.i, %bb.b, %bb.a
  %i.am = load ptr, ptr %0, align 8, !tbaa !63
  %i.an = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5clang8dataflow23DataflowAnalysisContext24getStableStorageLocationERKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(329) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !165 ; 3 uses
  %.pre19 = load ptr, ptr %.pre, align 8, !tbaa !87, !noalias !461
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre20 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !166, !noalias !461
  %.phi.trans.insert21 = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %.pre22 = load i32, ptr %.phi.trans.insert21, align 4, !tbaa !86, !noalias !461
  br label %_ZNK5clang8dataflow11Environment23getResultObjectLocationERKNS_4ExprE.exit

_ZNK5clang8dataflow11Environment23getResultObjectLocationERKNS_4ExprE.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.thread.i
  %i.ao = phi i32 [ %.pre22, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.thread.i ], [ %i.g, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.i ] ; 2 uses
  %i.ap = phi ptr [ %.pre20, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.thread.i ], [ %i.e, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.i ] ; 2 uses
  %i.aq = phi ptr [ %.pre19, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.thread.i ], [ %i.c, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.i ]
  %.0.i = phi ptr [ %i.an, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.thread.i ], [ %i.ak, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.0.i, ptr %i.ar, align 8, !tbaa !142
  %i.as = icmp eq i32 %i.ao, 0
  br i1 %i.as, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.thread.i7, label %bb.d

bb.d:                                             ; preds = %_ZNK5clang8dataflow11Environment23getResultObjectLocationERKNS_4ExprE.exit
  %i.at = add i32 %i.ao, -1                       ; 2 uses
  %i.au = ptrtoint ptr %2 to i64
  %i.av = mul i64 %i.au, -4658895280553007687     ; 2 uses
  %i.aw = lshr i64 %i.av, 31
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.at, %i.ay                    ; 3 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = lshr i64 %i.ba, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !81
  %i.be = and i32 %i.az, 31
  %i.bf = lshr i32 %i.bd, %i.be
  %i.bg = trunc i32 %i.bf to i1
  br i1 %i.bg, label %.lr.ph.i.i.i9, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.thread.i7, !prof !146

.lr.ph.i.i.i9:                                    ; preds = %bb.d, %bb.e
  %i.bh = phi i64 [ %i.bn, %bb.e ], [ %i.ba, %bb.d ]
  %.017.i.i.i10 = phi i32 [ %i.bm, %bb.e ], [ %i.az, %bb.d ]
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %i.bh ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !162
  %i.bk = icmp eq ptr %2, %i.bj
  br i1 %i.bk, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.i11, label %bb.e, !prof !147

bb.e:                                             ; preds = %.lr.ph.i.i.i9
  %i.bl = add nuw i32 %.017.i.i.i10, 1
  %i.bm = and i32 %i.bl, %i.at                    ; 3 uses
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %i.bo = lshr i64 %i.bn, 5
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !81
  %i.br = and i32 %i.bm, 31
  %i.bs = lshr i32 %i.bq, %i.br
  %i.bt = trunc i32 %i.bs to i1
  br i1 %i.bt, label %.lr.ph.i.i.i9, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.thread.i7, !prof !148

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.i11: ; preds = %.lr.ph.i.i.i9
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !167 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.thread.i7, label %_ZNK5clang8dataflow11Environment23getResultObjectLocationERKNS_4ExprE.exit12

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.thread.i7: ; preds = %bb.e, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.i11, %bb.d, %_ZNK5clang8dataflow11Environment23getResultObjectLocationERKNS_4ExprE.exit
  %i.bx = load ptr, ptr %0, align 8, !tbaa !63
  %i.by = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5clang8dataflow23DataflowAnalysisContext24getStableStorageLocationERKNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(329) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %2) #18
  br label %_ZNK5clang8dataflow11Environment23getResultObjectLocationERKNS_4ExprE.exit12

_ZNK5clang8dataflow11Environment23getResultObjectLocationERKNS_4ExprE.exit12: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.i11, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.thread.i7
  %.0.i8 = phi ptr [ %i.by, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.thread.i7 ], [ %i.bv, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ExprEPNS2_8dataflow21RecordStorageLocationENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S8_EEEES5_S8_SA_SD_E6lookupES5_.exit.i11 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.0.i8, ptr %i.bz, align 8, !tbaa !136
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !464
  %i.cc = load i16, ptr %2, align 8
  %i.cd = and i16 %i.cc, 511
  %.not.i.i.i = icmp eq i16 %i.cd, 118
  %spec.select.v.i.i.i = select i1 %.not.i.i.i, i64 48, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 %spec.select.v.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !465
  %i.ch = zext i32 %i.cg to i64
  tail call void @_ZN5clang8dataflow11Environment16pushCallInternalEPKNS_12FunctionDeclEN4llvm8ArrayRefIPKNS_4ExprEEE(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef %i.cb, ptr nonnull %i.ce, i64 %i.ch)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang8dataflow11Environment7popCallEPKNS_8CallExprERKS1_(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(228) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::tuple.808", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.829", align 1    ; 3 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %.not.i.i = icmp eq ptr %2, %0
  br i1 %.not.i.i, label %_ZN4llvm9MapVectorIPKN5clang8dataflow15StorageLocationEPNS2_5ValueENS_8DenseMapIS5_jNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEENS_11SmallVectorISt4pairIS5_S7_ELj0EEELj0EEaSERKSJ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 184
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang8dataflow15StorageLocationEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8copyFromERKSC_(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !139  ; 6 uses
  %i.i = zext i32 %i.h to i64                     ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !139  ; 4 uses
  %i.l = zext i32 %i.k to i64                     ; 5 uses
  %.not.i.i.i = icmp ult i32 %i.k, %i.h
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not29.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not29.i.i.i, label %.sink.split.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !140  ; 2 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !140  ; 2 uses
  %xtraiter = and i64 %i.i, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.012.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.i, %bb.d ]
  %.0811.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.n, %bb.d ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.m, %bb.d ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %bb.d ]
  %i.o = load <2 x ptr>, ptr %.0910.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !77
  store <2 x ptr> %i.o, ptr %.0811.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !77
  %i.p = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.r = add nsw i64 %.012.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !466

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %bb.d
  %.012.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.i, %bb.d ], [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.n, %bb.d ], [ %i.q, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.m, %bb.d ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.s = icmp ult i32 %i.h, 8
  br i1 %i.s, label %.sink.split.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.t = load <2 x ptr>, ptr %.0910.i.i.i.i.i.i.i.i, align 8, !tbaa !77
  store <2 x ptr> %i.t, ptr %.0811.i.i.i.i.i.i.i.i, align 8, !tbaa !77
  %i.u = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 16
  %i.w = load <2 x ptr>, ptr %i.u, align 8, !tbaa !77
  store <2 x ptr> %i.w, ptr %i.v, align 8, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 32
  %i.z = load <2 x ptr>, ptr %i.x, align 8, !tbaa !77
  store <2 x ptr> %i.z, ptr %i.y, align 8, !tbaa !77
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 48
  %i.ac = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !77
  store <2 x ptr> %i.ac, ptr %i.ab, align 8, !tbaa !77
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 64
  %i.af = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !77
  store <2 x ptr> %i.af, ptr %i.ae, align 8, !tbaa !77
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 80
  %i.ai = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !77
  store <2 x ptr> %i.ai, ptr %i.ah, align 8, !tbaa !77
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 96
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 96
  %i.al = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !77
  store <2 x ptr> %i.al, ptr %i.ak, align 8, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 112
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 112
  %i.ao = load <2 x ptr>, ptr %i.am, align 8, !tbaa !77
  store <2 x ptr> %i.ao, ptr %i.an, align 8, !tbaa !77
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 128
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 128
  %i.ar = add nsw i64 %.012.i.i.i.i.i.i.i.i, -8
  %i.as = icmp sgt i64 %.012.i.i.i.i.i.i.i.i, 8
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i, !llvm.loop !2

bb.e:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.au = load i32, ptr %i.at, align 4, !tbaa !157
  %i.av = icmp ult i32 %i.au, %i.h
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.j, align 8, !tbaa !139
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull %i.aw, i64 noundef %i.i, i64 noundef 16) #18
  %.pre.i.i.i = load i32, ptr %i.g, align 8, !tbaa !139
  %.pre37.i.i.i = zext i32 %.pre.i.i.i to i64
  br label %_ZSt4copyIPKSt4pairIPKN5clang8dataflow15StorageLocationEPNS2_5ValueEEPS8_ET0_T_SD_SC_.exit35.i.i.i

bb.g:                                             ; preds = %bb.e
  %.not28.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not28.i.i.i, label %_ZSt4copyIPKSt4pairIPKN5clang8dataflow15StorageLocationEPNS2_5ValueEEPS8_ET0_T_SD_SC_.exit35.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.f, align 8, !tbaa !140 ; 2 uses
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !140 ; 2 uses
  %xtraiter24 = and i64 %i.l, 7                   ; 2 uses
  %lcmp.mod25.not = icmp eq i64 %xtraiter24, 0
  br i1 %lcmp.mod25.not, label %.lr.ph.i.i.i.i.i31.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i31.i.i.i.prol

.lr.ph.i.i.i.i.i31.i.i.i.prol:                    ; preds = %bb.h, %.lr.ph.i.i.i.i.i31.i.i.i.prol
  %.012.i.i.i.i.i32.i.i.i.prol = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i31.i.i.i.prol ], [ %i.l, %bb.h ]
  %.0811.i.i.i.i.i33.i.i.i.prol = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i31.i.i.i.prol ], [ %i.ay, %bb.h ] ; 2 uses
  %.0910.i.i.i.i.i34.i.i.i.prol = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i31.i.i.i.prol ], [ %i.ax, %bb.h ] ; 2 uses
  %prol.iter26 = phi i64 [ %prol.iter26.next, %.lr.ph.i.i.i.i.i31.i.i.i.prol ], [ 0, %bb.h ]
  %i.az = load <2 x ptr>, ptr %.0910.i.i.i.i.i34.i.i.i.prol, align 8, !tbaa !77
  store <2 x ptr> %i.az, ptr %.0811.i.i.i.i.i33.i.i.i.prol, align 8, !tbaa !77
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34.i.i.i.prol, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33.i.i.i.prol, i64 16 ; 2 uses
  %i.bc = add nsw i64 %.012.i.i.i.i.i32.i.i.i.prol, -1 ; 2 uses
  %prol.iter26.next = add i64 %prol.iter26, 1     ; 2 uses
  %prol.iter26.cmp.not = icmp eq i64 %prol.iter26.next, %xtraiter24
  br i1 %prol.iter26.cmp.not, label %.lr.ph.i.i.i.i.i31.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i31.i.i.i.prol, !llvm.loop !467

.lr.ph.i.i.i.i.i31.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i31.i.i.i.prol, %bb.h
  %.012.i.i.i.i.i32.i.i.i.unr = phi i64 [ %i.l, %bb.h ], [ %i.bc, %.lr.ph.i.i.i.i.i31.i.i.i.prol ]
  %.0811.i.i.i.i.i33.i.i.i.unr = phi ptr [ %i.ay, %bb.h ], [ %i.bb, %.lr.ph.i.i.i.i.i31.i.i.i.prol ]
  %.0910.i.i.i.i.i34.i.i.i.unr = phi ptr [ %i.ax, %bb.h ], [ %i.ba, %.lr.ph.i.i.i.i.i31.i.i.i.prol ]
  %i.bd = icmp ult i32 %i.k, 8
  br i1 %i.bd, label %_ZSt4copyIPKSt4pairIPKN5clang8dataflow15StorageLocationEPNS2_5ValueEEPS8_ET0_T_SD_SC_.exit35.i.i.i, label %.lr.ph.i.i.i.i.i31.i.i.i

.lr.ph.i.i.i.i.i31.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i31.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i31.i.i.i
  %.012.i.i.i.i.i32.i.i.i = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i31.i.i.i ], [ %.012.i.i.i.i.i32.i.i.i.unr, %.lr.ph.i.i.i.i.i31.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i33.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i31.i.i.i ], [ %.0811.i.i.i.i.i33.i.i.i.unr, %.lr.ph.i.i.i.i.i31.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i34.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i31.i.i.i ], [ %.0910.i.i.i.i.i34.i.i.i.unr, %.lr.ph.i.i.i.i.i31.i.i.i.prol.loopexit ] ; 9 uses
  %i.be = load <2 x ptr>, ptr %.0910.i.i.i.i.i34.i.i.i, align 8, !tbaa !77
  store <2 x ptr> %i.be, ptr %.0811.i.i.i.i.i33.i.i.i, align 8, !tbaa !77
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34.i.i.i, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33.i.i.i, i64 16
  %i.bh = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !77
  store <2 x ptr> %i.bh, ptr %i.bg, align 8, !tbaa !77
  %i.bi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34.i.i.i, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33.i.i.i, i64 32
  %i.bk = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !77
  store <2 x ptr> %i.bk, ptr %i.bj, align 8, !tbaa !77
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34.i.i.i, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33.i.i.i, i64 48
  %i.bn = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !77
  store <2 x ptr> %i.bn, ptr %i.bm, align 8, !tbaa !77
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34.i.i.i, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33.i.i.i, i64 64
  %i.bq = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !77
  store <2 x ptr> %i.bq, ptr %i.bp, align 8, !tbaa !77
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34.i.i.i, i64 80
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33.i.i.i, i64 80
  %i.bt = load <2 x ptr>, ptr %i.br, align 8, !tbaa !77
  store <2 x ptr> %i.bt, ptr %i.bs, align 8, !tbaa !77
  %i.bu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34.i.i.i, i64 96
  %i.bv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33.i.i.i, i64 96
  %i.bw = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !77
  store <2 x ptr> %i.bw, ptr %i.bv, align 8, !tbaa !77
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34.i.i.i, i64 112
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33.i.i.i, i64 112
  %i.bz = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !77
  store <2 x ptr> %i.bz, ptr %i.by, align 8, !tbaa !77
  %i.ca = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i34.i.i.i, i64 128
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i33.i.i.i, i64 128
  %i.cc = add nsw i64 %.012.i.i.i.i.i32.i.i.i, -8
  %i.cd = icmp sgt i64 %.012.i.i.i.i.i32.i.i.i, 8
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i31.i.i.i, label %_ZSt4copyIPKSt4pairIPKN5clang8dataflow15StorageLocationEPNS2_5ValueEEPS8_ET0_T_SD_SC_.exit35.i.i.i, !llvm.loop !2

_ZSt4copyIPKSt4pairIPKN5clang8dataflow15StorageLocationEPNS2_5ValueEEPS8_ET0_T_SD_SC_.exit35.i.i.i: ; preds = %.lr.ph.i.i.i.i.i31.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i31.i.i.i, %bb.g, %bb.f
  %.pre-phi.i.i.i = phi i64 [ %.pre37.i.i.i, %bb.f ], [ %i.i, %bb.g ], [ %i.i, %.lr.ph.i.i.i.i.i31.i.i.i ], [ %i.i, %.lr.ph.i.i.i.i.i31.i.i.i.prol.loopexit ] ; 2 uses
  %.022.i.i.i = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %i.l, %.lr.ph.i.i.i.i.i31.i.i.i ], [ %i.l, %.lr.ph.i.i.i.i.i31.i.i.i.prol.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp samesign eq i64 %.022.i.i.i, %.pre-phi.i.i.i
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZSt4copyIPKSt4pairIPKN5clang8dataflow15StorageLocationEPNS2_5ValueEEPS8_ET0_T_SD_SC_.exit35.i.i.i
  %i.ce = load ptr, ptr %i.f, align 8, !tbaa !140
  %.idx36.i.i.i = shl nuw nsw i64 %.022.i.i.i, 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx36.i.i.i
  %i.cg = load ptr, ptr %i.e, align 8, !tbaa !140
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %.022.i.i.i
  %i.ci = sub nsw i64 %.pre-phi.i.i.i, %.022.i.i.i
  %gepdiff.i.i.i = shl nsw i64 %i.ci, 4
end_hunk_0
