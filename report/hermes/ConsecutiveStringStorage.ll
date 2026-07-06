inline.NumInlined: 2626
inline.NumDeleted: 1307
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6hermes3hbc24ConsecutiveStringStorageC2ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_PSA_ESt17integral_constantIbLb0EEEET_SG_T0_b:bb.a
bb.ab:                                            ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EEaSEOS3_.exit
  %i.ez = load ptr, ptr %i.eu, align 16, !tbaa !69
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %.pr to i64
  %i.fc = sub i64 %i.fa, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.fc) #18
  br label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EED2Ev.exit

_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_118StringTableBuilderC2ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_PS9_ESt17integral_constantIbLb0EEEET_SF_T0_.exit, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EEaSEOS3_.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %.not.i.i.i9 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIDsSaIDsEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EED2Ev.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !60
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = sub i64 %i.ff, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.fg) #18
  br label %_ZNSt6vectorIDsSaIDsEED2Ev.exit

_ZNSt6vectorIDsSaIDsEED2Ev.exit:                  ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EED2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %.not.i.i.i10 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIDsSaIDsEED2Ev.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !71
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.ea to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.fl) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIDsSaIDsEED2Ev.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call fastcc void @_ZN12_GLOBAL__N_118StringTableBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_118StringTableBuilder15packIntoStorageEPSt6vectorIhSaIhEEPS1_IDsSaIDsEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.(anonymous namespace)::StringPacker<char16_t>::HashedSuffix", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.sroa.0.i.i.i.i.i.i.i15 = alloca %"class.llvh::ArrayRef", align 8 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"struct.(anonymous namespace)::StringPacker<char16_t>::HashedSuffix", align 8 ; 7 uses
  %6 = alloca %"struct.llvh::detail::DenseSetEmpty", align 1 ; 3 uses
  %7 = alloca %"struct.std::pair.113", align 8    ; 3 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.llvh::DenseSet.87", align 8 ; 11 uses
  %9 = alloca %"struct.(anonymous namespace)::StringPacker<unsigned char>::HashedSuffix", align 8 ; 8 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %.sroa.0.i.i.i.i.i.i.i = alloca %"class.llvh::ArrayRef.25", align 8 ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %10 = alloca %"struct.(anonymous namespace)::StringPacker<unsigned char>::HashedSuffix", align 8 ; 7 uses
  %11 = alloca %"struct.llvh::detail::DenseSetEmpty", align 1 ; 3 uses
  %12 = alloca %"struct.std::pair.52", align 8    ; 3 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.llvh::DenseSet", align 8   ; 11 uses
  %14 = alloca %"class.std::vector.0", align 16   ; 9 uses
  %15 = alloca %"class.std::vector.19", align 16  ; 9 uses
  %16 = alloca %"class.std::vector.0", align 16   ; 11 uses
  %17 = alloca %"class.std::vector.19", align 16  ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br i1 %3, label %bb.b, label %bb.gg

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %.val7 = load ptr, ptr %i.g, align 8, !tbaa !72 ; 6 uses
  %.val8 = load ptr, ptr %i.h, align 8, !tbaa !75 ; 6 uses
  %i.i = ptrtoint ptr %.val8 to i64
  %i.j = ptrtoint ptr %.val7 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 96                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15, !noalias !76
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.m = lshr i64 %i.l, 3
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.b
  %i.p = shl i32 %i.n, 2
  %i.q = udiv i32 %i.p, 3
  %i.r = add nuw nsw i32 %i.q, 1
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = lshr i64 %i.s, 1
  %i.u = or i64 %i.t, %i.s                        ; 2 uses
  %i.v = lshr i64 %i.u, 2
  %i.w = or i64 %i.v, %i.u                        ; 2 uses
  %i.x = lshr i64 %i.w, 4
  %i.y = or i64 %i.x, %i.w                        ; 2 uses
  %i.z = lshr i64 %i.y, 8
  %i.aa = or i64 %i.z, %i.y                       ; 2 uses
  %i.ab = lshr i64 %i.aa, 16
  %i.ac = or i64 %i.ab, %i.aa
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = add nuw i32 %i.ad, 1                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !82, !alias.scope !79, !noalias !76
  %i.ag = zext i32 %i.ae to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2                ; 2 uses
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #19, !noalias !85 ; 2 uses
  store ptr %i.ai, ptr %13, align 8, !tbaa !86, !alias.scope !79, !noalias !76
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 0, ptr %i.aj, align 8, !tbaa !87, !alias.scope !79, !noalias !76
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !88, !alias.scope !79, !noalias !76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ai, i8 -1, i64 %i.ah, i1 false), !tbaa !3, !noalias !85
  br label %_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 20, i1 false), !alias.scope !79, !noalias !76
  br label %_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i

_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i: ; preds = %bb.c, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.not16.i.i = icmp eq ptr %.val8, %.val7
  br i1 %.not16.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvT_S5_.exit.i.thread.i, label %.lr.ph.i.i

_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvT_S5_.exit.i.thread.i: ; preds = %_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i
  tail call void @_ZdlPv(ptr noundef null) #15, !noalias !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %14, i8 0, i64 24, i1 false), !alias.scope !76
  br label %_ZN12_GLOBAL__N_112StringPackerIhE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit

.lr.ph.i.i:                                       ; preds = %_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i, %bb.e
  %.017.i.i = phi ptr [ %i.az, %bb.e ], [ %.val7, %_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i ] ; 3 uses
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 16
  %.sroa.412.0.copyload.i.i = load i64, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !tbaa !92, !noalias !85
  %i.al = icmp ugt i64 %.sroa.412.0.copyload.i.i, 2
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 8
  %.sroa.011.0.copyload.i.i = load ptr, ptr %i.am, align 8, !tbaa !54, !noalias !85 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15, !noalias !85
  %i.an = load i8, ptr %.sroa.011.0.copyload.i.i, align 1, !tbaa !55, !noalias !76
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.i.i, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !55, !noalias !76
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 8
  %i.au = or disjoint i32 %i.at, %i.ap
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.i.i, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !55, !noalias !76
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.f, align 4, !tbaa !3, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15, !noalias !93
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15, !noalias !93
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E11try_emplaceIJRS3_EEESt4pairINS_16DenseMapIteratorIjS3_S5_S7_Lb0EEEbEOjDpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.52") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %11), !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15, !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15, !noalias !85
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, %.val8
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i, label %.lr.ph.i.i

