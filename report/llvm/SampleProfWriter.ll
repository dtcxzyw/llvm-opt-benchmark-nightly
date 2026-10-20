Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SampleProfWriter?download=true
inline.NumInlined: 3859
inline.NumDeleted: 2168
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase5writeERKNS0_16SampleProfileMapE:bb.a
  store i32 0, ptr %i.af, align 8, !tbaa !162
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !158 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !154
  %.not.i.i = icmp eq ptr %i.aj, %i.ah
  br i1 %.not.i.i, label %_ZNSt6vectorIN4llvm10sampleprof16SecHdrTableEntryESaIS2_EE5clearEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm9MapVectorINS_10sampleprof13SampleContextEjNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EE5clearEv.exit
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !154
  br label %_ZNSt6vectorIN4llvm10sampleprof16SecHdrTableEntryESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4llvm10sampleprof16SecHdrTableEntryESaIS2_EE5clearEv.exit: ; preds = %_ZN4llvm9MapVectorINS_10sampleprof13SampleContextEjNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EE5clearEv.exit, %bb.h
  %i.ak = load ptr, ptr %0, align 8, !tbaa !43
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call { i32, ptr } %i.am(ptr noundef nonnull align 8 dereferenceable(584) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) #26 ; 2 uses
  %i.ao = extractvalue { i32, ptr } %i.an, 0
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZNSt6vectorIN4llvm10sampleprof16SecHdrTableEntryESaIS2_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.ap, ptr %2, align 8, !tbaa !166
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.aq, align 8, !tbaa !100
  store i8 0, ptr %i.ap, align 8, !tbaa !103
  %i.ar = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27, !noalias !350 ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 0, ptr %i.as, align 8, !tbaa !88, !noalias !350
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store i8 0, ptr %i.at, align 8, !tbaa !89, !noalias !350
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 44
  store i32 1, ptr %i.au, align 4, !tbaa !90, !noalias !350
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false), !noalias !350
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %i.ar, align 8, !tbaa !43, !noalias !350
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store ptr %2, ptr %i.aw, align 8, !tbaa !167, !noalias !350
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef null, i64 noundef 0, i32 noundef 0) #26, !noalias !350
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !79 ; 3 uses
  store ptr %i.ar, ptr %i.ax, align 8, !tbaa !79
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN4llvm18raw_string_ostreamESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm11raw_ostreamEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm11raw_ostreamEEclEPS1_.exit.i.i.i: ; preds = %bb.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(48) %i.ay) #26, !inline_history !349
  br label %_ZNSt10unique_ptrIN4llvm18raw_string_ostreamESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm18raw_string_ostreamESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm11raw_ostreamEEclEPS1_.exit.i.i.i, %bb.i
  %i.bc = load ptr, ptr %0, align 8, !tbaa !43
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 144
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call { i32, ptr } %i.be(ptr noundef nonnull align 8 dereferenceable(584) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) #26 ; 2 uses
  %i.bg = extractvalue { i32, ptr } %i.bf, 0      ; 2 uses
  %i.bh = extractvalue { i32, ptr } %i.bf, 1
  %.not9 = icmp eq i32 %i.bg, 0
  br i1 %.not9, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN4llvm18raw_string_ostreamESt14default_deleteIS1_EED2Ev.exit
  %i.bi = call { i32, ptr } @_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase16writeSecHdrTableEv(ptr noundef nonnull align 8 dereferenceable(584) %0) ; 2 uses
  %i.bj = extractvalue { i32, ptr } %i.bi, 0      ; 2 uses
  %i.bk = extractvalue { i32, ptr } %i.bi, 1
  %.not10 = icmp eq i32 %i.bj, 0
  br i1 %.not10, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm19sampleprof_categoryEv() #26
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %_ZNSt10unique_ptrIN4llvm18raw_string_ostreamESt14default_deleteIS1_EED2Ev.exit, %bb.k
  %.sroa.8.0 = phi ptr [ %i.bh, %_ZNSt10unique_ptrIN4llvm18raw_string_ostreamESt14default_deleteIS1_EED2Ev.exit ], [ %i.bk, %bb.j ], [ %i.bl, %bb.k ]
  %.sroa.05.0 = phi i32 [ %i.bg, %_ZNSt10unique_ptrIN4llvm18raw_string_ostreamESt14default_deleteIS1_EED2Ev.exit ], [ %i.bj, %bb.j ], [ 0, %bb.k ]
  %i.bm = load ptr, ptr %2, align 8, !tbaa !101   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ap
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bo = load i64, ptr %i.ap, align 8, !tbaa !103
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.bq = insertvalue { i32, ptr } poison, i32 %.sroa.05.0, 0
  %i.br = insertvalue { i32, ptr } %i.bq, ptr %.sroa.8.0, 1
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN4llvm10sampleprof16SecHdrTableEntryESaIS2_EE5clearEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.fca.1.insert.merged = phi { i32, ptr } [ %i.an, %_ZNSt6vectorIN4llvm10sampleprof16SecHdrTableEntryESaIS2_EE5clearEv.exit ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret { i32, ptr } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i32, ptr } @_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase16writeSecHdrTableEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(584) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.llvm::SmallVector.214", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !154  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !158  ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 40                  ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store i32 0, ptr %i.j, align 8, !tbaa !162
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 16, ptr %i.k, align 4, !tbaa !168
  %i.l = icmp ugt i64 %i.h, 16
  br i1 %i.l, label %_ZN4llvm11SmallVectorIjLj16EEC2EmRKj.exit, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i:          ; preds = %bb.a
  %.not.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i, label %_ZN4llvm11SmallVectorIjLj16EEC2EmRKj.exit.thread, label %_ZN4llvm11SmallVectorIjLj16EEC2EmRKj.exit.thread52

