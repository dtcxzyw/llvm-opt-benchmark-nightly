Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVISelDAGToDAG?download=true
inline.NumInlined: 4778
inline.NumDeleted: 1099
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm17RISCVDAGToDAGISel16selectSF_VC_X_SEEPNS_6SDNodeE:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = load i64, ptr %i.f, align 8, !tbaa !398
  store i64 %i.g, ptr %2, align 8, !tbaa !398
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !399
  store i32 %i.j, ptr %i.h, align 8, !tbaa !401
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !384  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !385
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !365  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !367
  %i.t = icmp ult i32 %i.s, 65
  %i.u = load ptr, ptr %i.q, align 8
  %spec.select.i.i.i.i = select i1 %i.t, ptr %i.q, ptr %i.u
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !368
  %i.v = trunc i64 %.0.i.i.i.i to i32             ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !385
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !365  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !367
  %i.ad = icmp ult i32 %i.ac, 65
  %i.ae = load ptr, ptr %i.aa, align 8
  %spec.select.i.i.i.i27 = select i1 %i.ad, ptr %i.aa, ptr %i.ae
  %.0.i.i.i.i28 = load i64, ptr %spec.select.i.i.i.i27, align 8, !tbaa !368
  %i.af = trunc i64 %.0.i.i.i.i28 to i32
  %i.ag = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.af, i1 false)
  %i.ah = sub nsw i32 31, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !386
  %i.ak = zext i32 %i.ah to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  %i.am = load i8, ptr %i.al, align 8, !tbaa !227, !range !18, !noundef !19
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = select i1 %i.an, i16 8, i16 7
  %i.ap = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.aj, i64 noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %i.ao, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #26 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ap, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ap, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.030)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  %i.aq = load ptr, ptr %i.k, align 8, !tbaa !384 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.030, ptr noundef nonnull align 8 dereferenceable(12) %i.ar, i64 12, i1 false), !tbaa.struct !395
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  %.sroa.030.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.030, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.030.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.as, i64 12, i1 false), !tbaa.struct !395
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 160
  %.sroa.030.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.030, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.030.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.at, i64 12, i1 false), !tbaa.struct !395
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 200
  %.sroa.030.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.030, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.030.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.au, i64 12, i1 false), !tbaa.struct !395
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 320
  %.sroa.030.64..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.030, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.030.64..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.av, i64 12, i1 false), !tbaa.struct !395
  %.sroa.10.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.10.96..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.aq, i64 12, i1 false), !tbaa.struct !395
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.aw, ptr %3, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 8, ptr %i.ay, align 4, !tbaa !394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aw, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.030, i64 80, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 96
  store ptr %.fca.0.extract, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i32 %.fca.1.extract, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10, i64 16, i1 false)
  store i32 7, ptr %i.ax, align 8, !tbaa !393
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.030)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 280
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !385
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !365 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !367 ; 3 uses
  %i.bg = icmp ult i32 %i.bf, 65
  br i1 %i.bg, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !368
  %i.bi = icmp eq i32 %i.bf, 0
  %i.bj = sub nuw nsw i32 64, %i.bf
  %i.bk = zext nneg i32 %i.bj to i64              ; 2 uses
  %i.bl = shl i64 %i.bh, %i.bk
  %i.bm = ashr exact i64 %i.bl, %i.bk
  br i1 %i.bi, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.d:                                             ; preds = %bb.b
  %i.bn = load ptr, ptr %i.bd, align 8, !tbaa !368
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !369
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i64 [ %i.bm, %bb.c ], [ %i.bo, %bb.d ]
  switch i64 %.0.i.i.i, label %unreachable [
    i64 5, label %bb.e
    i64 6, label %bb.f
    i64 7, label %bb.g
    i64 0, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
  ]

bb.e:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.bp = icmp eq i32 %i.v, 12258
  %i.bq = select i1 %i.bp, i32 1306, i32 1029
  br label %bb.k

bb.f:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.br = icmp eq i32 %i.v, 12258
  %i.bs = select i1 %i.br, i32 1305, i32 1028
  br label %bb.k

bb.g:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.bt = icmp eq i32 %i.v, 12258
  %i.bu = select i1 %i.bt, i32 1304, i32 1027
  br label %bb.k

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread: ; preds = %bb.c, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.bv = icmp eq i32 %i.v, 12258
  %i.bw = select i1 %i.bv, i32 1300, i32 1023
  br label %bb.k

bb.h:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.bx = icmp eq i32 %i.v, 12258
  %i.by = select i1 %i.bx, i32 1301, i32 1024
  br label %bb.k

bb.i:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.bz = icmp eq i32 %i.v, 12258
  %i.ca = select i1 %i.bz, i32 1302, i32 1025
  br label %bb.k

bb.j:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.cb = icmp eq i32 %i.v, 12258
  %i.cc = select i1 %i.cb, i32 1303, i32 1026
  br label %bb.k

