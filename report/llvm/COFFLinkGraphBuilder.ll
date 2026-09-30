Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/COFFLinkGraphBuilder?download=true
inline.NumInlined: 2643
inline.NumDeleted: 1351
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4llvm7jitlink20COFFLinkGraphBuilder10buildGraphEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.t = load ptr, ptr %1, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %5, ptr noundef nonnull align 8 dereferenceable(312) %1) #22
  %i.w = load ptr, ptr %5, align 8, !tbaa !173    ; 2 uses
  %.not8 = icmp eq ptr %i.w, null
  br i1 %.not8, label %bb.e, label %_ZN4llvm5ErrorD2Ev.exit5

_ZN4llvm5ErrorD2Ev.exit5:                         ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8
  %i.z = or i8 %i.y, 1
  store i8 %i.z, ptr %i.x, align 8
  store ptr %i.w, ptr %0, align 8, !tbaa !171, !alias.scope !327
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8
  %i.ad = and i8 %i.ac, -2
  store i8 %i.ad, ptr %i.ab, align 8
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !60
  store i64 %i.ae, ptr %0, align 8, !tbaa !60
  store ptr null, ptr %i.aa, align 8, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit5, %_ZN4llvm5ErrorD2Ev.exit4, %_ZN4llvm5ErrorD2Ev.exit3, %bb.e, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm7jitlink20COFFLinkGraphBuilder16graphifySectionsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %3 = alloca %"struct.std::pair.154", align 8    ; 6 uses
  %4 = alloca %"class.llvm::Expected.67", align 8 ; 16 uses
  %5 = alloca %"class.llvm::Expected.64", align 8 ; 6 uses
  %6 = alloca %"class.llvm::ArrayRef", align 8    ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !167, !nonnull !168, !align !169 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !174  ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.h, align 1 ; 2 uses
  %i.i = icmp eq i16 %.0.copyload.i.i.i.i.i, -1
  %narrow.i = select i1 %i.i, i16 0, i16 %.0.copyload.i.i.i.i.i
  %spec.select.i = zext i16 %narrow.i to i32
  br label %_ZNK4llvm6object14COFFObjectFile19getNumberOfSectionsEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !175, !nonnull !168, !noundef !168
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %.0.copyload.i.i.i2.i = load i32, ptr %i.l, align 1
  br label %_ZNK4llvm6object14COFFObjectFile19getNumberOfSectionsEv.exit

_ZNK4llvm6object14COFFObjectFile19getNumberOfSectionsEv.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %.0.copyload.i.i.i2.i, %bb.c ], [ %spec.select.i, %bb.b ]
  %i.m = add i32 %.0.i, 1
  %i.n = zext i32 %i.m to i64                     ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !176  ; 2 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !84   ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 3 uses
  %i.v = icmp ult i64 %i.u, %i.n
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4llvm6object14COFFObjectFile19getNumberOfSectionsEv.exit
  %i.w = sub nuw nsw i64 %i.n, %i.u
  tail call void @_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.w)
  br label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE6resizeEm.exit

bb.e:                                             ; preds = %_ZNK4llvm6object14COFFObjectFile19getNumberOfSectionsEv.exit
  %i.x = icmp ugt i64 %i.u, %i.n
  br i1 %i.x, label %bb.f, label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.n ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.y
  br i1 %.not.i.i, label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE6resizeEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.y, ptr %i.o, align 8, !tbaa !176
  br label %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE6resizeEm.exit

_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE6resizeEm.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm8ExpectedIPKNS_6object12coff_sectionEED2Ev.exit.jt6, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE6resizeEm.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN4llvm8ExpectedIPKNS_6object12coff_sectionEED2Ev.exit.jt6 ], [ 1, %_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE6resizeEm.exit ] ; 4 uses
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !167, !nonnull !168, !align !169 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !174 ; 2 uses
  %.not.i46 = icmp eq ptr %i.ag, null
  br i1 %.not.i46, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %.0.copyload.i.i.i.i.i47 = load i16, ptr %i.ah, align 1 ; 2 uses
  %i.ai = icmp eq i16 %.0.copyload.i.i.i.i.i47, -1
  %narrow.i48 = select i1 %i.ai, i16 0, i16 %.0.copyload.i.i.i.i.i47
  %spec.select.i49 = zext i16 %narrow.i48 to i32
  br label %_ZNK4llvm6object14COFFObjectFile19getNumberOfSectionsEv.exit52

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !175, !nonnull !168, !noundef !168
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  %.0.copyload.i.i.i2.i51 = load i32, ptr %i.al, align 1
  br label %_ZNK4llvm6object14COFFObjectFile19getNumberOfSectionsEv.exit52