_ZN4llvm11SmallVectorIjLj16EEC2EmRKj.exit.thread: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i
  %storemerge.i51 = trunc nuw nsw i64 %i.h to i32
  store i32 %storemerge.i51, ptr %i.j, align 8, !tbaa !162
  br label %._crit_edge

_ZN4llvm11SmallVectorIjLj16EEC2EmRKj.exit.thread52: ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.i.i
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.h, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 -1, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !169
  %storemerge.i55 = trunc nuw nsw i64 %i.h to i32
  store i32 %storemerge.i55, ptr %i.j, align 8, !tbaa !162
  br label %.lr.ph

_ZN4llvm11SmallVectorIjLj16EEC2EmRKj.exit:        ; preds = %bb.a
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.i, i64 noundef %i.h, i64 noundef 4) #26
  %i.m = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.h, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 -1, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !169
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !154 ; 2 uses
  %.pre35 = load ptr, ptr %i.a, align 8, !tbaa !158 ; 3 uses
  %.pre36 = ptrtoint ptr %.pre to i64
  %.pre37 = ptrtoint ptr %.pre35 to i64
  %.pre39 = sub i64 %.pre36, %.pre37
  %.pre41 = sdiv exact i64 %.pre39, 40
  %i.n = icmp eq ptr %.pre, %.pre35
  %storemerge.i = trunc i64 %i.h to i32
  store i32 %storemerge.i, ptr %i.j, align 8, !tbaa !162
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIjLj16EEC2EmRKj.exit.thread52, %_ZN4llvm11SmallVectorIjLj16EEC2EmRKj.exit
  %i.o = phi ptr [ %i.d, %_ZN4llvm11SmallVectorIjLj16EEC2EmRKj.exit.thread52 ], [ %.pre35, %_ZN4llvm11SmallVectorIjLj16EEC2EmRKj.exit ]
  %i.p = phi ptr [ %i.i, %_ZN4llvm11SmallVectorIjLj16EEC2EmRKj.exit.thread52 ], [ %i.m, %_ZN4llvm11SmallVectorIjLj16EEC2EmRKj.exit ]
  %.pre-phi4256 = phi i64 [ %i.h, %_ZN4llvm11SmallVectorIjLj16EEC2EmRKj.exit.thread52 ], [ %.pre41, %_ZN4llvm11SmallVectorIjLj16EEC2EmRKj.exit ]
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %_ZN4llvm11SmallVectorIjLj16EEC2EmRKj.exit.thread, %_ZN4llvm11SmallVectorIjLj16EEC2EmRKj.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !79   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !162
  %.not32 = icmp eq i32 %i.t, 0
  br i1 %.not32, label %._crit_edge31, label %.lr.ph30

