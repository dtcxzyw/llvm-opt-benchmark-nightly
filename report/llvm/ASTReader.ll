Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTReader?download=true
inline.NumInlined: 33820
inline.NumDeleted: 13736
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 70
loop-unroll.NumUnrolled: 112
begin_hunk_0_@_ZN5clang9ASTReader13ReadSLocEntryEi:bb.a
bb.ar:                                            ; preds = %bb.aq
  %i.ie = load ptr, ptr %4, align 8, !tbaa !1695  ; 3 uses
  %.not.i.i130 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i130, label %_ZN4llvm8ExpectedINS_14BitstreamEntryEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i131

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i131: ; preds = %bb.ar
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !159
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(8) %i.ie) #36, !inline_history !13
  br label %_ZN4llvm8ExpectedINS_14BitstreamEntryEED2Ev.exit

_ZN4llvm8ExpectedINS_14BitstreamEntryEED2Ev.exit: ; preds = %bb.aq, %bb.ar, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %bb.as

bb.as:                                            ; preds = %_ZN4llvm8ExpectedINS_14BitstreamEntryEED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit, %bb.a, %bb.c
  %.10 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ %.8, %_ZN4llvm8ExpectedINS_14BitstreamEntryEED2Ev.exit ], [ true, %_ZN4llvm5ErrorD2Ev.exit ]
  ret i1 %.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang9ASTReader12getInputFileERNS_13serialization10ModuleFileEjb(ptr noundef nonnull align 8 dereferenceable(16376) %0, ptr noundef nonnull align 8 dereferenceable(3832) %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::ErrorOr.3678", align 8 ; 5 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %7 = alloca %class.anon.3658, align 1           ; 3 uses
  %8 = alloca %"class.llvm::Expected.3601", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %9 = alloca %"struct.clang::SavedStreamPosition", align 8 ; 5 uses
  %10 = alloca %"struct.clang::serialization::InputFileInfo", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %11 = alloca %"class.clang::ASTReader::TemporarilyOwnedStringRef", align 8 ; 16 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %12 = alloca %"class.clang::CustomizableOptional.841", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::allocator.2", align 1 ; 3 uses
  %15 = alloca %"class.llvm::StringRef", align 8  ; 2 uses
  %16 = alloca %class.anon.1619, align 8          ; 9 uses
  %17 = alloca %class.anon.1620, align 8          ; 9 uses
  %18 = alloca %"struct.clang::serialization::Change", align 8 ; 15 uses
  %19 = alloca %"struct.clang::serialization::Change", align 8 ; 4 uses
  %20 = alloca %"struct.clang::serialization::Change", align 8 ; 4 uses
  %21 = alloca %"class.llvm::SmallVector.368", align 8 ; 14 uses
  %22 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 10 uses
  %23 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 11 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %26 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %27 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 6 uses
  %28 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 5 uses
  %29 = alloca %"class.clang::DiagnosticBuilder", align 8 ; 8 uses
  %i.e = zext i1 %3 to i8
  store i8 %i.e, ptr %i.a, align 1, !tbaa !1011
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %2 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1280 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1288
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1748
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !1749 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3
  %i.p = icmp ult i64 %i.o, %i.g
  br i1 %i.p, label %bb.ar, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = add i32 %2, -1
  %i.r = zext i32 %i.q to i64                     ; 5 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.r
  %.0.copyload.i.i.i.i = load i64, ptr %i.s, align 8 ; 3 uses
  %.not = icmp ult i64 %.0.copyload.i.i.i.i, 8
  br i1 %.not, label %bb.d, label %bb.ar

bb.d:                                             ; preds = %bb.c
  %i.t = and i64 %.0.copyload.i.i.i.i, 6
  %i.u = icmp eq i64 %i.t, 6
  br i1 %i.u, label %bb.ar, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 920 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store ptr %i.v, ptr %9, align 8, !tbaa !1689
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 936 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1690
  %i.z = shl i64 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 952 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !1691
  %i.ac = zext i32 %i.ab to i64
  %i.ad = sub i64 %i.z, %i.ac
  store i64 %i.ad, ptr %i.w, align 8, !tbaa !1693
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 1264
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !1750
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1272
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1751
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.r
  %.0.copyload.i.i.i = load i64, ptr %i.ai, align 1
  %i.aj = add i64 %.0.copyload.i.i.i, %i.af       ; 2 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 2305843009213693944
  %i.am = trunc i64 %i.aj to i32
  %i.an = and i32 %i.am, 63                       ; 2 uses
  store i64 %i.al, ptr %i.x, align 8, !tbaa !1690, !noalias !3739
  store i32 0, ptr %i.aa, align 8, !tbaa !1691, !noalias !3739
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %_ZN4llvm5ErrorD2Ev.exit96, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36, !noalias !3739
  call void @_ZN4llvm21SimpleBitstreamCursor4ReadEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.3601") align 8 %8, ptr noundef nonnull align 8 dereferenceable(36) %i.v, i32 noundef %i.an), !noalias !3739
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !noalias !3739
  %i.aq = trunc i8 %i.ap to i1
  br i1 %i.aq, label %_ZN4llvm21SimpleBitstreamCursor9JumpToBitEm.exit, label %_ZN4llvm21SimpleBitstreamCursor9JumpToBitEm.exit.thread146

_ZN4llvm21SimpleBitstreamCursor9JumpToBitEm.exit.thread146: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36, !noalias !3739
  br label %_ZN4llvm5ErrorD2Ev.exit96

_ZN4llvm21SimpleBitstreamCursor9JumpToBitEm.exit: ; preds = %bb.f
  %i.ar = load i64, ptr %8, align 8, !tbaa !1695, !noalias !3740 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36, !noalias !3739
  %.not152 = icmp eq i64 %i.ar, 0
  br i1 %.not152, label %_ZN4llvm5ErrorD2Ev.exit96, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm21SimpleBitstreamCursor9JumpToBitEm.exit
  %i.as = inttoptr i64 %i.ar to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.as, ptr %6, align 8, !tbaa !1697
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %5, ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  %i.at = load ptr, ptr %6, align 8, !tbaa !1697  ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !159
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.at) #36, !inline_history !16
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %_ZN4llvm5ErrorD2Ev.exit96

