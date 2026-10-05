Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BlockPackMatmul?download=true
inline.NumInlined: 2893
inline.NumDeleted: 1744
begin_hunk_0_@_ZN4mlir4impl27createLinalgBlockPackMatmulENS_28LinalgBlockPackMatmulOptionsE:bb.a

_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit7.i.i:    ; preds = %bb.c, %_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !19, !noalias !249
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  store i32 0, ptr %i.u, align 8, !tbaa !20, !noalias !249
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 148
  store i32 6, ptr %i.v, align 4, !tbaa !21, !noalias !249
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.x = load i32, ptr %i.w, align 8, !tbaa !20, !noalias !249
  %.not.i.i8.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i8.i.i, label %_ZN4mlir28LinalgBlockPackMatmulOptionsC2EOS0_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit7.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.z = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIlEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.y), !noalias !249 ; 0 uses
  br label %_ZN4mlir28LinalgBlockPackMatmulOptionsC2EOS0_.exit.i

_ZN4mlir28LinalgBlockPackMatmulOptionsC2EOS0_.exit.i: ; preds = %bb.d, %_ZN4llvm11SmallVectorIlLj6EEC2EOS1_.exit7.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ac = load i32, ptr %i.ab, align 8, !noalias !249
  store i32 %i.ac, ptr %i.aa, align 8, !noalias !249
  call fastcc void @_ZN4mlir4impl25LinalgBlockPackMatmulBaseIN12_GLOBAL__N_121LinalgBlockPackMatmulEEC2Ev(ptr noundef nonnull align 8 dereferenceable(2128) %i.a), !noalias !249
  %i.ad = load ptr, ptr %2, align 8, !tbaa !19, !noalias !249 ; 2 uses
  %i.ae = load i32, ptr %i.c, align 8, !tbaa !20, !noalias !249
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.af
  call void @_ZNSt6vectorIlSaIlEE13_M_assign_auxIPKlEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef %i.ad, ptr noundef %i.ah), !noalias !249
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store i8 1, ptr %i.ai, align 8, !tbaa !33, !noalias !249
  %i.aj = load i8, ptr %i.h, align 8, !tbaa !34, !range !30, !noalias !249, !noundef !31
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 720 ; 2 uses
  store i8 %i.aj, ptr %i.ak, align 8, !tbaa !34, !noalias !249
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !36, !noalias !249
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit.i.i.i, label %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i.i.i

_ZNKSt8functionIFvRKbEEclES1_.exit.i.i.i.i:       ; preds = %_ZN4mlir28LinalgBlockPackMatmulOptionsC2EOS0_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 752
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 776
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !251, !noalias !249
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 1 dereferenceable(1) %i.ak) #22, !noalias !249, !inline_history !248
  br label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit.i.i.i

_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit.i.i.i: ; preds = %_ZNKSt8functionIFvRKbEEclES1_.exit.i.i.i.i, %_ZN4mlir28LinalgBlockPackMatmulOptionsC2EOS0_.exit.i
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !19, !noalias !249 ; 2 uses
  %i.ar = load i32, ptr %i.m, align 8, !tbaa !20, !noalias !249
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 920
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  call void @_ZNSt6vectorIlSaIlEE13_M_assign_auxIPKlEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef %i.aq, ptr noundef %i.au), !noalias !249
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 1048
  store i8 1, ptr %i.av, align 8, !tbaa !33, !noalias !249
  %i.aw = load ptr, ptr %i.s, align 8, !tbaa !19, !noalias !249 ; 2 uses
  %i.ax = load i32, ptr %i.u, align 8, !tbaa !20, !noalias !249
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 1184
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ay
  call void @_ZNSt6vectorIlSaIlEE13_M_assign_auxIPKlEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef %i.aw, ptr noundef %i.ba), !noalias !249
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  store i8 1, ptr %i.bb, align 8, !tbaa !33, !noalias !249
  %i.bc = load i8, ptr %i.aa, align 8, !tbaa !34, !range !30, !noalias !249, !noundef !31
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 1448 ; 2 uses
  store i8 %i.bc, ptr %i.bd, align 8, !tbaa !34, !noalias !249
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 1496
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !36, !noalias !249
  %.not.i.i.not.i1.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.not.i1.i.i.i, label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit3.i.i.i, label %_ZNKSt8functionIFvRKbEEclES1_.exit.i2.i.i.i

_ZNKSt8functionIFvRKbEEclES1_.exit.i2.i.i.i:      ; preds = %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 1480
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 1504
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !251, !noalias !249
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 1 dereferenceable(1) %i.bd) #22, !noalias !249, !inline_history !248
  br label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit3.i.i.i

_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit3.i.i.i: ; preds = %_ZNKSt8functionIFvRKbEEclES1_.exit.i2.i.i.i, %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 201
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !34, !range !30, !noalias !249, !noundef !31
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 1648 ; 2 uses
  store i8 %i.bk, ptr %i.bl, align 8, !tbaa !34, !noalias !249
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 1696
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !36, !noalias !249
  %.not.i.i.not.i4.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.not.i4.i.i.i, label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit6.i.i.i, label %_ZNKSt8functionIFvRKbEEclES1_.exit.i5.i.i.i

