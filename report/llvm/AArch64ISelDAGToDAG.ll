Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64ISelDAGToDAG?download=true
inline.NumInlined: 8224
inline.NumDeleted: 1235
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN12_GLOBAL__N_119AArch64DAGToDAGISel19tryBitfieldInsertOpEPN4llvm6SDNodeE:bb.a
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 8 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %14 = alloca %"class.llvm::SDLoc", align 8      ; 9 uses
  %15 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %16 = alloca %"class.llvm::ArrayRef", align 8   ; 6 uses
  %17 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %18 = alloca %"class.llvm::ArrayRef", align 8   ; 6 uses
  %19 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %20 = alloca %"class.llvm::ArrayRef", align 8   ; 6 uses
  %21 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %22 = alloca %"class.llvm::ArrayRef", align 8   ; 6 uses
  %23 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %24 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %25 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %26 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %27 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %28 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %29 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 9 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %31 = alloca %"struct.llvm::KnownBits", align 8 ; 9 uses
  %32 = alloca %"class.llvm::APInt", align 8      ; 13 uses
  %33 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %34 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %35 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %36 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %37 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 10 uses
  %38 = alloca %"class.llvm::ArrayRef", align 8   ; 6 uses
  %39 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %40 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %41 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %42 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %43 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %44 = alloca %"class.llvm::SDLoc", align 8      ; 9 uses
  %45 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %46 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %47 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %48 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 10 uses
  %49 = alloca %"class.llvm::ArrayRef", align 8   ; 6 uses
  %50 = alloca %"class.llvm::APInt", align 8      ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !331
  %.not = icmp eq i32 %i.g, 194
  br i1 %.not, label %bb.b, label %bb.ev

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #22
  %i.h = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 3 uses
  store i32 1, ptr %i.h, align 8, !tbaa !428
  store i64 0, ptr %50, align 8, !tbaa !430
  call fastcc void @_ZL13getUsefulBitsN4llvm7SDValueERNS_5APIntEj(ptr nonnull %1, i32 0, ptr noundef nonnull align 8 dereferenceable(12) %50, i32 noundef 0)
  %i.i = load i32, ptr %i.h, align 8, !tbaa !428  ; 4 uses
  %i.j = icmp ult i32 %i.i, 65                    ; 2 uses
  br i1 %i.j, label %.split, label %_ZNK4llvm5APIntntEv.exit

.split:                                           ; preds = %bb.b
  %i.k = load i64, ptr %50, align 8, !tbaa !430
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

_ZNK4llvm5APIntntEv.exit:                         ; preds = %bb.b
  %i.m = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %50) #26
  %i.n = icmp eq i32 %i.m, %i.i
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.split, %_ZNK4llvm5APIntntEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !318
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !332  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.r, align 8, !tbaa !333
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !335
  %i.s = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.p, ptr noundef nonnull %1, i32 noundef 10, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i) #22 ; 0 uses
  br label %bb.es

bb.d:                                             ; preds = %.split, %_ZNK4llvm5APIntntEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !318  ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  call void @llvm.lifetime.start.p0(ptr nonnull %41)
  call void @llvm.lifetime.start.p0(ptr nonnull %45)
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  call void @llvm.lifetime.start.p0(ptr nonnull %47)
  call void @llvm.lifetime.start.p0(ptr nonnull %49)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !332  ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.w, align 8, !tbaa !333 ; 12 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !335
  %i.x = icmp ne ptr %.sroa.21.0.copyload.i.i, null
  %i.y = add i16 %.sroa.0.0.copyload.i.i, -9
  %i.z = icmp ult i16 %i.y, -2
  %or.cond.i = select i1 %i.z, i1 true, i1 %i.x
  br i1 %or.cond.i, label %.loopexit, label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i:            ; preds = %bb.d
  %i.aa = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.ab = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ac, align 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ab, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.ad = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.ad, label %bb.e, label %_ZNK4llvm8TypeSizecvmEv.exit.i

bb.e:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.4) #23
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i:                   ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i
  %i.ae = trunc i64 %.sroa.0.0.copyload.i.i.i to i32 ; 10 uses
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  %i.af = load i64, ptr %50, align 8, !tbaa !430  ; 2 uses
  %i.ag = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.af, i1 false)
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %..i.i = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.ah)
  %.neg.i.i = add nsw i32 %i.i, -64
  %i.ai = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.af, i1 false)
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = add nsw i32 %.neg.i.i, %i.aj
  br label %_ZNK4llvm5APInt11countl_zeroEv.exit.i

bb.g:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  %i.al = call noundef i32 @_ZNK4llvm5APInt26countTrailingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %50) #26
  %i.am = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %50) #26
  br label %_ZNK4llvm5APInt11countl_zeroEv.exit.i