_ZN4llvm5ErrorD2Ev.exit96:                        ; preds = %bb.e, %_ZN4llvm21SimpleBitstreamCursor9JumpToBitEm.exit, %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm21SimpleBitstreamCursor9JumpToBitEm.exit.thread146
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  call void @_ZN5clang9ASTReader16getInputFileInfoERNS_13serialization10ModuleFileEj(ptr dead_on_unwind nonnull writable sret(%"struct.clang::serialization::InputFileInfo") align 8 %10, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(3832) %1, i32 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !3741
  store i64 %i.az, ptr %i.b, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !3742
  store i64 %i.bb, ptr %i.c, align 8, !tbaa !167
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !1753, !range !997, !noundef !177 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 57
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !3743, !range !997, !noundef !177
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 13376
  %.sroa.040.0.copyload = load ptr, ptr %10, align 8, !tbaa !876
  %.sroa.241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.241.0.copyload = load i64, ptr %.sroa.241.0..sroa_idx, align 8, !tbaa !167
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !165, !noalias !3744
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !166, !noalias !3744
  call void @_ZN5clang9ASTReader19ResolveImportedPathERN4llvm11SmallStringILj0EEENS1_9StringRefES5_(ptr dead_on_unwind nonnull writable sret(%"class.clang::ASTReader::TemporarilyOwnedStringRef") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr %.sroa.040.0.copyload, i64 %.sroa.241.0.copyload, ptr %i.bi, i64 %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !1754
  store i64 %i.bm, ptr %i.d, align 8, !tbaa !167
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 257 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !1755, !range !997, !noundef !177
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1535, !nonnull !177, !align !178
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 112
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1048, !nonnull !177, !align !178
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1136, !nonnull !177, !align !178 ; 2 uses
  %i.bu = trunc nuw i8 %i.bo to i1
  br i1 %i.bu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit96
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 624
  %i.bw = load i16, ptr %i.bv, align 8
  %i.bx = and i16 %i.bw, 512
  %.not87 = icmp eq i16 %i.bx, 0                  ; 2 uses
  %spec.select = zext i1 %.not87 to i8
  %spec.select91 = select i1 %.not87, i8 %i.bd, i8 0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4llvm5ErrorD2Ev.exit96
  %.084 = phi i8 [ 0, %_ZN4llvm5ErrorD2Ev.exit96 ], [ %spec.select, %bb.i ] ; 2 uses
  %.083 = phi i8 [ %i.bd, %_ZN4llvm5ErrorD2Ev.exit96 ], [ %spec.select91, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1049, !nonnull !177, !align !178
  %.sroa.033.0.copyload = load ptr, ptr %11, align 8, !tbaa !876
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %.sroa.234.0.copyload = load i64, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @_ZN5clang11FileManager14getFileRefImplEN4llvm9StringRefEbbb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr.3678") align 8 %4, ptr noundef nonnull align 8 dereferenceable(716) %i.bz, ptr %.sroa.033.0.copyload, i64 %.sroa.234.0.copyload, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #36
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cb = load i8, ptr %i.ca, align 8
  %i.cc = trunc i8 %i.cb to i1
  %i.cd = load i64, ptr %4, align 8
  %i.ce = inttoptr i64 %i.cd to ptr               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %.sroa.0.1.i = select i1 %i.cc, ptr null, ptr %i.ce ; 2 uses
  store ptr %.sroa.0.1.i, ptr %12, align 8
  %i.cf = trunc nuw i8 %.083 to i1
  %i.cg = or i8 %.083, %i.bf                      ; 2 uses
  %or.cond.not = icmp eq i8 %i.cg, 0
  %30 = trunc nuw i8 %.084 to i1
  %31 = or i8 %i.cg, %.084
  %or.cond3.not = icmp eq i8 %31, 0
  %.not155 = icmp eq ptr %.sroa.0.1.i, null       ; 2 uses
  br i1 %or.cond3.not, label %.thread149, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not155, label %.thread, label %.thread148

.thread149:                                       ; preds = %bb.j
  br i1 %.not155, label %bb.l, label %bb.o

.thread:                                          ; preds = %bb.k
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !1049, !nonnull !177, !align !178
  %.sroa.031.0.copyload = load ptr, ptr %11, align 8, !tbaa !876
  %.sroa.232.0.copyload = load i64, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !167
  %i.ci = load i64, ptr %i.b, align 8, !tbaa !167
  %i.cj = load i64, ptr %i.c, align 8, !tbaa !167
  %i.ck = call ptr @_ZN5clang11FileManager17getVirtualFileRefEN4llvm9StringRefEll(ptr noundef nonnull align 8 dereferenceable(716) %i.ch, ptr %.sroa.031.0.copyload, i64 %.sroa.232.0.copyload, i64 noundef %i.ci, i64 noundef %i.cj) #36 ; 2 uses
  store ptr %i.ck, ptr %12, align 8, !tbaa !1757
  %.not156 = icmp eq ptr %i.ck, null
  br i1 %.not156, label %bb.l, label %.thread148

bb.l:                                             ; preds = %.thread, %.thread149
  %i.cl = load i8, ptr %i.a, align 1, !tbaa !1011, !range !997, !noundef !177
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #36
  %.sroa.029.0.copyload = load ptr, ptr %11, align 8, !tbaa !876
  %.sroa.230.0.copyload = load i64, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !167
  %i.cn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr %.sroa.029.0.copyload, i64 %.sroa.230.0.copyload) ; 0 uses
  %i.co = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.11) ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !165
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !166
  %i.ct = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr %i.cq, i64 %i.cs) ; 0 uses
  %i.cu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.12) ; 0 uses
  %i.cv = load ptr, ptr %13, align 8, !tbaa !165
  %i.cw = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !166
  call void @_ZNK5clang9ASTReader5ErrorEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(16376) %0, ptr %i.cv, i64 %i.cx)
  %i.cy = load ptr, ptr %13, align 8, !tbaa !165  ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !168
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.l
  %i.dd = load ptr, ptr %i.h, align 8, !tbaa !1749
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.r
  store i64 6, ptr %i.de, align 8, !tbaa !168
  br label %bb.al