_ZNKSt8functionIFvRKbEEclES1_.exit.i5.i.i.i:      ; preds = %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit3.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 1680
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 1704
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !251, !noalias !249
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 1 dereferenceable(1) %i.bl) #22, !noalias !249, !inline_history !248
  br label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit6.i.i.i

_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit6.i.i.i: ; preds = %_ZNKSt8functionIFvRKbEEclES1_.exit.i5.i.i.i, %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit3.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 202
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !34, !range !30, !noalias !249, !noundef !31
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 1848 ; 2 uses
  store i8 %i.bs, ptr %i.bt, align 8, !tbaa !34, !noalias !249
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 1896
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !36, !noalias !249
  %.not.i.i.not.i7.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.not.i7.i.i.i, label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit9.i.i.i, label %_ZNKSt8functionIFvRKbEEclES1_.exit.i8.i.i.i

_ZNKSt8functionIFvRKbEEclES1_.exit.i8.i.i.i:      ; preds = %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit6.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 1880
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 1904
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !251, !noalias !249
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 1 dereferenceable(1) %i.bt) #22, !noalias !249, !inline_history !248
  br label %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit9.i.i.i

_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit9.i.i.i: ; preds = %_ZNKSt8functionIFvRKbEEclES1_.exit.i8.i.i.i, %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit6.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 203
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !34, !range !30, !noalias !249, !noundef !31
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 2048 ; 2 uses
  store i8 %i.ca, ptr %i.cb, align 8, !tbaa !34, !noalias !249
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 2096
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !36, !noalias !249
  %.not.i.i.not.i10.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.not.i10.i.i.i, label %_ZN12_GLOBAL__N_121LinalgBlockPackMatmulCI2N4mlir4impl25LinalgBlockPackMatmulBaseIS0_EEENS1_28LinalgBlockPackMatmulOptionsE.exit.i, label %_ZNKSt8functionIFvRKbEEclES1_.exit.i11.i.i.i

_ZNKSt8functionIFvRKbEEclES1_.exit.i11.i.i.i:     ; preds = %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit9.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 2080
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 2104
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !251, !noalias !249
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 1 dereferenceable(1) %i.cb) #22, !noalias !249, !inline_history !248
  br label %_ZN12_GLOBAL__N_121LinalgBlockPackMatmulCI2N4mlir4impl25LinalgBlockPackMatmulBaseIS0_EEENS1_28LinalgBlockPackMatmulOptionsE.exit.i