_ZNK4llvm6object14COFFObjectFile19getNumberOfSectionsEv.exit52: ; preds = %bb.i, %bb.j
  %.0.i50 = phi i32 [ %.0.copyload.i.i.i2.i51, %bb.j ], [ %spec.select.i49, %bb.i ]
  %i.am = sext i32 %.0.i50 to i64
  %.not = icmp sgt i64 %indvars.iv, %i.am
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit85, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm6object14COFFObjectFile19getNumberOfSectionsEv.exit52
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  call void @_ZNK4llvm6object14COFFObjectFile10getSectionEi(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.67") align 8 %4, ptr noundef nonnull align 8 dereferenceable(232) %i.ae, i32 noundef %i.an) #22
  %i.ao = load i8, ptr %i.z, align 8
  %i.ap = trunc i8 %i.ao to i1
  br i1 %i.ap, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.l

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.aq = load i64, ptr %4, align 8, !tbaa !171, !noalias !353
  %i.ar = inttoptr i64 %i.aq to ptr
  store ptr null, ptr %4, align 8, !tbaa !171, !noalias !353
  store ptr %i.ar, ptr %0, align 8, !tbaa !173, !alias.scope !353
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.jt1

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !167, !nonnull !168, !align !169
  %i.at = load ptr, ptr %4, align 8, !tbaa !177
  call void @_ZNK4llvm6object14COFFObjectFile14getSectionNameEPKNS0_12coff_sectionE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.64") align 8 %5, ptr noundef nonnull align 8 dereferenceable(232) %i.as, ptr noundef %i.at) #22
  %i.au = load i8, ptr %i.aa, align 8
  %i.av = trunc i8 %i.au to i1                    ; 3 uses
  %.sroa.097.0.copyload = load ptr, ptr %5, align 8 ; 7 uses
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.0 = select i1 %i.av, i64 0, i64 %.sroa.8.0.copyload ; 5 uses
  %.sroa.097.0 = select i1 %i.av, ptr null, ptr %.sroa.097.0.copyload ; 3 uses
  %.not.i.i54 = icmp ne ptr %.sroa.097.0.copyload, null
  %or.cond.not = select i1 %i.av, i1 %.not.i.i54, i1 false
  br i1 %or.cond.not, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.l
  %i.aw = load ptr, ptr %.sroa.097.0.copyload, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.097.0.copyload) #22, !inline_history !5
  br label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit

_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit:       ; preds = %bb.l, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %.not.i55 = icmp eq i64 %.sroa.8.0, 7
  br i1 %.not.i55, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread103

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit
  %i.az = load i32, ptr %.sroa.097.0.copyload, align 1
  %i.ba = xor i32 %i.az, 1819244078
  %i.bb = getelementptr i8, ptr %.sroa.097.0.copyload, i64 3
  %i.bc = load i32, ptr %i.bb, align 1
  %i.bd = xor i32 %i.bc, 1818391660
  %i.be = or i32 %i.ba, %i.bd
  %i.bf = icmp ne i32 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.jt6, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread103