bb.o:                                             ; preds = %.thread149
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !1714, !nonnull !177, !align !178 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.05.i.i.i = phi ptr [ %i.ce, %bb.o ], [ %i.dk, %bb.p ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.dh, align 8 ; 2 uses
  %i.di = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.di, 0
  %i.dj = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -5 ; 2 uses
  %i.dk = inttoptr i64 %i.dj to ptr               ; 2 uses
  %.not7.i.i.i = icmp eq i64 %i.dj, 0
  %.not.i.i.i97 = or i1 %.not.i.i.i.i.i.i.i, %.not7.i.i.i
  br i1 %.not.i.i.i97, label %_ZNK5clang12FileEntryRefcvPKNS_9FileEntryEEv.exit, label %bb.p

_ZNK5clang12FileEntryRefcvPKNS_9FileEntryEEv.exit: ; preds = %bb.p
  %i.dl = call noundef zeroext i1 @_ZNK5clang13SourceManager16isFileOverriddenEPKNS_9FileEntryE(ptr noundef nonnull align 8 dereferenceable(776) %i.dg, ptr noundef %i.dk)
  br i1 %i.dl, label %bb.q, label %.thread148

bb.q:                                             ; preds = %_ZNK5clang12FileEntryRefcvPKNS_9FileEntryEEv.exit
  %i.dm = load i8, ptr %i.a, align 1, !tbaa !1011, !range !997, !noundef !177
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.024.0.copyload = load ptr, ptr %11, align 8, !tbaa !876
  %.sroa.2.0.copyload = load i64, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  call void @_ZNK5clang9ASTReader5ErrorEjN4llvm9StringRefES2_S2_(ptr noundef nonnull align 8 dereferenceable(16376) %0, i32 noundef 924, ptr %.sroa.024.0.copyload, i64 %.sroa.2.0.copyload, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %15)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.022.0.copyload = load ptr, ptr %12, align 8, !tbaa !1757
  %i.do = call ptr @_ZN5clang13SourceManager26bypassFileContentsOverrideENS_12FileEntryRefE(ptr noundef nonnull align 8 dereferenceable(776) %i.dg, ptr %.sroa.022.0.copyload) #36 ; 2 uses
  store ptr %i.do, ptr %12, align 8
  %.not154 = icmp eq ptr %i.do, null
  br i1 %.not154, label %bb.t, label %.thread148

bb.t:                                             ; preds = %bb.s
  %i.dp = load ptr, ptr %i.h, align 8, !tbaa !1749
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.r
  store i64 6, ptr %i.dq, align 8, !tbaa !168
  br label %bb.al

.thread148:                                       ; preds = %bb.k, %.thread, %bb.s, %_ZNK5clang12FileEntryRefcvPKNS_9FileEntryEEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  store ptr %i.d, ptr %16, align 8, !tbaa !1758
  %i.dr = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %0, ptr %i.dr, align 8, !tbaa !1762
  %i.ds = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %12, ptr %i.ds, align 8, !tbaa !3745
  %i.dt = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %i.a, ptr %i.dt, align 8, !tbaa !1763
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  store ptr %i.b, ptr %17, align 8, !tbaa !1758
  %i.du = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %12, ptr %i.du, align 8, !tbaa !3745
  %i.dv = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %0, ptr %i.dv, align 8, !tbaa !1765
  %i.dw = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %1, ptr %i.dw, align 8, !tbaa !887
  %i.dx = getelementptr inbounds nuw i8, ptr %17, i64 32
  store ptr %i.c, ptr %i.dx, align 8, !tbaa !1758
  %i.dy = getelementptr inbounds nuw i8, ptr %17, i64 40
  store ptr %16, ptr %i.dy, align 8, !tbaa !1766
  br i1 %30, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.thread148
  store i32 3, ptr %18, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i8 0, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %18, i64 32
  store i8 0, ptr %i.ea, align 8
  br label %bb.w

bb.v:                                             ; preds = %.thread148
  call fastcc void @"_ZZN5clang9ASTReader12getInputFileERNS_13serialization10ModuleFileEjbENK3$_1clEv"(ptr dead_on_unwind noalias writable align 8 %18, ptr noundef nonnull align 8 dereferenceable(48) %17)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bt, i64 624
  %i.ec = load i16, ptr %i.eb, align 8
  %i.ed = and i16 %i.ec, 512
  %.not88 = icmp eq i16 %i.ed, 0
  br i1 %.not88, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 9568
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !1767, !range !997, !noundef !177
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.eh = load i8, ptr %i.bn, align 1, !tbaa !1755, !range !997, !noundef !177
  %i.ei = trunc nuw i8 %i.eh to i1
  %i.ej = load i32, ptr %18, align 8
  %i.ek = icmp eq i32 %i.ej, 3
  %or.cond10 = select i1 %i.ei, i1 %i.ek, i1 false
  br i1 %or.cond10, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #36
  call fastcc void @"_ZZN5clang9ASTReader12getInputFileERNS_13serialization10ModuleFileEjbENK3$_0clENS1_6ChangeE"(ptr dead_on_unwind noalias writable align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull byval(%"struct.clang::serialization::Change") align 8 %18)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 8 dereferenceable(40) %19, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  %i.el = load i64, ptr %i.c, align 8, !tbaa !167
  %.not89 = icmp eq i64 %i.el, 0
  %.pre168.a = load i32, ptr %18, align 8         ; 3 uses
  br i1 %.not89, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 9568
  %i.en = load i8, ptr %i.em, align 8, !tbaa !1767, !range !997, !noundef !177
  %i.eo = trunc nuw i8 %i.en to i1
  %i.ep = icmp eq i32 %.pre168.a, 3
  %or.cond13 = select i1 %i.eo, i1 %i.ep, i1 false
  br i1 %or.cond13, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #36
  call fastcc void @"_ZZN5clang9ASTReader12getInputFileERNS_13serialization10ModuleFileEjbENK3$_0clENS1_6ChangeE"(ptr dead_on_unwind noalias writable align 8 %20, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull byval(%"struct.clang::serialization::Change") align 8 %18)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 8 dereferenceable(40) %20, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  %.pre = load i32, ptr %18, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.eq = phi i32 [ %.pre, %bb.ac ], [ %.pre168.a, %bb.ab ], [ %.pre168.a, %bb.aa ] ; 2 uses
  %i.er = icmp ne i32 %i.eq, 3
  %not. = xor i1 %i.cf, true
  %or.cond16.not = select i1 %not., i1 %i.er, i1 false ; 2 uses
  %i.es = load i8, ptr %i.a, align 1, !range !997
  %i.et = trunc nuw i8 %i.es to i1
  %or.cond93 = select i1 %or.cond16.not, i1 %i.et, i1 false
  br i1 %or.cond93, label %.lr.ph.i.i.i.i.i.i.i.i, label %bb.ak

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #36
  %.ptr158 = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 3 uses
  store ptr %.ptr158, ptr %21, align 8, !tbaa !872
  %i.eu = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 2 uses
  store i32 4, ptr %i.eu, align 4, !tbaa !874
  store ptr %1, ptr %.ptr158, align 8, !tbaa !887
  %i.ev = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 8 uses
  store i32 1, ptr %i.ev, align 8, !tbaa !873
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 3640
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !873
  %.not.i.i160 = icmp eq i32 %i.ex, 0
  br i1 %.not.i.i160, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %21, i64 24
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13serialization10ModuleFileELb1EE9push_backES4_.exit
  %i.ez = phi ptr [ %i.fn, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13serialization10ModuleFileELb1EE9push_backES4_.exit ], [ %1, %.lr.ph.preheader ]
  %i.fa = phi ptr [ %i.fl, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13serialization10ModuleFileELb1EE9push_backES4_.exit ], [ %i.ey, %.lr.ph.preheader ]
  %i.fb = phi i32 [ %i.fi, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13serialization10ModuleFileELb1EE9push_backES4_.exit ], [ 1, %.lr.ph.preheader ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 3632
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !872
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !887 ; 2 uses
  %i.ff = load i32, ptr %i.eu, align 4, !tbaa !874
  %.not.i98 = icmp ult i32 %i.fb, %i.ff
  br i1 %.not.i98, label %bb.af, label %bb.ae, !prof !1146

bb.ae:                                            ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang13serialization10ModuleFileELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef %i.fe)
  %.pre169 = load i32, ptr %i.ev, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13serialization10ModuleFileELb1EE9push_backES4_.exit

bb.af:                                            ; preds = %.lr.ph
  store ptr %i.fe, ptr %i.fa, align 1
  %i.fg = load i32, ptr %i.ev, align 8, !tbaa !873
  %i.fh = add i32 %i.fg, 1                        ; 2 uses
  store i32 %i.fh, ptr %i.ev, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13serialization10ModuleFileELb1EE9push_backES4_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang13serialization10ModuleFileELb1EE9push_backES4_.exit: ; preds = %bb.ae, %bb.af
  %i.fi = phi i32 [ %.pre169, %bb.ae ], [ %i.fh, %bb.af ] ; 2 uses
  %i.fj = load ptr, ptr %21, align 8, !tbaa !872
  %i.fk = zext i32 %i.fi to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fk ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !887 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 3640
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !873
  %.not.i.i = icmp eq i32 %i.fp, 0
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph, !llvm.loop !3713

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13serialization10ModuleFileELb1EE9push_backES4_.exit, %.lr.ph.i.i.i.i.i.i.i.i
  %.lcssa = phi ptr [ %1, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.fn, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang13serialization10ModuleFileELb1EE9push_backES4_.exit ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !165 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !166 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #36
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 6 uses
  %.sroa.0.0.copyload.i101 = load i32, ptr %i.fu, align 8, !tbaa !952, !noalias !3746
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !841, !noalias !3747, !nonnull !177, !align !178
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %22, ptr noundef nonnull align 8 dereferenceable(15256) %i.fw, i32 %.sroa.0.0.copyload.i101, i32 noundef 922) #36
  %.sroa.0.0.copyload.i102 = load ptr, ptr %11, align 8, !tbaa !876
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !167
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %22, ptr %.sroa.0.0.copyload.i102, i64 %.sroa.2.0.copyload.i)
  %i.fx = load ptr, ptr %21, align 8, !tbaa !872
  %i.fy = load i32, ptr %i.ev, align 8, !tbaa !873
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fz
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 -8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !887
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !951
  %i.gf = zext nneg i32 %i.ge to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN5clang9ASTReader11ReadASTCoreENS_14ModuleFileNameENS_13serialization10ModuleKindENS_14SourceLocationEPNS2_10ModuleFileERN4llvm15SmallVectorImplINS0_14ImportedModuleEEEllNS_16ASTFileSignatureEj.104, i64 %i.gf
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.gg = load ptr, ptr %22, align 8, !tbaa !845  ; 2 uses
  %.not.i.i.i103 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i103, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i, label %_ZNK5clang17DiagnosticBuilderlsIjvEERKS0_OT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i: ; preds = %._crit_edge
  %i.gh = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !846
  %i.gj = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.gi) ; 2 uses
  store ptr %i.gj, ptr %22, align 8, !tbaa !845
  br label %_ZNK5clang17DiagnosticBuilderlsIjvEERKS0_OT_.exit