_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i: ; preds = %bb.e
  %.tr.i.i = trunc i64 %i.l to i32                ; 2 uses
  %.mask.i.i = and i32 %.tr.i.i, 536870911
  %i.ba = icmp eq i32 %.mask.i.i, 0
  br i1 %i.ba, label %.lr.ph179.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i
  %i.bb = shl i32 %.tr.i.i, 5
  %i.bc = udiv i32 %i.bb, 3
  %i.bd = add nuw nsw i32 %i.bc, 1
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bf = lshr i64 %i.be, 1
  %i.bg = or i64 %i.bf, %i.be                     ; 2 uses
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = or i64 %i.bh, %i.bg                     ; 2 uses
  %i.bj = lshr i64 %i.bi, 4
  %i.bk = or i64 %i.bj, %i.bi                     ; 2 uses
  %i.bl = lshr i64 %i.bk, 8
  %i.bm = or i64 %i.bl, %i.bk                     ; 2 uses
  %i.bn = lshr i64 %i.bm, 16
  %i.bo = or i64 %i.bn, %i.bm                     ; 2 uses
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = add nuw i32 %i.bp, 1                    ; 3 uses
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = mul nuw nsw i64 %i.br, 48               ; 2 uses
  %i.bt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #19, !noalias !89 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  %18 = and i64 %i.bo, 4294967295
  %xtraiter = and i64 %i.br, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.prol ], [ %i.bt, %bb.f ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %bb.f ]
  store ptr inttoptr (i64 -1 to ptr), ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.prol, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.prol, align 8, !tbaa !3, !noalias !89
  %i.bv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 48 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !97

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %bb.f
  %.08.i.i.i.i.i.unr = phi ptr [ %i.bt, %bb.f ], [ %i.bv, %.lr.ph.i.i.i.i.i.prol ]
  %i.bw = icmp samesign ult i64 %18, 7
  br i1 %i.bw, label %.lr.ph179.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 25 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %.08.i.i.i.i.i, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i, align 8, !tbaa !3, !noalias !89
  %i.bx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bx, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.1, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.1, align 8, !tbaa !3, !noalias !89
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  store ptr inttoptr (i64 -1 to ptr), ptr %i.by, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.2, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.2, align 8, !tbaa !3, !noalias !89
  %i.bz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 144
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bz, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 152
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.3, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 160
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.3, align 8, !tbaa !3, !noalias !89
  %i.ca = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ca, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 200
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.4, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.4, align 8, !tbaa !3, !noalias !89
  %i.cb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 240
  store ptr inttoptr (i64 -1 to ptr), ptr %i.cb, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 248
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.5, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 256
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.5, align 8, !tbaa !3, !noalias !89
  %i.cc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 288
  store ptr inttoptr (i64 -1 to ptr), ptr %i.cc, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 296
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.6, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 304
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.6, align 8, !tbaa !3, !noalias !89
  %i.cd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 336
  store ptr inttoptr (i64 -1 to ptr), ptr %i.cd, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 344
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.7, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 352
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.7, align 8, !tbaa !3, !noalias !89
  %i.ce = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 384 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq ptr %i.ce, %i.bu
  br i1 %.not.i.i.i.i.i.7, label %.lr.ph179.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !99

