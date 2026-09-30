Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/mlir-linalg-ods-yaml-gen?download=true
inline.NumInlined: 4618
inline.NumDeleted: 2420
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4llvm2cl3optINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ENS0_6parserIS7_EEED2Ev:bb.a
bb.c:                                             ; preds = %_ZN4llvm2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb1EED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !177
  tail call void @free(ptr noundef %i.v) #22
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZN4llvm2cl11opt_storageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb1EED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.x) #22
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse nounwind uwtable
define dso_local noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %3 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca i8, align 1                       ; 3 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca i8, align 1                       ; 3 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca i8, align 1                       ; 5 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 7 uses
  %5 = alloca %"class.std::optional.105", align 8 ; 5 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  %i.o = alloca i8, align 1                       ; 3 uses
  %6 = alloca %"class.std::optional.75", align 8  ; 6 uses
  %7 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %8 = alloca %"class.std::optional.214", align 8 ; 6 uses
  %9 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %10 = alloca %"class.std::optional.75", align 8 ; 6 uses
  %11 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca i8, align 1                       ; 3 uses
  %i.r = alloca ptr, align 8                      ; 4 uses
  %i.s = alloca i8, align 1                       ; 3 uses
  %12 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.t = alloca i64, align 8                      ; 4 uses
  %i.u = alloca ptr, align 8                      ; 4 uses
  %i.v = alloca ptr, align 8                      ; 4 uses
  %i.w = alloca i8, align 1                       ; 3 uses
  %i.x = alloca ptr, align 8                      ; 4 uses
  %i.y = alloca i8, align 1                       ; 5 uses
  %13 = alloca %"struct.(anonymous namespace)::LinalgStructuredOpConfig", align 8 ; 15 uses
  %14 = alloca %"class.llvm::StringRef", align 8  ; 7 uses
  %15 = alloca %"class.std::optional.94", align 8 ; 5 uses
  %i.z = alloca ptr, align 8                      ; 4 uses
  %i.aa = alloca i8, align 1                      ; 3 uses
  %16 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.ab = alloca ptr, align 8                     ; 4 uses
  %i.ac = alloca i8, align 1                      ; 3 uses
  %17 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %18 = alloca %"class.std::optional.75", align 8 ; 6 uses
  %19 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.ad = alloca ptr, align 8                     ; 4 uses
  %i.ae = alloca i8, align 1                      ; 3 uses
  %20 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.af = alloca ptr, align 8                     ; 4 uses
  %i.ag = alloca i8, align 1                      ; 3 uses
  %21 = alloca %"struct.llvm::yaml::EmptyContext", align 1 ; 3 uses
  %i.ah = alloca ptr, align 8                     ; 4 uses
  %i.ai = alloca i8, align 1                      ; 5 uses
  %22 = alloca %"struct.(anonymous namespace)::LinalgOpMetadata", align 8 ; 14 uses
  %23 = alloca %"class.llvm::StringRef", align 8  ; 7 uses
  %24 = alloca %"class.std::optional.69", align 8 ; 12 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %26 = alloca %"class.std::unique_ptr", align 8  ; 6 uses
  %27 = alloca %"class.mlir::MLIRContext", align 8 ; 8 uses
  %28 = alloca %"struct.(anonymous namespace)::LinalgYAMLContext", align 8 ; 4 uses
  %29 = alloca %"class.llvm::yaml::Input", align 8 ; 221 uses
  %30 = alloca %"class.std::unique_ptr.53", align 8 ; 4 uses
  %31 = alloca %"class.std::unique_ptr.53", align 8 ; 4 uses
  %32 = alloca %"class.(anonymous namespace)::GenerationContext", align 8 ; 9 uses
  %33 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %34 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.aj = tail call noundef zeroext i1 @_ZN4llvm2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamEPNS_3vfs10FileSystemES2_b(i32 noundef %0, ptr noundef %1, ptr nonnull @.str.11, i64 24, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false) #22 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.ak = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  store ptr %i.ak, ptr %25, align 8, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 4 uses
  store i64 0, ptr %i.al, align 8, !tbaa !33
  store i8 0, ptr %i.ak, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL13inputFilenameB5cxx11, i64 120), align 8, !tbaa !25
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL13inputFilenameB5cxx11, i64 128), align 8, !tbaa !33
  call void @_ZN4mlir13openInputFileEN4llvm9StringRefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %26, ptr %i.am, i64 %i.an, ptr noundef nonnull %25) #22
  %i.ao = load ptr, ptr %26, align 8, !tbaa !224
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.ap = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #22
  %i.aq = load ptr, ptr %25, align 8, !tbaa !25
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !33
  %i.as = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef %i.aq, i64 noundef %i.ar) #22 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38 ; 2 uses
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ay = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull @.str.12, i64 noundef 1) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  store i8 10, ptr %i.aw, align 1
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !38
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store ptr %i.ba, ptr %i.av, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  call void @_ZN4mlir11MLIRContextC1ENS0_9ThreadingE(ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef 1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  store ptr %27, ptr %28, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %i.bb = load ptr, ptr %26, align 8, !tbaa !224  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !226 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !227
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZN4llvm4yaml5InputC1ENS_9StringRefEPvPFvRKNS_12SMDiagnosticES3_ES3_(ptr noundef nonnull align 8 dereferenceable(640) %29, ptr %i.bd, i64 %i.bi, ptr noundef nonnull %28, ptr noundef null, ptr noundef null) #22
  %i.bj = call noundef zeroext i1 @_ZN4llvm4yaml5Input18setCurrentDocumentEv(ptr noundef nonnull align 8 dereferenceable(640) %29) #22
  br i1 %i.bj, label %.lr.ph.i, label %_ZN4llvm4yamlrsISt6vectorIN12_GLOBAL__N_114LinalgOpConfigESaIS4_EEEENSt9enable_ifIXsr22has_DocumentListTraitsIT_EE5valueERNS0_5InputEE4typeESA_RS8_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %24, i64 200 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %22, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %22, i64 104
  %i.bq = getelementptr inbounds nuw i8, ptr %22, i64 120
  %i.br = getelementptr inbounds nuw i8, ptr %22, i64 116
  %i.bs = getelementptr inbounds nuw i8, ptr %22, i64 152
  %i.bt = getelementptr inbounds nuw i8, ptr %22, i64 168
  %i.bu = getelementptr inbounds nuw i8, ptr %22, i64 164
  %i.bv = getelementptr inbounds nuw i8, ptr %24, i64 32 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %24, i64 64 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %24, i64 104 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %24, i64 152 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %15, i64 1040
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 976 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %13, i64 984 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 1000 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 996
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 1016 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 912
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 928
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.ew, %.lr.ph.i
  %.sroa.14.0 = phi ptr [ null, %.lr.ph.i ], [ %.sroa.14.1, %bb.ew ] ; 3 uses
  %.sroa.9.0 = phi ptr [ null, %.lr.ph.i ], [ %.sroa.9.1, %bb.ew ] ; 7 uses
  %.sroa.071.0 = phi ptr [ null, %.lr.ph.i ], [ %.sroa.071.1, %bb.ew ] ; 8 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ew ] ; 4 uses
  %i.cw = ptrtoint ptr %.sroa.9.0 to i64          ; 2 uses
  %i.cx = ptrtoint ptr %.sroa.071.0 to i64        ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 2 uses
  %i.cz = sdiv exact i64 %i.cy, 1256              ; 5 uses
  %.not.i.i = icmp ugt i64 %i.cz, %indvars.iv.i
  br i1 %.not.i.i, label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_114LinalgOpConfigESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.da = add nuw nsw i64 %indvars.iv.i, 1
  %i.db = sub nuw i64 %i.da, %i.cz                ; 5 uses
  %i.dc = ptrtoint ptr %.sroa.14.0 to i64         ; 2 uses
  %i.dd = sub i64 %i.dc, %i.cw
  %i.de = sdiv exact i64 %i.dd, 1256              ; 2 uses
  %i.df = sub nuw nsw i64 7343449073928961, %i.cz
  %i.dg = icmp ule i64 %i.de, %i.df
  call void @llvm.assume(i1 %i.dg)
  %.not27.i.i.i.i = icmp ult i64 %i.de, %i.db
  br i1 %.not27.i.i.i.i, label %_ZNKSt6vectorIN12_GLOBAL__N_114LinalgOpConfigESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_114LinalgOpConfigEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i