unreachable:                                      ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  unreachable

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread, %bb.g, %bb.f, %bb.e
  %.0 = phi i32 [ %i.cc, %bb.j ], [ %i.bq, %bb.e ], [ %i.bs, %bb.f ], [ %i.bu, %bb.g ], [ %i.bw, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread ], [ %i.by, %bb.h ], [ %i.ca, %bb.i ]
  %i.cd = load ptr, ptr %i.ai, align 8, !tbaa !386
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !402
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.cf, align 8, !tbaa !380
  store ptr %i.aw, ptr %4, align 8, !tbaa !475
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 7, ptr %i.cg, align 8, !tbaa !476
  %i.ch = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.cd, i32 noundef %.0, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.277") align 8 %4) #26 ; 2 uses
  %i.ci = load ptr, ptr %i.ai, align 8, !tbaa !386
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(920) %i.ci, ptr noundef nonnull %1, ptr noundef %i.ch) #26
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.ch) #26
  %i.cj = load ptr, ptr %i.ai, align 8, !tbaa !386
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.cj, ptr noundef nonnull %1) #26
  %i.ck = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.aw
  br i1 %i.cl, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef %i.ck) #26
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17RISCVDAGToDAGISel6SelectEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %3 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %4 = alloca [5 x %"class.llvm::SDValue"], align 16 ; 13 uses
  %5 = alloca %"class.llvm::ArrayRef.277", align 8 ; 5 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %10 = alloca [5 x %"class.llvm::SDValue"], align 16 ; 12 uses
  %11 = alloca %"class.llvm::ArrayRef.277", align 8 ; 5 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %13 = alloca %"class.llvm::SDLoc", align 8      ; 176 uses
  %14 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %15 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %16 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %18 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %19 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %22 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %23 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %24 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %26 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %27 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %28 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %31 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %33 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %34 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %35 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %36 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %37 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %38 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %39 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %40 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %41 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %42 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %43 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %44 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %45 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %46 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %47 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %48 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %49 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %50 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %51 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %52 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %53 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %54 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %55 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %56 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %57 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %58 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %59 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %60 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %61 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %62 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %63 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %64 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %65 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %66 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %67 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %68 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %69 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %70 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %71 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %72 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %73 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %74 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %75 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %76 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %77 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %78 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %79 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %80 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %81 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %82 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %83 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %84 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %85 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %86 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %87 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %88 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %89 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %90 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %91 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %92 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %93 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %94 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %95 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %96 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %97 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %98 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %99 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %100 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %101 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %102 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %103 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %104 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %105 = alloca %"class.llvm::SDValue", align 8   ; 2 uses
  %106 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %107 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %108 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %109 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %110 = alloca %"class.llvm::SDValue", align 8   ; 2 uses
  %111 = alloca %"class.llvm::SDLoc", align 8     ; 5 uses
  %112 = alloca %"struct.llvm::EVT", align 8      ; 3 uses
  %113 = alloca %"struct.llvm::EVT", align 8      ; 3 uses
  %114 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %115 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %116 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %117 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %118 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %119 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 6 uses
  %120 = alloca [2 x %"struct.llvm::EVT"], align 8 ; 4 uses
  %121 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %122 = alloca %"struct.std::pair.305", align 8  ; 7 uses
  %i.a = alloca [1 x ptr], align 8                ; 4 uses
  %123 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %124 = alloca %"class.llvm::SDValue", align 8   ; 6 uses
  %125 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %126 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %127 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %128 = alloca [4 x %"class.llvm::SDValue"], align 8 ; 8 uses
  %i.b = alloca [1 x ptr], align 8                ; 4 uses
  %129 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %130 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %131 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %132 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %133 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %134 = alloca %"class.llvm::SDValue", align 8   ; 5 uses
  %135 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %136 = alloca %"class.llvm::SDLoc", align 8     ; 5 uses
  %137 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %138 = alloca [4 x %"class.llvm::SDValue"], align 8 ; 10 uses
  %139 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %140 = alloca [4 x %"class.llvm::SDValue"], align 8 ; 10 uses
  %141 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %142 = alloca [4 x %"class.llvm::SDValue"], align 8 ; 10 uses
  %143 = alloca %"class.llvm::APInt", align 8     ; 6 uses
  %144 = alloca %"class.llvm::SDValue", align 8   ; 9 uses
  %145 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %146 = alloca [4 x %"class.llvm::SDValue"], align 8 ; 10 uses
  %147 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %148 = alloca [4 x %"class.llvm::SDValue"], align 8 ; 10 uses
  %149 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %150 = alloca [4 x %"class.llvm::SDValue"], align 8 ; 10 uses
  %151 = alloca %"class.llvm::SDLoc", align 8     ; 5 uses
  %152 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %153 = alloca [7 x %"class.llvm::SDValue"], align 8 ; 16 uses
  %154 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %155 = alloca [7 x %"class.llvm::SDValue"], align 8 ; 16 uses
  %156 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %157 = alloca [4 x %"class.llvm::SDValue"], align 8 ; 10 uses
  %158 = alloca %"class.llvm::SmallVector.289", align 8 ; 10 uses
  %159 = alloca %"class.llvm::MVT", align 2       ; 5 uses
  %160 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %i.c = alloca [1 x ptr], align 8                ; 4 uses
  %161 = alloca %"class.llvm::SmallVector.289", align 8 ; 11 uses
  %162 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %i.d = alloca [1 x ptr], align 8                ; 4 uses
  %163 = alloca %"class.llvm::SmallVector.293", align 8 ; 10 uses
  %164 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %i.e = alloca [1 x ptr], align 8                ; 4 uses
  %165 = alloca %"class.llvm::SmallVector.289", align 8 ; 10 uses
  %166 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %i.f = alloca [1 x ptr], align 8                ; 4 uses
  %167 = alloca %"class.llvm::SmallVector.289", align 8 ; 10 uses
  %168 = alloca %"class.llvm::MVT", align 2       ; 5 uses
  %169 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %i.g = alloca [1 x ptr], align 8                ; 4 uses
  %170 = alloca %"class.llvm::SmallVector.289", align 8 ; 10 uses
  %171 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %i.h = alloca [1 x ptr], align 8                ; 4 uses
  %172 = alloca [6 x %"class.llvm::SDValue"], align 16 ; 11 uses
  %173 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %i.i = alloca [1 x ptr], align 8                ; 4 uses
  %174 = alloca %"struct.llvm::EVT", align 8      ; 5 uses
  %175 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %176 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %177 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %178 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %179 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %180 = alloca %"class.llvm::SmallVector.308", align 8 ; 14 uses
  %.sroa.63055 = alloca [16 x i8], align 4        ; 4 uses
  %181 = alloca [6 x %"class.llvm::SDValue"], align 8 ; 11 uses
  %182 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %183 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %184 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %185 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %186 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %187 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %188 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %189 = alloca [6 x %"class.llvm::SDValue"], align 8 ; 10 uses
  %190 = alloca %"struct.llvm::EVT", align 8      ; 3 uses
  %191 = alloca %"class.llvm::APInt", align 8     ; 20 uses
  %192 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %193 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %194 = alloca %"class.llvm::APInt", align 8     ; 5 uses
  %195 = alloca %"class.llvm::APInt", align 8     ; 5 uses
  %196 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %197 = alloca %"class.llvm::SDValue", align 8   ; 2 uses
  %198 = alloca %"class.llvm::SDLoc", align 8     ; 8 uses
  %199 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %200 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %201 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %202 = alloca %"class.llvm::SDLoc", align 8     ; 8 uses
  %203 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %204 = alloca %"class.llvm::SDValue", align 8   ; 3 uses
  %205 = alloca %"class.llvm::SDValue", align 8   ; 4 uses
  %206 = alloca %"struct.llvm::EVT", align 8      ; 7 uses
  %207 = alloca %"class.llvm::SDValue", align 8   ; 9 uses
  %208 = alloca %"class.llvm::SmallVector.388", align 8 ; 12 uses
  %.sroa.5 = alloca [16 x i8], align 4            ; 4 uses
  %209 = alloca [4 x %"class.llvm::SDValue"], align 8 ; 9 uses
  %210 = alloca [2 x %"struct.llvm::EVT"], align 8 ; 7 uses
  %211 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %i.j = alloca [1 x ptr], align 8                ; 4 uses
  %212 = alloca %"class.llvm::SmallVector.289", align 8 ; 14 uses
  %213 = alloca %"class.llvm::ArrayRef.277", align 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !392  ; 8 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 -1, ptr %i.n, align 4, !tbaa !477
  br label %bb.ql

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 25 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !82   ; 25 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 656
  %i.r = load i8, ptr %i.q, align 8, !tbaa !227, !range !18, !noundef !19 ; 2 uses
  %i.s = trunc nuw i8 %i.r to i1                  ; 11 uses
  %i.t = select i1 %i.s, i16 8, i16 7             ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !398
  store i64 %i.v, ptr %13, align 8, !tbaa !398
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.y = load i32, ptr %i.x, align 4, !tbaa !399
  store i32 %i.y, ptr %i.w, align 8, !tbaa !401
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 12 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !402 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.aa, align 8, !tbaa !380 ; 155 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 476
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !233, !range !18, !noundef !19
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 621
  %i.af = load i8, ptr %i.ae, align 1, !range !18
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = select i1 %i.ad, i1 true, i1 %i.ag      ; 2 uses
  switch i32 %i.l, label %.critedge2292 [
    i32 12, label %bb.d
    i32 13, label %bb.ad
    i32 352, label %bb.qh
    i32 601, label %bb.py
    i32 600, label %bb.py
    i32 734, label %bb.ay
    i32 733, label %bb.ay
    i32 735, label %bb.ay
    i32 198, label %bb.bk
    i32 200, label %bb.bu
    i32 199, label %bb.cj
    i32 236, label %bb.ct
    i32 194, label %bb.dc
    i32 195, label %bb.dd
    i32 193, label %bb.de
    i32 61, label %bb.gc
    i32 558, label %bb.ax
    i32 556, label %bb.ax
    i32 557, label %bb.aw
    i32 851, label %bb.gx
    i32 844, label %bb.gw
    i32 848, label %bb.gz
    i32 847, label %bb.gz
    i32 316, label %bb.hc
    i32 598, label %bb.hs
    i32 653, label %bb.ht
    i32 541, label %bb.hy
    i32 727, label %bb.hz
    i32 843, label %bb.hz
    i32 850, label %bb.hz
    i32 842, label %bb.hz
    i32 849, label %bb.hz
    i32 48, label %bb.ig
    i32 49, label %bb.kl
    i32 50, label %bb.lp
    i32 248, label %bb.nb
    i32 175, label %bb.nm
    i32 174, label %bb.om
    i32 166, label %bb.oq
    i32 746, label %bb.oq
    i32 167, label %bb.oy
    i32 745, label %bb.oy
    i32 845, label %bb.gv
    i32 67, label %bb.gu
    i32 66, label %bb.gy
    i32 806, label %bb.pj
    i32 783, label %bb.pi
    i32 784, label %bb.pi
    i32 808, label %bb.pi
  ]

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !365 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = icmp slt i8 %i.al, 0
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !386 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 288
  store i16 %.sroa.0.0.copyload.i.i, ptr %14, align 8, !tbaa !380
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.aq, align 8, !tbaa !471
  %i.ar = call { ptr, i32 } @_ZN4llvm12SelectionDAG14getCopyFromRegENS_7SDValueERKNS_5SDLocENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.ao, ptr nonnull %i.ap, i32 0, ptr noundef nonnull align 8 dereferenceable(12) %13, i32 68, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %14)
  %.fca.0.extract1812 = extractvalue { ptr, i32 } %i.ar, 0
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %.fca.0.extract1812)
  br label %.critedge2356