_ZNK5clang17DiagnosticBuilderlsIjvEERKS0_OT_.exit: ; preds = %._crit_edge, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i
  %i.gk = phi ptr [ %i.gj, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i ], [ %i.gg, %._crit_edge ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %i.gm = load i8, ptr %i.gk, align 8, !tbaa !858
  %i.gn = zext i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gn
  store i8 3, ptr %i.go, align 1, !tbaa !168
  %i.gp = load ptr, ptr %22, align 8, !tbaa !845  ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load i8, ptr %i.gp, align 8, !tbaa !858 ; 2 uses
  %i.gs = add i8 %i.gr, 1
  store i8 %i.gs, ptr %i.gp, align 8, !tbaa !858
  %i.gt = zext i8 %i.gr to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.gt
  store i64 %switch.ext, ptr %i.gu, align 8, !tbaa !167
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %22, ptr %i.fr, i64 %i.ft)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %22) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #36
  %.sroa.0.0.copyload.i107 = load i32, ptr %i.fu, align 8, !tbaa !952, !noalias !3748
  %i.gv = load ptr, ptr %i.fv, align 8, !tbaa !841, !noalias !3749, !nonnull !177, !align !178
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %23, ptr noundef nonnull align 8 dereferenceable(15256) %i.gv, i32 %.sroa.0.0.copyload.i107, i32 noundef 943) #36
  %i.gw = load ptr, ptr %23, align 8, !tbaa !845  ; 2 uses
  %.not.i.i.i108 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i108, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i109, label %_ZNK5clang17DiagnosticBuilderlsINS_13serialization6Change16ModificationKindEEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i109: ; preds = %_ZNK5clang17DiagnosticBuilderlsIjvEERKS0_OT_.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !846
  %i.gz = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.gy) ; 2 uses
  store ptr %i.gz, ptr %23, align 8, !tbaa !845
  br label %_ZNK5clang17DiagnosticBuilderlsINS_13serialization6Change16ModificationKindEEERKS0_RKT_.exit