_ZNK4llvm5APInt11countl_zeroEv.exit.i:            ; preds = %bb.g, %bb.f
  %.0.i336.i = phi i32 [ %..i.i, %bb.f ], [ %i.al, %bb.g ]
  %.0.i161.i = phi i32 [ %i.ak, %bb.f ], [ %i.am, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %.sroa.897.0..sroa_idx100.i.i = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %21, i64 16
  %.sroa.897.0..sroa_idx102.i.i = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %21, i64 32
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %21, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %22, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %17, i64 16
  %.sroa.6316.0..sroa_idx317.i = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 32
  %.sroa.223.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.897.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %19, i64 16
  %.sroa.897.0..sroa_idx98.i.i = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %19, i64 32
  %.sroa.213.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.27.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.2.0..sroa_idx.i.i182.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.10114.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 32
  %.sroa.233.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %36, i64 8
  %.sroa.8301.0..sroa_idx304.i = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %37, i64 32
  %.sroa.268.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %37, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %37, i64 48
  %.sroa.261.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %37, i64 56
  %i.bw = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %31, i64 16
  %.not.i.i.i = icmp ne i16 %.sroa.0.0.copyload.i.i, 8
  %.not.i.i162.i = icmp ne i16 %.sroa.0.0.copyload.i.i, 7 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.cn, %_ZNK4llvm5APInt11countl_zeroEv.exit.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK4llvm5APInt11countl_zeroEv.exit.i ], [ %indvars.iv.next.i, %bb.cn ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  store ptr null, ptr %30, align 8, !tbaa !338
  store i32 0, ptr %i.an, align 8, !tbaa !341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.bz = icmp samesign ugt i64 %indvars.iv.i, 1  ; 3 uses
  %51 = and i64 %indvars.iv.i, 1
  %i.ca = load ptr, ptr %i.ao, align 8, !tbaa !337 ; 2 uses
  %i.cb = getelementptr inbounds nuw [40 x i8], ptr %i.ca, i64 %51 ; 2 uses
  %.sroa.0296.0.copyload.i = load ptr, ptr %i.cb, align 8, !tbaa !421 ; 8 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !201 ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %52 = and i64 %indvars.iv.next.i, 1
  %i.cc = getelementptr inbounds nuw [40 x i8], ptr %i.ca, i64 %52 ; 2 uses
  %.sroa.0290.0.copyload.i = load ptr, ptr %i.cc, align 8, !tbaa !421 ; 14 uses
  %.sroa.9293.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.9293.0.copyload.i = load i32, ptr %.sroa.9293.0..sroa_idx.i, align 8, !tbaa !201 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  %i.cd = call fastcc noundef zeroext i1 @_ZL19isBitfieldExtractOpPN4llvm12SelectionDAGEPNS_6SDNodeERjRNS_7SDValueES4_S4_jb(ptr noundef %i.u, ptr noundef %.sroa.0296.0.copyload.i, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %30, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %.0.i336.i, i1 noundef zeroext %i.bz)
  br i1 %i.cd, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ce = load i32, ptr %i.c, align 4, !tbaa !201 ; 2 uses
  %.not.i = icmp eq i32 %i.ce, 8094
  br i1 %.not.i, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not151.i = icmp eq i32 %i.ce, 8093
  %brmerge.i = or i1 %.not.i.i162.i, %.not151.i
  %or.cond = and i1 %.not.i.i.i, %brmerge.i
  br i1 %or.cond, label %bb.k, label %.critedge.i

.thread.i:                                        ; preds = %bb.i
  br i1 %.not.i.i162.i, label %bb.k, label %.critedge.i

bb.k:                                             ; preds = %bb.j, %.thread.i
  store i32 0, ptr %i.d, align 4, !tbaa !201
  %i.cf = load i32, ptr %i.b, align 4, !tbaa !201 ; 2 uses
  %i.cg = load i32, ptr %i.a, align 4, !tbaa !201 ; 2 uses
  %i.ch = sub i32 %i.cf, %i.cg                    ; 2 uses
  %i.ci = add i32 %i.ch, 1                        ; 2 uses
  store i32 %i.ci, ptr %i.e, align 4, !tbaa !201
  %i.cj = icmp ugt i32 %i.ch, 2147483646
  br i1 %i.cj, label %.critedge.i, label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.ck = call fastcc noundef zeroext i1 @_ZL23isBitfieldPositioningOpPN4llvm12SelectionDAGENS_7SDValueEbRS2_RiS4_(ptr noundef %i.u, ptr %.sroa.0296.0.copyload.i, i32 %.sroa.7.0.copyload.i, i1 noundef zeroext %i.bz, ptr noundef nonnull align 8 dereferenceable(12) %30, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  br i1 %i.ck, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %bb.l
  %i.cl = load i32, ptr %i.d, align 4, !tbaa !201 ; 2 uses
  %i.cm = sub i32 %i.ae, %i.cl
  %i.cn = urem i32 %i.cm, %i.ae                   ; 2 uses
  store i32 %i.cn, ptr %i.a, align 4, !tbaa !201
  %i.co = load i32, ptr %i.e, align 4, !tbaa !201 ; 2 uses
  %i.cp = add nsw i32 %i.co, -1                   ; 2 uses
  store i32 %i.cp, ptr %i.b, align 4, !tbaa !201
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.cq = phi i32 [ %i.cf, %bb.k ], [ %i.cp, %bb.m ]
  %i.cr = phi i32 [ %i.cg, %bb.k ], [ %i.cn, %bb.m ]
  %i.cs = phi i32 [ %i.ci, %bb.k ], [ %i.co, %bb.m ] ; 3 uses
  %i.ct = phi i32 [ 0, %bb.k ], [ %i.cl, %bb.m ]  ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0290.0.copyload.i, i64 48
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !332
  %i.cw = zext i32 %.sroa.9293.0.copyload.i to i64 ; 2 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.cw ; 2 uses
  %.sroa.0.0.copyload.i.i164.i = load i16, ptr %i.cx, align 8, !tbaa !333 ; 7 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !335 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %31, ptr noundef nonnull align 8 dereferenceable(920) %i.u, ptr %.sroa.0290.0.copyload.i, i32 %.sroa.9293.0.copyload.i, i32 noundef 0) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  %i.cy = load i32, ptr %i.ap, align 8, !tbaa !428 ; 2 uses
  %i.cz = add nsw i32 %i.ct, %i.cs                ; 2 uses
  store i32 %i.cy, ptr %i.aq, align 8, !tbaa !428, !alias.scope !792
  %i.da = icmp ult i32 %i.cy, 65
  br i1 %i.da, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i64 0, ptr %32, align 8, !tbaa !430, !alias.scope !792
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i.i

bb.p:                                             ; preds = %bb.n
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %32, i64 noundef 0, i1 noundef zeroext false) #22
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i.i

