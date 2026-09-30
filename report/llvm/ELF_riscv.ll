Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ELF_riscv?download=true
inline.NumInlined: 6341
inline.NumDeleted: 2589
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm7jitlink19ELFLinkGraphBuilderINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEE7prepareEv:bb.a
  %i.ba = icmp eq i32 %.0.copyload.i.i.i31, 18
  br i1 %i.ba, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.048, i64 24
  %.0.copyload.i.i.i32 = load i32, ptr %i.bb, align 1
  %i.bc = zext i32 %.0.copyload.i.i.i32 to i64    ; 2 uses
  %i.bd = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !360
  %.not22 = icmp ugt i64 %i.bd, %i.bc
  br i1 %.not22, label %bb.l, label %.critedge

.critedge:                                        ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !2007)
  %i.be = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23, !noalias !2008 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !2008
  store ptr @.str.40, ptr %2, align 8, !noalias !2008
  %.sroa.21.0..sroa_idx.i.i33 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 3, ptr %.sroa.21.0..sroa_idx.i.i33, align 8, !noalias !2008
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !noalias !2008
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm7jitlink12JITLinkErrorE, i64 16), ptr %i.be, align 8, !tbaa !38, !noalias !2008
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.bf, ptr noundef nonnull align 8 dereferenceable(34) %2) #21, !noalias !2008
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !2008
  store ptr %i.be, ptr %0, align 8, !tbaa !107, !alias.scope !2007
  br label %.critedge24.thread

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !113, !nonnull !103, !align !104
  call void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb0EEEE13getSHNDXTableERKNS0_13Elf_Shdr_ImplIS4_EE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.311") align 8 %7, ptr noundef nonnull align 8 dereferenceable(96) %i.bg, ptr noundef nonnull align 1 dereferenceable(40) %.048) #21
  %i.bh = load i8, ptr %i.w, align 8              ; 2 uses
  %i.bi = trunc i8 %i.bh to i1                    ; 2 uses
  br i1 %i.bi, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i35, label %bb.m

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i35: ; preds = %bb.l
  %i.bj = load i64, ptr %7, align 8, !tbaa !36, !noalias !2009
  %i.bk = inttoptr i64 %i.bj to ptr
  store ptr null, ptr %7, align 8, !tbaa !36, !noalias !2009
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !359
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr %i.bl, i64 %i.bc
  store ptr %i.bm, ptr %8, align 8, !tbaa !2011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !310
  %i.bn = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEENS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLS5_1ELm1ELm1EEEEENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SF_EEEES9_SF_SH_SK_E24lookupOrInsertIntoBucketIS9_JSF_EEESt4pairIPSK_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.y), !noalias !2012 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %.pre = load i8, ptr %i.w, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i35
  %i.bo = phi i8 [ %.pre, %bb.m ], [ %i.bh, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i35 ]
  %i.bp = phi ptr [ %i.z, %bb.m ], [ %i.bk, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i35 ] ; 2 uses
  %i.bq = trunc i8 %i.bo to i1
  br i1 %i.bq, label %bb.o, label %_ZN4llvm8ExpectedINS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.br = load ptr, ptr %7, align 8, !tbaa !36    ; 3 uses
  %.not.i.i38 = icmp eq ptr %i.br, null
  br i1 %.not.i.i38, label %_ZN4llvm8ExpectedINS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i39

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i39: ; preds = %bb.o
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !38
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.br) #21, !inline_history !18
  br label %_ZN4llvm8ExpectedINS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEED2Ev.exit