_ZN12_GLOBAL__N_121LinalgBlockPackMatmulCI2N4mlir4impl25LinalgBlockPackMatmulBaseIS0_EEENS1_28LinalgBlockPackMatmulOptionsE.exit.i: ; preds = %_ZNKSt8functionIFvRKbEEclES1_.exit.i11.i.i.i, %_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEEaSIbEERbOT_.exit9.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_121LinalgBlockPackMatmulE, i64 16), ptr %i.a, align 8, !tbaa !13, !noalias !249
  %i.ch = load ptr, ptr %i.s, align 8, !tbaa !19, !noalias !249 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.t
  br i1 %i.ci, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_121LinalgBlockPackMatmulCI2N4mlir4impl25LinalgBlockPackMatmulBaseIS0_EEENS1_28LinalgBlockPackMatmulOptionsE.exit.i
  call void @free(ptr noundef %i.ch) #22, !noalias !249
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i:        ; preds = %bb.e, %_ZN12_GLOBAL__N_121LinalgBlockPackMatmulCI2N4mlir4impl25LinalgBlockPackMatmulBaseIS0_EEENS1_28LinalgBlockPackMatmulOptionsE.exit.i
  %i.cj = load ptr, ptr %i.k, align 8, !tbaa !19, !noalias !249 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.l
  br i1 %i.ck, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i
  call void @free(ptr noundef %i.cj) #22, !noalias !249
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i:       ; preds = %bb.f, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i.i
  %i.cl = load ptr, ptr %2, align 8, !tbaa !19, !noalias !249 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.b
  br i1 %i.cm, label %_ZNSt10unique_ptrIN12_GLOBAL__N_121LinalgBlockPackMatmulESt14default_deleteIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i
  call void @free(ptr noundef %i.cl) #22, !noalias !249
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_121LinalgBlockPackMatmulESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12_GLOBAL__N_121LinalgBlockPackMatmulESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.g, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  store ptr %i.a, ptr %0, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6linalg15blockPackMatmulERNS_12RewriterBaseENS0_8LinalgOpERKSt8functionIFSt8optionalINS0_22BlockPackMatmulOptionsEES3_EE(ptr dead_on_unwind noalias writable sret(%"class.llvm::FailureOr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.llvm::FailureOr.49", align 8 ; 15 uses
  %6 = alloca %"class.llvm::SmallVector.37", align 8 ; 11 uses
  %7 = alloca %"class.mlir::TilingInterface", align 8 ; 5 uses
  %8 = alloca %"class.mlir::OpBuilder", align 8   ; 7 uses
  %9 = alloca %"class.llvm::SmallVector.271", align 8 ; 7 uses
  %10 = alloca %class.anon.568, align 8           ; 4 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %class.anon.568, align 8           ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.mlir::linalg::LinalgOp", align 16 ; 4 uses
  %15 = alloca %class.anon.568, align 8           ; 4 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %17 = alloca %class.anon.549, align 8           ; 4 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %19 = alloca %"class.mlir::linalg::LinalgOp", align 16 ; 13 uses
  %20 = alloca %"class.std::optional.31", align 8 ; 23 uses
  %21 = alloca %"class.llvm::SmallVector.43", align 8 ; 9 uses
  %22 = alloca %"class.llvm::FailureOr", align 8  ; 15 uses
  %23 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %24 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %25 = alloca %"class.llvm::FailureOr.49", align 8 ; 9 uses
  %26 = alloca %"class.mlir::linalg::GenericOp", align 8 ; 4 uses
  %27 = alloca %"class.llvm::SmallVector.115", align 8 ; 7 uses
  %28 = alloca %"class.llvm::FailureOr.120", align 8 ; 6 uses
  %29 = alloca %"class.llvm::FailureOr.120", align 8 ; 6 uses
  store ptr %2, ptr %19, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  store ptr %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41
  %30 = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_6linalg13BatchMatmulOpEvE2idE
  %.not.a = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6linalg13BatchMatmulOpEvE2idE
  %spec.select.i.i.i.i.i.i.i.i.i.not = or i1 %.not.a, %30
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef zeroext i1 @_ZN4mlir6linalg13BatchMatmulOp18hasUserDefinedMapsEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #22
  %.pre = load ptr, ptr %19, align 16, !tbaa !44  ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.f = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 1, ptr %i.g, align 1, !tbaa !47
  store ptr @.str, ptr %18, align 8, !tbaa !48
  store i8 3, ptr %i.f, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  store ptr %18, ptr %17, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !59   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.i) #22
  br i1 %i.j, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %bb.e

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.k, align 8
  %i.l = ptrtoint ptr %17 to i64
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6linalg13BatchMatmulOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.l) #22, !inline_history !252
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %i.p, align 8, !tbaa !61
  br label %bb.bh

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.q = phi ptr [ %.pre, %bb.b ], [ %2, %bb.a ]  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 8388608
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit.i, label %bb.g, !prof !62

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !65
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 68
  %i.x = load i32, ptr %i.w, align 4, !tbaa !66
  %i.y = zext i32 %i.x to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit.i

_ZN4mlir9Operation11getOperandsEv.exit.i:         ; preds = %bb.g, %bb.f
  %.sroa.0.0.i.i.i = phi ptr [ %i.v, %bb.g ], [ null, %bb.f ] ; 2 uses
  %.sroa.4.0.i.i.i = phi i64 [ %i.y, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.z = call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS3_9OpOperandENS3_5ValueES7_S7_E8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS3_6linalg8LinalgOp22hasPureBufferSemanticsEvEUlS7_E_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i.i, i64 0, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i)
  %i.aa = extractvalue { ptr, i64 } %i.z, 1
  %.not.i = icmp eq i64 %.sroa.4.0.i.i.i, %i.aa
  br i1 %.not.i, label %bb.h, label %_ZN4mlir6linalg8LinalgOp22hasPureBufferSemanticsEv.exit.thread

bb.h:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit.i
  %i.ab = load ptr, ptr %19, align 16, !tbaa !44  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = and i32 %i.ad, 8388608
  %.not.i.i2.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i2.i, label %_ZN4mlir6linalg8LinalgOp22hasPureBufferSemanticsEv.exit, label %bb.i, !prof !62

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !65
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 68
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !66
  %i.aj = zext i32 %i.ai to i64
  br label %_ZN4mlir6linalg8LinalgOp22hasPureBufferSemanticsEv.exit