_ZN4llvm5APIntC2Ejmbb.exit.i.i:                   ; preds = %bb.p, %bb.o
  %i.db = icmp eq i32 %i.cs, 0
  br i1 %i.db, label %_ZN4llvm5APInt10getBitsSetEjjj.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i.i
  %i.dc = icmp ult i32 %i.cz, 65
  br i1 %i.dc, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.dd = sub i32 64, %i.cs
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = lshr i64 -1, %i.de
  %i.dg = zext nneg i32 %i.ct to i64
  %i.dh = shl i64 %i.df, %i.dg                    ; 2 uses
  %i.di = load i32, ptr %i.aq, align 8, !tbaa !428, !alias.scope !792
  %i.dj = icmp ult i32 %i.di, 65
  br i1 %i.dj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dk = load i64, ptr %32, align 8, !tbaa !430, !alias.scope !792
  %i.dl = or i64 %i.dk, %i.dh
  store i64 %i.dl, ptr %32, align 8, !tbaa !430, !alias.scope !792
  br label %_ZN4llvm5APInt10getBitsSetEjjj.exit.i

bb.t:                                             ; preds = %bb.r
  %i.dm = load ptr, ptr %32, align 8, !tbaa !430, !alias.scope !792 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !14
  %i.do = or i64 %i.dn, %i.dh
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !14
  br label %_ZN4llvm5APInt10getBitsSetEjjj.exit.i

bb.u:                                             ; preds = %bb.q
  call void @_ZN4llvm5APInt15setBitsSlowCaseEjj(ptr noundef nonnull align 8 dereferenceable(12) %32, i32 noundef %i.ct, i32 noundef %i.cz) #22
  br label %_ZN4llvm5APInt10getBitsSetEjjj.exit.i

_ZN4llvm5APInt10getBitsSetEjjj.exit.i:            ; preds = %bb.u, %bb.t, %bb.s, %_ZN4llvm5APIntC2Ejmbb.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  %i.dp = load i32, ptr %i.ap, align 8, !tbaa !428 ; 3 uses
  store i32 %i.dp, ptr %i.ar, align 8, !tbaa !428
  %i.dq = icmp ult i32 %i.dp, 65
  br i1 %i.dq, label %_ZN4llvmcoENS_5APIntE.exit.thread.i, label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %_ZN4llvm5APInt10getBitsSetEjjj.exit.i
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %35, ptr noundef nonnull align 8 dereferenceable(12) %31) #22
  %.pr.i = load i32, ptr %i.ar, align 8, !tbaa !428, !noalias !795 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %i.dr = icmp ult i32 %.pr.i, 65
  br i1 %i.dr, label %_ZN4llvmcoENS_5APIntE.exit.thread.i, label %_ZN4llvmcoENS_5APIntE.exit.i

_ZN4llvmcoENS_5APIntE.exit.thread.i:              ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i, %_ZN4llvm5APInt10getBitsSetEjjj.exit.i
  %.sink.i = phi ptr [ %31, %_ZN4llvm5APInt10getBitsSetEjjj.exit.i ], [ %35, %_ZN4llvm5APIntC2ERKS0_.exit.i ]
  %i.ds = phi i32 [ %i.dp, %_ZN4llvm5APInt10getBitsSetEjjj.exit.i ], [ %.pr.i, %_ZN4llvm5APIntC2ERKS0_.exit.i ] ; 3 uses
  %.pre.i = load i64, ptr %.sink.i, align 8, !tbaa !430
  %i.dt = xor i64 %.pre.i, -1
  %i.du = sub nsw i32 0, %i.ds
  %i.dv = and i32 %i.du, 63
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = lshr i64 -1, %i.dw
  %i.dy = icmp eq i32 %i.ds, 0
  %spec.select.i.i.i = select i1 %i.dy, i64 0, i64 %i.dx, !prof !798
  %i.dz = and i64 %spec.select.i.i.i, %i.dt       ; 2 uses
  store i64 %i.dz, ptr %35, align 8, !tbaa !430, !noalias !795
  store i32 0, ptr %i.ar, align 8, !tbaa !428, !noalias !795
  br label %_ZN4llvmanERKNS_5APIntEOS0_.exit.thread.i

_ZN4llvmcoENS_5APIntE.exit.i:                     ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  call void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(16) %35) #22, !noalias !795
  %.pre.i.i = load i32, ptr %i.ar, align 8, !tbaa !428, !noalias !795 ; 3 uses
  %.pre1.i.i = load i64, ptr %35, align 8, !noalias !795 ; 2 uses
  store i32 %.pre.i.i, ptr %i.as, align 8, !tbaa !428, !alias.scope !795
  store i64 %.pre1.i.i, ptr %34, align 8, !alias.scope !795
  store i32 0, ptr %i.ar, align 8, !tbaa !428, !noalias !795
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  %i.ea = icmp ult i32 %.pre.i.i, 65
  br i1 %i.ea, label %_ZN4llvmanERKNS_5APIntEOS0_.exit.thread.i, label %_ZN4llvmanERKNS_5APIntEOS0_.exit.i

_ZN4llvmanERKNS_5APIntEOS0_.exit.thread.i:        ; preds = %_ZN4llvmcoENS_5APIntE.exit.i, %_ZN4llvmcoENS_5APIntE.exit.thread.i
  %i.eb = phi i32 [ %i.ds, %_ZN4llvmcoENS_5APIntE.exit.thread.i ], [ %.pre.i.i, %_ZN4llvmcoENS_5APIntE.exit.i ]
  %i.ec = phi i64 [ %i.dz, %_ZN4llvmcoENS_5APIntE.exit.thread.i ], [ %.pre1.i.i, %_ZN4llvmcoENS_5APIntE.exit.i ]
  %i.ed = load i64, ptr %32, align 8, !tbaa !430, !noalias !799
  %i.ee = and i64 %i.ed, %i.ec                    ; 3 uses
  store i64 %i.ee, ptr %34, align 8, !tbaa !430, !noalias !799
  store i32 %i.eb, ptr %i.at, align 8, !tbaa !428, !alias.scope !799
  store i64 %i.ee, ptr %33, align 8, !alias.scope !799
  store i32 0, ptr %i.as, align 8, !tbaa !428, !noalias !799
  br label %_ZNK4llvm5APIntneEm.exit.thread341.i