_ZNK5clang17DiagnosticBuilderlsINS_13serialization6Change16ModificationKindEEERKS0_RKT_.exit: ; preds = %_ZNK5clang17DiagnosticBuilderlsIjvEERKS0_OT_.exit, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i109
  %i.ha = phi ptr [ %i.gz, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i109 ], [ %i.gw, %_ZNK5clang17DiagnosticBuilderlsIjvEERKS0_OT_.exit ] ; 2 uses
  %i.hb = sext i32 %i.eq to i64
end_hunk_0
begin_hunk_1_@_ZN5clang9ASTReader12getInputFileERNS_13serialization10ModuleFileEjb:bb.a
  %i.he = zext i8 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.he
  store i8 2, ptr %i.hf, align 1, !tbaa !168
  %i.hg = load ptr, ptr %23, align 8, !tbaa !845  ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load i8, ptr %i.hg, align 8, !tbaa !858 ; 2 uses
  %i.hj = add i8 %i.hi, 1                         ; 2 uses
  store i8 %i.hj, ptr %i.hg, align 8, !tbaa !858
  %i.hk = zext i8 %i.hi to i64
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %i.hk
  store i64 %i.hb, ptr %i.hl, align 8, !tbaa !167
  %i.hm = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ho = load i8, ptr %i.hn, align 8, !range !997, !noundef !177
  %i.hp = trunc nuw i8 %i.ho to i1                ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.hr = load i8, ptr %i.hq, align 8, !range !997 ; 2 uses
  %narrow = select i1 %i.hp, i8 %i.hr, i8 0
  %i.hs = zext nneg i8 %narrow to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hg, i64 1
  %i.hu = zext i8 %i.hj to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hu
  store i8 2, ptr %i.hv, align 1, !tbaa !168
  %i.hw = load ptr, ptr %23, align 8, !tbaa !845  ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load i8, ptr %i.hw, align 8, !tbaa !858 ; 2 uses
  %i.hz = add i8 %i.hy, 1
  store i8 %i.hz, ptr %i.hw, align 8, !tbaa !858
  %i.ia = zext i8 %i.hy to i64
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.ia
  store i64 %i.hs, ptr %i.ib, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #36
  %i.ic = load i64, ptr %i.hm, align 8
  %.0.i112 = select i1 %i.hp, i64 %i.ic, i64 0
  call void @_ZN4llvm6itostrB5cxx11El(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, i64 noundef %.0.i112)
  %i.id = load ptr, ptr %24, align 8, !tbaa !165
  %i.ie = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !166
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %23, ptr %i.id, i64 %i.if)
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #36
  %i.ig = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.ih = trunc nuw i8 %i.hr to i1
  %i.ii = load i64, ptr %i.ig, align 8
  %.0.i113 = select i1 %i.ih, i64 %i.ii, i64 0
  call void @_ZN4llvm6itostrB5cxx11El(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, i64 noundef %.0.i113)
  %i.ij = load ptr, ptr %25, align 8, !tbaa !165
  %i.ik = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !166
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %23, ptr %i.ij, i64 %i.il)
  %i.im = load ptr, ptr %25, align 8, !tbaa !165  ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNK5clang17DiagnosticBuilderlsINS_13serialization6Change16ModificationKindEEERKS0_RKT_.exit
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !168
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.iq) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %_ZNK5clang17DiagnosticBuilderlsINS_13serialization6Change16ModificationKindEEERKS0_RKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #36
  %i.ir = load ptr, ptr %24, align 8, !tbaa !165  ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  %i.iu = load i64, ptr %i.is, align 8, !tbaa !168
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iv) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #36
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %23) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #36
  %i.iw = load i32, ptr %i.ev, align 8, !tbaa !873
  %i.ix = icmp ugt i32 %i.iw, 1
  br i1 %i.ix, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #36
  %.sroa.0.0.copyload.i120 = load i32, ptr %i.fu, align 8, !tbaa !952, !noalias !3750
  %i.iy = load ptr, ptr %i.fv, align 8, !tbaa !841, !noalias !3751, !nonnull !177, !align !178
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %26, ptr noundef nonnull align 8 dereferenceable(15256) %i.iy, i32 %.sroa.0.0.copyload.i120, i32 noundef 941) #36
  %.sroa.0.0.copyload.i121 = load ptr, ptr %11, align 8, !tbaa !876
  %.sroa.2.0.copyload.i123 = load i64, ptr %.sroa.234.0..sroa_idx, align 8, !tbaa !167
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %26, ptr %.sroa.0.0.copyload.i121, i64 %.sroa.2.0.copyload.i123)
  %i.iz = load ptr, ptr %21, align 8, !tbaa !872
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !887 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !165
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !166
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %26, ptr %i.jc, i64 %i.je)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %26) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #36
  %i.jf = load i32, ptr %i.ev, align 8, !tbaa !873
  %i.jg = icmp ugt i32 %i.jf, 1
  br i1 %i.jg, label %.lr.ph163, label %.loopexit