.lr.ph179.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i
  %.sroa.29.3.i.i = phi i32 [ 0, %_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i ], [ %i.bq, %.lr.ph.i.i.i.i.i ], [ %i.bq, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.sroa.092.3.i.i = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i ], [ %i.bt, %.lr.ph.i.i.i.i.i ], [ %i.bt, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.cf = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.g

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i
  %i.cj = icmp eq i32 %.sroa.12.2.i.i, 0
  br i1 %i.cj, label %._crit_edge.thread.i.i, label %bb.ae

bb.g:                                             ; preds = %.loopexit.i.i, %.lr.ph179.i.i
  %.0176.i.i = phi ptr [ %.val7, %.lr.ph179.i.i ], [ %i.im, %.loopexit.i.i ] ; 5 uses
  %.sroa.092.0175.i.i = phi ptr [ %.sroa.092.3.i.i, %.lr.ph179.i.i ], [ %.sroa.092.2.i.i, %.loopexit.i.i ] ; 3 uses
  %.sroa.12.0174.i.i = phi i32 [ 0, %.lr.ph179.i.i ], [ %.sroa.12.2.i.i, %.loopexit.i.i ] ; 3 uses
  %.sroa.23.0173.i.i = phi i32 [ 0, %.lr.ph179.i.i ], [ %.sroa.23.2.i.i, %.loopexit.i.i ] ; 3 uses
  %.sroa.29.0172.i.i = phi i32 [ %.sroa.29.3.i.i, %.lr.ph179.i.i ], [ %.sroa.29.2.i.i, %.loopexit.i.i ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0176.i.i, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !100, !noalias !89 ; 5 uses
  %i.cm = icmp ugt i64 %i.cl, 24576
  br i1 %i.cm, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cn = getelementptr inbounds nuw i8, ptr %.0176.i.i, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !102, !noalias !89 ; 2 uses
  %.not36145155.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not36145155.i.i, label %.loopexit.i.i, label %.lr.ph.i17.i

.lr.ph.i17.i:                                     ; preds = %bb.h, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i
  %.033.ph166.i.i = phi i32 [ %i.da, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ 0, %bb.h ]
  %.034.ph165.i.i = phi i64 [ %i.ct, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %i.cl, %bb.h ]
  %.sroa.092.1.ph162.i.i = phi ptr [ %.sroa.092.5.i.i, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %.sroa.092.0175.i.i, %bb.h ] ; 9 uses
  %.sroa.12.1.ph160.i.i = phi i32 [ %.sroa.12.4.i.i, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %.sroa.12.0174.i.i, %bb.h ] ; 5 uses
  %.sroa.23.1.ph158.i.i = phi i32 [ %.sroa.23.6.i.i, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %.sroa.23.0173.i.i, %bb.h ] ; 4 uses
  %.sroa.29.1.ph156.i.i = phi i32 [ %.sroa.29.5.i.i, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %.sroa.29.0172.i.i, %bb.h ] ; 11 uses
  %i.cp = load ptr, ptr %13, align 8, !noalias !76 ; 2 uses
  %i.cq = load i32, ptr %i.cf, align 8, !noalias !76 ; 2 uses
  %i.cr = icmp eq i32 %i.cq, 0
  %i.cs = add i32 %i.cq, -1                       ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i, %.lr.ph.i17.i
  %.033147.i.i = phi i32 [ %.033.ph166.i.i, %.lr.ph.i17.i ], [ %i.da, %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i ]
  %.034146.i.i = phi i64 [ %.034.ph165.i.i, %.lr.ph.i17.i ], [ %i.ct, %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i ] ; 3 uses
  %i.ct = add nsw i64 %.034146.i.i, -1            ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ct ; 4 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !55, !noalias !89
  %i.cw = zext i8 %i.cv to i32                    ; 2 uses
  %i.cx = add i32 %.033147.i.i, %i.cw
  %i.cy = mul i32 %i.cx, 1025                     ; 2 uses
  %i.cz = lshr i32 %i.cy, 6
  %i.da = xor i32 %i.cz, %i.cy                    ; 7 uses
  %i.db = add nuw nsw i64 %.034146.i.i, 2
  %.not37.i.i = icmp ugt i64 %i.db, %i.cl
  br i1 %.not37.i.i, label %.critedge.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dc = shl nuw nsw i32 %i.cw, 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.co, i64 %.034146.i.i
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !55, !noalias !89
  %i.df = zext i8 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 8
  %i.dh = or disjoint i32 %i.dg, %i.dc
  %i.di = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !55, !noalias !89
  %i.dk = zext i8 %i.dj to i32
  %i.dl = or disjoint i32 %i.dh, %i.dk            ; 3 uses
  br i1 %i.cr, label %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dm = mul nuw nsw i32 %i.dl, 37
  %.02744.i.i.i.i.i = and i32 %i.dm, %i.cs        ; 2 uses
  %i.dn = zext nneg i32 %.02744.i.i.i.i.i to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3, !noalias !89 ; 2 uses
  %i.dq = icmp eq i32 %i.dl, %i.dp
  br i1 %i.dq, label %.critedge.i.i, label %.lr.ph.i.i.i52.i.i, !prof !103

.lr.ph.i.i.i52.i.i:                               ; preds = %bb.k, %bb.l
  %i.dr = phi i32 [ %i.dx, %bb.l ], [ %i.dp, %bb.k ]
  %.02747.i.i.i.i.i = phi i32 [ %.027.i.i.i.i.i, %bb.l ], [ %.02744.i.i.i.i.i, %bb.k ]
  %.02546.i.i.i.i.i = phi i32 [ %i.dt, %bb.l ], [ 1, %bb.k ] ; 2 uses
  %i.ds = icmp eq i32 %i.dr, -1
  br i1 %i.ds, label %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i, label %bb.l, !prof !56

bb.l:                                             ; preds = %.lr.ph.i.i.i52.i.i
  %i.dt = add i32 %.02546.i.i.i.i.i, 1
  %i.du = add i32 %.02546.i.i.i.i.i, %.02747.i.i.i.i.i
  %.027.i.i.i.i.i = and i32 %i.du, %i.cs          ; 2 uses
  %i.dv = zext i32 %.027.i.i.i.i.i to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3, !noalias !89 ; 2 uses
  %i.dy = icmp eq i32 %i.dl, %i.dx
  br i1 %i.dy, label %.critedge.i.i, label %.lr.ph.i.i.i52.i.i, !prof !104, !llvm.loop !105

_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i: ; preds = %.lr.ph.i.i.i52.i.i, %bb.j
  %.not36.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not36.i.i, label %.loopexit.i.i, label %bb.i, !llvm.loop !106

.critedge.i.i:                                    ; preds = %bb.k, %bb.i, %bb.l
  %i.dz = sub nsw i64 %i.cl, %i.ct
  %.sroa.22.0.copyload.i.fr.i.i.i.i = freeze i64 %i.dz ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15, !noalias !89
  store ptr %i.cu, ptr %10, align 8, !tbaa !54, !noalias !89
  store i64 %.sroa.22.0.copyload.i.fr.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !92, !noalias !89
  store i32 %i.da, ptr %i.cg, align 8, !tbaa !107, !noalias !89
  %i.ea = icmp eq i32 %.sroa.29.1.ph156.i.i, 0    ; 2 uses
  br i1 %i.ea, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread.i.i, label %bb.m

bb.m:                                             ; preds = %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15, !noalias !89
  store ptr inttoptr (i64 -2 to ptr), ptr %9, align 8, !alias.scope !109, !noalias !89
  store i64 0, ptr %i.ch, align 8, !alias.scope !109, !noalias !89
  store i32 0, ptr %i.ci, align 8, !tbaa !107, !alias.scope !109, !noalias !89
  %i.eb = add i32 %.sroa.29.1.ph156.i.i, -1       ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.22.0.copyload.i.fr.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i, label %.split.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %bb.m, %bb.p
  %.029.us.i.i.i.i = phi ptr [ %spec.select.us.i.i.i.i, %bb.p ], [ null, %bb.m ] ; 3 uses
  %.val36.pn.us.i.i.i.i = phi i32 [ %i.el, %bb.p ], [ %i.da, %bb.m ]
  %.025.us.i.i.i.i = phi i32 [ %i.ek, %bb.p ], [ 1, %bb.m ] ; 2 uses
  %.027.us.i.i.i.i = and i32 %.val36.pn.us.i.i.i.i, %i.eb ; 2 uses
  %i.ec = zext i32 %.027.us.i.i.i.i to i64
  %i.ed = getelementptr inbounds nuw [48 x i8], ptr %.sroa.092.1.ph162.i.i, i64 %i.ec ; 7 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !107, !noalias !89 ; 2 uses
  %i.eg = icmp eq i32 %i.da, %i.ef
  br i1 %i.eg, label %bb.n, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i.i.i.i, !prof !114

bb.n:                                             ; preds = %.split.us.i.i.i.i
  %.sroa.2.0..sroa_idx.i.us.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.2.0.copyload.i.us.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.us.i.i.i.i, align 8, !tbaa !92, !noalias !89
  %.not.i.i.i.us.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload.i.us.i.i.i.i, 0
  br i1 %.not.i.i.i.us.i.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread119.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i.i.i.i, !prof !114

_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i.i.i.i: ; preds = %bb.n, %.split.us.i.i.i.i
  %i.eh = icmp eq i32 %i.ef, 0
  br i1 %i.eh, label %bb.o, label %bb.p, !prof !114

bb.o:                                             ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i.i.i.i
  %.sroa.22.0..sroa_idx.i82.i.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_118StringTableBuilder15packIntoStorageEPSt6vectorIhSaIhEEPS1_IDsSaIDsEEb:bb.a
bb.cn:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EEEvT_S8_.exit.i.i
  %i.xh = ptrtoint ptr %.sroa.14.2.i to i64
  %i.xi = ptrtoint ptr %.sroa.073.2.i to i64
  %i.xj = sub i64 %i.xh, %i.xi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.073.2.i, i64 noundef %i.xj) #18
  br label %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EED2Ev.exit.i

_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EED2Ev.exit.i: ; preds = %bb.cn, %_ZSt8_DestroyIPSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EEEvT_S8_.exit.i.i
  %.not5.i.i.i62.i = icmp eq ptr %.sroa.074.3.i, %.sroa.11.3.i
  br i1 %.not5.i.i.i62.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvT_S5_.exit.i.i, label %.lr.ph.i.i.i63.i

.lr.ph.i.i.i63.i:                                 ; preds = %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EED2Ev.exit.i, %_ZSt8_DestroyIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvPT_.exit.i.i.i.i
  %.06.i.i.i64.i = phi ptr [ %i.xp, %_ZSt8_DestroyIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvPT_.exit.i.i.i.i ], [ %.sroa.074.3.i, %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EED2Ev.exit.i ] ; 3 uses
  %i.xk = getelementptr i8, ptr %.06.i.i.i64.i, i64 16
  %.0.val.i.i.i65.i = load ptr, ptr %i.xk, align 8, !tbaa !129 ; 3 uses
  %.not.i.i.i.i.i.i.i.i66.i = icmp eq ptr %.0.val.i.i.i65.i, null
  br i1 %.not.i.i.i.i.i.i.i.i66.i, label %_ZSt8_DestroyIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvPT_.exit.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i.i.i63.i
  %i.xl = getelementptr i8, ptr %.06.i.i.i64.i, i64 32
  %.0.val4.i.i.i67.i = load ptr, ptr %i.xl, align 8, !tbaa !124
  %i.xm = ptrtoint ptr %.0.val4.i.i.i67.i to i64
  %i.xn = ptrtoint ptr %.0.val.i.i.i65.i to i64
  %i.xo = sub i64 %i.xm, %i.xn
  call void @_ZdlPvm(ptr noundef nonnull %.0.val.i.i.i65.i, i64 noundef %i.xo) #18
  br label %_ZSt8_DestroyIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvPT_.exit.i.i.i.i: ; preds = %bb.co, %.lr.ph.i.i.i63.i
  %i.xp = getelementptr inbounds nuw i8, ptr %.06.i.i.i64.i, i64 40 ; 2 uses
  %.not.i.i.i68.i = icmp eq ptr %i.xp, %.sroa.11.3.i
  br i1 %.not.i.i.i68.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvT_S5_.exit.i.i, label %.lr.ph.i.i.i63.i, !llvm.loop !208

_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvT_S5_.exit.i.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvPT_.exit.i.i.i.i, %_ZNSt6vectorIS_IN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EESaIS5_EED2Ev.exit.i
  %.not.i.i2.i71.i = icmp eq ptr %.sroa.074.3.i, null
  br i1 %.not.i.i2.i71.i, label %_ZN12_GLOBAL__N_112StringPackerIhE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvT_S5_.exit.i.i
  %i.xq = sub i64 %.sroa.17.3.i, %i.lc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.3.i, i64 noundef %i.xq) #18
  br label %_ZN12_GLOBAL__N_112StringPackerIhE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit

_ZN12_GLOBAL__N_112StringPackerIhE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvT_S5_.exit.i.thread.i, %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvT_S5_.exit.i.i, %bb.cp
  %i.xr = load ptr, ptr %13, align 8, !tbaa !86, !noalias !76
  call void @_ZdlPv(ptr noundef %i.xr) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !76
  %i.xs = load ptr, ptr %1, align 8, !tbaa !209   ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !71
  %i.xv = load <2 x ptr>, ptr %14, align 16, !tbaa !54
  store <2 x ptr> %i.xv, ptr %1, align 8, !tbaa !54
  %i.xw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.xx = load ptr, ptr %i.xw, align 16, !tbaa !71
  store ptr %i.xx, ptr %i.xt, align 8, !tbaa !71
  %.not.i.i.i.i.i13 = icmp eq ptr %i.xs, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i13, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %_ZNSt6vectorIhSaIhEEaSEOS1_.exit

_ZNSt6vectorIhSaIhEEaSEOS1_.exit:                 ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit
  %i.xy = ptrtoint ptr %i.xu to i64
  %i.xz = ptrtoint ptr %i.xs to i64
  %i.ya = sub i64 %i.xy, %i.xz
  call void @_ZdlPvm(ptr noundef nonnull %i.xs, i64 noundef %i.ya) #18
  %.pr = load ptr, ptr %14, align 16, !tbaa !209  ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIhSaIhEEaSEOS1_.exit
  %i.yb = load ptr, ptr %i.xw, align 16, !tbaa !71
  %i.yc = ptrtoint ptr %i.yb to i64
  %i.yd = ptrtoint ptr %.pr to i64
  %i.ye = sub i64 %i.yc, %i.yd
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ye) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit, %_ZNSt6vectorIhSaIhEEaSEOS1_.exit, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val11 = load ptr, ptr %i.yf, align 8, !tbaa !210 ; 6 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val12 = load ptr, ptr %i.yg, align 8, !tbaa !213 ; 6 uses
  %i.yh = ptrtoint ptr %.val12 to i64
  %i.yi = ptrtoint ptr %.val11 to i64
  %i.yj = sub i64 %i.yh, %i.yi
  %i.yk = sdiv exact i64 %i.yj, 96                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15, !noalias !214
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.yl = lshr i64 %i.yk, 3
  %i.ym = trunc i64 %i.yl to i32                  ; 2 uses
  %i.yn = icmp eq i32 %i.ym, 0
  br i1 %i.yn, label %bb.cr, label %.lr.ph.preheader.i.i.i.i.i.i.i16