_ZN4llvmeqENS_9StringRefES0_.exit.thread103:      ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit, %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.bi = load ptr, ptr %4, align 8, !tbaa !177
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 36
  %.0.copyload.i.i.i = load i32, ptr %i.bj, align 1 ; 2 uses
  %7 = and i32 %.0.copyload.i.i.i, 536870912
  %.not37 = icmp eq i32 %7, 0
  %spec.select = select i1 %.not37, i32 1, i32 5
  %8 = lshr i32 %.0.copyload.i.i.i, 30
  %9 = and i32 %8, 2
  %.2 = or disjoint i32 %spec.select, %9          ; 2 uses
  %i.bk = load ptr, ptr %i.ab, align 8, !tbaa !60
  %i.bl = call noundef ptr @_ZN4llvm7jitlink9LinkGraph17findSectionByNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(312) %i.bk, ptr %.sroa.097.0, i64 %.sroa.8.0) ; 2 uses
  %.not40 = icmp eq ptr %i.bl, null
  br i1 %.not40, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread103
  %i.bm = load ptr, ptr %i.ab, align 8, !tbaa !60 ; 2 uses
  %i.bn = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #23 ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 216
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 232
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !154
  store ptr %.sroa.097.0, ptr %i.bn, align 8, !tbaa !155
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 %.sroa.8.0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !29
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i32 %.2, ptr %i.br, align 8, !tbaa !163
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  store i32 0, ptr %i.bs, align 4, !tbaa !164
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i32 %i.bq, ptr %i.bt, align 8, !tbaa !165
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bu, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %.sroa.097.0, ptr %3, align 8, !tbaa !155
  store i64 %.sroa.8.0, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !29
  %i.bv = ptrtoint ptr %i.bn to i64
  store i64 %i.bv, ptr %i.ac, align 8, !tbaa !166, !alias.scope !354
  %i.bw = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E24lookupOrInsertIntoBucketIS2_JS8_EEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ac), !noalias !355
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.bw, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !166 ; 3 uses
  %i.bz = load ptr, ptr %i.ac, align 8, !tbaa !166 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i, label %_ZN4llvm7jitlink9LinkGraph13createSectionENS_9StringRefENS_3orc7MemProtE.exit, label %_ZNKSt14default_deleteIN4llvm7jitlink7SectionEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4llvm7jitlink7SectionEEclEPS2_.exit.i.i.i: ; preds = %bb.m
  call void @_ZN4llvm7jitlink7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bz) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef 80) #24
  br label %_ZN4llvm7jitlink9LinkGraph13createSectionENS_9StringRefENS_3orc7MemProtE.exit

_ZN4llvm7jitlink9LinkGraph13createSectionENS_9StringRefENS_3orc7MemProtE.exit: ; preds = %bb.m, %_ZNKSt14default_deleteIN4llvm7jitlink7SectionEEclEPS2_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ca = load ptr, ptr %4, align 8, !tbaa !177
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 36
  %.0.copyload.i.i.i59 = load i32, ptr %i.cb, align 1
  %i.cc = and i32 %.0.copyload.i.i.i59, 2048
  %.not41 = icmp eq i32 %i.cc, 0
  br i1 %.not41, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph13createSectionENS_9StringRefENS_3orc7MemProtE.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 20
  store i32 2, ptr %i.cd, align 4, !tbaa !164
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph13createSectionENS_9StringRefENS_3orc7MemProtE.exit, %bb.n, %_ZN4llvmeqENS_9StringRefES0_.exit.thread103
  %.031 = phi ptr [ %i.bl, %_ZN4llvmeqENS_9StringRefES0_.exit.thread103 ], [ %i.by, %bb.n ], [ %i.by, %_ZN4llvm7jitlink9LinkGraph13createSectionENS_9StringRefENS_3orc7MemProtE.exit ] ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.031, i64 16
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !163
  %.not42 = icmp eq i32 %i.cf, %.2
  br i1 %.not42, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.cg = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23, !noalias !357 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !357
  store ptr @.str.7, ptr %2, align 8, !noalias !357
  store i8 3, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !noalias !357
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !noalias !357
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm7jitlink12JITLinkErrorE, i64 16), ptr %i.cg, align 8, !tbaa !21, !noalias !357
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.ch, ptr noundef nonnull align 8 dereferenceable(34) %2) #22, !noalias !357
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !357
  store ptr %i.cg, ptr %0, align 8, !tbaa !173, !alias.scope !356
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.jt1