_ZN4llvm8ExpectedINS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEED2Ev.exit: ; preds = %bb.n, %bb.o, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br i1 %i.bi, label %.critedge24.thread.loopexit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm8ExpectedINS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEED2Ev.exit, %bb.j
  %i.bv = phi ptr [ %i.bp, %_ZN4llvm8ExpectedINS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEED2Ev.exit ], [ %i.z, %bb.j ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.048, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.bw, %i.u
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.d

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.p, %bb.c
  store ptr null, ptr %0, align 8, !tbaa !107
  br label %.critedge24.thread

.critedge24.thread.loopexit:                      ; preds = %_ZN4llvm8ExpectedINS_8ArrayRefINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEEED2Ev.exit
  store ptr %i.bp, ptr %0, align 8
  br label %.critedge24.thread

.critedge24.thread:                               ; preds = %.critedge24.thread.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.critedge, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit.thread, %_ZN4llvm8ExpectedINS_8ArrayRefINS_6object13Elf_Shdr_ImplINS2_7ELFTypeILNS_10endiannessE1ELb0EEEEEEEED2Ev.exit.thread, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm7jitlink19ELFLinkGraphBuilderINS_6object7ELFTypeILNS_10endiannessE1ELb0EEEE16graphifySectionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %3 = alloca %"struct.std::pair.164", align 8    ; 6 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %5 = alloca %"class.llvm::Expected.215", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.llvm::raw_string_ostream", align 8 ; 22 uses
  %8 = alloca %"class.llvm::Expected.327", align 8 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !360
  %.not95 = icmp eq i64 %i.f, 0
  br i1 %.not95, label %_ZN4llvm5ErrorD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 19 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit.jt6
  %i.z = phi i64 [ 0, %.lr.ph ], [ %i.jc, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit.jt6 ]
  %.096 = phi i32 [ 0, %.lr.ph ], [ %i.jb, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit.jt6 ] ; 2 uses
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !359
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %i.z ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !113, !nonnull !103, !align !104
  %.sroa.014.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !85
  %.sroa.215.0.copyload = load i64, ptr %.sroa.215.0..sroa_idx, align 8, !tbaa !86
  call void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb0EEEE14getSectionNameERKNS0_13Elf_Shdr_ImplIS4_EENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.215") align 8 %5, ptr noundef nonnull align 8 dereferenceable(96) %i.ac, ptr noundef nonnull align 1 dereferenceable(40) %i.ab, ptr %.sroa.014.0.copyload, i64 %.sroa.215.0.copyload) #21
  %i.ad = load i8, ptr %i.j, align 8
  %i.ae = trunc i8 %i.ad to i1
  br i1 %i.ae, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.c

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !2046)
  %i.af = load i64, ptr %5, align 8, !tbaa !36, !noalias !2046
  %i.ag = inttoptr i64 %i.af to ptr
  store ptr null, ptr %5, align 8, !tbaa !36, !noalias !2046
  store ptr %i.ag, ptr %0, align 8, !tbaa !107, !alias.scope !2046
  br label %.loopexit116