.lr.ph.preheader.i.i.i.i.i.i.i16:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.yo = shl i32 %i.ym, 2
  %i.yp = udiv i32 %i.yo, 3
  %i.yq = add nuw nsw i32 %i.yp, 1
  %i.yr = zext nneg i32 %i.yq to i64              ; 2 uses
  %i.ys = lshr i64 %i.yr, 1
  %i.yt = or i64 %i.ys, %i.yr                     ; 2 uses
  %i.yu = lshr i64 %i.yt, 2
  %i.yv = or i64 %i.yu, %i.yt                     ; 2 uses
  %i.yw = lshr i64 %i.yv, 4
  %i.yx = or i64 %i.yw, %i.yv                     ; 2 uses
  %i.yy = lshr i64 %i.yx, 8
  %i.yz = or i64 %i.yy, %i.yx                     ; 2 uses
  %i.za = lshr i64 %i.yz, 16
  %i.zb = or i64 %i.za, %i.yz
  %i.zc = trunc nuw nsw i64 %i.zb to i32
  %i.zd = add nuw i32 %i.zc, 1                    ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %i.zd, ptr %i.ze, align 8, !tbaa !220, !alias.scope !217, !noalias !214
  %i.zf = zext i32 %i.zd to i64
  %i.zg = shl nuw nsw i64 %i.zf, 3                ; 2 uses
  %i.zh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zg) #19, !noalias !223 ; 2 uses
  store ptr %i.zh, ptr %8, align 8, !tbaa !224, !alias.scope !217, !noalias !214
  %i.zi = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.zi, align 8, !tbaa !225, !alias.scope !217, !noalias !214
  %i.zj = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %i.zj, align 4, !tbaa !226, !alias.scope !217, !noalias !214
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.zh, i8 -1, i64 %i.zg, i1 false), !tbaa !92, !noalias !223
  br label %_ZN4llvh8DenseSetImNS_12DenseMapInfoImEEECI2NS_6detail12DenseSetImplImNS_8DenseMapImNS4_13DenseSetEmptyES2_NS4_12DenseSetPairImEEEES2_EEEj.exit.i.i

bb.cr:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 20, i1 false), !alias.scope !217, !noalias !214
  br label %_ZN4llvh8DenseSetImNS_12DenseMapInfoImEEECI2NS_6detail12DenseSetImplImNS_8DenseMapImNS4_13DenseSetEmptyES2_NS4_12DenseSetPairImEEEES2_EEEj.exit.i.i

_ZN4llvh8DenseSetImNS_12DenseMapInfoImEEECI2NS_6detail12DenseSetImplImNS_8DenseMapImNS4_13DenseSetEmptyES2_NS4_12DenseSetPairImEEEES2_EEEj.exit.i.i: ; preds = %bb.cr, %.lr.ph.preheader.i.i.i.i.i.i.i16
  %.not16.i.i18 = icmp eq ptr %.val12, %.val11
  br i1 %.not16.i.i18, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEEvT_S5_.exit.i.thread.i, label %.lr.ph.i.i19

_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEEvT_S5_.exit.i.thread.i: ; preds = %_ZN4llvh8DenseSetImNS_12DenseMapInfoImEEECI2NS_6detail12DenseSetImplImNS_8DenseMapImNS4_13DenseSetEmptyES2_NS4_12DenseSetPairImEEEES2_EEEj.exit.i.i
  call void @_ZdlPv(ptr noundef null) #15, !noalias !227
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %15, i8 0, i64 24, i1 false), !alias.scope !214
  br label %_ZN12_GLOBAL__N_112StringPackerIDsE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit

.lr.ph.i.i19:                                     ; preds = %_ZN4llvh8DenseSetImNS_12DenseMapInfoImEEECI2NS_6detail12DenseSetImplImNS_8DenseMapImNS4_13DenseSetEmptyES2_NS4_12DenseSetPairImEEEES2_EEEj.exit.i.i, %bb.ct
  %.017.i.i20 = phi ptr [ %i.zy, %bb.ct ], [ %.val11, %_ZN4llvh8DenseSetImNS_12DenseMapInfoImEEECI2NS_6detail12DenseSetImplImNS_8DenseMapImNS4_13DenseSetEmptyES2_NS4_12DenseSetPairImEEEES2_EEEj.exit.i.i ] ; 3 uses
  %.sroa.412.0..sroa_idx.i.i21 = getelementptr inbounds nuw i8, ptr %.017.i.i20, i64 16
  %.sroa.412.0.copyload.i.i22 = load i64, ptr %.sroa.412.0..sroa_idx.i.i21, align 8, !tbaa !92, !noalias !223
  %i.zk = icmp ugt i64 %.sroa.412.0.copyload.i.i22, 2
  br i1 %i.zk, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %.lr.ph.i.i19
  %i.zl = getelementptr inbounds nuw i8, ptr %.017.i.i20, i64 8
  %.sroa.011.0.copyload.i.i415 = load ptr, ptr %i.zl, align 8, !tbaa !230, !noalias !223 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15, !noalias !223
  %i.zm = load i16, ptr %.sroa.011.0.copyload.i.i415, align 2, !tbaa !61, !noalias !214
  %i.zn = zext i16 %i.zm to i64
  %i.zo = shl nuw nsw i64 %i.zn, 32
  %i.zp = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.i.i415, i64 2
  %i.zq = load i16, ptr %i.zp, align 2, !tbaa !61, !noalias !214
  %i.zr = zext i16 %i.zq to i64
  %i.zs = shl nuw nsw i64 %i.zr, 16
  %i.zt = or disjoint i64 %i.zs, %i.zo
  %i.zu = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.i.i415, i64 4
  %i.zv = load i16, ptr %i.zu, align 2, !tbaa !61, !noalias !214
  %i.zw = zext i16 %i.zv to i64
  %i.zx = or disjoint i64 %i.zt, %i.zw
  store i64 %i.zx, ptr %i.c, align 8, !tbaa !92, !noalias !223
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !231
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !231
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E11try_emplaceIJRS3_EEESt4pairINS_16DenseMapIteratorImS3_S5_S7_Lb0EEEbEOmDpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.113") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %6), !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15, !noalias !223
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %.lr.ph.i.i19
  %i.zy = getelementptr inbounds nuw i8, ptr %.017.i.i20, i64 96 ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.zy, %.val12
  br i1 %.not.i.i23, label %_ZN12_GLOBAL__N_112StringPackerIDsE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i, label %.lr.ph.i.i19

