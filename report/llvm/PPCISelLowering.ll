Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCISelLowering?download=true
inline.NumInlined: 17285
inline.NumDeleted: 3532
loop-unroll.NumCompletelyUnrolled: 104
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZNK4llvm3EVT6bitsGTES0_:bb.a

declare { ptr, i32 } @_ZN4llvm12SelectionDAG18getAllOnesConstantERKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920), ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZNK4llvm17PPCTargetLowering12combineSetCCEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(518496) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %8 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %12 = alloca %"class.llvm::SDLoc", align 8      ; 10 uses
  %13 = alloca %"class.llvm::SDLoc", align 8      ; 7 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %15 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %i.a = getelementptr i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.a, align 8, !tbaa !592 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !593
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !739  ; 2 uses
  switch i32 %i.e, label %.thread [
    i32 17, label %bb.b
    i32 22, label %._crit_edge
  ]

._crit_edge:                                      ; preds = %bb.a
  %.sroa.0104.0.copyload.pre = load ptr, ptr %.val, align 8, !tbaa !598 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %.sroa.094.0.copyload.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !598
  %.phi.trans.insert139 = getelementptr inbounds nuw i8, ptr %.sroa.0104.0.copyload.pre, i64 24
  %.pre = load i32, ptr %.phi.trans.insert139, align 8, !tbaa !594
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread.i19.i