bb.f:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !367 ; 3 uses
  %i.av = icmp ult i32 %i.au, 65
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aw = load i64, ptr %i.as, align 8, !tbaa !368
  %i.ax = icmp eq i32 %i.au, 0
  %i.ay = sub nuw nsw i32 64, %i.au
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = shl i64 %i.aw, %i.az
  %i.bb = ashr exact i64 %i.ba, %i.az
  %.0.i.i.i.i = select i1 %i.ax, i64 0, i64 %i.bb
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.h:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !368
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !369
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.g, %bb.h
  %.0.i.i.i = phi i64 [ %.0.i.i.i.i, %bb.g ], [ %i.bd, %bb.h ] ; 9 uses
  %i.be = add i64 %.0.i.i.i, 128
  %i.bf = icmp ult i64 %i.be, 256
  br i1 %i.bf, label %.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.bg = icmp ult i64 %.0.i.i.i, 256
  br i1 %i.bg, label %bb.j, label %bb.l

end_hunk_0
begin_hunk_1_@_ZN4llvm17RISCVDAGToDAGISel6SelectEPNS_6SDNodeE:bb.a
    i32 12583, label %bb.ku
    i32 12579, label %bb.ku
    i32 12604, label %bb.kv
    i32 12600, label %bb.kv
    i32 12596, label %bb.kv
    i32 12592, label %bb.kv
    i32 12588, label %bb.kv
    i32 12584, label %bb.kv
    i32 12580, label %bb.kv
    i32 12559, label %bb.kw
    i32 12560, label %bb.kw
    i32 12619, label %bb.kw
    i32 12620, label %bb.kw
    i32 12558, label %bb.ld
    i32 12554, label %bb.ld
    i32 12555, label %bb.ld
    i32 12575, label %bb.ld
    i32 12576, label %bb.ld
    i32 12556, label %bb.lh
    i32 12557, label %bb.lh
    i32 12173, label %bb.lk
    i32 12174, label %bb.lk
    i32 12175, label %bb.lk
    i32 12176, label %bb.lk
  ]