_ZN4llvmanERKNS_5APIntEOS0_.exit.i:               ; preds = %_ZN4llvmcoENS_5APIntE.exit.i
  call void @_ZN4llvm5APInt17andAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %34, ptr noundef nonnull align 8 dereferenceable(12) %32) #22, !noalias !799
  %.pre.i167.i = load i32, ptr %i.as, align 8, !tbaa !428, !noalias !799 ; 3 uses
  %.pre3.i.i = load i64, ptr %34, align 8, !noalias !799 ; 4 uses
  store i32 %.pre.i167.i, ptr %i.at, align 8, !tbaa !428, !alias.scope !799
  store i64 %.pre3.i.i, ptr %33, align 8, !alias.scope !799
  store i32 0, ptr %i.as, align 8, !tbaa !428, !noalias !799
  %i.ef = icmp ult i32 %.pre.i167.i, 65
  %i.eg = inttoptr i64 %.pre3.i.i to ptr          ; 2 uses
  br i1 %i.ef, label %_ZNK4llvm5APIntneEm.exit.thread341.i, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i:      ; preds = %_ZN4llvmanERKNS_5APIntEOS0_.exit.i
  %i.eh = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %33) #26
  %i.ei = sub i32 %.pre.i167.i, %i.eh
  %i.ej = icmp ult i32 %i.ei, 65
  br i1 %i.ej, label %_ZNK4llvm5APIntneEm.exit.i, label %_ZNK4llvm5APIntneEm.exit.thread.i

_ZNK4llvm5APIntneEm.exit.thread341.i:             ; preds = %_ZN4llvmanERKNS_5APIntEOS0_.exit.i, %_ZN4llvmanERKNS_5APIntEOS0_.exit.thread.i
  %.0.i.i.i343.i = phi i64 [ %i.ee, %_ZN4llvmanERKNS_5APIntEOS0_.exit.thread.i ], [ %.pre3.i.i, %_ZN4llvmanERKNS_5APIntEOS0_.exit.i ]
  %i.ek = icmp ne i64 %.0.i.i.i343.i, 0
  br label %_ZN4llvm5APIntD2Ev.exit168.i

_ZNK4llvm5APIntneEm.exit.i:                       ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i
  %.0.i.i.i.i = load i64, ptr %i.eg, align 8, !tbaa !430
  %i.el = icmp ne i64 %.0.i.i.i.i, 0
  br label %_ZNK4llvm5APIntneEm.exit.thread.i

_ZNK4llvm5APIntneEm.exit.thread.i:                ; preds = %_ZNK4llvm5APIntneEm.exit.i, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i
  %i.em = phi i1 [ %i.el, %_ZNK4llvm5APIntneEm.exit.i ], [ true, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i ] ; 4 uses
  %i.en = icmp eq i64 %.pre3.i.i, 0
  br i1 %i.en, label %_ZN4llvm5APIntD2Ev.exit168.i, label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %_ZNK4llvm5APIntneEm.exit.thread.i
  call void @_ZdaPv(ptr noundef nonnull %i.eg) #25
  %.pre391.i = load i32, ptr %i.as, align 8, !tbaa !428
  %i.eo = icmp ugt i32 %.pre391.i, 64
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_119AArch64DAGToDAGISel19tryBitfieldInsertOpEPN4llvm6SDNodeE:bb.a
  store ptr %.sroa.0321.0.copyload.i, ptr %i.bh, align 16, !tbaa !421
  store i32 %.sroa.2322.0.copyload.i, ptr %.sroa.6316.0..sroa_idx317.i, align 8, !tbaa !201
  %i.ol = and i64 %.0.i.i.i.i.i63.i.i, 63
  %i.om = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.u, i64 noundef %i.ol, ptr noundef nonnull align 8 dereferenceable(12) %14, i16 %.sroa.0.0.copyload.i.i176.i, ptr %.sroa.21.0.copyload.i.i178.i, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract20.i.i = extractvalue { ptr, i32 } %i.om, 0
  %.fca.1.extract21.i.i = extractvalue { ptr, i32 } %i.om, 1
  store ptr %.fca.0.extract20.i.i, ptr %i.bi, align 16
  store i32 %.fca.1.extract21.i.i, ptr %.sroa.223.0..sroa_idx.i.i, align 8
  store ptr %17, ptr %18, align 8, !tbaa !417
  store i64 3, ptr %i.bj, align 8, !tbaa !420
  %i.on = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.u, ptr noundef nonnull %1, i32 noundef %i.ii, i16 %.sroa.0.0.copyload.i.i176.i, ptr %.sroa.21.0.copyload.i.i178.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %18) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %_ZL15tryOrrWithShiftPN4llvm6SDNodeENS_7SDValueES2_S2_S2_PNS_12SelectionDAGEb.exit.i

_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i.i:    ; preds = %.lr.ph.i.i.i.i, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i.i, %bb.by, %bb.bx
  %i.oo = icmp eq ptr %i.ny, %.sroa.0290.0.copyload.i
  %i.op = icmp eq i32 %i.ob, %.sroa.9293.0.copyload.i
  %i.oq = select i1 %i.oo, i1 %i.op, i1 false
  br i1 %i.oq, label %bb.cb, label %bb.cf