_ZN4mlir6linalg8LinalgOp22hasPureBufferSemanticsEv.exit: ; preds = %bb.h, %bb.i
  %.sroa.0.0.i.i3.i = phi ptr [ %i.ag, %bb.i ], [ null, %bb.h ] ; 2 uses
  %.sroa.4.0.i.i4.i = phi i64 [ %i.aj, %bb.i ], [ 0, %bb.h ] ; 2 uses
  %i.ak = call { ptr, i64 } @_ZSt9__find_ifIN4llvm6detail27indexed_accessor_range_baseIN4mlir12OperandRangeEPNS3_9OpOperandENS3_5ValueES7_S7_E8iteratorEN9__gnu_cxx5__ops10_Iter_predIZNS3_6linalg8LinalgOp22hasPureBufferSemanticsEvEUlS7_E0_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr %.sroa.0.0.i.i3.i, i64 0, ptr %.sroa.0.0.i.i3.i, i64 %.sroa.4.0.i.i4.i)
  %i.al = extractvalue { ptr, i64 } %i.ak, 1
  %.not81 = icmp eq i64 %.sroa.4.0.i.i4.i, %i.al
  br i1 %.not81, label %_ZN4mlir6linalg8LinalgOp22hasPureBufferSemanticsEv.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN4mlir6linalg8LinalgOp22hasPureBufferSemanticsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.am = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.an, align 1, !tbaa !47
  store ptr @.str.1, ptr %16, align 8, !tbaa !48
  store i8 3, ptr %i.am, align 8, !tbaa !49
  %i.ao = load ptr, ptr %19, align 16, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  store ptr %16, ptr %15, align 8, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !59 ; 4 uses
  %.not.i.i.i.i48 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i48, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg8LinalgOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.aq) #22
  br i1 %i.ar, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i49, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg8LinalgOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i49: ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.0.0.copyload.i.i.i.i50 = load ptr, ptr %i.as, align 8
  %i.at = ptrtoint ptr %15 to i64
  %i.au = load ptr, ptr %i.aq, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(12) %i.aq, ptr %.sroa.0.0.copyload.i.i.i.i50, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6linalg8LinalgOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.at) #22, !inline_history !253
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg8LinalgOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg8LinalgOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %bb.j, %bb.k, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %i.ax, align 8, !tbaa !61
  br label %bb.bh

_ZN4mlir6linalg8LinalgOp22hasPureBufferSemanticsEv.exit.thread: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit.i, %_ZN4mlir6linalg8LinalgOp22hasPureBufferSemanticsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.ay = load <2 x ptr>, ptr %19, align 16
  store <2 x ptr> %i.ay, ptr %14, align 16, !noalias !267
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !36, !noalias !267
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %bb.l, label %_ZNKSt8functionIFSt8optionalIN4mlir6linalg22BlockPackMatmulOptionsEENS2_8LinalgOpEEEclES5_.exit

bb.l:                                             ; preds = %_ZN4mlir6linalg8LinalgOp22hasPureBufferSemanticsEv.exit.thread
  call void @_ZSt25__throw_bad_function_callv() #23, !noalias !267
  unreachable

_ZNKSt8functionIFSt8optionalIN4mlir6linalg22BlockPackMatmulOptionsEENS2_8LinalgOpEEEclES5_.exit: ; preds = %_ZN4mlir6linalg8LinalgOp22hasPureBufferSemanticsEv.exit.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !68, !noalias !267
  call void %i.bc(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.31") align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(16) %14) #22, !inline_history !256
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.bd = getelementptr inbounds nuw i8, ptr %20, i64 136 ; 3 uses
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !70, !range !30, !noundef !31
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8functionIFSt8optionalIN4mlir6linalg22BlockPackMatmulOptionsEENS2_8LinalgOpEEEclES5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.bh, align 1, !tbaa !47
  store ptr @.str.2, ptr %13, align 8, !tbaa !48
  store i8 3, ptr %i.bg, align 8, !tbaa !49
  %i.bi = load ptr, ptr %19, align 16, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %13, ptr %12, align 8, !tbaa !51
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !59 ; 4 uses
  %.not.i.i.i.i51 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i51, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg8LinalgOpEEEN4llvm13LogicalResultEOT_PKc.exit54, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.bk) #22
  br i1 %i.bl, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i52, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg8LinalgOpEEEN4llvm13LogicalResultEOT_PKc.exit54

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i52: ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %.sroa.0.0.copyload.i.i.i.i53 = load ptr, ptr %i.bm, align 8
  %i.bn = ptrtoint ptr %12 to i64
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(12) %i.bk, ptr %.sroa.0.0.copyload.i.i.i.i53, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6linalg8LinalgOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.bn) #22, !inline_history !253
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg8LinalgOpEEEN4llvm13LogicalResultEOT_PKc.exit54

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg8LinalgOpEEEN4llvm13LogicalResultEOT_PKc.exit54: ; preds = %bb.m, %bb.n, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %i.br, align 8, !tbaa !61
  br label %bb.bc

bb.o:                                             ; preds = %_ZNKSt8functionIFSt8optionalIN4mlir6linalg22BlockPackMatmulOptionsEENS2_8LinalgOpEEEclES5_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !20
  %.not44 = icmp eq i32 %i.bt, 3
  br i1 %.not44, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.bv, align 1, !tbaa !47
  store ptr @.str.3, ptr %11, align 8, !tbaa !48
  store i8 3, ptr %i.bu, align 8, !tbaa !49
  %i.bw = load ptr, ptr %19, align 16, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