bb.km:                                            ; preds = %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl
  %i.bib = tail call fastcc noundef i32 @_ZL12getSegInstNFj(i32 noundef %i.bia)
  tail call void @_ZN4llvm17RISCVDAGToDAGISel11selectVLSEGEPNS_6SDNodeEjbb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i32 noundef %i.bib, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %.critedge2356

bb.kn:                                            ; preds = %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl
  %i.bic = tail call fastcc noundef i32 @_ZL12getSegInstNFj(i32 noundef %i.bia)
  tail call void @_ZN4llvm17RISCVDAGToDAGISel11selectVLSEGEPNS_6SDNodeEjbb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i32 noundef %i.bic, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %.critedge2356

bb.ko:                                            ; preds = %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl
  %i.bid = tail call fastcc noundef i32 @_ZL12getSegInstNFj(i32 noundef %i.bia)
  tail call void @_ZN4llvm17RISCVDAGToDAGISel11selectVLSEGEPNS_6SDNodeEjbb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i32 noundef %i.bid, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %.critedge2356

bb.kp:                                            ; preds = %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl
  %i.bie = tail call fastcc noundef i32 @_ZL12getSegInstNFj(i32 noundef %i.bia)
  tail call void @_ZN4llvm17RISCVDAGToDAGISel11selectVLSEGEPNS_6SDNodeEjbb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i32 noundef %i.bie, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %.critedge2356

bb.kq:                                            ; preds = %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl
  %i.bif = tail call fastcc noundef i32 @_ZL12getSegInstNFj(i32 noundef %i.bia)
  tail call void @_ZN4llvm17RISCVDAGToDAGISel12selectVLXSEGEPNS_6SDNodeEjbb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i32 noundef %i.bif, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %.critedge2356

bb.kr:                                            ; preds = %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl
  %i.big = tail call fastcc noundef i32 @_ZL12getSegInstNFj(i32 noundef %i.bia)
  tail call void @_ZN4llvm17RISCVDAGToDAGISel12selectVLXSEGEPNS_6SDNodeEjbb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i32 noundef %i.big, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %.critedge2356

bb.ks:                                            ; preds = %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl
  %i.bih = tail call fastcc noundef i32 @_ZL12getSegInstNFj(i32 noundef %i.bia)
  tail call void @_ZN4llvm17RISCVDAGToDAGISel12selectVLXSEGEPNS_6SDNodeEjbb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i32 noundef %i.bih, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %.critedge2356

bb.kt:                                            ; preds = %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl
  %i.bii = tail call fastcc noundef i32 @_ZL12getSegInstNFj(i32 noundef %i.bia)
  tail call void @_ZN4llvm17RISCVDAGToDAGISel12selectVLXSEGEPNS_6SDNodeEjbb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i32 noundef %i.bii, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %.critedge2356

bb.ku:                                            ; preds = %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl
  %i.bij = tail call fastcc noundef i32 @_ZL12getSegInstNFj(i32 noundef %i.bia)
  tail call void @_ZN4llvm17RISCVDAGToDAGISel13selectVLSEGFFEPNS_6SDNodeEjb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i32 noundef %i.bij, i1 noundef zeroext false)
  br label %.critedge2356

bb.kv:                                            ; preds = %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl
  %i.bik = tail call fastcc noundef i32 @_ZL12getSegInstNFj(i32 noundef %i.bia)
  tail call void @_ZN4llvm17RISCVDAGToDAGISel13selectVLSEGFFEPNS_6SDNodeEjb(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i32 noundef %i.bik, i1 noundef zeroext true)
  br label %.critedge2356

bb.kw:                                            ; preds = %bb.kl, %bb.kl, %bb.kl, %bb.kl
  %i.bil = icmp eq i32 %i.bia, 12560
  %i.bim = icmp eq i32 %i.bia, 12620
  %i.bin = or i1 %i.bil, %i.bim                   ; 2 uses
  %i.bio = zext i1 %i.bin to i8
  %i.bip = icmp samesign ult i32 %i.bia, 12561
  %i.biq = zext i1 %i.bip to i8
  %i.bir = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i.i2733 = icmp ult i16 %i.bir, 197
  br i1 %spec.select.i.i.i2733, label %bb.kx, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2736