bb.c:                                             ; preds = %bb.b
  %i.ah = load ptr, ptr %1, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 1 dereferenceable(40) %i.ab) #21
  br i1 %i.ak, label %bb.ax, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 3 uses
  %.0.copyload.i.i.i = load i32, ptr %i.al, align 1
  %i.am = icmp eq i32 %.0.copyload.i.i.i, 0
  br i1 %i.am, label %bb.ax, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = load i8, ptr %i.k, align 8, !tbaa !358, !range !239, !noundef !103
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.012.0.copyload = load ptr, ptr %5, align 8, !tbaa !85
  %.sroa.213.0.copyload = load i64, ptr %.sroa.213.0..sroa_idx, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.012.0.copyload, ptr %4, align 8
  store i64 %.sroa.213.0.copyload, ptr %i.l, align 8
  %i.ap = load ptr, ptr @_ZN4llvm7jitlink23ELFLinkGraphBuilderBase17DwarfSectionNamesE, align 8, !tbaa !291 ; 2 uses
  %i.aq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink23ELFLinkGraphBuilderBase17DwarfSectionNamesE, i64 8), align 8, !tbaa !292
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = call noundef ptr @_ZSt9__find_ifIPKPKcN9__gnu_cxx5__ops16_Iter_equals_valIKN4llvm9StringRefEEEET_SB_SB_T0_St26random_access_iterator_tag(ptr noundef %i.ap, ptr noundef %i.ar, ptr nonnull align 8 dereferenceable(16) %4)
  %i.at = load ptr, ptr @_ZN4llvm7jitlink23ELFLinkGraphBuilderBase17DwarfSectionNamesE, align 8, !tbaa !291
  %i.au = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm7jitlink23ELFLinkGraphBuilderBase17DwarfSectionNamesE, i64 8), align 8, !tbaa !292
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %.not94 = icmp eq ptr %i.as, %i.av
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br i1 %.not94, label %bb.g, label %bb.ax

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %.0.copyload.i.i.i49 = load i32, ptr %i.aw, align 1 ; 2 uses
  %i.ax = and i32 %.0.copyload.i.i.i49, 4         ; 2 uses
  %9 = and i32 %.0.copyload.i.i.i49, 1
  %.not44 = icmp eq i32 %9, 0                     ; 2 uses
  %.1.v = select i1 %.not44, i32 1, i32 3
  %.1 = or disjoint i32 %.1.v, %i.ax              ; 2 uses
  %i.ay = load ptr, ptr %i.m, align 8, !tbaa !108
  %.sroa.04.0.copyload = load ptr, ptr %5, align 8, !tbaa !85
  %.sroa.25.0.copyload = load i64, ptr %.sroa.213.0..sroa_idx, align 8, !tbaa !86
  %i.az = call noundef ptr @_ZN4llvm7jitlink9LinkGraph17findSectionByNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(312) %i.ay, ptr %.sroa.04.0.copyload, i64 %.sroa.25.0.copyload) ; 2 uses
  %.not45 = icmp eq ptr %i.az, null
  br i1 %.not45, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !108 ; 2 uses
  %.sroa.02.0.copyload = load ptr, ptr %5, align 8, !tbaa !85 ; 2 uses
  %.sroa.23.0.copyload = load i64, ptr %.sroa.213.0..sroa_idx, align 8, !tbaa !86 ; 2 uses
  %i.bb = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #23 ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 216
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 232
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !165
  store ptr %.sroa.02.0.copyload, ptr %i.bb, align 8, !tbaa !85
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %.sroa.23.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !86
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i32 %.1, ptr %i.bf, align 8, !tbaa !177
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  store i32 0, ptr %i.bg, align 4, !tbaa !178
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i32 %i.be, ptr %i.bh, align 8, !tbaa !179
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %.sroa.02.0.copyload, ptr %3, align 8, !tbaa !85
  store i64 %.sroa.23.0.copyload, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !86
  %i.bj = ptrtoint ptr %i.bb to i64
  store i64 %i.bj, ptr %i.n, align 8, !tbaa !180, !alias.scope !2047
  %i.bk = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E24lookupOrInsertIntoBucketIS2_JS8_EEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.n), !noalias !2048
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.bk, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !180 ; 3 uses
  %i.bn = load ptr, ptr %i.n, align 8, !tbaa !180 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i, label %_ZN4llvm7jitlink9LinkGraph13createSectionENS_9StringRefENS_3orc7MemProtE.exit, label %_ZNKSt14default_deleteIN4llvm7jitlink7SectionEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm7jitlink7SectionEEclEPS2_.exit.i.i.i: ; preds = %bb.h
  call void @_ZN4llvm7jitlink7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bn) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 80) #22
  br label %_ZN4llvm7jitlink9LinkGraph13createSectionENS_9StringRefENS_3orc7MemProtE.exit

_ZN4llvm7jitlink9LinkGraph13createSectionENS_9StringRefENS_3orc7MemProtE.exit: ; preds = %bb.h, %_ZNKSt14default_deleteIN4llvm7jitlink7SectionEEclEPS2_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.0.copyload.i.i.i51 = load i32, ptr %i.aw, align 1
  %i.bo = and i32 %.0.copyload.i.i.i51, 2
  %.not46 = icmp eq i32 %i.bo, 0
  br i1 %.not46, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph13createSectionENS_9StringRefENS_3orc7MemProtE.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  store i32 2, ptr %i.bp, align 4, !tbaa !178
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph13createSectionENS_9StringRefENS_3orc7MemProtE.exit, %bb.i, %bb.g
  %.040 = phi ptr [ %i.az, %bb.g ], [ %i.bm, %_ZN4llvm7jitlink9LinkGraph13createSectionENS_9StringRefENS_3orc7MemProtE.exit ], [ %i.bm, %bb.i ] ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.040, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !177
  %.not47 = icmp eq i32 %i.br, %.1
  br i1 %.not47, label %bb.ai, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.040, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %i.o, ptr %6, align 8, !tbaa !83
  store i64 0, ptr %i.p, align 8, !tbaa !84
  store i8 0, ptr %i.o, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i32 0, ptr %i.q, align 8, !tbaa !314
  store i8 0, ptr %i.r, align 8, !tbaa !315
  store i32 1, ptr %i.s, align 4, !tbaa !316
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %7, align 8, !tbaa !38
  store ptr %6, ptr %i.u, align 8, !tbaa !47
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef null, i64 noundef 0, i32 noundef 0) #21
  %i.bt = load ptr, ptr %i.v, align 8, !tbaa !317
  %i.bu = load ptr, ptr %i.w, align 8, !tbaa !318 ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = icmp ult i64 %i.bx, 3
  br i1 %i.by, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull @.str.41, i64 noundef 3) #21 ; 0 uses
  br label %_ZN4llvmlsINS_18raw_string_ostreamEA4_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bu, ptr noundef nonnull align 1 dereferenceable(3) @.str.41, i64 3, i1 false)
  %i.ca = load ptr, ptr %i.w, align 8, !tbaa !318
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 3
  store ptr %i.cb, ptr %i.w, align 8, !tbaa !318
  br label %_ZN4llvmlsINS_18raw_string_ostreamEA4_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit

_ZN4llvmlsINS_18raw_string_ostreamEA4_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit: ; preds = %bb.l, %bb.m
  %i.cc = load ptr, ptr %i.m, align 8, !tbaa !108 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !70
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !84
  %i.ch = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef %i.ce, i64 noundef %i.cg) #21 ; 0 uses
  %i.ci = load ptr, ptr %i.v, align 8, !tbaa !317
  %i.cj = load ptr, ptr %i.w, align 8, !tbaa !318 ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = icmp ult i64 %i.cm, 10
  br i1 %i.cn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvmlsINS_18raw_string_ostreamEA4_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit
  %i.co = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull @.str.42, i64 noundef 10) #21 ; 0 uses
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !318
  br label %_ZN4llvmlsINS_18raw_string_ostreamEA11_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit

bb.o:                                             ; preds = %_ZN4llvmlsINS_18raw_string_ostreamEA4_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.cj, ptr noundef nonnull align 1 dereferenceable(10) @.str.42, i64 10, i1 false)
  %i.cp = load ptr, ptr %i.w, align 8, !tbaa !318
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 10 ; 2 uses
  store ptr %i.cq, ptr %i.w, align 8, !tbaa !318
  br label %_ZN4llvmlsINS_18raw_string_ostreamEA11_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit

_ZN4llvmlsINS_18raw_string_ostreamEA11_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit: ; preds = %bb.n, %bb.o
  %i.cr = phi ptr [ %.pre, %bb.n ], [ %i.cq, %bb.o ] ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %5, align 8, !tbaa !85 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.213.0..sroa_idx, align 8, !tbaa !86 ; 5 uses
  %i.cs = load ptr, ptr %i.v, align 8, !tbaa !317
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = icmp ugt i64 %.sroa.2.0.copyload.i, %i.cv
  br i1 %i.cw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvmlsINS_18raw_string_ostreamEA11_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit
  %i.cx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.2.0.copyload.i) #21 ; 0 uses
  %.pre97 = load ptr, ptr %i.w, align 8, !tbaa !318
  br label %_ZN4llvmlsINS_18raw_string_ostreamENS_9StringRefEEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit

bb.q:                                             ; preds = %_ZN4llvmlsINS_18raw_string_ostreamEA11_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit
  %.not.i.i = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %.not.i.i, label %_ZN4llvmlsINS_18raw_string_ostreamENS_9StringRefEEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr align 1 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i1 false)
  %i.cy = load ptr, ptr %i.w, align 8, !tbaa !318
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.sroa.2.0.copyload.i ; 2 uses
  store ptr %i.cz, ptr %i.w, align 8, !tbaa !318
  br label %_ZN4llvmlsINS_18raw_string_ostreamENS_9StringRefEEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit

_ZN4llvmlsINS_18raw_string_ostreamENS_9StringRefEEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit: ; preds = %bb.p, %bb.q, %bb.r
  %i.da = phi ptr [ %.pre97, %bb.p ], [ %i.cr, %bb.q ], [ %i.cz, %bb.r ] ; 2 uses
  %i.db = load ptr, ptr %i.v, align 8, !tbaa !317
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = icmp ult i64 %i.de, 55
  br i1 %i.df, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN4llvmlsINS_18raw_string_ostreamENS_9StringRefEEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit
  %i.dg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull @.str.43, i64 noundef 55) #21 ; 0 uses
  %.pre98 = load ptr, ptr %i.w, align 8, !tbaa !318
  br label %_ZN4llvmlsINS_18raw_string_ostreamEA56_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit

bb.t:                                             ; preds = %_ZN4llvmlsINS_18raw_string_ostreamENS_9StringRefEEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.da, ptr noundef nonnull align 1 dereferenceable(55) @.str.43, i64 55, i1 false)
  %i.dh = load ptr, ptr %i.w, align 8, !tbaa !318
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 55 ; 2 uses
  store ptr %i.di, ptr %i.w, align 8, !tbaa !318
  br label %_ZN4llvmlsINS_18raw_string_ostreamEA56_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit

_ZN4llvmlsINS_18raw_string_ostreamEA56_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit: ; preds = %bb.s, %bb.t
  %i.dj = phi ptr [ %.pre98, %bb.s ], [ %i.di, %bb.t ] ; 3 uses
  %i.dk = load i32, ptr %i.bs, align 8, !tbaa !177 ; 3 uses
  %i.dl = and i32 %i.dk, 1
  %.not.i.i54 = icmp eq i32 %i.dl, 0
  %i.dm = select i1 %.not.i.i54, i8 45, i8 82     ; 2 uses
  %i.dn = load ptr, ptr %i.v, align 8, !tbaa !317
  %.not.i.i.i55 = icmp ult ptr %i.dj, %i.dn
  br i1 %.not.i.i.i55, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN4llvmlsINS_18raw_string_ostreamEA56_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit
  %i.do = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 noundef zeroext %i.dm) #21
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i

bb.v:                                             ; preds = %_ZN4llvmlsINS_18raw_string_ostreamEA56_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  store ptr %i.dp, ptr %i.w, align 8, !tbaa !318
  store i8 %i.dm, ptr %i.dj, align 1, !tbaa !71
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i

_ZN4llvm11raw_ostreamlsEc.exit.i.i:               ; preds = %bb.v, %bb.u
  %.0.i.i.i = phi ptr [ %i.do, %bb.u ], [ %7, %bb.v ] ; 4 uses
  %i.dq = and i32 %i.dk, 2
  %.not3.i.i = icmp eq i32 %i.dq, 0
  %i.dr = select i1 %.not3.i.i, i8 45, i8 87      ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !318 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !317
  %.not.i5.i.i = icmp ult ptr %i.dt, %i.dv
  br i1 %.not.i5.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i
  %i.dw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i, i8 noundef zeroext %i.dr) #21
  br label %_ZN4llvm11raw_ostreamlsEc.exit7.i.i

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  store ptr %i.dx, ptr %i.ds, align 8, !tbaa !318
  store i8 %i.dr, ptr %i.dt, align 1, !tbaa !71
  br label %_ZN4llvm11raw_ostreamlsEc.exit7.i.i

_ZN4llvm11raw_ostreamlsEc.exit7.i.i:              ; preds = %bb.x, %bb.w
  %.0.i6.i.i = phi ptr [ %i.dw, %bb.w ], [ %.0.i.i.i, %bb.x ] ; 3 uses
  %i.dy = and i32 %i.dk, 4
  %.not4.i.i = icmp eq i32 %i.dy, 0
  %i.dz = select i1 %.not4.i.i, i8 45, i8 88      ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i6.i.i, i64 32 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !318 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i6.i.i, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !317
  %.not.i8.i.i = icmp ult ptr %i.eb, %i.ed
  br i1 %.not.i8.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit7.i.i
  %i.ee = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i6.i.i, i8 noundef zeroext %i.dz) #21 ; 0 uses
  br label %_ZN4llvmlsINS_18raw_string_ostreamENS_3orc7MemProtEEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES5_EEOS5_E4typeES7_RKT0_.exit

bb.z:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit7.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  store ptr %i.ef, ptr %i.ea, align 8, !tbaa !318
  store i8 %i.dz, ptr %i.eb, align 1, !tbaa !71
  br label %_ZN4llvmlsINS_18raw_string_ostreamENS_3orc7MemProtEEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES5_EEOS5_E4typeES7_RKT0_.exit

_ZN4llvmlsINS_18raw_string_ostreamENS_3orc7MemProtEEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES5_EEOS5_E4typeES7_RKT0_.exit: ; preds = %bb.y, %bb.z
  %i.eg = load ptr, ptr %i.v, align 8, !tbaa !317
  %i.eh = load ptr, ptr %i.w, align 8, !tbaa !318 ; 2 uses
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = icmp ult i64 %i.ek, 4
  br i1 %i.el, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvmlsINS_18raw_string_ostreamENS_3orc7MemProtEEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES5_EEOS5_E4typeES7_RKT0_.exit
  %i.em = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull @.str.44, i64 noundef 4) #21 ; 0 uses
  %.pre99 = load ptr, ptr %i.w, align 8, !tbaa !318
  br label %_ZN4llvmlsINS_18raw_string_ostreamEA5_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit

bb.ab:                                            ; preds = %_ZN4llvmlsINS_18raw_string_ostreamENS_3orc7MemProtEEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES5_EEOS5_E4typeES7_RKT0_.exit
  store i32 544437792, ptr %i.eh, align 1
  %i.en = load ptr, ptr %i.w, align 8, !tbaa !318
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 2 uses
  store ptr %i.eo, ptr %i.w, align 8, !tbaa !318
  br label %_ZN4llvmlsINS_18raw_string_ostreamEA5_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit

_ZN4llvmlsINS_18raw_string_ostreamEA5_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit: ; preds = %bb.aa, %bb.ab
  %i.ep = phi ptr [ %.pre99, %bb.aa ], [ %i.eo, %bb.ab ] ; 3 uses
  %i.eq = load ptr, ptr %i.v, align 8, !tbaa !317
  %.not.i.i.i58 = icmp ult ptr %i.ep, %i.eq
  br i1 %.not.i.i.i58, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvmlsINS_18raw_string_ostreamEA5_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit
  %i.er = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 noundef zeroext 82) #21
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i59

bb.ad:                                            ; preds = %_ZN4llvmlsINS_18raw_string_ostreamEA5_cEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES4_EEOS4_E4typeES6_RKT0_.exit
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  store ptr %i.es, ptr %i.w, align 8, !tbaa !318
  store i8 82, ptr %i.ep, align 1, !tbaa !71
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i59

_ZN4llvm11raw_ostreamlsEc.exit.i.i59:             ; preds = %bb.ad, %bb.ac
  %.0.i.i.i60 = phi ptr [ %i.er, %bb.ac ], [ %7, %bb.ad ] ; 4 uses
  %i.et = select i1 %.not44, i8 45, i8 87         ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.i.i.i60, i64 32 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !318 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.i.i.i60, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !317
  %.not.i5.i.i62 = icmp ult ptr %i.ev, %i.ex
  br i1 %.not.i5.i.i62, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i59
  %i.ey = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i60, i8 noundef zeroext %i.et) #21
  br label %_ZN4llvm11raw_ostreamlsEc.exit7.i.i63

bb.af:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i59
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  store ptr %i.ez, ptr %i.eu, align 8, !tbaa !318
  store i8 %i.et, ptr %i.ev, align 1, !tbaa !71
  br label %_ZN4llvm11raw_ostreamlsEc.exit7.i.i63

_ZN4llvm11raw_ostreamlsEc.exit7.i.i63:            ; preds = %bb.af, %bb.ae
  %.0.i6.i.i64 = phi ptr [ %i.ey, %bb.ae ], [ %.0.i.i.i60, %bb.af ] ; 3 uses
  %.not4.i.i65 = icmp eq i32 %i.ax, 0
  %i.fa = select i1 %.not4.i.i65, i8 45, i8 88    ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i6.i.i64, i64 32 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !318 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i6.i.i64, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !317
  %.not.i8.i.i66 = icmp ult ptr %i.fc, %i.fe
  br i1 %.not.i8.i.i66, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit7.i.i63
  %i.ff = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i6.i.i64, i8 noundef zeroext %i.fa) #21 ; 0 uses
  br label %_ZN4llvmlsINS_18raw_string_ostreamENS_3orc7MemProtEEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES5_EEOS5_E4typeES7_RKT0_.exit67

bb.ah:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit7.i.i63
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  store ptr %i.fg, ptr %i.fb, align 8, !tbaa !318
  store i8 %i.fa, ptr %i.fc, align 1, !tbaa !71
  br label %_ZN4llvmlsINS_18raw_string_ostreamENS_3orc7MemProtEEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES5_EEOS5_E4typeES7_RKT0_.exit67

_ZN4llvmlsINS_18raw_string_ostreamENS_3orc7MemProtEEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES5_EEOS5_E4typeES7_RKT0_.exit67: ; preds = %bb.ag, %bb.ah
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !2049)
  %i.fh = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23, !noalias !2050 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !2050
  store ptr %6, ptr %2, align 8, !noalias !2050
  store i8 4, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !noalias !2050
  store i8 1, ptr %.sroa.3.0..sroa_idx.i.i, align 1, !noalias !2050
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm7jitlink12JITLinkErrorE, i64 16), ptr %i.fh, align 8, !tbaa !38, !noalias !2050
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.fi, ptr noundef nonnull align 8 dereferenceable(34) %2) #21, !noalias !2050
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !2050
  store ptr %i.fh, ptr %0, align 8, !tbaa !107, !alias.scope !2049
  %i.fj = load ptr, ptr %6, align 8, !tbaa !70    ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.o
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvmlsINS_18raw_string_ostreamENS_3orc7MemProtEEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES5_EEOS5_E4typeES7_RKT0_.exit67
  %i.fl = load i64, ptr %i.o, align 8, !tbaa !71
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvmlsINS_18raw_string_ostreamENS_3orc7MemProtEEENSt9enable_ifIXaantsr3stdE14is_reference_vIT_Esr3stdE12is_base_of_vINS_11raw_ostreamES5_EEOS5_E4typeES7_RKT0_.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.loopexit116