bb.cb:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  store ptr %.sroa.0290.0.copyload.i, ptr %19, align 16, !tbaa !421
  store i32 %.sroa.9293.0.copyload.i, ptr %.sroa.897.0..sroa_idx.i.i, align 8, !tbaa !201
  store ptr %.sroa.0290.0.copyload.i, ptr %i.bk, align 16, !tbaa !421
  store i32 %.sroa.9293.0.copyload.i, ptr %.sroa.897.0..sroa_idx98.i.i, align 8, !tbaa !201
  %i.or = and i64 %.0.i.i.i.i.i63.i.i, 63
  %i.os = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.u, i64 noundef %i.or, ptr noundef nonnull align 8 dereferenceable(12) %14, i16 %.sroa.0.0.copyload.i.i176.i, ptr %.sroa.21.0.copyload.i.i178.i, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract10.i.i = extractvalue { ptr, i32 } %i.os, 0
  %.fca.1.extract11.i.i = extractvalue { ptr, i32 } %i.os, 1
  store ptr %.fca.0.extract10.i.i, ptr %i.bl, align 16
  store i32 %.fca.1.extract11.i.i, ptr %.sroa.213.0..sroa_idx.i.i, align 8
  store ptr %19, ptr %20, align 8, !tbaa !417
  store i64 3, ptr %i.bm, align 8, !tbaa !420
  %i.ot = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.u, ptr noundef nonnull %1, i32 noundef %i.ii, i16 %.sroa.0.0.copyload.i.i176.i, ptr %.sroa.21.0.copyload.i.i178.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %20) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %_ZL15tryOrrWithShiftPN4llvm6SDNodeENS_7SDValueES2_S2_S2_PNS_12SelectionDAGEb.exit.i

bb.cc:                                            ; preds = %bb.bv
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.0296.0.copyload.i, i64 40
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !337 ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 40
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !338 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 24
  %i.oz = load i32, ptr %i.oy, align 8, !tbaa !331
  switch i32 %i.oz, label %bb.cf [
    i32 37, label %bb.cd
    i32 12, label %bb.cd
  ]

bb.cd:                                            ; preds = %bb.cc, %bb.cc
  %i.pa = load ptr, ptr %i.ov, align 8, !tbaa !338
  %i.pb = icmp eq ptr %i.pa, %.sroa.0290.0.copyload.i
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.pd = load i32, ptr %i.pc, align 8
  %i.pe = icmp eq i32 %i.pd, %.sroa.9293.0.copyload.i
  %i.pf = select i1 %i.pb, i1 %i.pe, i1 false
  br i1 %i.pf, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ox, i64 88
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !425 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  %i.pj = load i32, ptr %i.pi, align 8, !tbaa !428
  %i.pk = icmp ult i32 %i.pj, 65
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 24 ; 2 uses
  %i.pm = load ptr, ptr %i.pl, align 8
  %spec.select.i.i.i.i.i66.i.i = select i1 %i.pk, ptr %i.pl, ptr %i.pm
  %.0.i.i.i.i.i67.i.i = load i64, ptr %spec.select.i.i.i.i.i66.i.i, align 8, !tbaa !430
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  store ptr %.sroa.0290.0.copyload.i, ptr %21, align 16, !tbaa !421
  store i32 %.sroa.9293.0.copyload.i, ptr %.sroa.897.0..sroa_idx100.i.i, align 8, !tbaa !201
  store ptr %.sroa.0290.0.copyload.i, ptr %i.be, align 16, !tbaa !421
  store i32 %.sroa.9293.0.copyload.i, ptr %.sroa.897.0..sroa_idx102.i.i, align 8, !tbaa !201
  %i.pn = and i64 %.0.i.i.i.i.i67.i.i, 63
  %i.po = or disjoint i64 %i.pn, 64
  %i.pp = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.u, i64 noundef %i.po, ptr noundef nonnull align 8 dereferenceable(12) %14, i16 %.sroa.0.0.copyload.i.i176.i, ptr %.sroa.21.0.copyload.i.i178.i, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract.i179.i = extractvalue { ptr, i32 } %i.pp, 0
  %.fca.1.extract.i180.i = extractvalue { ptr, i32 } %i.pp, 1
  store ptr %.fca.0.extract.i179.i, ptr %i.bf, align 16
  store i32 %.fca.1.extract.i180.i, ptr %.sroa.23.0..sroa_idx.i.i, align 8
  store ptr %21, ptr %22, align 8, !tbaa !417
  store i64 3, ptr %i.bg, align 8, !tbaa !420
  %i.pq = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.u, ptr noundef nonnull %1, i32 noundef %i.ii, i16 %.sroa.0.0.copyload.i.i176.i, ptr %.sroa.21.0.copyload.i.i178.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %22) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %_ZL15tryOrrWithShiftPN4llvm6SDNodeENS_7SDValueES2_S2_S2_PNS_12SelectionDAGEb.exit.i

_ZL15tryOrrWithShiftPN4llvm6SDNodeENS_7SDValueES2_S2_S2_PNS_12SelectionDAGEb.exit.i: ; preds = %bb.ce, %bb.cb, %bb.ca, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  br label %bb.cg

.sink.split.i:                                    ; preds = %.lr.ph.i.i.i.i.i, %_ZL30isWorthFoldingIntoOrrWithShiftN4llvm7SDValueEPNS_12SelectionDAGERS0_Rm.exit.thread125.i.i, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i.i.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %bb.cf