.lr.ph163:                                        ; preds = %bb.ag, %.lr.ph163
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph163 ], [ 1, %bb.ag ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #36
  %.sroa.0.0.copyload.i124 = load i32, ptr %i.fu, align 8, !tbaa !952, !noalias !3752
  %i.jh = load ptr, ptr %i.fv, align 8, !tbaa !841, !noalias !3753, !nonnull !177, !align !178
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %27, ptr noundef nonnull align 8 dereferenceable(15256) %i.jh, i32 %.sroa.0.0.copyload.i124, i32 noundef 941) #36
  %i.ji = load ptr, ptr %21, align 8, !tbaa !872
  %i.jj = getelementptr [8 x i8], ptr %i.ji, i64 %indvars.iv
  %i.jk = getelementptr i8, ptr %i.jj, i64 -8
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !887 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !165
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !166
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %27, ptr %i.jn, i64 %i.jp)
  %i.jq = load ptr, ptr %21, align 8, !tbaa !872
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %indvars.iv
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !887 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !165
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !166
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %27, ptr %i.ju, i64 %i.jw)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %27) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jx = load i32, ptr %i.ev, align 8, !tbaa !873
  %i.jy = zext i32 %i.jx to i64
  %i.jz = icmp samesign ult i64 %indvars.iv.next, %i.jy
  br i1 %i.jz, label %.lr.ph163, label %.loopexit, !llvm.loop !3730

.loopexit:                                        ; preds = %.lr.ph163, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 1344 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !1768
  %i.kc = icmp eq i32 %i.kb, 1
  br i1 %i.kc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #36
  %.sroa.0.0.copyload.i125 = load i32, ptr %i.fu, align 8, !tbaa !952, !noalias !3754
  %i.kd = load ptr, ptr %i.fv, align 8, !tbaa !841, !noalias !3755, !nonnull !177, !align !178
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %28, ptr noundef nonnull align 8 dereferenceable(15256) %i.kd, i32 %.sroa.0.0.copyload.i125, i32 noundef 940) #36
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %28, ptr %i.fr, i64 %i.ft)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %28) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #36
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #36
  %.sroa.0.0.copyload.i129 = load i32, ptr %i.fu, align 8, !tbaa !952, !noalias !3756
  %i.ke = load ptr, ptr %i.fv, align 8, !tbaa !841, !noalias !3757, !nonnull !177, !align !178
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %29, ptr noundef nonnull align 8 dereferenceable(15256) %i.ke, i32 %.sroa.0.0.copyload.i129, i32 noundef 939) #36
  %i.kf = load i32, ptr %i.ka, align 8, !tbaa !3758
  %i.kg = load ptr, ptr %29, align 8, !tbaa !845  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.kg, null
  br i1 %.not.i.i.i.i, label %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i, label %_ZNK5clang17DiagnosticBuilderlsINS_13serialization20InputFilesValidationEEERKS0_RKT_.exit