bb.kx:                                            ; preds = %bb.kw
  %i.bis = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.bit = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bis
  %i.biu = getelementptr i8, ptr %i.bit, i64 -2
  %i.biv = load i16, ptr %i.biu, align 2, !tbaa !380
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2736

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2736:    ; preds = %bb.kw, %bb.kx
  %.sroa.0.0.i.i2734 = phi i16 [ %i.biv, %bb.kx ], [ %.sroa.0.0.copyload.i.i, %bb.kw ]
  %i.biw = zext i16 %.sroa.0.0.i.i2734 to i64
  %i.bix = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.biw
  %i.biy = getelementptr i8, ptr %i.bix, i64 -16
  %.sroa.0.0.copyload.i.i2735 = load i64, ptr %i.biy, align 16
  %i.biz = trunc i64 %.sroa.0.0.copyload.i.i2735 to i32
  %i.bja = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.biz, i1 false)
  %i.bjb = sub nsw i32 31, %i.bja
  call void @llvm.lifetime.start.p0(ptr nonnull %158) #26
  %i.bjc = getelementptr inbounds nuw i8, ptr %158, i64 16 ; 2 uses
  store ptr %i.bjc, ptr %158, align 8, !tbaa !21
  %i.bjd = getelementptr inbounds nuw i8, ptr %158, i64 8 ; 2 uses
  store i32 0, ptr %i.bjd, align 8, !tbaa !393
  %i.bje = getelementptr inbounds nuw i8, ptr %158, i64 12
  store i32 8, ptr %i.bje, align 4, !tbaa !394
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bhq, i64 80
  %.sroa.0628.0.copyload = load ptr, ptr %i.bjf, align 8, !tbaa !388
  %.sroa.2629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bhq, i64 88
  %.sroa.2629.0.copyload = load i32, ptr %.sroa.2629.0..sroa_idx, align 8, !tbaa !387
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %158, ptr %.sroa.0628.0.copyload, i32 %.sroa.2629.0.copyload)
  call void @llvm.lifetime.start.p0(ptr nonnull %159) #26
  store i16 0, ptr %159, align 2, !tbaa !472
  call void @_ZN4llvm17RISCVDAGToDAGISel26addVectorLoadStoreOperandsEPNS_6SDNodeEjRKNS_5SDLocEjbbRNS_15SmallVectorImplINS_7SDValueEEEbPNS_3MVTE(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i32 noundef %i.bjb, ptr noundef nonnull align 8 dereferenceable(12) %13, i32 noundef 3, i1 noundef zeroext %i.bin, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %158, i1 noundef zeroext true, ptr noundef nonnull %159)
  %i.bjg = call noundef zeroext i8 @_ZN4llvm19RISCVTargetLowering7getLMULENS_3MVTE(i16 %.sroa.0.0.copyload.i.i) #26
  %.sroa.0624.0.copyload = load i16, ptr %159, align 2, !tbaa !380 ; 4 uses
  %i.bjh = call noundef zeroext i8 @_ZN4llvm19RISCVTargetLowering7getLMULENS_3MVTE(i16 %.sroa.0624.0.copyload) #26
  %i.bji = add i16 %.sroa.0624.0.copyload, -19
  %spec.select.i.i.i2737 = icmp ult i16 %i.bji, 197
  br i1 %spec.select.i.i.i2737, label %bb.ky, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2740

bb.ky:                                            ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2736
  %i.bjj = zext nneg i16 %.sroa.0624.0.copyload to i64
  %i.bjk = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bjj
  %i.bjl = getelementptr i8, ptr %i.bjk, i64 -2
  %i.bjm = load i16, ptr %i.bjl, align 2, !tbaa !380
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2740

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2740:    ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2736, %bb.ky
  %.sroa.0.0.i.i2738 = phi i16 [ %i.bjm, %bb.ky ], [ %.sroa.0624.0.copyload, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2736 ]
  %i.bjn = zext i16 %.sroa.0.0.i.i2738 to i64
  %i.bjo = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bjn
  %i.bjp = getelementptr i8, ptr %i.bjo, i64 -16
  %.sroa.0.0.copyload.i.i2739 = load i64, ptr %i.bjp, align 16
  %i.bjq = trunc i64 %.sroa.0.0.copyload.i.i2739 to i32
  %i.bjr = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bjq, i1 false) ; 2 uses
  %i.bjs = icmp eq i32 %i.bjr, 25
  br i1 %i.bjs, label %bb.kz, label %bb.lb

bb.kz:                                            ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2740
  %i.bjt = load ptr, ptr %i.o, align 8, !tbaa !82
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjt, i64 656
  %i.bjv = load i8, ptr %i.bju, align 8, !tbaa !227, !range !18, !noundef !19
  %i.bjw = trunc nuw i8 %i.bjv to i1
  br i1 %i.bjw, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %bb.kz
  call void @_ZN4llvm21reportFatalUsageErrorEPKc(ptr noundef nonnull @.str.2) #29
  unreachable

bb.lb:                                            ; preds = %bb.kz, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2740
  %i.bjx = trunc nuw nsw i32 %i.bjr to i8
  %i.bjy = sub nsw i8 31, %i.bjx
  %i.bjz = call noundef ptr @_ZN4llvm5RISCV12getVLXPseudoEhhhhh(i8 noundef zeroext %i.bio, i8 noundef zeroext %i.biq, i8 noundef zeroext %i.bjy, i8 noundef zeroext %i.bjg, i8 noundef zeroext %i.bjh) #26
  %i.bka = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bkb = load ptr, ptr %i.bka, align 8, !tbaa !386
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bjz, i64 2
  %i.bkd = load i16, ptr %i.bkc, align 2, !tbaa !685
  %i.bke = zext i16 %i.bkd to i32
  %i.bkf = load ptr, ptr %i.z, align 8, !tbaa !402
  %i.bkg = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.bkh = load i16, ptr %i.bkg, align 2, !tbaa !478
  %i.bki = zext i16 %i.bkh to i32
  %i.bkj = load ptr, ptr %158, align 8, !tbaa !21
  store ptr %i.bkj, ptr %160, align 8, !tbaa !475
  %i.bkk = getelementptr inbounds nuw i8, ptr %160, i64 8
  %i.bkl = load i32, ptr %i.bjd, align 8, !tbaa !393
  %i.bkm = zext i32 %i.bkl to i64
  store i64 %i.bkm, ptr %i.bkk, align 8, !tbaa !476
  %i.bkn = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bkb, i32 noundef %i.bke, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr %i.bkf, i32 %i.bki, ptr noundef nonnull byval(%"class.llvm::ArrayRef.277") align 8 %160) #26 ; 2 uses
  %i.bko = load ptr, ptr %i.bka, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.bkp = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i2743 = load i64, ptr %i.bkp, align 8
  %i.bkq = and i64 %.0.copyload.i.i.i.i.i.i2743, -5
  %i.bkr = inttoptr i64 %i.bkq to ptr
  store ptr %i.bkr, ptr %i.c, align 8, !tbaa !500
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bko, ptr noundef %i.bkn, ptr nonnull %i.c, i64 1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %i.bkn)
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #26
  %i.bks = load ptr, ptr %158, align 8, !tbaa !21 ; 2 uses
  %i.bkt = icmp eq ptr %i.bks, %i.bjc
  br i1 %i.bkt, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  call void @free(ptr noundef %i.bks) #26
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit: ; preds = %bb.lb, %bb.lc
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #26
  br label %.critedge2356