bb.cf:                                            ; preds = %.sink.split.i, %bb.cd, %bb.cc, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i.i, %bb.bw, %bb.bv, %bb.bb, %bb.ba, %bb.az, %bb.ay, %_ZL21isOpcWithIntImmediatePKN4llvm6SDNodeEjRm.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  store i64 %i.id, ptr %36, align 8, !tbaa !342
  store i32 %i.ie, ptr %i.bs, align 8, !tbaa !344
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  store ptr %.sroa.0298.0.i, ptr %37, align 16, !tbaa !421
  store i32 %.sroa.8301.0.i, ptr %.sroa.8301.0..sroa_idx304.i, align 8, !tbaa !201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.bt, ptr noundef nonnull align 8 dereferenceable(12) %30, i64 12, i1 false), !tbaa.struct !458
  %i.pr = zext i32 %i.cr to i64
  %i.ps = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.u, i64 noundef %i.pr, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 %.sroa.0.0.copyload.i.i164.i, ptr %.sroa.21.0.copyload.i.i.i, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract65.i = extractvalue { ptr, i32 } %i.ps, 0
  %.fca.1.extract66.i = extractvalue { ptr, i32 } %i.ps, 1
  store ptr %.fca.0.extract65.i, ptr %i.bu, align 16
  store i32 %.fca.1.extract66.i, ptr %.sroa.268.0..sroa_idx.i, align 8
  %i.pt = zext i32 %i.cq to i64
  %i.pu = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.u, i64 noundef %i.pt, ptr noundef nonnull align 8 dereferenceable(12) %36, i16 %.sroa.0.0.copyload.i.i164.i, ptr %.sroa.21.0.copyload.i.i.i, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract58.i = extractvalue { ptr, i32 } %i.pu, 0
  %.fca.1.extract59.i = extractvalue { ptr, i32 } %i.pu, 1
  store ptr %.fca.0.extract58.i, ptr %i.bv, align 16
  store i32 %.fca.1.extract59.i, ptr %.sroa.261.0..sroa_idx.i, align 8
  %.not.i.i183.i = icmp eq i16 %.sroa.0.0.copyload.i.i164.i, 7
  %i.pv = icmp eq ptr %.sroa.21.0.copyload.i.i.i, null
  %.not4.i184.i = select i1 %.not.i.i183.i, i1 %i.pv, i1 false
  %i.pw = select i1 %.not4.i184.i, i32 2098, i32 2099
  store ptr %37, ptr %38, align 8, !tbaa !417
  store i64 4, ptr %i.bw, align 8, !tbaa !420
  %i.px = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.u, ptr noundef nonnull %1, i32 noundef %i.pw, i16 %.sroa.0.0.copyload.i.i164.i, ptr %.sroa.21.0.copyload.i.i.i, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %38) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %_ZL15tryOrrWithShiftPN4llvm6SDNodeENS_7SDValueES2_S2_S2_PNS_12SelectionDAGEb.exit.i, %_ZN4llvm5APIntD2Ev.exit169.i
  %i.py = load i32, ptr %i.aq, align 8, !tbaa !428
  %i.pz = icmp ugt i32 %i.py, 64
  br i1 %i.pz, label %bb.ch, label %_ZN4llvm5APIntD2Ev.exit185.i

bb.ch:                                            ; preds = %bb.cg
  %i.qa = load ptr, ptr %32, align 8, !tbaa !430  ; 2 uses
  %i.qb = icmp eq ptr %i.qa, null
  br i1 %i.qb, label %_ZN4llvm5APIntD2Ev.exit185.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @_ZdaPv(ptr noundef nonnull %i.qa) #25
  br label %_ZN4llvm5APIntD2Ev.exit185.i

_ZN4llvm5APIntD2Ev.exit185.i:                     ; preds = %bb.ci, %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  %i.qc = load i32, ptr %i.bx, align 8, !tbaa !428
  %i.qd = icmp ugt i32 %i.qc, 64
  br i1 %i.qd, label %bb.cj, label %_ZN4llvm5APIntD2Ev.exit.i186.i

bb.cj:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit185.i
  %i.qe = load ptr, ptr %i.by, align 8, !tbaa !430 ; 2 uses
  %i.qf = icmp eq ptr %i.qe, null
  br i1 %i.qf, label %_ZN4llvm5APIntD2Ev.exit.i186.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_ZdaPv(ptr noundef nonnull %i.qe) #25
  br label %_ZN4llvm5APIntD2Ev.exit.i186.i

_ZN4llvm5APIntD2Ev.exit.i186.i:                   ; preds = %bb.ck, %bb.cj, %_ZN4llvm5APIntD2Ev.exit185.i
  %i.qg = load i32, ptr %i.ap, align 8, !tbaa !428
  %i.qh = icmp ugt i32 %i.qg, 64
  br i1 %i.qh, label %bb.cl, label %_ZN4llvm9KnownBitsD2Ev.exit.i

bb.cl:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i186.i
  %i.qi = load ptr, ptr %31, align 8, !tbaa !430  ; 2 uses
  %i.qj = icmp eq ptr %i.qi, null
  br i1 %i.qj, label %_ZN4llvm9KnownBitsD2Ev.exit.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZdaPv(ptr noundef nonnull %i.qi) #25
  br label %_ZN4llvm9KnownBitsD2Ev.exit.i

_ZN4llvm9KnownBitsD2Ev.exit.i:                    ; preds = %bb.cm, %bb.cl, %_ZN4llvm5APIntD2Ev.exit.i186.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br i1 %i.er, label %bb.cn, label %_ZL25tryBitfieldInsertOpFromOrPN4llvm6SDNodeERKNS_5APIntEPNS_12SelectionDAGE.exit

.critedge.i:                                      ; preds = %bb.l, %bb.k, %.thread.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %bb.cn

bb.cn:                                            ; preds = %.critedge.i, %_ZN4llvm9KnownBitsD2Ev.exit.i
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.i, label %.critedge153.i, label %bb.h, !llvm.loop !808

.critedge153.i:                                   ; preds = %bb.cn
  %i.qk = load ptr, ptr %i.ao, align 8, !tbaa !337 ; 4 uses
  %.sroa.0258.0.copyload.i = load ptr, ptr %i.qk, align 8, !tbaa !421 ; 8 uses
  %.sroa.8262.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %.sroa.8262.0.copyload.i = load i32, ptr %.sroa.8262.0..sroa_idx.i, align 8, !tbaa !201
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 40
  %.sroa.0248.0.copyload.i = load ptr, ptr %i.ql, align 8, !tbaa !421 ; 8 uses
  %.sroa.8253.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qk, i64 48
  %.sroa.8253.0.copyload.i = load i32, ptr %.sroa.8253.0..sroa_idx.i, align 8, !tbaa !201
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.0258.0.copyload.i, i64 56
  %.sroa.018.022.i.i.i = load ptr, ptr %i.qm, align 8, !tbaa !758 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.sroa.018.022.i.i.i, null
  br i1 %.not23.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