_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i: ; preds = %bb.ai
  %i.kh = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !846
  %i.kj = call noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %i.ki) ; 2 uses
  store ptr %i.kj, ptr %29, align 8, !tbaa !845
  br label %_ZNK5clang17DiagnosticBuilderlsINS_13serialization20InputFilesValidationEEERKS0_RKT_.exit

_ZNK5clang17DiagnosticBuilderlsINS_13serialization20InputFilesValidationEEERKS0_RKT_.exit: ; preds = %bb.ai, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i
  %i.kk = phi ptr [ %i.kj, %_ZNK5clang19StreamingDiagnostic10getStorageEv.exit.i.i.i.i ], [ %i.kg, %bb.ai ] ; 2 uses
  %i.kl = sext i32 %i.kf to i64
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  %i.kn = load i8, ptr %i.kk, align 8, !tbaa !858
  %i.ko = zext i8 %i.kn to i64
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.ko
  store i8 2, ptr %i.kp, align 1, !tbaa !168
  %i.kq = load ptr, ptr %29, align 8, !tbaa !845  ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ks = load i8, ptr %i.kq, align 8, !tbaa !858 ; 2 uses
  %i.kt = add i8 %i.ks, 1
  store i8 %i.kt, ptr %i.kq, align 8, !tbaa !858
  %i.ku = zext i8 %i.ks to i64
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.ku
  store i64 %i.kl, ptr %i.kv, align 8, !tbaa !167
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %29) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  %i.kw = load ptr, ptr %21, align 8, !tbaa !872  ; 2 uses
  %i.kx = icmp eq ptr %i.kw, %.ptr158
  br i1 %i.kx, label %_ZN4llvm11SmallVectorIPN5clang13serialization10ModuleFileELj4EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNK5clang17DiagnosticBuilderlsINS_13serialization20InputFilesValidationEEERKS0_RKT_.exit
  call void @free(ptr noundef %i.kw) #36
  br label %_ZN4llvm11SmallVectorIPN5clang13serialization10ModuleFileELj4EED2Ev.exit

_ZN4llvm11SmallVectorIPN5clang13serialization10ModuleFileELj4EED2Ev.exit: ; preds = %_ZNK5clang17DiagnosticBuilderlsINS_13serialization20InputFilesValidationEEERKS0_RKT_.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #36
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm11SmallVectorIPN5clang13serialization10ModuleFileELj4EED2Ev.exit, %bb.ad
  %.sroa.0.0.copyload = load ptr, ptr %12, align 8, !tbaa !1757
  %i.ky = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.kz = and i64 %i.ky, -7
  %i.la = select i1 %or.cond.not, i64 0, i64 2
  %i.lb = select i1 %or.cond16.not, i64 4, i64 %i.la
  %i.lc = or disjoint i64 %i.kz, %i.lb            ; 2 uses
  %i.ld = load ptr, ptr %i.h, align 8, !tbaa !1749
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.r
  store i64 %i.lc, ptr %i.le, align 8, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  br label %bb.al

bb.al:                                            ; preds = %bb.t, %bb.ak, %bb.n
  %.sroa.0143.0 = phi i64 [ %i.lc, %bb.ak ], [ 0, %bb.t ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  %i.lf = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.lg = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 4 uses
  %i.lh = load ptr, ptr %i.lf, align 8, !tbaa !1771, !nonnull !177, !align !178 ; 7 uses
  %i.li = icmp eq ptr %i.lh, %i.lg
  br i1 %i.li, label %_ZN4llvm11SmallStringILj0EEaSEOS1_.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.lj = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !1772 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.lk, 0
  br i1 %.not.i.i.i.i.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store i64 0, ptr %i.ll, align 8, !tbaa !1772
  br label %_ZN4llvm11SmallStringILj0EEaSEOS1_.exit.i.i

bb.ao:                                            ; preds = %bb.am
  %i.lm = load ptr, ptr %i.lh, align 8, !tbaa !1773 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lo = icmp eq ptr %i.lm, %i.ln
  br i1 %i.lo, label %_ZN4llvm15SmallVectorImplIcE12assignRemoteEOS1_.exit.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @free(ptr noundef %i.lm) #36
  %.pre.i.i.i.i = load i64, ptr %i.lj, align 8, !tbaa !1772
  br label %_ZN4llvm15SmallVectorImplIcE12assignRemoteEOS1_.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIcE12assignRemoteEOS1_.exit.i.i.i.i: ; preds = %bb.ap, %bb.ao
  %i.lp = phi i64 [ %i.lk, %bb.ao ], [ %.pre.i.i.i.i, %bb.ap ]
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lr = load ptr, ptr %i.lg, align 8, !tbaa !1773
  store ptr %i.lr, ptr %i.lh, align 8, !tbaa !1773
  store i64 %i.lp, ptr %i.lq, align 8, !tbaa !1772
  %i.ls = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !1774
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  store i64 %i.lt, ptr %i.lu, align 8, !tbaa !1774
  %i.lv = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %i.lv, ptr %i.lg, align 8, !tbaa !1773
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lj, i8 0, i64 16, i1 false)
  br label %_ZN4llvm11SmallStringILj0EEaSEOS1_.exit.i.i