bb.ld:                                            ; preds = %bb.kl, %bb.kl, %bb.kl, %bb.kl, %bb.kl
  %i.bku = icmp eq i32 %i.bia, 12555
  %i.bkv = icmp eq i32 %i.bia, 12576
  %i.bkw = or i1 %i.bku, %i.bkv                   ; 2 uses
  %i.bkx = zext i1 %i.bkw to i8
  %i.bky = add nsw i32 %i.bia, -12575
  %i.bkz = icmp ult i32 %i.bky, 2                 ; 2 uses
  %i.bla = zext i1 %i.bkz to i8
  %i.blb = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i.i2745 = icmp ult i16 %i.blb, 197
  br i1 %spec.select.i.i.i2745, label %bb.le, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2748

bb.le:                                            ; preds = %bb.ld
  %i.blc = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.bld = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.blc
  %i.ble = getelementptr i8, ptr %i.bld, i64 -2
  %i.blf = load i16, ptr %i.ble, align 2, !tbaa !380
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2748

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2748:    ; preds = %bb.ld, %bb.le
  %.sroa.0.0.i.i2746 = phi i16 [ %i.blf, %bb.le ], [ %.sroa.0.0.copyload.i.i, %bb.ld ]
  %i.blg = zext i16 %.sroa.0.0.i.i2746 to i64
  %i.blh = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.blg
  %i.bli = getelementptr i8, ptr %i.blh, i64 -16
  %.sroa.0.0.copyload.i.i2747 = load i64, ptr %i.bli, align 16
  %i.blj = trunc i64 %.sroa.0.0.copyload.i.i2747 to i32
  %i.blk = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.blj, i1 false)
  %i.bll = sub nsw i32 31, %i.blk                 ; 2 uses
  %.not2258 = icmp eq i32 %i.bia, 12558
  call void @llvm.lifetime.start.p0(ptr nonnull %161) #26
  %i.blm = getelementptr inbounds nuw i8, ptr %161, i64 16 ; 2 uses
  store ptr %i.blm, ptr %161, align 8, !tbaa !21
  %i.bln = getelementptr inbounds nuw i8, ptr %161, i64 8 ; 2 uses
  store i32 0, ptr %i.bln, align 8, !tbaa !393
  %i.blo = getelementptr inbounds nuw i8, ptr %161, i64 12
  store i32 8, ptr %i.blo, align 4, !tbaa !394
  br i1 %.not2258, label %.split2191, label %.split2193

.split2193:                                       ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2748
  %i.blp = getelementptr inbounds nuw i8, ptr %i.bhq, i64 80
  %.sroa.0603.0.copyload = load ptr, ptr %i.blp, align 8, !tbaa !388
  %.sroa.2604.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bhq, i64 88
  %.sroa.2604.0.copyload = load i32, ptr %.sroa.2604.0..sroa_idx, align 8, !tbaa !387
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %161, ptr %.sroa.0603.0.copyload, i32 %.sroa.2604.0.copyload)
  br label %bb.lf

.split2191:                                       ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2748
  %i.blq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.blr = load ptr, ptr %i.blq, align 8, !tbaa !386
  %i.bls = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.blr, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i, ptr null) #26
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %161, ptr %i.bls, i32 0)
  br label %bb.lf

bb.lf:                                            ; preds = %.split2191, %.split2193
  %.sink = phi i32 [ 2, %.split2191 ], [ 3, %.split2193 ]
  call void @_ZN4llvm17RISCVDAGToDAGISel26addVectorLoadStoreOperandsEPNS_6SDNodeEjRKNS_5SDLocEjbbRNS_15SmallVectorImplINS_7SDValueEEEbPNS_3MVTE(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i32 noundef %i.bll, ptr noundef nonnull align 8 dereferenceable(12) %13, i32 noundef %.sink, i1 noundef zeroext %i.bkw, i1 noundef zeroext %i.bkz, ptr noundef nonnull align 8 dereferenceable(16) %161, i1 noundef zeroext true, ptr noundef null)
  %i.blt = call noundef zeroext i8 @_ZN4llvm19RISCVTargetLowering7getLMULENS_3MVTE(i16 %.sroa.0.0.copyload.i.i) #26
  %i.blu = trunc nsw i32 %i.bll to i8
  %i.blv = call noundef ptr @_ZN4llvm5RISCV12getVLEPseudoEhhhhh(i8 noundef zeroext %i.bkx, i8 noundef zeroext %i.bla, i8 noundef zeroext 0, i8 noundef zeroext %i.blu, i8 noundef zeroext %i.blt) #26
  %i.blw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.blx = load ptr, ptr %i.blw, align 8, !tbaa !386
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blv, i64 2
  %i.blz = load i16, ptr %i.bly, align 2, !tbaa !687
  %i.bma = zext i16 %i.blz to i32
  %i.bmb = load ptr, ptr %i.z, align 8, !tbaa !402
  %i.bmc = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.bmd = load i16, ptr %i.bmc, align 2, !tbaa !478
  %i.bme = zext i16 %i.bmd to i32
  %i.bmf = load ptr, ptr %161, align 8, !tbaa !21
  store ptr %i.bmf, ptr %162, align 8, !tbaa !475
  %i.bmg = getelementptr inbounds nuw i8, ptr %162, i64 8
  %i.bmh = load i32, ptr %i.bln, align 8, !tbaa !393
  %i.bmi = zext i32 %i.bmh to i64
  store i64 %i.bmi, ptr %i.bmg, align 8, !tbaa !476
  %i.bmj = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.blx, i32 noundef %i.bma, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr %i.bmb, i32 %i.bme, ptr noundef nonnull byval(%"class.llvm::ArrayRef.277") align 8 %162) #26 ; 2 uses
  %i.bmk = load ptr, ptr %i.blw, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.bml = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i2751 = load i64, ptr %i.bml, align 8
  %i.bmm = and i64 %.0.copyload.i.i.i.i.i.i2751, -5
  %i.bmn = inttoptr i64 %i.bmm to ptr
  store ptr %i.bmn, ptr %i.d, align 8, !tbaa !500
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bmk, ptr noundef %i.bmj, ptr nonnull %i.d, i64 1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %i.bmj)
  %i.bmo = load ptr, ptr %161, align 8, !tbaa !21 ; 2 uses
  %i.bmp = icmp eq ptr %i.bmo, %i.blm
  br i1 %i.bmp, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit2752, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  call void @free(ptr noundef %i.bmo) #26
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit2752