_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_114LinalgOpConfigEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i: ; preds = %bb.g
  %i.dh = mul nuw nsw i64 %i.db, 1256             ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %.sroa.9.0, i8 0, i64 %i.dh, i1 false)
  %scevgep.i.i.i.i.i.i.i = getelementptr i8, ptr %.sroa.9.0, i64 %i.dh
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_114LinalgOpConfigESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i

_ZNKSt6vectorIN12_GLOBAL__N_114LinalgOpConfigESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cz, i64 range(i64 -7343451221412608, 7343451221412610) %i.db)
  %i.di = add nuw nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cz ; 2 uses
  %i.dj = mul nuw nsw i64 %i.di, 1256
  %i.dk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #24 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.cy ; 2 uses
  %i.dm = mul nuw nsw i64 %i.db, 1256
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dl, i8 0, i64 %i.dm, i1 false)
  %.not9.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.071.0, %.sroa.9.0
  br i1 %.not9.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_114LinalgOpConfigEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_114LinalgOpConfigESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, %_ZSt10_ConstructIN12_GLOBAL__N_114LinalgOpConfigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dy, %_ZSt10_ConstructIN12_GLOBAL__N_114LinalgOpConfigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i ], [ %i.dk, %_ZNKSt6vectorIN12_GLOBAL__N_114LinalgOpConfigESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 5 uses
  %.0810.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dx, %_ZSt10_ConstructIN12_GLOBAL__N_114LinalgOpConfigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.071.0, %_ZNKSt6vectorIN12_GLOBAL__N_114LinalgOpConfigESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i, i64 200
  %i.do = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i, i64 200
  store i8 0, ptr %i.do, align 8, !tbaa !43
  %i.dp = load i8, ptr %i.dn, align 8, !tbaa !43, !range !28, !noundef !29
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.h, label %_ZNSt8optionalIN12_GLOBAL__N_116LinalgOpMetadataEEC2ERKS2_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call fastcc void @_ZNSt22_Optional_payload_baseIN12_GLOBAL__N_116LinalgOpMetadataEE12_M_constructIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(1256) %.011.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1256) %.0810.i.i.i.i.i.i.i.i.i)
  br label %_ZNSt8optionalIN12_GLOBAL__N_116LinalgOpMetadataEEC2ERKS2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt8optionalIN12_GLOBAL__N_116LinalgOpMetadataEEC2ERKS2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i, i64 1248
  %i.ds = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i, i64 1248
  store i8 0, ptr %i.ds, align 8, !tbaa !45
  %i.dt = load i8, ptr %i.dr, align 8, !tbaa !45, !range !28, !noundef !29
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.i, label %_ZSt10_ConstructIN12_GLOBAL__N_114LinalgOpConfigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %_ZNSt8optionalIN12_GLOBAL__N_116LinalgOpMetadataEEC2ERKS2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i, i64 208
  %i.dw = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i, i64 208
  call fastcc void @_ZNSt22_Optional_payload_baseIN12_GLOBAL__N_124LinalgStructuredOpConfigEE12_M_constructIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(1048) %i.dv, ptr noundef nonnull readonly align 8 dereferenceable(1048) %i.dw)
  br label %_ZSt10_ConstructIN12_GLOBAL__N_114LinalgOpConfigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i