.lr.ph30:                                         ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !353
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.x
  %i.z = trunc nuw i64 %indvars.iv to i32
  store i32 %i.z, ptr %i.y, align 4, !tbaa !169
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.aa = and i64 %indvars.iv.next, 4294967295
  %i.ab = icmp ugt i64 %.pre-phi4256, %i.aa
  br i1 %i.ab, label %bb.b, label %._crit_edge, !llvm.loop !351

._crit_edge31:                                    ; preds = %bb.d, %._crit_edge
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm19sampleprof_categoryEv() #26
  %i.ad = load ptr, ptr %1, align 8, !tbaa !41    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.i
  br i1 %i.ae, label %_ZN4llvm11SmallVectorIjLj16EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge31
  call void @free(ptr noundef %i.ad) #26
  br label %_ZN4llvm11SmallVectorIjLj16EED2Ev.exit

_ZN4llvm11SmallVectorIjLj16EED2Ev.exit:           ; preds = %._crit_edge31, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %.fca.1.insert = insertvalue { i32, ptr } { i32 0, ptr poison }, ptr %i.ac, 1
  ret { i32, ptr } %.fca.1.insert

bb.d:                                             ; preds = %.lr.ph30, %bb.d
  %indvars.iv35 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next36, %bb.d ] ; 3 uses
  %i.af = load ptr, ptr %1, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv35
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !169
  %i.ai = zext i32 %i.ah to i64
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !158
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %i.ai ; 4 uses
  %.sroa.0.0.copyload = load i32, ptr %i.ak, align 8, !tbaa !156
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.41.0.copyload = load i64, ptr %.sroa.41.0..sroa_idx, align 8, !tbaa !157
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !157
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !157
  %i.al = zext i32 %.sroa.0.0.copyload to i64
  %i.am = load i64, ptr %i.u, align 8, !tbaa !170
  %2 = trunc nuw i64 %indvars.iv35 to i32
  %i.an = shl i32 %2, 2                           ; 4 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = add i64 %i.am, %i.ap
  call fastcc void @_ZN4llvm7support6endian12_GLOBAL__N_114SeekableWriter6pwriteImEEvT_m(ptr %i.r, i32 1, i64 noundef %i.al, i64 noundef %i.aq)
  %i.ar = load i64, ptr %i.u, align 8, !tbaa !170
  %i.as = or disjoint i32 %i.an, 1
  %i.at = zext i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = add i64 %i.ar, %i.au
  call fastcc void @_ZN4llvm7support6endian12_GLOBAL__N_114SeekableWriter6pwriteImEEvT_m(ptr %i.r, i32 1, i64 noundef %.sroa.41.0.copyload, i64 noundef %i.av)
  %i.aw = load i64, ptr %i.u, align 8, !tbaa !170
  %i.ax = or disjoint i32 %i.an, 2
  %i.ay = zext i32 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = add i64 %i.aw, %i.az
  call fastcc void @_ZN4llvm7support6endian12_GLOBAL__N_114SeekableWriter6pwriteImEEvT_m(ptr %i.r, i32 1, i64 noundef %.sroa.5.0.copyload, i64 noundef %i.ba)
  %i.bb = load i64, ptr %i.u, align 8, !tbaa !170
  %i.bc = or disjoint i32 %i.an, 3
  %i.bd = zext i32 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add i64 %i.bb, %i.be
  call fastcc void @_ZN4llvm7support6endian12_GLOBAL__N_114SeekableWriter6pwriteImEEvT_m(ptr %i.r, i32 1, i64 noundef %.sroa.6.0.copyload, i64 noundef %i.bf)
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %i.bg = load i32, ptr %i.s, align 8, !tbaa !162
  %3 = zext i32 %i.bg to i64
  %4 = icmp samesign ult i64 %indvars.iv.next36, %3
  br i1 %4, label %bb.d, label %._crit_edge31, !llvm.loop !352
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i32, ptr } @_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase15writeContextIdxERKNS0_13SampleContextE(ptr noundef nonnull align 8 dereferenceable(584) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.llvm::sampleprof::FunctionId", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !175
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.d = tail call noundef ptr @_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof13SampleContextEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6doFindIS3_EEPKS8_RKT_(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1), !noalias !362 ; 3 uses
  %.not.not.i.i.i.i = icmp eq ptr %i.d, null
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !176, !noalias !362
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.g = load i32, ptr %i.f, align 4, !tbaa !164, !noalias !362
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.h
  %i.j = icmp eq ptr %i.d, %i.i
  %i.k = select i1 %.not.not.i.i.i.i, i1 true, i1 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %.sink13.in.i.i = select i1 %i.k, ptr %i.m, ptr %i.l
  %.sink13.i.i = load i32, ptr %.sink13.in.i.i, align 8, !tbaa !169 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !162
  %i.o = icmp eq i32 %.sink13.i.i, %i.n
  br i1 %i.o, label %_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase14writeCSNameIdxERKNS0_13SampleContextE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = zext i32 %.sink13.i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !178
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !79   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i, %bb.c
  %.019.i.i = phi i64 [ %i.v, %bb.c ], [ %i.aa, %_ZN4llvm11raw_ostreamlsEc.exit.i.i ] ; 2 uses
  %i.aa = lshr i64 %.019.i.i, 7                   ; 2 uses
  %.not.i.not.i = icmp eq i64 %i.aa, 0            ; 2 uses
  %i.ab = trunc i64 %.019.i.i to i8               ; 2 uses
  %i.ac = or i8 %i.ab, -128
  %.0.i.i = select i1 %.not.i.not.i, i8 %i.ab, i8 %i.ac ; 2 uses
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !92  ; 3 uses
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !102
  %.not.i.i.i = icmp ult ptr %i.ad, %i.ae
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.x, i8 noundef zeroext %.0.i.i) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ag, ptr %i.y, align 8, !tbaa !92
  store i8 %.0.i.i, ptr %i.ad, align 1, !tbaa !103
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i