bb.ai:                                            ; preds = %bb.j
  %.0.copyload.i.i.i68 = load i32, ptr %i.al, align 1
  %.not48 = icmp eq i32 %.0.copyload.i.i.i68, 8
  br i1 %.not48, label %bb.ap, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.fn = load ptr, ptr %i.h, align 8, !tbaa !113, !nonnull !103, !align !104
  call void @_ZNK4llvm6object7ELFFileINS0_7ELFTypeILNS_10endiannessE1ELb0EEEE25getSectionContentsAsArrayIcEENS_8ExpectedINS_8ArrayRefIT_EEEERKNS0_13Elf_Shdr_ImplIS4_EE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.327") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %i.fn, ptr noundef nonnull align 1 dereferenceable(40) %i.ab)
  %i.fo = load i8, ptr %i.x, align 8              ; 2 uses
  %i.fp = trunc i8 %i.fo to i1                    ; 2 uses
  br i1 %i.fp, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i70, label %bb.ak

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i70: ; preds = %bb.aj
  call void @llvm.experimental.noalias.scope.decl(metadata !2051)
  %i.fq = load i64, ptr %8, align 8, !tbaa !36, !noalias !2051
  %i.fr = inttoptr i64 %i.fq to ptr
  store ptr null, ptr %8, align 8, !tbaa !36, !noalias !2051
  store ptr %i.fr, ptr %0, align 8, !tbaa !107, !alias.scope !2051
  br label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.fs = load ptr, ptr %i.m, align 8, !tbaa !108 ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %8, align 8, !tbaa !85
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !86
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.0.copyload.i.i.i71 = load i32, ptr %i.ft, align 1
  %i.fu = zext i32 %.0.copyload.i.i.i71 to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.0.copyload.i.i.i72 = load i32, ptr %i.fv, align 1
  %i.fw = zext i32 %.0.copyload.i.i.i72 to i64
  %i.fx = load ptr, ptr %i.fs, align 8, !tbaa !192 ; 2 uses
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = add i64 %i.fy, 64                       ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !193
  %i.gc = icmp ult i64 %i.fz, %i.gb
  br i1 %i.gc, label %bb.al, label %bb.am, !prof !158

bb.al:                                            ; preds = %bb.ak
  %i.gd = inttoptr i64 %i.fz to ptr
  store ptr %i.gd, ptr %i.fs, align 8, !tbaa !192
  br label %_ZN4llvm7jitlink9LinkGraph18createContentBlockERNS0_7SectionENS_8ArrayRefIcEENS_3orc12ExecutorAddrEmm.exit

bb.am:                                            ; preds = %bb.ak
  %i.ge = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(312) %i.fs, i64 noundef 64, i64 noundef 64, i8 3)
  br label %_ZN4llvm7jitlink9LinkGraph18createContentBlockERNS0_7SectionENS_8ArrayRefIcEENS_3orc12ExecutorAddrEmm.exit

_ZN4llvm7jitlink9LinkGraph18createContentBlockERNS0_7SectionENS_8ArrayRefIcEENS_3orc12ExecutorAddrEmm.exit: ; preds = %bb.al, %bb.am
  %.0.i.i.i.i.i.i = phi ptr [ %i.fx, %bb.al ], [ %i.ge, %bb.am ] ; 8 uses
  store i64 %i.fu, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !86
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  store ptr %.040, ptr %i.gg, align 8, !tbaa !201
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 24
  store ptr %.sroa.0.0.copyload, ptr %i.gh, align 8, !tbaa !202
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 32
  store i64 %.sroa.2.0.copyload, ptr %i.gi, align 8, !tbaa !203
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gj, i8 0, i64 24, i1 false)
  %i.gk = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.fw, i1 false)
  %i.gl = shl nuw nsw i64 %i.gk, 3
  %i.gm = and i64 %i.gl, 248
  %i.gn = or disjoint i64 %i.gm, 1
  store i64 %i.gn, ptr %i.gf, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %.040, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store ptr %.0.i.i.i.i.i.i, ptr %i.d, align 8, !tbaa !139
  %i.gp = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.go, ptr noundef nonnull align 8 dereferenceable(8) %i.d), !noalias !2052 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  %.pre100 = load i8, ptr %i.x, align 8
  br label %bb.an