end_hunk_0
begin_hunk_1_@_ZN4mlir6linalg15blockPackMatmulERNS_12RewriterBaseENS0_8LinalgOpERKSt8functionIFSt8optionalINS0_22BlockPackMatmulOptionsEES3_EE:bb.a
  %i.ew = load i64, ptr %.sroa.039.059.i, align 8, !tbaa !78
  %i.ex = load ptr, ptr %9, align 8, !tbaa !19
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %i.ex, i64 %i.ew ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.ez, align 8
  %i.fa = call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %.sroa.02.0.copyload.i.i) #22 ; 2 uses
  %i.fb = extractvalue { i64, i8 } %i.fa, 0
  %i.fc = extractvalue { i64, i8 } %i.fa, 1
  %i.fd = trunc nuw i8 %i.fc to i1
  %.not.i.i60 = icmp eq i64 %i.fb, 1
  %or.cond.i.i = select i1 %i.fd, i1 %.not.i.i60, i1 false
  br i1 %or.cond.i.i, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %bb.x
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.ey, align 8
  %i.fe = call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %.sroa.01.0.copyload.i.i) #22 ; 2 uses
  %i.ff = extractvalue { i64, i8 } %i.fe, 0
  %i.fg = extractvalue { i64, i8 } %i.fe, 1
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.z, label %.critedge.i

bb.z:                                             ; preds = %bb.y
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.fi, align 8
  %i.fj = call { i64, i8 } @_ZN4mlir19getConstantIntValueENS_12OpFoldResultE(i64 %.sroa.0.0.copyload.i.i) #22 ; 2 uses
  %i.fk = extractvalue { i64, i8 } %i.fj, 1
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = trunc nuw i8 %i.ev to i1
  %or.cond = select i1 %i.fl, i1 %i.fm, i1 false
  br i1 %or.cond, label %bb.aa, label %.critedge.i

bb.aa:                                            ; preds = %bb.z
  %i.fn = extractvalue { i64, i8 } %i.fj, 0
  %i.fo = sub nsw i64 %i.fn, %i.ff
  %i.fp = srem i64 %i.fo, %i.eu
  %.not25.i = icmp eq i64 %i.fp, 0
  br i1 %.not25.i, label %bb.ab, label %.critedge.i

bb.ab:                                            ; preds = %bb.aa
  %i.fq = add nuw nsw i64 %.sroa.8.058.i, 1
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.039.059.i, i64 8 ; 2 uses
  %.not54.i = icmp eq ptr %i.fr, %i.ek
  br i1 %.not54.i, label %.critedge.i, label %bb.w

.critedge.i:                                      ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %_ZN4llvm4castIN4mlir15TilingInterfaceENS1_9OperationEEEDcPT0_.exit.i
  %.not54.lcssa.i = phi i1 [ true, %_ZN4llvm4castIN4mlir15TilingInterfaceENS1_9OperationEEEDcPT0_.exit.i ], [ false, %bb.w ], [ false, %bb.aa ], [ true, %bb.ab ], [ false, %bb.x ], [ false, %bb.z ], [ false, %bb.y ] ; 2 uses
  %i.fs = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit.i, label %bb.ac

bb.ac:                                            ; preds = %.critedge.i
  call void @free(ptr noundef %i.fs) #22
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit.i

_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit.i:    ; preds = %bb.ac, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.fv = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.db
  br i1 %i.fw, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit.i
  call void @free(ptr noundef %i.fv) #22
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %.pre68.i = load i8, ptr %i.cv, align 8, !tbaa !76, !range !30
  %i.fx = trunc nuw i8 %.pre68.i to i1
  store i8 0, ptr %i.cv, align 8, !tbaa !76
  br i1 %i.fx, label %bb.af, label %_ZL23validateFullTilesOnDimsN4mlir6linalg8LinalgOpEN4llvm8ArrayRefINS_12OpFoldResultEEENS3_IlEE.exit

bb.af:                                            ; preds = %bb.ae
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !19 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef %i.fz) #22
  br label %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit.i.i.i.i.i.i

_ZN4llvm11SmallVectorIjLj2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !19 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit1.i.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit.i.i.i.i.i.i
  call void @free(ptr noundef %i.gd) #22
  br label %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit1.i.i.i.i.i.i

_ZN4llvm11SmallVectorIjLj2EED2Ev.exit1.i.i.i.i.i.i: ; preds = %bb.ah, %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit.i.i.i.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !19 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit2.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit1.i.i.i.i.i.i
  call void @free(ptr noundef %i.gh) #22
  br label %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit2.i.i.i.i.i.i

_ZN4llvm11SmallVectorIjLj2EED2Ev.exit2.i.i.i.i.i.i: ; preds = %bb.ai, %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit1.i.i.i.i.i.i
  %i.gk = load ptr, ptr %5, align 8, !tbaa !19    ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZL23validateFullTilesOnDimsN4mlir6linalg8LinalgOpEN4llvm8ArrayRefINS_12OpFoldResultEEENS3_IlEE.exit, label %.split

.split:                                           ; preds = %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit2.i.i.i.i.i.i
  call void @free(ptr noundef %i.gk) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.not54.lcssa.i, label %bb.aj, label %_ZL23validateFullTilesOnDimsN4mlir6linalg8LinalgOpEN4llvm8ArrayRefINS_12OpFoldResultEEENS3_IlEE.exit.thread

_ZL23validateFullTilesOnDimsN4mlir6linalg8LinalgOpEN4llvm8ArrayRefINS_12OpFoldResultEEENS3_IlEE.exit: ; preds = %bb.ae, %_ZN4llvm11SmallVectorIjLj2EED2Ev.exit2.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.not54.lcssa.i, label %bb.aj, label %_ZL23validateFullTilesOnDimsN4mlir6linalg8LinalgOpEN4llvm8ArrayRefINS_12OpFoldResultEEENS3_IlEE.exit.thread