_ZN4llvm11raw_ostreamlsEc.exit.i.i:               ; preds = %bb.f, %bb.e
  br i1 %.not.i.not.i, label %_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase14writeCSNameIdxERKNS0_13SampleContextE.exit, label %bb.d, !llvm.loop !4

_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase14writeCSNameIdxERKNS0_13SampleContextE.exit: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i, %bb.b
  %.sroa.0.0.i = phi i32 [ 8, %bb.b ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit.i.i ]
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm19sampleprof_categoryEv() #26
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !179
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.sroa.0.0.copyload.i, ptr %2, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %0, align 8, !tbaa !43
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.al(ptr noundef nonnull align 8 dereferenceable(89) %0) #26, !inline_history !180 ; 5 uses
  %i.an = call noundef ptr @_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof10FunctionIdEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6doFindIS3_EEPKS8_RKT_(ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %2), !noalias !363 ; 3 uses
  %.not.not.i.i.i.i8 = icmp eq ptr %i.an, null
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !181, !noalias !363
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !160, !noalias !363
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ar
  %i.at = icmp eq ptr %i.an, %i.as
  %i.au = select i1 %.not.not.i.i.i.i8, i1 true, i1 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  %.sink13.in.i.i9 = select i1 %i.au, ptr %i.aw, ptr %i.av
  %.sink13.i.i10 = load i32, ptr %.sink13.in.i.i9, align 8, !tbaa !169 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !162
  %i.ay = icmp eq i32 %.sink13.i.i10, %i.ax
  br i1 %i.ay, label %_ZN4llvm10sampleprof25SampleProfileWriterBinary12writeNameIdxENS0_10FunctionIdE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = zext i32 %.sink13.i.i10 to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !41
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !183
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !79 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i15, %bb.h
  %.019.i.i11 = phi i64 [ %i.bf, %bb.h ], [ %i.bk, %_ZN4llvm11raw_ostreamlsEc.exit.i.i15 ] ; 2 uses
  %i.bk = lshr i64 %.019.i.i11, 7                 ; 2 uses
  %.not.i.not.i12 = icmp eq i64 %i.bk, 0          ; 2 uses
  %i.bl = trunc i64 %.019.i.i11 to i8             ; 2 uses
  %i.bm = or i8 %i.bl, -128
  %.0.i.i13 = select i1 %.not.i.not.i12, i8 %i.bl, i8 %i.bm ; 2 uses
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !92 ; 3 uses
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !102
  %.not.i.i.i14 = icmp ult ptr %i.bn, %i.bo
  br i1 %.not.i.i.i14, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.bh, i8 noundef zeroext %.0.i.i13) #26 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i15