bb.co:                                            ; preds = %.lr.ph.i.i.i
  %.214.i.i.i = select i1 %i.qq, i32 %.01224.i.i.i, i32 0 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i, i64 32
  %.sroa.018.0.i.i.i = load ptr, ptr %i.qn, align 8, !tbaa !758 ; 2 uses
  %.not.i.i187.i = icmp eq ptr %.sroa.018.0.i.i.i, null
  br i1 %.not.i.i187.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge153.i, %bb.co
  %.sroa.018.025.i.i.i = phi ptr [ %.sroa.018.0.i.i.i, %bb.co ], [ %.sroa.018.022.i.i.i, %.critedge153.i ] ; 2 uses
  %.01224.i.i.i = phi i32 [ %.214.i.i.i, %bb.co ], [ 1, %.critedge153.i ] ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i, i64 8
  %i.qp = load i32, ptr %i.qo, align 8, !tbaa !341
  %i.qq = icmp ne i32 %i.qp, %.sroa.8262.0.copyload.i ; 2 uses
  %i.qr = icmp ne i32 %.01224.i.i.i, 0
  %cond.i.i.i = select i1 %i.qq, i1 true, i1 %i.qr
  br i1 %cond.i.i.i, label %bb.co, label %.loopexit

_ZNK4llvm7SDValue9hasOneUseEv.exit.i:             ; preds = %bb.co
  %i.qs = icmp eq i32 %.214.i.i.i, 0
  br i1 %i.qs, label %bb.cp, label %.loopexit

bb.cp:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.i
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.0248.0.copyload.i, i64 56
  %.sroa.018.022.i.i188.i = load ptr, ptr %i.qt, align 8, !tbaa !758 ; 2 uses
  %.not23.i.i189.i = icmp eq ptr %.sroa.018.022.i.i188.i, null
  br i1 %.not23.i.i189.i, label %.loopexit, label %.lr.ph.i.i190.i

bb.cq:                                            ; preds = %.lr.ph.i.i190.i
  %.214.i.i193.i = select i1 %i.qx, i32 %.01224.i.i192.i, i32 0 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i191.i, i64 32
  %.sroa.018.0.i.i197.i = load ptr, ptr %i.qu, align 8, !tbaa !758 ; 2 uses
  %.not.i.i198.i = icmp eq ptr %.sroa.018.0.i.i197.i, null
  br i1 %.not.i.i198.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit199.i, label %.lr.ph.i.i190.i

.lr.ph.i.i190.i:                                  ; preds = %bb.cp, %bb.cq
  %.sroa.018.025.i.i191.i = phi ptr [ %.sroa.018.0.i.i197.i, %bb.cq ], [ %.sroa.018.022.i.i188.i, %bb.cp ] ; 2 uses
  %.01224.i.i192.i = phi i32 [ %.214.i.i193.i, %bb.cq ], [ 1, %bb.cp ] ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i191.i, i64 8
  %i.qw = load i32, ptr %i.qv, align 8, !tbaa !341
  %i.qx = icmp ne i32 %i.qw, %.sroa.8253.0.copyload.i ; 2 uses
  %i.qy = icmp ne i32 %.01224.i.i192.i, 0
  %cond.i.i194.i = select i1 %i.qx, i1 true, i1 %i.qy
  br i1 %cond.i.i194.i, label %bb.cq, label %.loopexit

_ZNK4llvm7SDValue9hasOneUseEv.exit199.i:          ; preds = %bb.cq
  %i.qz = icmp eq i32 %.214.i.i193.i, 0
  br i1 %i.qz, label %bb.cr, label %.loopexit

bb.cr:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit199.i
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.0258.0.copyload.i, i64 24
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !331
  %i.rc = icmp eq i32 %i.rb, 193
  br i1 %i.rc, label %bb.cs, label %.loopexit

bb.cs:                                            ; preds = %bb.cr
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.0258.0.copyload.i, i64 40
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !337
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 40
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !338 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 24
  %i.ri = load i32, ptr %i.rh, align 8, !tbaa !331
  switch i32 %i.ri, label %.loopexit [
    i32 37, label %bb.ct
    i32 12, label %bb.ct
  ]

bb.ct:                                            ; preds = %bb.cs, %bb.cs
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rg, i64 88
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !425 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 24 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rk, i64 32
  %i.rn = load i32, ptr %i.rm, align 8, !tbaa !428
  %i.ro = icmp ult i32 %i.rn, 65
  %i.rp = load ptr, ptr %i.rl, align 8
  %spec.select.i.i.i.i.i200.i = select i1 %i.ro, ptr %i.rl, ptr %i.rp
  %.0.i.i.i.i.i201.i = load i64, ptr %spec.select.i.i.i.i.i200.i, align 8, !tbaa !430 ; 14 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.0248.0.copyload.i, i64 24
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !331
  %i.rs = icmp eq i32 %i.rr, 193
  br i1 %i.rs, label %bb.cu, label %.loopexit

bb.cu:                                            ; preds = %bb.ct
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.0248.0.copyload.i, i64 40
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !337
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 40
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !338 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 24
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !331
  switch i32 %i.ry, label %.loopexit [
    i32 37, label %bb.cv
    i32 12, label %bb.cv
  ]