bb.q:                                             ; preds = %bb.o
  %i.ci = load ptr, ptr %4, align 8, !tbaa !177   ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 36
  %.0.copyload.i.i.i60 = load i32, ptr %i.cj, align 1
  %i.ck = and i32 %.0.copyload.i.i.i60, 128
  %.not43 = icmp eq i32 %i.ck, 0
  br i1 %.not43, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cl = load ptr, ptr %i.ab, align 8, !tbaa !60 ; 4 uses
  %i.cm = load ptr, ptr %i.d, align 8, !tbaa !167, !nonnull !168, !align !169 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 64
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !127
  %.not.i.i61 = icmp eq ptr %i.co, null
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 72
  %i.cq = load ptr, ptr %i.cp, align 8
  %.not2.i.i = icmp eq ptr %i.cq, null
  %or.cond.i.i = select i1 %.not.i.i61, i1 %.not2.i.i, i1 false
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  %.not5.i = icmp eq ptr %i.cs, null
  %.not.i62 = select i1 %or.cond.i.i, i1 true, i1 %.not5.i
  br i1 %.not.i62, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %.0.copyload.i.i.i.i.i63 = load i32, ptr %i.cu, align 1
  %.0.copyload.i.i.i5.i.i = load i32, ptr %i.ct, align 1
  %.0.copyload.i.i.i.i = call i32 @llvm.umin.i32(i32 %.0.copyload.i.i.i.i.i63, i32 %.0.copyload.i.i.i5.i.i)
  br label %_ZN4llvm7jitlink20COFFLinkGraphBuilder14getSectionSizeERKNS_6object14COFFObjectFileEPKNS2_12coff_sectionE.exit

bb.t:                                             ; preds = %bb.r
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %.0.copyload.i.i.i4.i = load i32, ptr %i.cv, align 1
  br label %_ZN4llvm7jitlink20COFFLinkGraphBuilder14getSectionSizeERKNS_6object14COFFObjectFileEPKNS2_12coff_sectionE.exit

_ZN4llvm7jitlink20COFFLinkGraphBuilder14getSectionSizeERKNS_6object14COFFObjectFileEPKNS2_12coff_sectionE.exit: ; preds = %bb.s, %bb.t
  %.0.in.i = phi i32 [ %.0.copyload.i.i.i.i, %bb.s ], [ %.0.copyload.i.i.i4.i, %bb.t ]
  %.0.i64 = zext i32 %.0.in.i to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %.0.copyload.i.i.i.i65 = load i32, ptr %i.cw, align 1
  %i.cx = zext i32 %.0.copyload.i.i.i.i65 to i64
  %i.cy = call noundef i64 @_ZNK4llvm6object14COFFObjectFile12getImageBaseEv(ptr noundef nonnull align 8 dereferenceable(232) %i.cm) #22
  %i.cz = add i64 %i.cy, %i.cx
  %i.da = load ptr, ptr %4, align 8, !tbaa !177
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 36
  %.0.copyload.i.i.i.i66 = load i32, ptr %i.db, align 1 ; 2 uses
  %i.dc = and i32 %.0.copyload.i.i.i.i66, 8
  %.not.i67 = icmp eq i32 %i.dc, 0
  br i1 %.not.i67, label %bb.u, label %_ZNK4llvm6object12coff_section12getAlignmentEv.exit

bb.u:                                             ; preds = %_ZN4llvm7jitlink20COFFLinkGraphBuilder14getSectionSizeERKNS_6object14COFFObjectFileEPKNS2_12coff_sectionE.exit
  %i.dd = lshr i32 %.0.copyload.i.i.i.i66, 20
  %i.de = and i32 %i.dd, 15                       ; 2 uses
  %.not4.i = icmp eq i32 %i.de, 0
  %i.df = shl nuw nsw i32 %i.de, 3
  %i.dg = add nuw nsw i32 %i.df, 248
  %i.dh = and i32 %i.dg, 248
  %i.di = or disjoint i32 %i.dh, 1
  %i.dj = select i1 %.not4.i, i32 33, i32 %i.di
  %i.dk = zext nneg i32 %i.dj to i64
  br label %_ZNK4llvm6object12coff_section12getAlignmentEv.exit