bb.k:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  store ptr %i.bq, ptr %i.bi, align 8, !tbaa !92
  store i8 %.0.i.i13, ptr %i.bn, align 1, !tbaa !103
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i15

_ZN4llvm11raw_ostreamlsEc.exit.i.i15:             ; preds = %bb.k, %bb.j
  br i1 %.not.i.not.i12, label %_ZN4llvm10sampleprof25SampleProfileWriterBinary12writeNameIdxENS0_10FunctionIdE.exit, label %bb.i, !llvm.loop !4

_ZN4llvm10sampleprof25SampleProfileWriterBinary12writeNameIdxENS0_10FunctionIdE.exit: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i15, %bb.g
  %.sroa.0.0.i16 = phi i32 [ 8, %bb.g ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit.i.i15 ]
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm19sampleprof_categoryEv() #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.l

bb.l:                                             ; preds = %_ZN4llvm10sampleprof25SampleProfileWriterBinary12writeNameIdxENS0_10FunctionIdE.exit, %_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase14writeCSNameIdxERKNS0_13SampleContextE.exit
  %.sroa.0.0.i.pn = phi i32 [ %.sroa.0.0.i, %_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase14writeCSNameIdxERKNS0_13SampleContextE.exit ], [ %.sroa.0.0.i16, %_ZN4llvm10sampleprof25SampleProfileWriterBinary12writeNameIdxENS0_10FunctionIdE.exit ]
  %.pn19 = phi ptr [ %i.ah, %_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase14writeCSNameIdxERKNS0_13SampleContextE.exit ], [ %i.br, %_ZN4llvm10sampleprof25SampleProfileWriterBinary12writeNameIdxENS0_10FunctionIdE.exit ]
  %.fca.0.insert.i.pn = insertvalue { i32, ptr } poison, i32 %.sroa.0.0.i.pn, 0
  %.pn = insertvalue { i32, ptr } %.fca.0.insert.i.pn, ptr %.pn19, 1
  ret { i32, ptr } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i32, ptr } @_ZN4llvm10sampleprof32SampleProfileWriterExtBinaryBase14writeCSNameIdxERKNS0_13SampleContextE(ptr noundef nonnull align 8 dereferenceable(584) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #4 align 2 {
_ZN4llvm9MapVectorINS_10sampleprof13SampleContextEjNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EE4findERKS2_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.b = tail call noundef ptr @_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_10sampleprof13SampleContextEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E6doFindIS3_EEPKS8_RKT_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1), !noalias !368 ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.b, null
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !176, !noalias !368
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.e = load i32, ptr %i.d, align 4, !tbaa !164, !noalias !368
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %i.f
  %i.h = icmp eq ptr %i.b, %i.g
  %i.i = select i1 %.not.not.i.i.i, i1 true, i1 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %.sink13.in.i = select i1 %i.i, ptr %i.k, ptr %i.j
  %.sink13.i = load i32, ptr %.sink13.in.i, align 8, !tbaa !169 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !162
  %i.m = icmp eq i32 %.sink13.i, %i.l
  br i1 %i.m, label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm9MapVectorINS_10sampleprof13SampleContextEjNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EE4findERKS2_.exit
  %i.n = zext i32 %.sink13.i to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load i32, ptr %i.r, align 8, !tbaa !178
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !79   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %bb.a
  %.019.i = phi i64 [ %i.t, %bb.a ], [ %i.y, %_ZN4llvm11raw_ostreamlsEc.exit.i ] ; 2 uses
  %i.y = lshr i64 %.019.i, 7                      ; 2 uses
  %.not.i.not = icmp eq i64 %i.y, 0               ; 2 uses
  %i.z = trunc i64 %.019.i to i8                  ; 2 uses
  %i.aa = or i8 %i.z, -128
  %.0.i = select i1 %.not.i.not, i8 %i.z, i8 %i.aa ; 2 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !92  ; 3 uses
end_hunk_0