_ZN12_GLOBAL__N_112StringPackerIDsE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i: ; preds = %bb.ct
  %.tr.i.i24 = trunc i64 %i.yk to i32             ; 2 uses
  %.mask.i.i25 = and i32 %.tr.i.i24, 536870911
  %i.zz = icmp eq i32 %.mask.i.i25, 0
  br i1 %i.zz, label %.lr.ph181.i.i, label %bb.cu

bb.cu:                                            ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i
  %i.aaa = shl i32 %.tr.i.i24, 5
  %i.aab = udiv i32 %i.aaa, 3
  %i.aac = add nuw nsw i32 %i.aab, 1
  %i.aad = zext nneg i32 %i.aac to i64            ; 2 uses
  %i.aae = lshr i64 %i.aad, 1
  %i.aaf = or i64 %i.aae, %i.aad                  ; 2 uses
  %i.aag = lshr i64 %i.aaf, 2
  %i.aah = or i64 %i.aag, %i.aaf                  ; 2 uses
  %i.aai = lshr i64 %i.aah, 4
  %i.aaj = or i64 %i.aai, %i.aah                  ; 2 uses
  %i.aak = lshr i64 %i.aaj, 8
  %i.aal = or i64 %i.aak, %i.aaj                  ; 2 uses
  %i.aam = lshr i64 %i.aal, 16
  %i.aan = or i64 %i.aam, %i.aal                  ; 2 uses
  %i.aao = trunc nuw nsw i64 %i.aan to i32
  %i.aap = add nuw i32 %i.aao, 1                  ; 3 uses
  %i.aaq = zext i32 %i.aap to i64                 ; 2 uses
  %i.aar = mul nuw nsw i64 %i.aaq, 48             ; 2 uses
  %i.aas = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aar) #19, !noalias !227 ; 5 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 %i.aar
  %19 = and i64 %i.aan, 4294967295
  %xtraiter1169 = and i64 %i.aaq, 7               ; 2 uses
  %lcmp.mod1170.not = icmp eq i64 %xtraiter1169, 0
  br i1 %lcmp.mod1170.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i26.prol:                          ; preds = %bb.cu, %.lr.ph.i.i.i.i.i26.prol
  %.08.i.i.i.i.i27.prol = phi ptr [ %i.aau, %.lr.ph.i.i.i.i.i26.prol ], [ %i.aas, %bb.cu ] ; 4 uses
  %prol.iter1171 = phi i64 [ %prol.iter1171.next, %.lr.ph.i.i.i.i.i26.prol ], [ 0, %bb.cu ]
  store ptr inttoptr (i64 -1 to ptr), ptr %.08.i.i.i.i.i27.prol, align 8, !tbaa !230, !noalias !227
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.prol = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27.prol, i64 8
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.prol, align 8, !tbaa !92, !noalias !227
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.prol = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27.prol, i64 16
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.prol, align 8, !tbaa !3, !noalias !227
  %i.aau = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27.prol, i64 48 ; 2 uses
  %prol.iter1171.next = add i64 %prol.iter1171, 1 ; 2 uses
  %prol.iter1171.cmp.not = icmp eq i64 %prol.iter1171.next, %xtraiter1169
  br i1 %prol.iter1171.cmp.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol, !llvm.loop !235

.lr.ph.i.i.i.i.i26.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i26.prol, %bb.cu
  %.08.i.i.i.i.i27.unr = phi ptr [ %i.aas, %bb.cu ], [ %i.aau, %.lr.ph.i.i.i.i.i26.prol ]
  %i.aav = icmp samesign ult i64 %19, 7
  br i1 %i.aav, label %.lr.ph181.i.i, label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i26
  %.08.i.i.i.i.i27 = phi ptr [ %i.abd, %.lr.ph.i.i.i.i.i26 ], [ %.08.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 25 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %.08.i.i.i.i.i27, align 8, !tbaa !230, !noalias !227
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i28 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 8
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i28, align 8, !tbaa !92, !noalias !227
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i29 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 16
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i29, align 8, !tbaa !3, !noalias !227
  %i.aaw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 48
  store ptr inttoptr (i64 -1 to ptr), ptr %i.aaw, align 8, !tbaa !230, !noalias !227
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.1 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 56
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.1, align 8, !tbaa !92, !noalias !227
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.1 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 64
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.1, align 8, !tbaa !3, !noalias !227
  %i.aax = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 96
  store ptr inttoptr (i64 -1 to ptr), ptr %i.aax, align 8, !tbaa !230, !noalias !227
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.2 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 104
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.2, align 8, !tbaa !92, !noalias !227
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.2 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 112
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.2, align 8, !tbaa !3, !noalias !227
  %i.aay = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 144
  store ptr inttoptr (i64 -1 to ptr), ptr %i.aay, align 8, !tbaa !230, !noalias !227
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.3 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 152
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.3, align 8, !tbaa !92, !noalias !227
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.3 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 160
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.3, align 8, !tbaa !3, !noalias !227
  %i.aaz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 192
  store ptr inttoptr (i64 -1 to ptr), ptr %i.aaz, align 8, !tbaa !230, !noalias !227
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.4 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 200
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.4, align 8, !tbaa !92, !noalias !227
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.4 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 208
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.4, align 8, !tbaa !3, !noalias !227
  %i.aba = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 240
  store ptr inttoptr (i64 -1 to ptr), ptr %i.aba, align 8, !tbaa !230, !noalias !227
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.5 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 248
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.5, align 8, !tbaa !92, !noalias !227
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.5 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 256
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.5, align 8, !tbaa !3, !noalias !227
  %i.abb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 288
  store ptr inttoptr (i64 -1 to ptr), ptr %i.abb, align 8, !tbaa !230, !noalias !227
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.6 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 296
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.6, align 8, !tbaa !92, !noalias !227
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.6 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 304
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.6, align 8, !tbaa !3, !noalias !227
  %i.abc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 336
  store ptr inttoptr (i64 -1 to ptr), ptr %i.abc, align 8, !tbaa !230, !noalias !227
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.7 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 344
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i28.7, align 8, !tbaa !92, !noalias !227
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.7 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 352
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i29.7, align 8, !tbaa !3, !noalias !227
  %i.abd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i27, i64 384 ; 2 uses
  %.not.i.i.i.i.i30.7 = icmp eq ptr %i.abd, %i.aat
  br i1 %.not.i.i.i.i.i30.7, label %.lr.ph181.i.i, label %.lr.ph.i.i.i.i.i26, !llvm.loop !236

.lr.ph181.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i26, %_ZN12_GLOBAL__N_112StringPackerIDsE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i
  %.sroa.29.3.i.i31 = phi i32 [ 0, %_ZN12_GLOBAL__N_112StringPackerIDsE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i ], [ %i.aap, %.lr.ph.i.i.i.i.i26 ], [ %i.aap, %.lr.ph.i.i.i.i.i26.prol.loopexit ]
  %.sroa.094.3.i.i = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIDsE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i ], [ %i.aas, %.lr.ph.i.i.i.i.i26 ], [ %i.aas, %.lr.ph.i.i.i.i.i26.prol.loopexit ]
  %i.abe = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.4.0..sroa_idx.i.i32 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.abf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.abg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.abh = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.cv