bb.an:                                            ; preds = %_ZN4llvm7jitlink9LinkGraph18createContentBlockERNS0_7SectionENS_8ArrayRefIcEENS_3orc12ExecutorAddrEmm.exit, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i70
  %i.gq = phi i8 [ %.pre100, %_ZN4llvm7jitlink9LinkGraph18createContentBlockERNS0_7SectionENS_8ArrayRefIcEENS_3orc12ExecutorAddrEmm.exit ], [ %i.fo, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i70 ]
  %.038 = phi ptr [ %.0.i.i.i.i.i.i, %_ZN4llvm7jitlink9LinkGraph18createContentBlockERNS0_7SectionENS_8ArrayRefIcEENS_3orc12ExecutorAddrEmm.exit ], [ null, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i70 ]
  %i.gr = trunc i8 %i.gq to i1
  br i1 %i.gr, label %bb.ao, label %_ZN4llvm8ExpectedINS_8ArrayRefIcEEED2Ev.exit

bb.ao:                                            ; preds = %bb.an
  %i.gs = load ptr, ptr %8, align 8, !tbaa !36    ; 3 uses
  %.not.i.i74 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i74, label %_ZN4llvm8ExpectedINS_8ArrayRefIcEEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.ao
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !38
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(8) %i.gs) #21, !inline_history !19
  br label %_ZN4llvm8ExpectedINS_8ArrayRefIcEEED2Ev.exit

_ZN4llvm8ExpectedINS_8ArrayRefIcEEED2Ev.exit:     ; preds = %bb.an, %bb.ao, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br i1 %i.fp, label %.loopexit116, label %bb.as

bb.ap:                                            ; preds = %bb.ai
  %i.gw = load ptr, ptr %i.m, align 8, !tbaa !108 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %.0.copyload.i.i.i75 = load i32, ptr %i.gx, align 1
  %i.gy = zext i32 %.0.copyload.i.i.i75 to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.0.copyload.i.i.i76 = load i32, ptr %i.gz, align 1
  %i.ha = zext i32 %.0.copyload.i.i.i76 to i64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.0.copyload.i.i.i77 = load i32, ptr %i.hb, align 1
  %i.hc = zext i32 %.0.copyload.i.i.i77 to i64
  %i.hd = load ptr, ptr %i.gw, align 8, !tbaa !192 ; 2 uses
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = add i64 %i.he, 64                       ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !193
  %i.hi = icmp ult i64 %i.hf, %i.hh
  br i1 %i.hi, label %bb.aq, label %bb.ar, !prof !158

bb.aq:                                            ; preds = %bb.ap
  %i.hj = inttoptr i64 %i.hf to ptr
  store ptr %i.hj, ptr %i.gw, align 8, !tbaa !192
  br label %_ZN4llvm7jitlink9LinkGraph19createZeroFillBlockERNS0_7SectionEmNS_3orc12ExecutorAddrEmm.exit

bb.ar:                                            ; preds = %bb.ap
  %i.hk = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(312) %i.gw, i64 noundef 64, i64 noundef 64, i8 3)
  br label %_ZN4llvm7jitlink9LinkGraph19createZeroFillBlockERNS0_7SectionEmNS_3orc12ExecutorAddrEmm.exit

_ZN4llvm7jitlink9LinkGraph19createZeroFillBlockERNS0_7SectionEmNS_3orc12ExecutorAddrEmm.exit: ; preds = %bb.aq, %bb.ar
  %.0.i.i.i.i.i.i78 = phi ptr [ %i.hd, %bb.aq ], [ %i.hk, %bb.ar ] ; 8 uses
  store i64 %i.ha, ptr %.0.i.i.i.i.i.i78, align 8, !tbaa !86
  %i.hl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i78, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i78, i64 16
  store ptr %.040, ptr %i.hm, align 8, !tbaa !201
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i78, i64 24
  store ptr null, ptr %i.hn, align 8, !tbaa !202
  %i.ho = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i78, i64 32
  store i64 %i.gy, ptr %i.ho, align 8, !tbaa !203
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i78, i64 40
end_hunk_0