_ZL23validateFullTilesOnDimsN4mlir6linalg8LinalgOpEN4llvm8ArrayRefINS_12OpFoldResultEEENS3_IlEE.exit.thread: ; preds = %bb.s, %.split, %_ZL23validateFullTilesOnDimsN4mlir6linalg8LinalgOpEN4llvm8ArrayRefINS_12OpFoldResultEEENS3_IlEE.exit.thread79, %_ZL23validateFullTilesOnDimsN4mlir6linalg8LinalgOpEN4llvm8ArrayRefINS_12OpFoldResultEEENS3_IlEE.exit
  %i.gn = call i8 @_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg8LinalgOpEEEN4llvm13LogicalResultEOT_PKc(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull @.str.4) ; 0 uses
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %i.go, align 8, !tbaa !61
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

bb.aj:                                            ; preds = %.split, %_ZL23validateFullTilesOnDimsN4mlir6linalg8LinalgOpEN4llvm8ArrayRefINS_12OpFoldResultEEENS3_IlEE.exit, %bb.r
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gr = load <2 x ptr>, ptr %i.gp, align 8
  %i.gs = load ptr, ptr %i.gp, align 8, !tbaa !270
  %i.gt = load ptr, ptr %19, align 16, !tbaa !44  ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !269
  %i.gw = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.gt) #22
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !273
  store ptr %i.gv, ptr %i.gp, align 8, !tbaa !270
  store ptr %i.gy, ptr %i.gq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %.sroa.017.0.copyload = load ptr, ptr %19, align 16
  %.sroa.218.0.copyload = load ptr, ptr %i.a, align 8
  %i.gz = load ptr, ptr %21, align 8, !tbaa !19
  %i.ha = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !20
  %i.hc = zext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !19
  store ptr %i.he, ptr %23, align 8, !tbaa !97
  %i.hf = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %20, i64 56
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !20
  %i.hi = zext i32 %i.hh to i64
  store i64 %i.hi, ptr %i.hf, align 8, !tbaa !98
  %i.hj = getelementptr inbounds nuw i8, ptr %20, i64 88
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !19
  store ptr %i.hk, ptr %24, align 8, !tbaa !97
  %i.hl = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %20, i64 96
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !20
  %i.ho = zext i32 %i.hn to i64
  store i64 %i.ho, ptr %i.hl, align 8, !tbaa !98
  call void @_ZN4mlir6linalg18packMatmulGreedilyERNS_12RewriterBaseENS0_8LinalgOpEN4llvm8ArrayRefINS_12OpFoldResultEEENS5_IlEES8_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::FailureOr") align 8 %22, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %.sroa.017.0.copyload, ptr %.sroa.218.0.copyload, ptr %i.gz, i64 %i.hc, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %23, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %24) #22
  %i.hp = getelementptr inbounds nuw i8, ptr %22, i64 144 ; 3 uses
  %i.hq = load i8, ptr %i.hp, align 8, !tbaa !61, !range !30, !noundef !31
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.ak, label %.thread

.thread:                                          ; preds = %bb.aj
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %i.hs, align 8, !tbaa !61
  br label %bb.ay

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.ht = getelementptr inbounds nuw i8, ptr %22, i64 64 ; 6 uses
  %.sroa.013.0.copyload = load ptr, ptr %i.ht, align 8
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %22, i64 72 ; 3 uses
  %.sroa.214.0.copyload = load ptr, ptr %.sroa.214.0..sroa_idx, align 8
  call void @_ZN4mlir6linalg20inferContractionDimsENS0_8LinalgOpE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::FailureOr.49") align 8 %25, ptr %.sroa.013.0.copyload, ptr %.sroa.214.0.copyload) #22
  %i.hu = getelementptr inbounds nuw i8, ptr %25, i64 96
  %i.hv = load i8, ptr %i.hu, align 8, !tbaa !76, !range !30, !noundef !31
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %i.hx, align 8, !tbaa !61
  br label %bb.au

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  %i.hy = load ptr, ptr %i.ht, align 8, !tbaa !44 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.hz, align 8, !tbaa !38
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !41
  %i.ic = icmp eq ptr %i.ib, @_ZN4mlir6detail14TypeIDResolverINS_6linalg9GenericOpEvE2idE
  %31 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6linalg9GenericOpEvE2idE
  %spec.select.i.i.i.i = and i1 %31, %i.ic
  %spec.select.i.i61 = select i1 %spec.select.i.i.i.i, ptr %i.hy, ptr null
  store ptr %spec.select.i.i61, ptr %26, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  call void @_ZN4mlir6detail27IndexingMapOpInterfaceTraitINS_6linalg9GenericOpEE20getIndexingMapsArrayEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.115") align 8 %27, ptr noundef nonnull align 1 dereferenceable(1) %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  %.sroa.09.0.copyload = load ptr, ptr %i.ht, align 8
  %.sroa.210.0.copyload = load ptr, ptr %.sroa.214.0..sroa_idx, align 8
  %i.id = load ptr, ptr %22, align 8, !tbaa !19
  %.sroa.08.0.copyload = load ptr, ptr %i.id, align 8
  %i.ie = load ptr, ptr %27, align 8, !tbaa !19
  %.sroa.07.0.copyload = load ptr, ptr %i.ie, align 8, !tbaa !100
  %i.if = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !19
  %i.ih = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !20
  %i.ij = zext i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %20, i64 128
  %i.il = load i8, ptr %i.ik, align 8, !tbaa !101, !range !30, !noundef !31
  %i.im = trunc nuw i8 %i.il to i1
  %i.in = getelementptr inbounds nuw i8, ptr %20, i64 129
  %i.io = load i8, ptr %i.in, align 1, !tbaa !102, !range !30, !noundef !31
  %i.ip = trunc nuw i8 %i.io to i1
  call fastcc void @_ZL21transposePackedMatmulRN4mlir12RewriterBaseENS_6linalg8LinalgOpENS2_6PackOpENS_9AffineMapEN4llvm8ArrayRefIjEEbb(ptr dead_on_unwind noalias writable align 8 %28, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %.sroa.09.0.copyload, ptr %.sroa.210.0.copyload, ptr %.sroa.08.0.copyload, ptr %.sroa.07.0.copyload, ptr %i.ig, i64 %i.ij, i1 noundef zeroext %i.im, i1 noundef zeroext %i.ip)
  %i.iq = getelementptr inbounds nuw i8, ptr %28, i64 32
  %i.ir = load i8, ptr %i.iq, align 8, !tbaa !104, !range !30, !noundef !31
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %i.it, align 8, !tbaa !61
  br label %bb.as