._crit_edge.i.i88:                                ; preds = %.loopexit.i.i83
  %i.abi = icmp eq i32 %.sroa.12.2.i.i86, 0
  br i1 %i.abi, label %._crit_edge.thread.i.i111, label %bb.dt

bb.cv:                                            ; preds = %.loopexit.i.i83, %.lr.ph181.i.i
  %.0178.i.i = phi ptr [ %.val11, %.lr.ph181.i.i ], [ %i.ahn, %.loopexit.i.i83 ] ; 5 uses
  %.sroa.094.0177.i.i = phi ptr [ %.sroa.094.3.i.i, %.lr.ph181.i.i ], [ %.sroa.094.2.i.i, %.loopexit.i.i83 ] ; 3 uses
  %.sroa.12.0176.i.i = phi i32 [ 0, %.lr.ph181.i.i ], [ %.sroa.12.2.i.i86, %.loopexit.i.i83 ] ; 3 uses
  %.sroa.23.0175.i.i = phi i32 [ 0, %.lr.ph181.i.i ], [ %.sroa.23.2.i.i85, %.loopexit.i.i83 ] ; 3 uses
  %.sroa.29.0174.i.i = phi i32 [ %.sroa.29.3.i.i31, %.lr.ph181.i.i ], [ %.sroa.29.2.i.i84, %.loopexit.i.i83 ] ; 3 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %.0178.i.i, i64 16
  %i.abk = load i64, ptr %i.abj, align 8, !tbaa !237, !noalias !227 ; 5 uses
  %i.abl = icmp ugt i64 %i.abk, 24576
  br i1 %i.abl, label %.loopexit.i.i83, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.abm = getelementptr inbounds nuw i8, ptr %.0178.i.i, i64 8
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !239, !noalias !227
  %.not36147157.i.i = icmp eq i64 %i.abk, 0
  br i1 %.not36147157.i.i, label %.loopexit.i.i83, label %.lr.ph.i17.i33

.lr.ph.i17.i33:                                   ; preds = %bb.cw, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i
  %.033.ph168.i.i = phi i32 [ %i.abz, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ 0, %bb.cw ]
  %.034.ph167.i.i = phi i64 [ %i.abs, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %i.abk, %bb.cw ]
  %.sroa.094.1.ph164.i.i = phi ptr [ %.sroa.094.5.i.i, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %.sroa.094.0177.i.i, %bb.cw ] ; 9 uses
  %.sroa.12.1.ph162.i.i = phi i32 [ %.sroa.12.4.i.i80, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %.sroa.12.0176.i.i, %bb.cw ] ; 5 uses
  %.sroa.23.1.ph160.i.i = phi i32 [ %.sroa.23.6.i.i79, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %.sroa.23.0175.i.i, %bb.cw ] ; 4 uses
  %.sroa.29.1.ph158.i.i = phi i32 [ %.sroa.29.5.i.i78, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %.sroa.29.0174.i.i, %bb.cw ] ; 11 uses
  %i.abo = load ptr, ptr %8, align 8, !noalias !214 ; 2 uses
  %i.abp = load i32, ptr %i.abe, align 8, !noalias !214 ; 2 uses
  %i.abq = icmp eq i32 %i.abp, 0
  %i.abr = add i32 %i.abp, -1                     ; 2 uses
  br label %bb.cx

bb.cx:                                            ; preds = %_ZNK4llvh6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImEENS0_12DenseSetPairImEEEES5_E5countERKm.exit.i.i, %.lr.ph.i17.i33
  %.033149.i.i = phi i32 [ %.033.ph168.i.i, %.lr.ph.i17.i33 ], [ %i.abz, %_ZNK4llvh6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImEENS0_12DenseSetPairImEEEES5_E5countERKm.exit.i.i ]
  %.034148.i.i = phi i64 [ %.034.ph167.i.i, %.lr.ph.i17.i33 ], [ %i.abs, %_ZNK4llvh6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImEENS0_12DenseSetPairImEEEES5_E5countERKm.exit.i.i ] ; 2 uses
  %i.abs = add nsw i64 %.034148.i.i, -1           ; 6 uses
  %i.abt = getelementptr inbounds nuw [2 x i8], ptr %i.abn, i64 %i.abs ; 5 uses
  %i.abu = load i16, ptr %i.abt, align 2, !tbaa !61, !noalias !227 ; 2 uses
  %i.abv = zext i16 %i.abu to i32
  %i.abw = add i32 %.033149.i.i, %i.abv
  %i.abx = mul i32 %i.abw, 1025                   ; 2 uses
  %i.aby = lshr i32 %i.abx, 6
  %i.abz = xor i32 %i.aby, %i.abx                 ; 7 uses
  %i.aca = add nuw nsw i64 %.034148.i.i, 2
  %.not37.i.i34 = icmp ugt i64 %i.aca, %i.abk
  br i1 %.not37.i.i34, label %.critedge.i.i40, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.acb = zext i16 %i.abu to i64
  %i.acc = shl nuw nsw i64 %i.acb, 32
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abt, i64 2
  %i.ace = load i16, ptr %i.acd, align 2, !tbaa !61, !noalias !227
  %i.acf = zext i16 %i.ace to i64
  %i.acg = shl nuw nsw i64 %i.acf, 16
  %i.ach = or disjoint i64 %i.acg, %i.acc
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abt, i64 4
  %i.acj = load i16, ptr %i.aci, align 2, !tbaa !61, !noalias !227
  %i.ack = zext i16 %i.acj to i64
  %i.acl = or disjoint i64 %i.ach, %i.ack         ; 3 uses
  br i1 %i.abq, label %_ZNK4llvh6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImEENS0_12DenseSetPairImEEEES5_E5countERKm.exit.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.acm = trunc i64 %i.acl to i32
  %i.acn = mul i32 %i.acm, 37
  %.02744.i.i.i.i.i35 = and i32 %i.acn, %i.abr    ; 2 uses
  %i.aco = zext i32 %.02744.i.i.i.i.i35 to i64
  %i.acp = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %i.aco
  %i.acq = load i64, ptr %i.acp, align 8, !tbaa !92, !noalias !227 ; 2 uses
  %i.acr = icmp eq i64 %i.acl, %i.acq
  br i1 %i.acr, label %.critedge.i.i40, label %.lr.ph.i.i.i52.i.i36, !prof !103