_ZN4llvm11SmallStringILj0EEaSEOS1_.exit.i.i:      ; preds = %_ZN4llvm15SmallVectorImplIcE12assignRemoteEOS1_.exit.i.i.i.i, %bb.an, %bb.al
  %i.lw = load ptr, ptr %i.lg, align 8, !tbaa !1773 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ly = icmp eq ptr %i.lw, %i.lx
  br i1 %i.ly, label %_ZN5clang9ASTReader25TemporarilyOwnedStringRefD2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm11SmallStringILj0EEaSEOS1_.exit.i.i
  call void @free(ptr noundef %i.lw) #36
  br label %_ZN5clang9ASTReader25TemporarilyOwnedStringRefD2Ev.exit

_ZN5clang9ASTReader25TemporarilyOwnedStringRefD2Ev.exit: ; preds = %_ZN4llvm11SmallStringILj0EEaSEOS1_.exit.i.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @_ZN5clang19SavedStreamPositionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.ar

bb.ar:                                            ; preds = %bb.d, %bb.c, %bb.a, %bb.b, %_ZN5clang9ASTReader25TemporarilyOwnedStringRefD2Ev.exit
  %.sroa.0143.1 = phi i64 [ %.sroa.0143.0, %_ZN5clang9ASTReader25TemporarilyOwnedStringRefD2Ev.exit ], [ 0, %bb.a ], [ %.0.copyload.i.i.i.i, %bb.c ], [ 0, %bb.b ], [ 0, %bb.d ]
  ret i64 %.sroa.0143.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZNK5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileEm(ptr noundef nonnull align 8 dereferenceable(16376) %0, ptr noundef nonnull align 8 dereferenceable(3832) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 912
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1047
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %0, ptr noundef nonnull align 8 dereferenceable(3832) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.extract.shift = lshr i64 %2, 32      ; 2 uses
  %i.d = icmp eq i64 %.sroa.4.0.extract.shift, 0
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3688
  %i.f = add nuw nsw i64 %.sroa.4.0.extract.shift, 4294967295
  %i.g = and i64 %i.f, 4294967295
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !872
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !887
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ %1, %bb.c ]
  %i.l = trunc i64 %2 to i32                      ; 3 uses
  %i.m = tail call i32 @llvm.fshl.i32(i32 %i.l, i32 %i.l, i32 31)
  %i.n = icmp eq i32 %i.l, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 1712
  %i.p = load i32, ptr %i.o, align 8
  %i.q = add i32 %i.m, -2
  %i.r = add i32 %i.q, %i.p
  %.sroa.0.0.i = select i1 %i.n, i32 0, i32 %i.r
  ret i32 %.sroa.0.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @_ZN5clang9ASTReader17getImportLocationEPNS_13serialization10ModuleFileE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16376) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 868
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1775 ; 2 uses
  %.not8 = icmp eq i32 %i.c, 0
  br i1 %.not8, label %bb.b, label %_ZNK5clang13SourceManager20getLocForStartOfFileENS_6FileIDE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 3640
  %i.e = load i32, ptr %i.d, align 8, !tbaa !873
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 3632
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !872
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !887  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1714, !nonnull !177, !align !178 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 528
  %.sroa.0.0.copyload.i = load i32, ptr %i.k, align 8, !tbaa !952 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i8 0, ptr %i.a, align 1, !tbaa !1011
  %i.l = add i32 %.sroa.0.0.copyload.i, 1
  %or.cond.i.i.i.i.i = icmp ult i32 %i.l, 2
  br i1 %or.cond.i.i.i.i.i, label %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp slt i32 %.sroa.0.0.copyload.i, 0
  br i1 %i.m, label %bb.f, label %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.n = sub nuw nsw i32 -2, %.sroa.0.0.copyload.i ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 328
  %i.p = lshr i32 %i.n, 6
  %i.q = zext nneg i32 %i.p to i64
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !872
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = and i32 %i.n, 63
  %i.u = load i64, ptr %i.s, align 8, !tbaa !167
  %i.v = zext nneg i32 %i.t to i64
  %i.w = shl nuw i64 1, %i.v
  %i.x = and i64 %i.u, %i.w
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 272
  %i.z = zext nneg i32 %i.n to i64
  %i.aa = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4llvm11PagedVectorIN5clang6SrcMgr9SLocEntryELm32EEixEm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 noundef %i.z)
  br label %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread10.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ab = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5clang13SourceManager13loadSLocEntryEjPb(ptr noundef nonnull align 8 dereferenceable(776) %i.j, i32 noundef %i.n, ptr noundef nonnull %i.a) #36
  %.pre.i.i.i.i = load i8, ptr %i.a, align 1, !tbaa !1011, !range !997
  %i.ac = trunc nuw i8 %.pre.i.i.i.i to i1
  br i1 %i.ac, label %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread.i.i.i, label %_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread10.i.i.i

_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread.i.i.i: ; preds = %bb.h, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %_ZNK5clang13SourceManager20getLocForStartOfFileENS_6FileIDE.exit

_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.thread10.i.i.i: ; preds = %bb.h, %bb.g
  %.ph.i.i.i = phi ptr [ %i.aa, %bb.g ], [ %i.ab, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.i

_ZN5clang13SourceManager18getSLocEntryOrNullENS_6FileIDE.exit.i.i.i: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %i.ae = zext nneg i32 %.sroa.0.0.copyload.i to i64
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !872 ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %_ZNK5clang13SourceManager20getLocForStartOfFileENS_6FileIDE.exit, label %bb.i
end_hunk_1