bb.ao:                                            ; preds = %bb.am
  %i.iu = load ptr, ptr %22, align 8, !tbaa !19
  %i.iv = load i64, ptr %28, align 8
  store i64 %i.iv, ptr %i.iu, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %28, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ht, ptr noundef nonnull align 8 dereferenceable(16) %i.iw, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %.sroa.04.0.copyload = load ptr, ptr %i.ht, align 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.214.0..sroa_idx, align 8
  %i.ix = load ptr, ptr %22, align 8, !tbaa !19
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %.sroa.03.0.copyload = load ptr, ptr %i.iy, align 8
  %i.iz = load ptr, ptr %27, align 8, !tbaa !19
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %.sroa.02.0.copyload = load ptr, ptr %i.ja, align 8, !tbaa !100
  %i.jb = getelementptr inbounds nuw i8, ptr %25, i64 72
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !19
  %i.jd = getelementptr inbounds nuw i8, ptr %25, i64 80
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !20
  %i.jf = zext i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr %20, i64 130
  %i.jh = load i8, ptr %i.jg, align 2, !tbaa !105, !range !30, !noundef !31
  %i.ji = trunc nuw i8 %i.jh to i1
  %i.jj = getelementptr inbounds nuw i8, ptr %20, i64 131
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !106, !range !30, !noundef !31
  %i.jl = trunc nuw i8 %i.jk to i1
  call fastcc void @_ZL21transposePackedMatmulRN4mlir12RewriterBaseENS_6linalg8LinalgOpENS2_6PackOpENS_9AffineMapEN4llvm8ArrayRefIjEEbb(ptr dead_on_unwind noalias writable align 8 %29, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr %.sroa.04.0.copyload, ptr %.sroa.2.0.copyload, ptr %.sroa.03.0.copyload, ptr %.sroa.02.0.copyload, ptr %i.jc, i64 %i.jf, i1 noundef zeroext %i.ji, i1 noundef zeroext %i.jl)
  %i.jm = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.jn = load i8, ptr %i.jm, align 8, !tbaa !104, !range !30, !noundef !31
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %i.jp, align 8, !tbaa !61
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.jq = load ptr, ptr %22, align 8, !tbaa !19
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load i64, ptr %29, align 8
  store i64 %i.js, ptr %i.jr, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %29, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ht, ptr noundef nonnull align 8 dereferenceable(16) %i.jt, i64 16, i1 false)
  call void @_ZN4llvm9FailureOrIN4mlir6linalg10PackResultEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %22)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  %i.ju = load ptr, ptr %27, align 8, !tbaa !19   ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.jw = icmp eq ptr %i.ju, %i.jv
  br i1 %i.jw, label %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @free(ptr noundef %i.ju) #22
  br label %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  br label %bb.au

bb.au:                                            ; preds = %bb.al, %_ZN4llvm11SmallVectorIN4mlir9AffineMapELj6EED2Ev.exit
  call void @_ZNSt14_Optional_baseIN4mlir6linalg21ContractionDimensionsELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  %.pre82 = load i8, ptr %i.hp, align 8, !tbaa !61, !range !30
  %i.jx = trunc nuw i8 %.pre82 to i1
  store i8 0, ptr %i.hp, align 8, !tbaa !61
  br i1 %i.jx, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.jy = getelementptr inbounds nuw i8, ptr %22, i64 80
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !19 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %22, i64 96
  %i.kb = icmp eq ptr %i.jz, %i.ka
  br i1 %i.kb, label %_ZN4llvm11SmallVectorIN4mlir6linalg8UnPackOpELj6EED2Ev.exit.i.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @free(ptr noundef %i.jz) #22
  br label %_ZN4llvm11SmallVectorIN4mlir6linalg8UnPackOpELj6EED2Ev.exit.i.i.i.i.i