_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit2752: ; preds = %bb.lf, %bb.lg
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #26
  br label %.critedge2356

bb.lh:                                            ; preds = %bb.kl, %bb.kl
  %i.bmq = icmp eq i32 %i.bia, 12557              ; 2 uses
  %i.bmr = zext i1 %i.bmq to i8
  %i.bms = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i.i2754 = icmp ult i16 %i.bms, 197
  br i1 %spec.select.i.i.i2754, label %bb.li, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2757

bb.li:                                            ; preds = %bb.lh
  %i.bmt = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.bmu = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bmt
  %i.bmv = getelementptr i8, ptr %i.bmu, i64 -2
  %i.bmw = load i16, ptr %i.bmv, align 2, !tbaa !380
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2757

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2757:    ; preds = %bb.lh, %bb.li
  %.sroa.0.0.i.i2755 = phi i16 [ %i.bmw, %bb.li ], [ %.sroa.0.0.copyload.i.i, %bb.lh ]
  %i.bmx = zext i16 %.sroa.0.0.i.i2755 to i64
  %i.bmy = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.bmx
  %i.bmz = getelementptr i8, ptr %i.bmy, i64 -16
  %.sroa.0.0.copyload.i.i2756 = load i64, ptr %i.bmz, align 16
  %i.bna = trunc i64 %.sroa.0.0.copyload.i.i2756 to i32
  %i.bnb = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bna, i1 false)
  %i.bnc = sub nsw i32 31, %i.bnb                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %163) #26
  %i.bnd = getelementptr inbounds nuw i8, ptr %163, i64 16 ; 2 uses
  store ptr %i.bnd, ptr %163, align 8, !tbaa !21
  %i.bne = getelementptr inbounds nuw i8, ptr %163, i64 8 ; 2 uses
  store i32 0, ptr %i.bne, align 8, !tbaa !393
  %i.bnf = getelementptr inbounds nuw i8, ptr %163, i64 12
  store i32 7, ptr %i.bnf, align 4, !tbaa !394
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bhq, i64 80
  %.sroa.0583.0.copyload = load ptr, ptr %i.bng, align 8, !tbaa !388
  %.sroa.2584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bhq, i64 88
  %.sroa.2584.0.copyload = load i32, ptr %.sroa.2584.0..sroa_idx, align 8, !tbaa !387
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %163, ptr %.sroa.0583.0.copyload, i32 %.sroa.2584.0.copyload)
  call void @_ZN4llvm17RISCVDAGToDAGISel26addVectorLoadStoreOperandsEPNS_6SDNodeEjRKNS_5SDLocEjbbRNS_15SmallVectorImplINS_7SDValueEEEbPNS_3MVTE(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i32 noundef %i.bnc, ptr noundef nonnull align 8 dereferenceable(12) %13, i32 noundef 3, i1 noundef zeroext %i.bmq, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %163, i1 noundef zeroext true, ptr noundef null)
  %i.bnh = call noundef zeroext i8 @_ZN4llvm19RISCVTargetLowering7getLMULENS_3MVTE(i16 %.sroa.0.0.copyload.i.i) #26
  %i.bni = trunc nsw i32 %i.bnc to i8
  %i.bnj = call noundef ptr @_ZN4llvm5RISCV12getVLEPseudoEhhhhh(i8 noundef zeroext %i.bmr, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext %i.bni, i8 noundef zeroext %i.bnh) #26
  %i.bnk = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bnl = load ptr, ptr %i.bnk, align 8, !tbaa !386
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bnj, i64 2
  %i.bnn = load i16, ptr %i.bnm, align 2, !tbaa !687
  %i.bno = zext i16 %i.bnn to i32
  %i.bnp = load ptr, ptr %i.z, align 8, !tbaa !402
  %i.bnq = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.bnr = load i16, ptr %i.bnq, align 2, !tbaa !478
  %i.bns = zext i16 %i.bnr to i32
  %i.bnt = load ptr, ptr %163, align 8, !tbaa !21
  store ptr %i.bnt, ptr %164, align 8, !tbaa !475
  %i.bnu = getelementptr inbounds nuw i8, ptr %164, i64 8
  %i.bnv = load i32, ptr %i.bne, align 8, !tbaa !393
  %i.bnw = zext i32 %i.bnv to i64
  store i64 %i.bnw, ptr %i.bnu, align 8, !tbaa !476
  %i.bnx = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bnl, i32 noundef %i.bno, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr %i.bnp, i32 %i.bns, ptr noundef nonnull byval(%"class.llvm::ArrayRef.277") align 8 %164) #26 ; 2 uses
  %i.bny = load ptr, ptr %i.bnk, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.bnz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i2760 = load i64, ptr %i.bnz, align 8
  %i.boa = and i64 %.0.copyload.i.i.i.i.i.i2760, -5
  %i.bob = inttoptr i64 %i.boa to ptr
  store ptr %i.bob, ptr %i.e, align 8, !tbaa !500
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bny, ptr noundef %i.bnx, ptr nonnull %i.e, i64 1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %i.bnx)
  %i.boc = load ptr, ptr %163, align 8, !tbaa !21 ; 2 uses
  %i.bod = icmp eq ptr %i.boc, %i.bnd
  br i1 %i.bod, label %_ZN4llvm11SmallVectorINS_7SDValueELj7EED2Ev.exit, label %bb.lj

bb.lj:                                            ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2757
  call void @free(ptr noundef %i.boc) #26
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj7EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj7EED2Ev.exit: ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2757, %bb.lj
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #26
  br label %.critedge2356