.lr.ph.i.i.i52.i.i36:                             ; preds = %bb.cz, %bb.da
  %i.acs = phi i64 [ %i.acy, %bb.da ], [ %i.acq, %bb.cz ]
  %.02747.i.i.i.i.i37 = phi i32 [ %.027.i.i.i.i.i39, %bb.da ], [ %.02744.i.i.i.i.i35, %bb.cz ]
  %.02546.i.i.i.i.i38 = phi i32 [ %i.acu, %bb.da ], [ 1, %bb.cz ] ; 2 uses
  %i.act = icmp eq i64 %i.acs, -1
  br i1 %i.act, label %_ZNK4llvh6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImEENS0_12DenseSetPairImEEEES5_E5countERKm.exit.i.i, label %bb.da, !prof !56

bb.da:                                            ; preds = %.lr.ph.i.i.i52.i.i36
  %i.acu = add i32 %.02546.i.i.i.i.i38, 1
  %i.acv = add i32 %.02546.i.i.i.i.i38, %.02747.i.i.i.i.i37
  %.027.i.i.i.i.i39 = and i32 %i.acv, %i.abr      ; 2 uses
  %i.acw = zext i32 %.027.i.i.i.i.i39 to i64
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %i.acw
  %i.acy = load i64, ptr %i.acx, align 8, !tbaa !92, !noalias !227 ; 2 uses
  %i.acz = icmp eq i64 %i.acl, %i.acy
  br i1 %i.acz, label %.critedge.i.i40, label %.lr.ph.i.i.i52.i.i36, !prof !104, !llvm.loop !240

_ZNK4llvh6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImEENS0_12DenseSetPairImEEEES5_E5countERKm.exit.i.i: ; preds = %.lr.ph.i.i.i52.i.i36, %bb.cy
  %.not36.i.i414 = icmp eq i64 %i.abs, 0
  br i1 %.not36.i.i414, label %.loopexit.i.i83, label %bb.cx, !llvm.loop !241

.critedge.i.i40:                                  ; preds = %bb.cz, %bb.cx, %bb.da
  %i.ada = sub nsw i64 %i.abk, %i.abs
  %.sroa.22.0.copyload.i.fr.i.i.i.i41 = freeze i64 %i.ada ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !227
  store ptr %i.abt, ptr %5, align 8, !tbaa !230, !noalias !227
  store i64 %.sroa.22.0.copyload.i.fr.i.i.i.i41, ptr %.sroa.4.0..sroa_idx.i.i32, align 8, !tbaa !92, !noalias !227
  store i32 %i.abz, ptr %i.abf, align 8, !tbaa !242, !noalias !227
  %i.adb = icmp eq i32 %.sroa.29.1.ph158.i.i, 0   ; 2 uses
  br i1 %i.adb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread.i.i, label %bb.db

bb.db:                                            ; preds = %.critedge.i.i40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15, !noalias !227
  store ptr inttoptr (i64 -2 to ptr), ptr %4, align 8, !alias.scope !244, !noalias !227
  store i64 0, ptr %i.abg, align 8, !alias.scope !244, !noalias !227
  store i32 0, ptr %i.abh, align 8, !tbaa !242, !alias.scope !244, !noalias !227
  %i.adc = add i32 %.sroa.29.1.ph158.i.i, -1      ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i42 = icmp eq i64 %.sroa.22.0.copyload.i.fr.i.i.i.i41, 0
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.22.0.copyload.i.fr.i.i.i.i41, 1
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i42, label %.split.us.i.i.i.i404, label %.split.i.i.i.i43

.split.us.i.i.i.i404:                             ; preds = %bb.db, %bb.de
  %.029.us.i.i.i.i405 = phi ptr [ %spec.select.us.i.i.i.i410, %bb.de ], [ null, %bb.db ] ; 3 uses
  %.val36.pn.us.i.i.i.i406 = phi i32 [ %i.adm, %bb.de ], [ %i.abz, %bb.db ]
  %.025.us.i.i.i.i407 = phi i32 [ %i.adl, %bb.de ], [ 1, %bb.db ] ; 2 uses
  %.027.us.i.i.i.i408 = and i32 %.val36.pn.us.i.i.i.i406, %i.adc ; 2 uses
  %i.add = zext i32 %.027.us.i.i.i.i408 to i64
  %i.ade = getelementptr inbounds nuw [48 x i8], ptr %.sroa.094.1.ph164.i.i, i64 %i.add ; 7 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 16
  %i.adg = load i32, ptr %i.adf, align 8, !tbaa !242, !noalias !227 ; 2 uses
  %i.adh = icmp eq i32 %i.abz, %i.adg
  br i1 %i.adh, label %bb.dc, label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i.i.i.i, !prof !114

bb.dc:                                            ; preds = %.split.us.i.i.i.i404
  %.sroa.2.0..sroa_idx.i.us.i.i.i.i411 = getelementptr inbounds nuw i8, ptr %i.ade, i64 8
  %.sroa.2.0.copyload.i.us.i.i.i.i412 = load i64, ptr %.sroa.2.0..sroa_idx.i.us.i.i.i.i411, align 8, !tbaa !92, !noalias !227
  %.not.i.i.i.us.i.i.i.i413 = icmp eq i64 %.sroa.2.0.copyload.i.us.i.i.i.i412, 0
  br i1 %.not.i.i.i.us.i.i.i.i413, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread121.i.i, label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i.i.i.i, !prof !114

_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i.i.i.i: ; preds = %bb.dc, %.split.us.i.i.i.i404
  %i.adi = icmp eq i32 %i.adg, 0
  br i1 %i.adi, label %bb.dd, label %bb.de, !prof !114
end_hunk_1