_ZNK4llvm6object12coff_section12getAlignmentEv.exit: ; preds = %_ZN4llvm7jitlink20COFFLinkGraphBuilder14getSectionSizeERKNS_6object14COFFObjectFileEPKNS2_12coff_sectionE.exit, %bb.u
  %.1.i = phi i64 [ %i.dk, %bb.u ], [ 1, %_ZN4llvm7jitlink20COFFLinkGraphBuilder14getSectionSizeERKNS_6object14COFFObjectFileEPKNS2_12coff_sectionE.exit ]
  %i.dl = load ptr, ptr %i.cl, align 8, !tbaa !178 ; 2 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = add i64 %i.dm, 64                       ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !179
  %i.dq = icmp ult i64 %i.dn, %i.dp
  br i1 %i.dq, label %bb.v, label %bb.w, !prof !180

bb.v:                                             ; preds = %_ZNK4llvm6object12coff_section12getAlignmentEv.exit
  %i.dr = inttoptr i64 %i.dn to ptr
  store ptr %i.dr, ptr %i.cl, align 8, !tbaa !178
  br label %_ZN4llvm7jitlink9LinkGraph19createZeroFillBlockERNS0_7SectionEmNS_3orc12ExecutorAddrEmm.exit

bb.w:                                             ; preds = %_ZNK4llvm6object12coff_section12getAlignmentEv.exit
  %i.ds = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(312) %i.cl, i64 noundef 64, i64 noundef 64, i8 3)
  br label %_ZN4llvm7jitlink9LinkGraph19createZeroFillBlockERNS0_7SectionEmNS_3orc12ExecutorAddrEmm.exit

_ZN4llvm7jitlink9LinkGraph19createZeroFillBlockERNS0_7SectionEmNS_3orc12ExecutorAddrEmm.exit: ; preds = %bb.v, %bb.w
  %.0.i.i.i.i.i.i = phi ptr [ %i.dl, %bb.v ], [ %i.ds, %bb.w ] ; 8 uses
  store i64 %i.cz, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !29
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  store ptr %.031, ptr %i.du, align 8, !tbaa !189
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 24
  store ptr null, ptr %i.dv, align 8, !tbaa !190
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 32
  store i64 %.0.i64, ptr %i.dw, align 8, !tbaa !191
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i8 0, i64 24, i1 false)
  store i64 %.1.i, ptr %i.dt, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %.031, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr %.0.i.i.i.i.i.i, ptr %i.b, align 8, !tbaa !193
  %i.dz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !358 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.ac

bb.x:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.ea = load ptr, ptr %i.d, align 8, !tbaa !167, !nonnull !168, !align !169
  call void @_ZNK4llvm6object14COFFObjectFile18getSectionContentsEPKNS0_12coff_sectionERNS_8ArrayRefIhEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(232) %i.ea, ptr noundef nonnull %i.ci, ptr noundef nonnull align 8 dereferenceable(16) %6) #22
  %i.eb = load ptr, ptr %0, align 8, !tbaa !173
  %.not110 = icmp eq ptr %i.eb, null
  br i1 %.not110, label %_ZN4llvm5ErrorD2Ev.exit, label %.critedge.thread

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.x
  %i.ec = load ptr, ptr %6, align 8, !tbaa !360   ; 2 uses
  %i.ed = load i64, ptr %i.ad, align 8, !tbaa !361 ; 2 uses
  %.not.i69 = icmp eq i64 %.sroa.8.0, 8
  br i1 %.not.i69, label %_ZN4llvmeqENS_9StringRefES0_.exit72, label %_ZN4llvm5ErrorD2Ev.exit73

_ZN4llvmeqENS_9StringRefES0_.exit72:              ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %i.ee = load i64, ptr %.sroa.097.0.copyload, align 1
  %i.ef = icmp ne i64 %i.ee, 7311159015335158830
  %i.eg = zext i1 %i.ef to i32
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.y, label %_ZN4llvm5ErrorD2Ev.exit73

end_hunk_0