bb.lk:                                            ; preds = %bb.kl, %bb.kl, %bb.kl, %bb.kl
  %i.boe = icmp eq i32 %i.bia, 12174
  %i.bof = icmp eq i32 %i.bia, 12176
  %i.bog = or i1 %i.boe, %i.bof                   ; 2 uses
  %i.boh = zext i1 %i.bog to i8
  %i.boi = add nsw i32 %i.bia, -12175
  %i.boj = icmp ult i32 %i.boi, 2
  %i.bok = zext i1 %i.boj to i8
  %i.bol = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i.i2762 = icmp ult i16 %i.bol, 197
  br i1 %spec.select.i.i.i2762, label %bb.ll, label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2765

bb.ll:                                            ; preds = %bb.lk
  %i.bom = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.bon = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.bom
  %i.boo = getelementptr i8, ptr %i.bon, i64 -2
  %i.bop = load i16, ptr %i.boo, align 2, !tbaa !380
  br label %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2765

_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2765:    ; preds = %bb.lk, %bb.ll
  %.sroa.0.0.i.i2763 = phi i16 [ %i.bop, %bb.ll ], [ %.sroa.0.0.copyload.i.i, %bb.lk ]
  %i.boq = zext i16 %.sroa.0.0.i.i2763 to i64
  %i.bor = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.boq
  %i.bos = getelementptr i8, ptr %i.bor, i64 -16
  %.sroa.0.0.copyload.i.i2764 = load i64, ptr %i.bos, align 16
  %i.bot = trunc i64 %.sroa.0.0.copyload.i.i2764 to i32
  %i.bou = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bot, i1 false)
  %i.bov = sub nsw i32 31, %i.bou                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %165) #26
  %i.bow = getelementptr inbounds nuw i8, ptr %165, i64 16 ; 2 uses
  store ptr %i.bow, ptr %165, align 8, !tbaa !21
  %i.box = getelementptr inbounds nuw i8, ptr %165, i64 8 ; 2 uses
  store i32 0, ptr %i.box, align 8, !tbaa !393
  %i.boy = getelementptr inbounds nuw i8, ptr %165, i64 12
  store i32 8, ptr %i.boy, align 4, !tbaa !394
  %i.boz = getelementptr inbounds nuw i8, ptr %i.bhq, i64 80
  %.sroa.0564.0.copyload = load ptr, ptr %i.boz, align 8, !tbaa !388
  %.sroa.2565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bhq, i64 88
  %.sroa.2565.0.copyload = load i32, ptr %.sroa.2565.0..sroa_idx, align 8, !tbaa !387
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_(ptr noundef nonnull align 8 dereferenceable(16) %165, ptr %.sroa.0564.0.copyload, i32 %.sroa.2565.0.copyload)
  call void @_ZN4llvm17RISCVDAGToDAGISel26addVectorLoadStoreOperandsEPNS_6SDNodeEjRKNS_5SDLocEjbbRNS_15SmallVectorImplINS_7SDValueEEEbPNS_3MVTE(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef nonnull %1, i32 noundef %i.bov, ptr noundef nonnull align 8 dereferenceable(12) %13, i32 noundef 3, i1 noundef zeroext %i.bog, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %165, i1 noundef zeroext true, ptr noundef null)
  %i.bpa = call noundef zeroext i8 @_ZN4llvm19RISCVTargetLowering7getLMULENS_3MVTE(i16 %.sroa.0.0.copyload.i.i) #26
  %i.bpb = trunc nsw i32 %i.bov to i8
  %i.bpc = call noundef ptr @_ZN4llvm5RISCV15getNDSVLNPseudoEhhhh(i8 noundef zeroext %i.boh, i8 noundef zeroext %i.bok, i8 noundef zeroext %i.bpb, i8 noundef zeroext %i.bpa) #26
  %i.bpd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bpe = load ptr, ptr %i.bpd, align 8, !tbaa !386
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpc, i64 2
  %i.bpg = load i16, ptr %i.bpf, align 2, !tbaa !689
  %i.bph = zext i16 %i.bpg to i32
  %i.bpi = load ptr, ptr %i.z, align 8, !tbaa !402
  %i.bpj = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.bpk = load i16, ptr %i.bpj, align 2, !tbaa !478
  %i.bpl = zext i16 %i.bpk to i32
  %i.bpm = load ptr, ptr %165, align 8, !tbaa !21
  store ptr %i.bpm, ptr %166, align 8, !tbaa !475
  %i.bpn = getelementptr inbounds nuw i8, ptr %166, i64 8
  %i.bpo = load i32, ptr %i.box, align 8, !tbaa !393
  %i.bpp = zext i32 %i.bpo to i64
  store i64 %i.bpp, ptr %i.bpn, align 8, !tbaa !476
  %i.bpq = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_8SDVTListENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bpe, i32 noundef %i.bph, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr %i.bpi, i32 %i.bpl, ptr noundef nonnull byval(%"class.llvm::ArrayRef.277") align 8 %166) #26 ; 2 uses
  %i.bpr = call noundef zeroext i1 @_ZN4llvm9MemSDNode7classofEPKNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %1)
  br i1 %i.bpr, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2765
  %i.bps = load ptr, ptr %i.bpd, align 8, !tbaa !386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.bpt = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i2768 = load i64, ptr %i.bpt, align 8
  %i.bpu = and i64 %.0.copyload.i.i.i.i.i.i2768, -5
  %i.bpv = inttoptr i64 %i.bpu to ptr
  store ptr %i.bpv, ptr %i.f, align 8, !tbaa !500
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bps, ptr noundef %i.bpq, ptr nonnull %i.f, i64 1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br label %bb.ln

bb.ln:                                            ; preds = %bb.lm, %_ZNK4llvm3MVT19getScalarSizeInBitsEv.exit2765
  call void @_ZN4llvm16SelectionDAGISel11ReplaceNodeEPNS_6SDNodeES2_(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull %1, ptr noundef %i.bpq)
  %i.bpw = load ptr, ptr %165, align 8, !tbaa !21 ; 2 uses
  %i.bpx = icmp eq ptr %i.bpw, %i.bow
  br i1 %i.bpx, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit2770, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
end_hunk_1