_ZSt10_ConstructIN12_GLOBAL__N_114LinalgOpConfigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.i, %_ZNSt8optionalIN12_GLOBAL__N_116LinalgOpMetadataEEC2ERKS2_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i.i.i.i.i, i64 1256 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i.i.i.i.i, i64 1256
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dx, %.sroa.9.0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !178

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt10_ConstructIN12_GLOBAL__N_114LinalgOpConfigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i, %_ZSt8_DestroyIN12_GLOBAL__N_114LinalgOpConfigEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.ey, %_ZSt8_DestroyIN12_GLOBAL__N_114LinalgOpConfigEEvPT_.exit.i.i.i.i.i.i ], [ %.sroa.071.0, %_ZSt10_ConstructIN12_GLOBAL__N_114LinalgOpConfigEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i.i.i ] ; 13 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 208 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 1248 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !45, !range !28, !noundef !29
  %i.ec = trunc nuw i8 %i.eb to i1
  store i8 0, ptr %i.ea, align 8, !tbaa !45
  br i1 %i.ec, label %bb.j, label %_ZNSt14_Optional_baseIN12_GLOBAL__N_124LinalgStructuredOpConfigELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 1224
  call fastcc void @_ZNSt6vectorIN12_GLOBAL__N_112ScalarAssignESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ed) #22
  %i.ee = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 1192
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !31 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 1208
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_121LinalgIteratorTypeDefELj4EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.ef) #22
  br label %_ZN4llvm11SmallVectorIN12_GLOBAL__N_121LinalgIteratorTypeDefELj4EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4llvm11SmallVectorIN12_GLOBAL__N_121LinalgIteratorTypeDefELj4EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %i.ei = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 1184 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !48, !range !28, !noundef !29
  %i.ek = trunc nuw i8 %i.ej to i1
  store i8 0, ptr %i.ei, align 8, !tbaa !48
  br i1 %i.ek, label %bb.l, label %_ZN12_GLOBAL__N_124LinalgIndexingMapsConfigD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorIN12_GLOBAL__N_121LinalgIteratorTypeDefELj4EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 1120
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !31 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 1136
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZN12_GLOBAL__N_124LinalgIndexingMapsConfigD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef %i.em) #22
  br label %_ZN12_GLOBAL__N_124LinalgIndexingMapsConfigD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN12_GLOBAL__N_124LinalgIndexingMapsConfigD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l, %_ZN4llvm11SmallVectorIN12_GLOBAL__N_121LinalgIteratorTypeDefELj4EED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dz, align 8, !tbaa !31 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 216
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ep, align 8, !tbaa !49
  %i.eq = zext i32 %.val2.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.er = getelementptr inbounds nuw [224 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.eq
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_116LinalgOperandDefELb0EE13destroy_rangeEPS2_S4_(ptr noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %i.er)
  %i.es = load ptr, ptr %i.dz, align 8, !tbaa !31 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 224
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZNSt14_Optional_baseIN12_GLOBAL__N_124LinalgStructuredOpConfigELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_124LinalgIndexingMapsConfigD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @free(ptr noundef %i.es) #22
  br label %_ZNSt14_Optional_baseIN12_GLOBAL__N_124LinalgStructuredOpConfigELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt14_Optional_baseIN12_GLOBAL__N_124LinalgStructuredOpConfigELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.n, %_ZN12_GLOBAL__N_124LinalgIndexingMapsConfigD2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 200 ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 8, !tbaa !43, !range !28, !noundef !29
  %i.ex = trunc nuw i8 %i.ew to i1
  store i8 0, ptr %i.ev, align 8, !tbaa !43
  br i1 %i.ex, label %bb.o, label %_ZSt8_DestroyIN12_GLOBAL__N_114LinalgOpConfigEEvPT_.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %_ZNSt14_Optional_baseIN12_GLOBAL__N_124LinalgStructuredOpConfigELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i.i
  call fastcc void @_ZN12_GLOBAL__N_116LinalgOpMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(1256) %.05.i.i.i.i.i.i) #22
  br label %_ZSt8_DestroyIN12_GLOBAL__N_114LinalgOpConfigEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN12_GLOBAL__N_114LinalgOpConfigEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.o, %_ZNSt14_Optional_baseIN12_GLOBAL__N_124LinalgStructuredOpConfigELb0ELb0EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 1256 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ey, %.sroa.9.0
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_114LinalgOpConfigEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !179