bb.b:                                             ; preds = %bb.a
  %.sroa.03.0.copyload.i = load ptr, ptr %.val, align 8, !tbaa !598 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %.sroa.02.0.copyload.i = load ptr, ptr %i.f, align 8, !tbaa !598 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !594  ; 7 uses
  %i.i = icmp eq i32 %i.h, 193
  br i1 %i.i, label %bb.c, label %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_1clERNS_7SDValueE.exit.i"

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !592  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 64
  %i.m = load i16, ptr %i.l, align 8, !tbaa !595  ; 2 uses
  %i.n = zext i16 %i.m to i64
  %.idx.i.i = mul nuw nsw i64 %i.n, 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i
  %.not5.i.i = icmp eq i16 %i.m, 0
  br i1 %.not5.i.i, label %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_1clERNS_7SDValueE.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.critedge.i.i
  %.0156.i.i = phi ptr [ %i.ad, %.critedge.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %.0156.i.i, align 8, !tbaa !593 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !594
  switch i32 %i.r, label %.critedge.i.i [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !605  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !608  ; 2 uses
  %i.x = icmp ult i32 %i.w, 65
  br i1 %i.x, label %.split.i.i, label %_ZNK4llvm14ConstantSDNode5isOneEv.exit.i.i

.split.i.i:                                       ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i.i
  %i.y = load i64, ptr %i.u, align 8, !tbaa !184
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_0clERNS_7SDValueE.exit.i", label %.critedge.i.i

_ZNK4llvm14ConstantSDNode5isOneEv.exit.i.i:       ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i.i
  %i.aa = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.u) #33
  %i.ab = add i32 %i.w, -1
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_0clERNS_7SDValueE.exit.i", label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZNK4llvm14ConstantSDNode5isOneEv.exit.i.i, %.split.i.i, %.lr.ph.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0156.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, %i.o
  br i1 %.not.i.i, label %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_1clERNS_7SDValueE.exit.i", label %.lr.ph.i.i

"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_0clERNS_7SDValueE.exit.i": ; preds = %_ZNK4llvm14ConstantSDNode5isOneEv.exit.i.i, %.split.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !594 ; 2 uses
  switch i32 %i.af, label %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_1clERNS_7SDValueE.exit.i" [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i: ; preds = %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_0clERNS_7SDValueE.exit.i", %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_0clERNS_7SDValueE.exit.i"
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !605
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = icmp slt i8 %i.aj, 0
  br i1 %i.ak, label %_ZL21canConvertSETCCToXoriPN4llvm6SDNodeE.exit, label %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_1clERNS_7SDValueE.exit.i"

"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_1clERNS_7SDValueE.exit.i": ; preds = %.critedge.i.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i, %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_0clERNS_7SDValueE.exit.i", %bb.c, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !594
  %i.an = icmp eq i32 %i.am, 193
  br i1 %i.an, label %bb.d, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread.i19.i

bb.d:                                             ; preds = %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_1clERNS_7SDValueE.exit.i"
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !592 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i, i64 64
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !595 ; 2 uses
  %i.as = zext i16 %i.ar to i64
  %.idx.i8.i = mul nuw nsw i64 %i.as, 40
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx.i8.i
  %.not5.i9.i = icmp eq i16 %i.ar, 0
  br i1 %.not5.i9.i, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread.i19.i, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %bb.d, %.critedge.i14.i
  %.0156.i11.i = phi ptr [ %i.bi, %.critedge.i14.i ], [ %i.ap, %bb.d ] ; 2 uses
  %i.au = load ptr, ptr %.0156.i11.i, align 8, !tbaa !593 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !594
  switch i32 %i.aw, label %.critedge.i14.i [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i12.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i12.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i12.i: ; preds = %.lr.ph.i10.i, %.lr.ph.i10.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !605 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !608 ; 2 uses
  %i.bc = icmp ult i32 %i.bb, 65
  br i1 %i.bc, label %.split.i16.i, label %_ZNK4llvm14ConstantSDNode5isOneEv.exit.i13.i

.split.i16.i:                                     ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i12.i
  %i.bd = load i64, ptr %i.az, align 8, !tbaa !184
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_0clERNS_7SDValueE.exit17.i", label %.critedge.i14.i

_ZNK4llvm14ConstantSDNode5isOneEv.exit.i13.i:     ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit.i12.i
  %i.bf = tail call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %i.az) #33
  %i.bg = add i32 %i.bb, -1
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_0clERNS_7SDValueE.exit17.i", label %.critedge.i14.i

.critedge.i14.i:                                  ; preds = %_ZNK4llvm14ConstantSDNode5isOneEv.exit.i13.i, %.split.i16.i, %.lr.ph.i10.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.0156.i11.i, i64 40 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.bi, %i.at
  br i1 %.not.i15.i, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread.i19.i, label %.lr.ph.i10.i

"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_0clERNS_7SDValueE.exit17.i": ; preds = %_ZNK4llvm14ConstantSDNode5isOneEv.exit.i13.i, %.split.i16.i
  switch i32 %i.h, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread.i19.i [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i18.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i18.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i18.i: ; preds = %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_0clERNS_7SDValueE.exit17.i", %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_0clERNS_7SDValueE.exit17.i"
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 88
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !605
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = icmp slt i8 %i.bm, 0
  br i1 %i.bn, label %_ZL21canConvertSETCCToXoriPN4llvm6SDNodeE.exit, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread.i19.i.thread

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread.i19.i.thread: ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i18.i
  %.sroa.11.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.sroa.11.0.copyload148 = load i32, ptr %.sroa.11.0..sroa_idx147, align 8, !tbaa !318
  %.sroa.15.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %.sroa.15.0.copyload150 = load i32, ptr %.sroa.15.0..sroa_idx149, align 4
  %.sroa.10.0..sroa_idx151 = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %.sroa.10.0.copyload152 = load i32, ptr %.sroa.10.0..sroa_idx151, align 8, !tbaa !318
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

_ZL21canConvertSETCCToXoriPN4llvm6SDNodeE.exit:   ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i18.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i
  %i.bo = phi i32 [ 193, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i18.i ], [ %i.af, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !2289, !nonnull !24, !align !70 ; 6 uses
  %.sroa.634.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.sroa.634.0.copyload.i = load i32, ptr %.sroa.634.0..sroa_idx.i, align 8, !tbaa !318 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !318 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !601
  store i64 %i.bs, ptr %12, align 8, !tbaa !601
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !602
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !603
  %i.bw = icmp ne i32 %i.h, 193                   ; 2 uses
  %.not.i71 = icmp eq i32 %i.bo, 193
  %brmerge.i.a = or i1 %i.bw, %.not.i71
  br i1 %brmerge.i.a, label %._crit_edge.i, label %bb.e

bb.e:                                             ; preds = %_ZL21canConvertSETCCToXoriPN4llvm6SDNodeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i, i64 48
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !584
  %i.bz = zext i32 %.sroa.634.0.copyload.i to i64
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.bz ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.ca, align 8, !tbaa !195 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.21.0.copyload.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !tbaa !394 ; 2 uses
  %i.cb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bq, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 %.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.21.0.copyload.i.i.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #31 ; 2 uses
  %.fca.0.extract9.i.i = extractvalue { ptr, i32 } %i.cb, 0
  %.fca.1.extract10.i.i = extractvalue { ptr, i32 } %i.cb, 1
  store ptr %.sroa.03.0.copyload.i, ptr %9, align 8, !tbaa !598
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.634.0.copyload.i, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !318
  store ptr %.fca.0.extract9.i.i, ptr %10, align 8, !tbaa !598
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract10.i.i, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !tbaa !318
  %i.cc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.bq, i32 noundef 195, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 %.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.21.0.copyload.i.i.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #31 ; 2 uses
  %.fca.0.extract1.i.i = extractvalue { ptr, i32 } %i.cc, 0
  %.fca.1.extract2.i.i = extractvalue { ptr, i32 } %i.cc, 1
  store ptr %.fca.0.extract1.i.i, ptr %11, align 8, !tbaa !598
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract2.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !318
  %i.cd = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.bq, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 2, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %_ZL18ConvertSETCCToXoriPN4llvm6SDNodeERNS_12SelectionDAGE.exit

._crit_edge.i:                                    ; preds = %_ZL21canConvertSETCCToXoriPN4llvm6SDNodeE.exit
  tail call void @llvm.assume(i1 %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !584
  %i.cg = zext i32 %.sroa.6.0.copyload.i to i64
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cg ; 2 uses
  %.sroa.0.0.copyload.i.i.i20.i = load i16, ptr %i.ch, align 8, !tbaa !195 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i.i21.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.21.0.copyload.i.i.i22.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i21.i, align 8, !tbaa !394 ; 2 uses
  %i.ci = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bq, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 %.sroa.0.0.copyload.i.i.i20.i, ptr %.sroa.21.0.copyload.i.i.i22.i, i1 noundef zeroext false, i1 noundef zeroext false) #31 ; 2 uses
  %.fca.0.extract9.i23.i = extractvalue { ptr, i32 } %i.ci, 0
  %.fca.1.extract10.i24.i = extractvalue { ptr, i32 } %i.ci, 1
  store ptr %.sroa.02.0.copyload.i, ptr %6, align 8, !tbaa !598
  %.sroa.3.0..sroa_idx.i25.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.6.0.copyload.i, ptr %.sroa.3.0..sroa_idx.i25.i, align 8, !tbaa !318
  store ptr %.fca.0.extract9.i23.i, ptr %7, align 8, !tbaa !598
  %.sroa.417.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.fca.1.extract10.i24.i, ptr %.sroa.417.0..sroa_idx.i26.i, align 8, !tbaa !318
  %i.cj = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.bq, i32 noundef 195, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 %.sroa.0.0.copyload.i.i.i20.i, ptr %.sroa.21.0.copyload.i.i.i22.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #31 ; 2 uses
  %.fca.0.extract1.i27.i = extractvalue { ptr, i32 } %i.cj, 0
  %.fca.1.extract2.i28.i = extractvalue { ptr, i32 } %i.cj, 1
  store ptr %.fca.0.extract1.i27.i, ptr %8, align 8, !tbaa !598
  %.sroa.4.0..sroa_idx.i29.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.fca.1.extract2.i28.i, ptr %.sroa.4.0..sroa_idx.i29.i, align 8, !tbaa !318
  %i.ck = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.bq, i32 noundef 230, ptr noundef nonnull align 8 dereferenceable(12) %12, i16 2, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %_ZL18ConvertSETCCToXoriPN4llvm6SDNodeERNS_12SelectionDAGE.exit

_ZL18ConvertSETCCToXoriPN4llvm6SDNodeERNS_12SelectionDAGE.exit: ; preds = %bb.e, %._crit_edge.i
  %.pn.i = phi { ptr, i32 } [ %i.cd, %bb.e ], [ %i.ck, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.ab

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread.i19.i: ; preds = %.critedge.i14.i, %bb.d, %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_1clERNS_7SDValueE.exit.i", %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_0clERNS_7SDValueE.exit17.i", %._crit_edge
  %i.cl = phi i32 [ %.pre, %._crit_edge ], [ %i.h, %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_1clERNS_7SDValueE.exit.i" ], [ %i.h, %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_0clERNS_7SDValueE.exit17.i" ], [ %i.h, %bb.d ], [ %i.h, %.critedge.i14.i ]
  %.sroa.094.0.copyload = phi ptr [ %.sroa.094.0.copyload.pre, %._crit_edge ], [ %.sroa.02.0.copyload.i, %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_1clERNS_7SDValueE.exit.i" ], [ %.sroa.02.0.copyload.i, %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_0clERNS_7SDValueE.exit17.i" ], [ %.sroa.02.0.copyload.i, %bb.d ], [ %.sroa.02.0.copyload.i, %.critedge.i14.i ] ; 6 uses
  %.sroa.0104.0.copyload = phi ptr [ %.sroa.0104.0.copyload.pre, %._crit_edge ], [ %.sroa.03.0.copyload.i, %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_1clERNS_7SDValueE.exit.i" ], [ %.sroa.03.0.copyload.i, %"_ZZL21canConvertSETCCToXoriPN4llvm6SDNodeEENK3$_0clERNS_7SDValueE.exit17.i" ], [ %.sroa.03.0.copyload.i, %bb.d ], [ %.sroa.03.0.copyload.i, %.critedge.i14.i ] ; 8 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !318 ; 7 uses
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %.sroa.15.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx, align 4 ; 6 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %.sroa.10.0.copyload = load i32, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !318 ; 6 uses
  %i.cm = icmp eq i32 %i.cl, 60
  br i1 %i.cm, label %bb.f, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.f:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread.i19.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0104.0.copyload, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !592 ; 2 uses
  %.sroa.040.0.copyload = load ptr, ptr %i.co, align 8, !tbaa !598
  %.sroa.241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.241.0.copyload = load i32, ptr %.sroa.241.0..sroa_idx, align 8, !tbaa !318
  %i.cp = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.040.0.copyload, i32 %.sroa.241.0.copyload) #31
  br i1 %i.cp, label %bb.g, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0104.0.copyload, i64 56
  %.sroa.018.022.i.i = load ptr, ptr %i.cq, align 8, !tbaa !615 ; 2 uses
  %.not23.i.i = icmp eq ptr %.sroa.018.022.i.i, null
  br i1 %.not23.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread, label %.lr.ph.i.i72

bb.h:                                             ; preds = %.lr.ph.i.i72
  %.214.i.i = select i1 %i.cu, i32 %.01224.i.i, i32 0 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 32
  %.sroa.018.0.i.i = load ptr, ptr %i.cr, align 8, !tbaa !615 ; 2 uses
  %.not.i.i73 = icmp eq ptr %.sroa.018.0.i.i, null
  br i1 %.not.i.i73, label %_ZNK4llvm7SDValue9hasOneUseEv.exit, label %.lr.ph.i.i72

.lr.ph.i.i72:                                     ; preds = %bb.g, %bb.h
  %.sroa.018.025.i.i = phi ptr [ %.sroa.018.0.i.i, %bb.h ], [ %.sroa.018.022.i.i, %bb.g ] ; 2 uses
  %.01224.i.i = phi i32 [ %.214.i.i, %bb.h ], [ 1, %bb.g ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i, i64 8
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !596
  %i.cu = icmp ne i32 %i.ct, %.sroa.11.0.copyload ; 2 uses
  %i.cv = icmp ne i32 %.01224.i.i, 0
  %cond.i.i = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %cond.i.i, label %bb.h, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit:               ; preds = %bb.h
  %i.cw = icmp eq i32 %.214.i.i, 0
  br i1 %i.cw, label %bb.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

bb.i:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit
  br label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit.thread:        ; preds = %.lr.ph.i.i72, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread.i19.i.thread, %bb.g, %bb.i, %_ZNK4llvm7SDValue9hasOneUseEv.exit, %bb.f, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread.i19.i
  %.sroa.15.0.copyload153 = phi i32 [ %.sroa.15.0.copyload, %bb.i ], [ %.sroa.15.0.copyload, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ %.sroa.15.0.copyload, %bb.f ], [ %.sroa.15.0.copyload, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread.i19.i ], [ %.sroa.15.0.copyload, %bb.g ], [ %.sroa.15.0.copyload150, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread.i19.i.thread ], [ %.sroa.15.0.copyload, %.lr.ph.i.i72 ]
  %.sroa.10.0 = phi i32 [ %.sroa.11.0.copyload, %bb.i ], [ %.sroa.10.0.copyload, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ %.sroa.10.0.copyload, %bb.f ], [ %.sroa.10.0.copyload, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread.i19.i ], [ %.sroa.10.0.copyload, %bb.g ], [ %.sroa.10.0.copyload152, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread.i19.i.thread ], [ %.sroa.10.0.copyload, %.lr.ph.i.i72 ] ; 3 uses
  %.sroa.094.0 = phi ptr [ %.sroa.0104.0.copyload, %bb.i ], [ %.sroa.094.0.copyload, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ %.sroa.094.0.copyload, %bb.f ], [ %.sroa.094.0.copyload, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread.i19.i ], [ %.sroa.094.0.copyload, %bb.g ], [ %.sroa.02.0.copyload.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread.i19.i.thread ], [ %.sroa.094.0.copyload, %.lr.ph.i.i72 ] ; 7 uses
  %.sroa.0104.0 = phi ptr [ %.sroa.094.0.copyload, %bb.i ], [ %.sroa.0104.0.copyload, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ %.sroa.0104.0.copyload, %bb.f ], [ %.sroa.0104.0.copyload, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread.i19.i ], [ %.sroa.0104.0.copyload, %bb.g ], [ %.sroa.03.0.copyload.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread.i19.i.thread ], [ %.sroa.0104.0.copyload, %.lr.ph.i.i72 ] ; 7 uses
  %.sroa.11.0 = phi i32 [ %.sroa.10.0.copyload, %bb.i ], [ %.sroa.11.0.copyload, %_ZNK4llvm7SDValue9hasOneUseEv.exit ], [ %.sroa.11.0.copyload, %bb.f ], [ %.sroa.11.0.copyload, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread.i19.i ], [ %.sroa.11.0.copyload, %bb.g ], [ %.sroa.11.0.copyload148, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.thread.i19.i.thread ], [ %.sroa.11.0.copyload, %.lr.ph.i.i72 ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.094.0, i64 24 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !594
  %i.cz = icmp eq i32 %i.cy, 60
  br i1 %i.cz, label %bb.j, label %_ZNK4llvm7SDValue9hasOneUseEv.exit85.thread

bb.j:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.094.0, i64 40 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !592 ; 2 uses
  %.sroa.037.0.copyload = load ptr, ptr %i.db, align 8, !tbaa !598
  %.sroa.238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.sroa.238.0.copyload = load i32, ptr %.sroa.238.0..sroa_idx, align 8, !tbaa !318
  %i.dc = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.037.0.copyload, i32 %.sroa.238.0.copyload) #31
  br i1 %i.dc, label %bb.k, label %_ZNK4llvm7SDValue9hasOneUseEv.exit85.thread

bb.k:                                             ; preds = %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.094.0, i64 56
  %.sroa.018.022.i.i74 = load ptr, ptr %i.dd, align 8, !tbaa !615 ; 2 uses
  %.not23.i.i75 = icmp eq ptr %.sroa.018.022.i.i74, null
  br i1 %.not23.i.i75, label %_ZNK4llvm7SDValue9hasOneUseEv.exit85.thread, label %.lr.ph.i.i76

bb.l:                                             ; preds = %.lr.ph.i.i76
  %.214.i.i79 = select i1 %i.dh, i32 %.01224.i.i78, i32 0 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i77, i64 32
  %.sroa.018.0.i.i83 = load ptr, ptr %i.de, align 8, !tbaa !615 ; 2 uses
  %.not.i.i84 = icmp eq ptr %.sroa.018.0.i.i83, null
  br i1 %.not.i.i84, label %_ZNK4llvm7SDValue9hasOneUseEv.exit85, label %.lr.ph.i.i76

.lr.ph.i.i76:                                     ; preds = %bb.k, %bb.l
  %.sroa.018.025.i.i77 = phi ptr [ %.sroa.018.0.i.i83, %bb.l ], [ %.sroa.018.022.i.i74, %bb.k ] ; 2 uses
  %.01224.i.i78 = phi i32 [ %.214.i.i79, %bb.l ], [ 1, %bb.k ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i77, i64 8
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !596
  %i.dh = icmp ne i32 %i.dg, %.sroa.10.0          ; 2 uses
  %i.di = icmp ne i32 %.01224.i.i78, 0
  %cond.i.i80 = select i1 %i.dh, i1 true, i1 %i.di
  br i1 %cond.i.i80, label %bb.l, label %_ZNK4llvm7SDValue9hasOneUseEv.exit85.thread

_ZNK4llvm7SDValue9hasOneUseEv.exit85:             ; preds = %bb.l
  %i.dj = icmp eq i32 %.214.i.i79, 0
  br i1 %i.dj, label %_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit, label %_ZNK4llvm7SDValue9hasOneUseEv.exit85.thread

_ZN4llvm12SelectionDAG8getSetCCERKNS_5SDLocENS_3EVTENS_7SDValueES5_NS_3ISD8CondCodeES5_bNS_11SDNodeFlagsE.exit: ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit85
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !601
  store i64 %i.dl, ptr %13, align 8, !tbaa !601
  %i.dm = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !602
  store i32 %i.do, ptr %i.dm, align 8, !tbaa !603
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !2289, !nonnull !24, !align !70 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !584 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.ds, align 8, !tbaa !195
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !394
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0104.0, i64 48
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !584
  %i.dv = zext i32 %.sroa.11.0 to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.dv ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.dw, align 8, !tbaa !195 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !394 ; 2 uses
  store ptr %.sroa.0104.0, ptr %14, align 8, !tbaa !598
  %.sroa.11.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx110, align 8, !tbaa !318
  %.sroa.15.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 %.sroa.15.0.copyload153, ptr %.sroa.15.0..sroa_idx115, align 4
  %i.dx = load ptr, ptr %i.da, align 8, !tbaa !592
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 40
  %i.dz = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.dq, i32 noundef 59, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %14, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.dy) #31 ; 2 uses
  %.fca.0.extract22 = extractvalue { ptr, i32 } %i.dz, 0
  %.fca.1.extract23 = extractvalue { ptr, i32 } %i.dz, 1
  %i.ea = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.dq, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i, i1 noundef zeroext false, i1 noundef zeroext false) #31 ; 2 uses
  %.fca.0.extract10 = extractvalue { ptr, i32 } %i.ea, 0
  %.fca.1.extract11 = extractvalue { ptr, i32 } %i.ea, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.fca.0.extract10, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.fca.1.extract11, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %.fca.0.extract22, ptr %3, align 8, !tbaa !598
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract23, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !318
  %i.eb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getCondCodeENS_3ISD8CondCodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.dq, i32 noundef %i.e) #31 ; 2 uses
  %.fca.0.extract2.i = extractvalue { ptr, i32 } %i.eb, 0
  %.fca.1.extract3.i = extractvalue { ptr, i32 } %i.eb, 1
  store ptr %.fca.0.extract2.i, ptr %4, align 8
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract3.i, ptr %.sroa.25.0..sroa_idx.i, align 8
  %i.ec = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_NS_11SDNodeFlagsE(ptr noundef nonnull align 8 dereferenceable(920) %i.dq, i32 noundef 222, ptr noundef nonnull align 8 dereferenceable(12) %13, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %5, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4, i32 0) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31
  br label %bb.ab

_ZNK4llvm7SDValue9hasOneUseEv.exit85.thread:      ; preds = %.lr.ph.i.i76, %bb.k, %_ZNK4llvm7SDValue9hasOneUseEv.exit85, %bb.j, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 518440
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !39, !nonnull !24, !align !70 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 472
  %i.eg = load i8, ptr %i.ef, align 8, !tbaa !322, !range !23, !noundef !24
  %i.eh = trunc nuw i8 %i.eg to i1
end_hunk_0