bb.cv:                                            ; preds = %bb.cu, %bb.cu
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rw, i64 88
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !425 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 24 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sa, i64 32
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !428
  %i.se = icmp ult i32 %i.sd, 65
  %i.sf = load ptr, ptr %i.sb, align 8
  %spec.select.i.i.i.i.i203.i = select i1 %i.se, ptr %i.sb, ptr %i.sf
  %.0.i.i.i.i.i204.i = load i64, ptr %spec.select.i.i.i.i.i203.i, align 8, !tbaa !430 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #22
  %i.sg = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 3 uses
  store i32 %i.ae, ptr %i.sg, align 8, !tbaa !428
  %i.sh = icmp ult i32 %i.ae, 65                  ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 5 uses
  br i1 %i.sh, label %_ZN4llvm5APIntC2Ejmbb.exit206.thread.i, label %_ZN4llvm5APIntC2Ejmbb.exit206.i

_ZN4llvm5APIntC2Ejmbb.exit206.thread.i:           ; preds = %bb.cv
  store i64 %.0.i.i.i.i.i201.i, ptr %39, align 8, !tbaa !430
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22
  br label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i209.i

_ZN4llvm5APIntC2Ejmbb.exit206.i:                  ; preds = %bb.cv
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %39, i64 noundef %.0.i.i.i.i.i201.i, i1 noundef zeroext false) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22
  store i32 %i.ae, ptr %i.si, align 8, !tbaa !428
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %41, i64 noundef %.0.i.i.i.i.i204.i, i1 noundef zeroext false) #22
  %.pr353.i = load i32, ptr %i.si, align 8, !tbaa !428, !noalias !809 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !809)
  %i.sj = icmp ult i32 %.pr353.i, 65
  br i1 %i.sj, label %_ZN4llvm5APIntC2Ejmbb.exit206._ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i209_crit_edge.i, label %bb.cw

_ZN4llvm5APIntC2Ejmbb.exit206._ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i209_crit_edge.i: ; preds = %_ZN4llvm5APIntC2Ejmbb.exit206.i
  %.pre393.i = load i64, ptr %41, align 8, !tbaa !430, !noalias !809
  br label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i209.i

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i209.i:  ; preds = %_ZN4llvm5APIntC2Ejmbb.exit206._ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i209_crit_edge.i, %_ZN4llvm5APIntC2Ejmbb.exit206.thread.i
  %i.sk = phi i64 [ %.0.i.i.i.i.i204.i, %_ZN4llvm5APIntC2Ejmbb.exit206.thread.i ], [ %.pre393.i, %_ZN4llvm5APIntC2Ejmbb.exit206._ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i209_crit_edge.i ]
  %i.sl = phi i32 [ %i.ae, %_ZN4llvm5APIntC2Ejmbb.exit206.thread.i ], [ %.pr353.i, %_ZN4llvm5APIntC2Ejmbb.exit206._ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i209_crit_edge.i ] ; 3 uses
  %i.sm = xor i64 %i.sk, -1
  %i.sn = sub nsw i32 0, %i.sl
  %i.so = and i32 %i.sn, 63
  %i.sp = zext nneg i32 %i.so to i64
  %i.sq = lshr i64 -1, %i.sp
  %i.sr = icmp eq i32 %i.sl, 0
  %spec.select.i.i210.i = select i1 %i.sr, i64 0, i64 %i.sq, !prof !798
  %i.ss = and i64 %spec.select.i.i210.i, %i.sm    ; 2 uses
  store i64 %i.ss, ptr %41, align 8, !tbaa !430, !noalias !809
  br label %_ZN4llvmcoENS_5APIntE.exit211.i

bb.cw:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit206.i
  call void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(16) %41) #22, !noalias !809
  %.pre.i207.i = load i32, ptr %i.si, align 8, !tbaa !428, !noalias !809
  %.pre1.i208.i = load i64, ptr %41, align 8, !noalias !809
  br label %_ZN4llvmcoENS_5APIntE.exit211.i

_ZN4llvmcoENS_5APIntE.exit211.i:                  ; preds = %bb.cw, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i209.i
  %i.st = phi i64 [ %i.ss, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i209.i ], [ %.pre1.i208.i, %bb.cw ] ; 4 uses
  %i.su = phi i32 [ %i.sl, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i209.i ], [ %.pre.i207.i, %bb.cw ] ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i32 %i.su, ptr %i.sv, align 8, !tbaa !428, !alias.scope !809
  store i64 %i.st, ptr %40, align 8, !alias.scope !809
  store i32 0, ptr %i.si, align 8, !tbaa !428, !noalias !809
  %i.sw = load i32, ptr %i.sg, align 8, !tbaa !428
  %i.sx = icmp ult i32 %i.sw, 65
  %i.sy = inttoptr i64 %i.st to ptr
  br i1 %i.sx, label %.split.i, label %_ZNK4llvm5APInteqERKS0_.exit.i

.split.i:                                         ; preds = %_ZN4llvmcoENS_5APIntE.exit211.i
  %i.sz = load i64, ptr %39, align 8, !tbaa !430
  %i.ta = icmp eq i64 %i.sz, %i.st
  br i1 %i.ta, label %bb.cx, label %.critedge155.i

_ZNK4llvm5APInteqERKS0_.exit.i:                   ; preds = %_ZN4llvmcoENS_5APIntE.exit211.i
  %i.tb = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %39, ptr noundef nonnull align 8 dereferenceable(12) %40) #26
  br i1 %i.tb, label %bb.cx, label %.critedge155.i

bb.cx:                                            ; preds = %_ZNK4llvm5APInteqERKS0_.exit.i, %.split.i
  %.not.i.i.i213.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 7
  br i1 %.not.i.i.i213.i, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.tc = trunc i64 %.0.i.i.i.i.i201.i to i32     ; 3 uses
  %.not.i.i216.i = icmp eq i32 %i.tc, 0
  br i1 %.not.i.i216.i, label %bb.da, label %.split355.i

.split355.i:                                      ; preds = %bb.cy
  %i.td = add i32 %i.tc, -1
  %i.te = or i32 %i.td, %i.tc                     ; 2 uses
  %i.tf = add i32 %i.te, 1
  %i.tg = and i32 %i.tf, %i.te
end_hunk_1