_ZN4llvm11SmallVectorIN4mlir6linalg8UnPackOpELj6EED2Ev.exit.i.i.i.i.i: ; preds = %bb.aw, %bb.av
  %i.kc = load ptr, ptr %22, align 8, !tbaa !19   ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.ke = icmp eq ptr %i.kc, %i.kd
  br i1 %i.ke, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir6linalg8UnPackOpELj6EED2Ev.exit.i.i.i.i.i
  call void @free(ptr noundef %i.kc) #22
  br label %bb.ay

bb.ay:                                            ; preds = %.thread, %bb.ax, %_ZN4llvm11SmallVectorIN4mlir6linalg8UnPackOpELj6EED2Ev.exit.i.i.i.i.i, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %.not.i.i64 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i64, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store <2 x ptr> %i.gr, ptr %i.gp, align 8
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i8 0, i64 16, i1 false)
  br label %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit

_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit:      ; preds = %bb.ba, %bb.az, %_ZL23validateFullTilesOnDimsN4mlir6linalg8LinalgOpEN4llvm8ArrayRefINS_12OpFoldResultEEENS3_IlEE.exit.thread
  %i.kf = load ptr, ptr %21, align 8, !tbaa !19   ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.kh = icmp eq ptr %i.kf, %i.kg
  br i1 %i.kh, label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit
  call void @free(ptr noundef %i.kf) #22
  br label %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit: ; preds = %_ZN4mlir9OpBuilder14InsertionGuardD2Ev.exit, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir12OpFoldResultELj6EED2Ev.exit, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg8LinalgOpEEEN4llvm13LogicalResultEOT_PKc.exit58, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg8LinalgOpEEEN4llvm13LogicalResultEOT_PKc.exit54
  %i.ki = load i8, ptr %i.bd, align 8, !tbaa !70, !range !30, !noundef !31
  %i.kj = trunc nuw i8 %i.ki to i1
  store i8 0, ptr %i.bd, align 8, !tbaa !70
  br i1 %i.kj, label %bb.bd, label %_ZNSt14_Optional_baseIN4mlir6linalg22BlockPackMatmulOptionsELb0ELb0EED2Ev.exit

bb.bd:                                            ; preds = %bb.bc
  %i.kk = getelementptr inbounds nuw i8, ptr %20, i64 88
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !19 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %20, i64 104
  %i.kn = icmp eq ptr %i.kl, %i.km
  br i1 %i.kn, label %_ZN4llvm11SmallVectorIlLj3EED2Ev.exit.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @free(ptr noundef %i.kl) #22
  br label %_ZN4llvm11SmallVectorIlLj3EED2Ev.exit.i.i.i.i.i

_ZN4llvm11SmallVectorIlLj3EED2Ev.exit.i.i.i.i.i:  ; preds = %bb.be, %bb.bd
  %i.ko = getelementptr inbounds nuw i8, ptr %20, i64 48
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !19 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZN4llvm11SmallVectorIlLj3EED2Ev.exit1.i.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm11SmallVectorIlLj3EED2Ev.exit.i.i.i.i.i
  call void @free(ptr noundef %i.kp) #22
  br label %_ZN4llvm11SmallVectorIlLj3EED2Ev.exit1.i.i.i.i.i

_ZN4llvm11SmallVectorIlLj3EED2Ev.exit1.i.i.i.i.i: ; preds = %bb.bf, %_ZN4llvm11SmallVectorIlLj3EED2Ev.exit.i.i.i.i.i
  %i.ks = load ptr, ptr %20, align 8, !tbaa !19   ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.ku = icmp eq ptr %i.ks, %i.kt
  br i1 %i.ku, label %_ZNSt14_Optional_baseIN4mlir6linalg22BlockPackMatmulOptionsELb0ELb0EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZN4llvm11SmallVectorIlLj3EED2Ev.exit1.i.i.i.i.i
  call void @free(ptr noundef %i.ks) #22
  br label %_ZNSt14_Optional_baseIN4mlir6linalg22BlockPackMatmulOptionsELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4mlir6linalg22BlockPackMatmulOptionsELb0ELb0EED2Ev.exit: ; preds = %bb.bc, %_ZN4llvm11SmallVectorIlLj3EED2Ev.exit1.i.i.i.i.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.bh

bb.bh:                                            ; preds = %bb.e, %_ZNSt14_Optional_baseIN4mlir6linalg22BlockPackMatmulOptionsELb0ELb0EED2Ev.exit, %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg8LinalgOpEEEN4llvm13LogicalResultEOT_PKc.exit
  ret void
}
end_hunk_1