_ZSt8_DestroyIPN12_GLOBAL__N_114LinalgOpConfigEEvT_S3_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_114LinalgOpConfigEEvPT_.exit.i.i.i.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_114LinalgOpConfigESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.not.i36.i.i.i.i = icmp eq ptr %.sroa.071.0, null
  br i1 %.not.i36.i.i.i.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_114LinalgOpConfigESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_114LinalgOpConfigEEvT_S3_.exit.i.i.i.i
  %i.ez = sub i64 %i.dc, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.071.0, i64 noundef %i.ez) #23
  br label %_ZNSt12_Vector_baseIN12_GLOBAL__N_114LinalgOpConfigESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i

_ZNSt12_Vector_baseIN12_GLOBAL__N_114LinalgOpConfigESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i: ; preds = %bb.p, %_ZSt8_DestroyIPN12_GLOBAL__N_114LinalgOpConfigEEvT_S3_.exit.i.i.i.i
  %i.fa = getelementptr inbounds nuw [1256 x i8], ptr %i.dl, i64 %i.db
  %i.fb = getelementptr inbounds nuw [1256 x i8], ptr %i.dk, i64 %i.di
  br label %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_114LinalgOpConfigESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i

_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_114LinalgOpConfigESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN12_GLOBAL__N_114LinalgOpConfigESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_114LinalgOpConfigEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i, %bb.f
  %.sroa.14.1 = phi ptr [ %.sroa.14.0, %bb.f ], [ %i.fb, %_ZNSt12_Vector_baseIN12_GLOBAL__N_114LinalgOpConfigESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i ], [ %.sroa.14.0, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_114LinalgOpConfigEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i ] ; 2 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.0, %bb.f ], [ %i.fa, %_ZNSt12_Vector_baseIN12_GLOBAL__N_114LinalgOpConfigESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i ], [ %scevgep.i.i.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_114LinalgOpConfigEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i ] ; 2 uses
  %.sroa.071.1 = phi ptr [ %.sroa.071.0, %bb.f ], [ %i.dk, %_ZNSt12_Vector_baseIN12_GLOBAL__N_114LinalgOpConfigESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i ], [ %.sroa.071.0, %_ZSt27__uninitialized_default_n_aIPN12_GLOBAL__N_114LinalgOpConfigEmS1_ET_S3_T0_RSaIT1_E.exit.i.i.i.i ] ; 3 uses
  %i.fc = getelementptr inbounds nuw [1256 x i8], ptr %.sroa.071.1, i64 %indvars.iv.i ; 75 uses
  %i.fd = load ptr, ptr %29, align 8, !tbaa !17
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 104
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(640) %29) #22, !inline_history !180
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  store i8 0, ptr %i.bk, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #22
  store i8 1, ptr %i.ai, align 1, !tbaa !50
  %i.fg = load ptr, ptr %29, align 8, !tbaa !17
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = call noundef zeroext i1 %i.fi(ptr noundef nonnull align 8 dereferenceable(640) %29) #22, !inline_history !181
  br i1 %i.fj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_114LinalgOpConfigESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 200
  %.val22.i.i.i.i.i.i.i = load i8, ptr %i.fk, align 8, !tbaa !43, !range !28, !noundef !29
  %i.fl = trunc nuw i8 %.val22.i.i.i.i.i.i.i to i1
  %i.fm = xor i1 %i.fl, true
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_114LinalgOpConfigESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i
  %i.fn = phi i1 [ false, %_ZN4llvm4yaml15IsResizableBaseISt6vectorIN12_GLOBAL__N_114LinalgOpConfigESaIS4_EEE7elementERNS0_2IOERS6_m.exit.i ], [ %i.fm, %bb.q ]
  %i.fo = load ptr, ptr %29, align 8, !tbaa !17
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = call noundef zeroext i1 %i.fq(ptr noundef nonnull align 8 dereferenceable(640) %29) #22, !inline_history !181
  br i1 %i.fr, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fc, i64 200 ; 2 uses
  %.val21.i.i.i.i.i.i.i = load i8, ptr %i.fs, align 8, !tbaa !43, !range !28, !noundef !29
  %i.ft = trunc nuw i8 %.val21.i.i.i.i.i.i.i to i1
  br i1 %i.ft, label %bb.t, label %_ZNSt8optionalIN12_GLOBAL__N_116LinalgOpMetadataEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit.i.i.i.i.i.i.i

_ZNSt8optionalIN12_GLOBAL__N_116LinalgOpMetadataEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit.i.i.i.i.i.i.i: ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.bl, i8 0, i64 184, i1 false)
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !31
  store i32 1, ptr %i.br, align 4, !tbaa !51
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !31
  store i32 1, ptr %i.bu, align 4, !tbaa !51
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  store ptr %i.fu, ptr %i.fc, align 8, !tbaa !32
  store i8 0, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store i64 0, ptr %i.fv, align 8, !tbaa !33
  store ptr %i.bl, ptr %22, align 8, !tbaa !25
  store i64 0, ptr %i.bm, align 8, !tbaa !33
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fc, i64 48 ; 2 uses
end_hunk_0
