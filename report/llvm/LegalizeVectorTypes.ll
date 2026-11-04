Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LegalizeVectorTypes?download=true
inline.NumInlined: 7664
inline.NumDeleted: 1461
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN4llvm16DAGTypeLegalizer31SplitVecRes_VECTOR_DEINTERLEAVEEPNS_6SDNodeE:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.an, align 8, !tbaa !38
  %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 56
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.3, align 8, !tbaa !40
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 64
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.ao, align 8, !tbaa !38
  %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 72
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.4, align 8, !tbaa !40
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 80
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.ap, align 8, !tbaa !38
  %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 88
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.5, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 96
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.aq, align 8, !tbaa !38
  %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 104
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.6, align 8, !tbaa !40
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 112
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.ar, align 8, !tbaa !38
  %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 120
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.7, align 8, !tbaa !40
  %i.as = add nsw i64 %.068.i.i.i.i.i.i, -8       ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3

_ZSt6fill_nIPN4llvm3EVTEmS1_ET_S3_T0_RKT1_.exit.i.i: ; preds = %._crit_edge
  br i1 %i.i, label %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt6fill_nIPN4llvm3EVTEmS1_ET_S3_T0_RKT1_.exit.i.i
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.ae, align 8, !tbaa !38
  %.sroa.415.0..09.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.415.0..09.i.i.i.sroa_idx.i.i, align 8, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i16 %i.b, 1
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.au, align 8, !tbaa !38
  %.sroa.415.0..09.i.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.415.0..09.i.i.i.sroa_idx.i.i.1, align 8, !tbaa !40
  %.not.i.i.i.i.i.1 = icmp eq i16 %i.b, 2
  br i1 %.not.i.i.i.i.i.1, label %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.av, align 8, !tbaa !38
  %.sroa.415.0..09.i.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.415.0..09.i.i.i.sroa_idx.i.i.2, align 8, !tbaa !40
  %.not.i.i.i.i.i.2 = icmp eq i16 %i.b, 3
  br i1 %.not.i.i.i.i.i.2, label %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph.i.i.i.i.i.2
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.aw, align 8, !tbaa !38
  %.sroa.415.0..09.i.i.i.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.415.0..09.i.i.i.sroa_idx.i.i.3, align 8, !tbaa !40
  %.not.i.i.i.i.i.3 = icmp eq i16 %i.b, 4
  br i1 %.not.i.i.i.i.i.3, label %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.4:                               ; preds = %.lr.ph.i.i.i.i.i.3
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.ax, align 8, !tbaa !38
  %.sroa.415.0..09.i.i.i.sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %5, i64 88
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.415.0..09.i.i.i.sroa_idx.i.i.4, align 8, !tbaa !40
  %.not.i.i.i.i.i.4 = icmp eq i16 %i.b, 5
  br i1 %.not.i.i.i.i.i.4, label %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.5

.lr.ph.i.i.i.i.i.5:                               ; preds = %.lr.ph.i.i.i.i.i.4
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.ay, align 8, !tbaa !38
  %.sroa.415.0..09.i.i.i.sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.415.0..09.i.i.i.sroa_idx.i.i.5, align 8, !tbaa !40
  %.not.i.i.i.i.i.5 = icmp eq i16 %i.b, 6
  br i1 %.not.i.i.i.i.i.5, label %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.6

.lr.ph.i.i.i.i.i.6:                               ; preds = %.lr.ph.i.i.i.i.i.5
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.az, align 8, !tbaa !38
  %.sroa.415.0..09.i.i.i.sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %5, i64 120
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.415.0..09.i.i.i.sroa_idx.i.i.6, align 8, !tbaa !40
  %.not.i.i.i.i.i.6 = icmp eq i16 %i.b, 7
  br i1 %.not.i.i.i.i.i.6, label %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.7

.lr.ph.i.i.i.i.i.7:                               ; preds = %.lr.ph.i.i.i.i.i.6
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 128
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.ba, align 8, !tbaa !38
  %.sroa.415.0..09.i.i.i.sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %5, i64 136
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.415.0..09.i.i.i.sroa_idx.i.i.7, align 8, !tbaa !40
  br label %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit

_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !203
  br label %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit

_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.5, %.lr.ph.i.i.i.i.i.6, %.lr.ph.i.i.i.i.i.7, %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit.loopexit, %_ZSt6fill_nIPN4llvm3EVTEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.bb = phi ptr [ %i.w, %_ZSt6fill_nIPN4llvm3EVTEmS1_ET_S3_T0_RKT1_.exit.i.i ], [ %.pre, %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit.loopexit ], [ %i.w, %.lr.ph.i.i.i.i.i.7 ], [ %i.w, %.lr.ph.i.i.i.i.i.6 ], [ %i.w, %.lr.ph.i.i.i.i.i.5 ], [ %i.w, %.lr.ph.i.i.i.i.i.4 ], [ %i.w, %.lr.ph.i.i.i.i.i.3 ], [ %i.w, %.lr.ph.i.i.i.i.i.2 ], [ %i.w, %.lr.ph.i.i.i.i.i.1 ], [ %i.w, %.lr.ph.i.i.i.i.i ]
  %i.bc = phi ptr [ %i.ae, %_ZSt6fill_nIPN4llvm3EVTEmS1_ET_S3_T0_RKT1_.exit.i.i ], [ %i.ai, %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit.loopexit ], [ %i.ae, %.lr.ph.i.i.i.i.i.7 ], [ %i.ae, %.lr.ph.i.i.i.i.i.6 ], [ %i.ae, %.lr.ph.i.i.i.i.i.5 ], [ %i.ae, %.lr.ph.i.i.i.i.i.4 ], [ %i.ae, %.lr.ph.i.i.i.i.i.3 ], [ %i.ae, %.lr.ph.i.i.i.i.i.2 ], [ %i.ae, %.lr.ph.i.i.i.i.i.1 ], [ %i.ae, %.lr.ph.i.i.i.i.i ]
  store i32 %i.c, ptr %i.af, align 8, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !63
  store i64 %i.be, ptr %6, align 8, !tbaa !63
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !64
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !66
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !60, !nonnull !61, !align !62
  store ptr %i.bb, ptr %7, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.v, ptr %i.bk, align 8
  %i.bl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8ArrayRefINS_3EVTEEENS4_INS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bj, i32 noundef 168, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr %i.bc, i64 %i.v, ptr noundef nonnull byval(%"class.llvm::ArrayRef.50") align 8 %7) #14
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !60, !nonnull !61, !align !62
  %i.bn = load ptr, ptr %5, align 8, !tbaa !203
  %i.bo = load i32, ptr %i.af, align 8, !tbaa !204
  %i.bp = zext i32 %i.bo to i64
  %i.bq = load ptr, ptr %2, align 8, !tbaa !203
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.v
  store ptr %i.br, ptr %8, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.v, ptr %i.bs, align 8
  %i.bt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8ArrayRefINS_3EVTEEENS4_INS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bm, i32 noundef 168, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr %i.bn, i64 %i.bp, ptr noundef nonnull byval(%"class.llvm::ArrayRef.50") align 8 %8) #14
  br i1 %i.i, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.bl, 0
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bt, 0
  store ptr %.fca.0.extract, ptr %9, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr null, ptr %3, align 8, !tbaa !167
  store i32 0, ptr %i.r, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr null, ptr %4, align 8, !tbaa !167
  store i32 0, ptr %i.s, align 8, !tbaa !168
  %i.bu = load ptr, ptr %i.t, align 8, !tbaa !42
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %i.bu, i64 %indvars.iv ; 2 uses
  %.sroa.019.0.copyload = load ptr, ptr %i.bv, align 8, !tbaa !44
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.220.0.copyload = load i32, ptr %.sroa.220.0..sroa_idx, align 8, !tbaa !45
  call void @_ZN4llvm16DAGTypeLegalizer14GetSplitVectorENS_7SDValueERS1_S2_(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr %.sroa.019.0.copyload, i32 %.sroa.220.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4) #14
  %i.bw = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.bx = load ptr, ptr %2, align 8, !tbaa !203
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.by, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !166
  %i.bz = load ptr, ptr %2, align 8, !tbaa !203
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.bw
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cb, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !434

._crit_edge67:                                    ; preds = %bb.f, %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.cc = load ptr, ptr %5, align 8, !tbaa !203   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ae
  br i1 %i.cd, label %_ZN4llvm11SmallVectorINS_3EVTELj8EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge67
  call void @free(ptr noundef %i.cc) #14
  br label %_ZN4llvm11SmallVectorINS_3EVTELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_3EVTELj8EED2Ev.exit:     ; preds = %._crit_edge67, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.ce = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.f
  br i1 %i.cf, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorINS_3EVTELj8EED2Ev.exit
  call void @free(ptr noundef %i.ce) #14
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_3EVTELj8EED2Ev.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void

bb.f:                                             ; preds = %.lr.ph66, %bb.f
  %.03765 = phi i32 [ 0, %.lr.ph66 ], [ %i.cg, %bb.f ] ; 4 uses
  store i32 %.03765, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_ZN4llvm16DAGTypeLegalizer14SetSplitVectorENS_7SDValueES1_S1_(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr nonnull %1, i32 %.03765, ptr %.fca.0.extract1, i32 %.03765, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #14
  %i.cg = add nuw nsw i32 %.03765, 1              ; 2 uses
  %.not39 = icmp eq i32 %i.cg, %i.c
  br i1 %.not39, label %._crit_edge67, label %bb.f, !llvm.loop !435
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm16DAGTypeLegalizer29SplitVecRes_VECTOR_INTERLEAVEEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.99", align 8 ; 14 uses
  %3 = alloca %"class.llvm::SDValue", align 8     ; 6 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 6 uses
  %5 = alloca %"class.llvm::SmallVector.215", align 8 ; 25 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %7 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 6 uses
  %8 = alloca %"class.llvm::ArrayRef.50", align 8 ; 3 uses
  %9 = alloca %"class.llvm::ArrayRef.50", align 8 ; 3 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i16, ptr %i.a, align 8, !tbaa !200  ; 13 uses
  %i.c = zext i16 %i.b to i32                     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.d = shl nuw nsw i32 %i.c, 1                  ; 3 uses
  %i.e = zext nneg i32 %i.d to i64                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !203
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !204
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 8, ptr %i.h, align 4, !tbaa !205
  %i.i = icmp eq i16 %i.b, 0                      ; 3 uses
  br i1 %i.i, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i16 %i.b, 4
  br i1 %i.j, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull %i.f, i64 noundef %i.e, i64 noundef 16) #14
  %.pre.i.i.i = load i32, ptr %i.g, align 8, !tbaa !204 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.d, %.pre.i.i.i
  br i1 %.not11.i.i.i, label %.lr.ph, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !203
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i, %bb.b
  %i.k = phi ptr [ %.pre.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ %i.f, %bb.b ] ; 2 uses
  %.pre-phi.i.i3.i = phi i64 [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i..lr.ph.preheader.i.i_crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.e
  %i.m = getelementptr [16 x i8], ptr %i.k, i64 %.pre-phi.i.i3.i ; 2 uses
  %i.n = sub nsw i64 %i.e, %.pre-phi.i.i3.i
  %i.o = shl nsw i64 %i.n, 4
  call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.o, i1 false)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.012.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.m, %.lr.ph.preheader.i.i.i ] ; 3 uses
  store ptr null, ptr %.012.i.i.i, align 8, !tbaa !167
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i32 0, ptr %i.p, align 8, !tbaa !168
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, %i.l
  br i1 %.not.i.i.i, label %.lr.ph, label %.lr.ph.i.i.i, !llvm.loop !0

.lr.ph:                                           ; preds = %.lr.ph.i.i.i, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.i
  store i32 %i.d, ptr %i.g, align 8, !tbaa !204
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = zext i16 %i.b to i64                     ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.v = zext i16 %i.b to i64                     ; 8 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !203    ; 11 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !167
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !168
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.ac = zext i32 %i.z to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.ad, align 8, !tbaa !38 ; 17 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !40 ; 17 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 13 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !203
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 8, ptr %i.ag, align 4, !tbaa !205
  %i.ah = icmp ugt i16 %i.b, 8
  br i1 %i.ah, label %.lr.ph.i.i.i.preheader.i.i.i, label %_ZSt6fill_nIPN4llvm3EVTEmS1_ET_S3_T0_RKT1_.exit.i.i

.lr.ph.i.i.i.preheader.i.i.i:                     ; preds = %._crit_edge
  store i32 0, ptr %i.af, align 8, !tbaa !204
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull %i.ae, i64 noundef %i.v, i64 noundef 16) #14
  %i.ai = load ptr, ptr %5, align 8, !tbaa !203   ; 3 uses
  %xtraiter = and i64 %i.v, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.preheader.i.i.i.new, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ai, %.lr.ph.i.i.i.preheader.i.i.i ] ; 3 uses
  %.068.i.i.i.i.i.i.prol = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.v, %.lr.ph.i.i.i.preheader.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader.i.i.i ]
  store i16 %.sroa.0.0.copyload.i.i, ptr %.09.i.i.i.i.i.i.prol, align 8, !tbaa !38
  %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.prol, align 8, !tbaa !40
  %i.aj = add nsw i64 %.068.i.i.i.i.i.i.prol, -1  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.preheader.i.i.i.new, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !436

.lr.ph.i.i.i.preheader.i.i.i.new:                 ; preds = %.lr.ph.i.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.ai, %.lr.ph.i.i.i.preheader.i.i.i ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.i.preheader.i.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.prol ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.i.i.new
  %.09.i.i.i.i.i.i = phi ptr [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.preheader.i.i.i.new ], [ %i.at, %.lr.ph.i.i.i.i.i.i ] ; 17 uses
  %.068.i.i.i.i.i.i = phi i64 [ %.068.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.preheader.i.i.i.new ], [ %i.as, %.lr.ph.i.i.i.i.i.i ]
  store i16 %.sroa.0.0.copyload.i.i, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !38
  %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i, align 8, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.al, align 8, !tbaa !38
  %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.1, align 8, !tbaa !40
  %i.am = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.am, align 8, !tbaa !38
  %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 40
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.2, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.an, align 8, !tbaa !38
  %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 56
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.3, align 8, !tbaa !40
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 64
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.ao, align 8, !tbaa !38
  %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 72
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.4, align 8, !tbaa !40
  %i.ap = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 80
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.ap, align 8, !tbaa !38
  %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 88
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.5, align 8, !tbaa !40
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 96
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.aq, align 8, !tbaa !38
  %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 104
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.6, align 8, !tbaa !40
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 112
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.ar, align 8, !tbaa !38
  %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 120
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.23.0..09.i.i.i.sroa_idx.i.i.i.7, align 8, !tbaa !40
  %i.as = add nsw i64 %.068.i.i.i.i.i.i, -8       ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3

_ZSt6fill_nIPN4llvm3EVTEmS1_ET_S3_T0_RKT1_.exit.i.i: ; preds = %._crit_edge
  br i1 %i.i, label %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt6fill_nIPN4llvm3EVTEmS1_ET_S3_T0_RKT1_.exit.i.i
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.ae, align 8, !tbaa !38
  %.sroa.415.0..09.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.415.0..09.i.i.i.sroa_idx.i.i, align 8, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i16 %i.b, 1
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.au, align 8, !tbaa !38
  %.sroa.415.0..09.i.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.415.0..09.i.i.i.sroa_idx.i.i.1, align 8, !tbaa !40
  %.not.i.i.i.i.i.1 = icmp eq i16 %i.b, 2
  br i1 %.not.i.i.i.i.i.1, label %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.av, align 8, !tbaa !38
  %.sroa.415.0..09.i.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.415.0..09.i.i.i.sroa_idx.i.i.2, align 8, !tbaa !40
  %.not.i.i.i.i.i.2 = icmp eq i16 %i.b, 3
  br i1 %.not.i.i.i.i.i.2, label %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.3

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph.i.i.i.i.i.2
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.aw, align 8, !tbaa !38
  %.sroa.415.0..09.i.i.i.sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.415.0..09.i.i.i.sroa_idx.i.i.3, align 8, !tbaa !40
  %.not.i.i.i.i.i.3 = icmp eq i16 %i.b, 4
  br i1 %.not.i.i.i.i.i.3, label %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.4

.lr.ph.i.i.i.i.i.4:                               ; preds = %.lr.ph.i.i.i.i.i.3
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.ax, align 8, !tbaa !38
  %.sroa.415.0..09.i.i.i.sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %5, i64 88
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.415.0..09.i.i.i.sroa_idx.i.i.4, align 8, !tbaa !40
  %.not.i.i.i.i.i.4 = icmp eq i16 %i.b, 5
  br i1 %.not.i.i.i.i.i.4, label %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.5

.lr.ph.i.i.i.i.i.5:                               ; preds = %.lr.ph.i.i.i.i.i.4
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.ay, align 8, !tbaa !38
  %.sroa.415.0..09.i.i.i.sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.415.0..09.i.i.i.sroa_idx.i.i.5, align 8, !tbaa !40
  %.not.i.i.i.i.i.5 = icmp eq i16 %i.b, 6
  br i1 %.not.i.i.i.i.i.5, label %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.6

.lr.ph.i.i.i.i.i.6:                               ; preds = %.lr.ph.i.i.i.i.i.5
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.az, align 8, !tbaa !38
  %.sroa.415.0..09.i.i.i.sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %5, i64 120
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.415.0..09.i.i.i.sroa_idx.i.i.6, align 8, !tbaa !40
  %.not.i.i.i.i.i.6 = icmp eq i16 %i.b, 7
  br i1 %.not.i.i.i.i.i.6, label %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit, label %.lr.ph.i.i.i.i.i.7

.lr.ph.i.i.i.i.i.7:                               ; preds = %.lr.ph.i.i.i.i.i.6
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 128
  store i16 %.sroa.0.0.copyload.i.i, ptr %i.ba, align 8, !tbaa !38
  %.sroa.415.0..09.i.i.i.sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %5, i64 136
  store ptr %.sroa.21.0.copyload.i.i, ptr %.sroa.415.0..09.i.i.i.sroa_idx.i.i.7, align 8, !tbaa !40
  br label %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit

_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !203
  br label %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit

_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.5, %.lr.ph.i.i.i.i.i.6, %.lr.ph.i.i.i.i.i.7, %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit.loopexit, %_ZSt6fill_nIPN4llvm3EVTEmS1_ET_S3_T0_RKT1_.exit.i.i
  %i.bb = phi ptr [ %i.w, %_ZSt6fill_nIPN4llvm3EVTEmS1_ET_S3_T0_RKT1_.exit.i.i ], [ %.pre, %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit.loopexit ], [ %i.w, %.lr.ph.i.i.i.i.i.7 ], [ %i.w, %.lr.ph.i.i.i.i.i.6 ], [ %i.w, %.lr.ph.i.i.i.i.i.5 ], [ %i.w, %.lr.ph.i.i.i.i.i.4 ], [ %i.w, %.lr.ph.i.i.i.i.i.3 ], [ %i.w, %.lr.ph.i.i.i.i.i.2 ], [ %i.w, %.lr.ph.i.i.i.i.i.1 ], [ %i.w, %.lr.ph.i.i.i.i.i ]
  %i.bc = phi ptr [ %i.ae, %_ZSt6fill_nIPN4llvm3EVTEmS1_ET_S3_T0_RKT1_.exit.i.i ], [ %i.ai, %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit.loopexit ], [ %i.ae, %.lr.ph.i.i.i.i.i.7 ], [ %i.ae, %.lr.ph.i.i.i.i.i.6 ], [ %i.ae, %.lr.ph.i.i.i.i.i.5 ], [ %i.ae, %.lr.ph.i.i.i.i.i.4 ], [ %i.ae, %.lr.ph.i.i.i.i.i.3 ], [ %i.ae, %.lr.ph.i.i.i.i.i.2 ], [ %i.ae, %.lr.ph.i.i.i.i.i.1 ], [ %i.ae, %.lr.ph.i.i.i.i.i ]
  store i32 %i.c, ptr %i.af, align 8, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !63
  store i64 %i.be, ptr %6, align 8, !tbaa !63
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !64
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !60, !nonnull !61, !align !62
  store ptr %i.bb, ptr %8, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.v, ptr %i.bk, align 8
  %i.bl = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8ArrayRefINS_3EVTEEENS4_INS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bj, i32 noundef 169, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr %i.bc, i64 %i.v, ptr noundef nonnull byval(%"class.llvm::ArrayRef.50") align 8 %8) #14
  %.fca.0.extract19 = extractvalue { ptr, i32 } %i.bl, 0
  store ptr %.fca.0.extract19, ptr %7, align 16
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !60, !nonnull !61, !align !62
  %i.bn = load ptr, ptr %5, align 8, !tbaa !203
  %i.bo = load i32, ptr %i.af, align 8, !tbaa !204
  %i.bp = zext i32 %i.bo to i64
  %i.bq = load ptr, ptr %2, align 8, !tbaa !203
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.v
  store ptr %i.br, ptr %9, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.v, ptr %i.bs, align 8
  %i.bt = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_8ArrayRefINS_3EVTEEENS4_INS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.bm, i32 noundef 169, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr %i.bn, i64 %i.bp, ptr noundef nonnull byval(%"class.llvm::ArrayRef.50") align 8 %9) #14
  %.fca.0.extract15 = extractvalue { ptr, i32 } %i.bt, 0
  store ptr %.fca.0.extract15, ptr %11, align 16
  br i1 %i.i, label %._crit_edge71, label %.lr.ph70

.lr.ph70:                                         ; preds = %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr null, ptr %3, align 8, !tbaa !167
  store i32 0, ptr %i.r, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr null, ptr %4, align 8, !tbaa !167
  store i32 0, ptr %i.s, align 8, !tbaa !168
  %i.bu = load ptr, ptr %i.t, align 8, !tbaa !42
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %i.bu, i64 %indvars.iv ; 2 uses
  %.sroa.023.0.copyload = load ptr, ptr %i.bv, align 8, !tbaa !44
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.224.0.copyload = load i32, ptr %.sroa.224.0..sroa_idx, align 8, !tbaa !45
  call void @_ZN4llvm16DAGTypeLegalizer14GetSplitVectorENS_7SDValueERS1_S2_(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr %.sroa.023.0.copyload, i32 %.sroa.224.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4) #14
  %i.bw = load ptr, ptr %2, align 8, !tbaa !203
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bx, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !166
  %i.by = load ptr, ptr %2, align 8, !tbaa !203
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %indvars.iv
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ca, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !437

._crit_edge71:                                    ; preds = %bb.f, %_ZN4llvm11SmallVectorINS_3EVTELj8EEC2EmRKS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.cb = load ptr, ptr %5, align 8, !tbaa !203   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ae
  br i1 %i.cc, label %_ZN4llvm11SmallVectorINS_3EVTELj8EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge71
  call void @free(ptr noundef %i.cb) #14
  br label %_ZN4llvm11SmallVectorINS_3EVTELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_3EVTELj8EED2Ev.exit:     ; preds = %._crit_edge71, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  %i.cd = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.f
  br i1 %i.ce, label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorINS_3EVTELj8EED2Ev.exit
  call void @free(ptr noundef %i.cd) #14
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj8EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_3EVTELj8EED2Ev.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void

bb.f:                                             ; preds = %.lr.ph70, %bb.f
  %.04669 = phi i32 [ 0, %.lr.ph70 ], [ %i.cl, %bb.f ] ; 3 uses
  %i.cf = shl nuw nsw i32 %.04669, 1              ; 3 uses
  %i.cg = or disjoint i32 %i.cf, 1                ; 2 uses
  %i.ch = udiv i32 %i.cf, %i.c
  %12 = zext nneg i32 %i.ch to i64
  %13 = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %12
  %i.ci = urem i32 %i.cf, %i.c
  %14 = load ptr, ptr %13, align 16, !tbaa !167
  %i.cj = udiv i32 %i.cg, %i.c
  %15 = zext nneg i32 %i.cj to i64
  %16 = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %15
  %i.ck = urem i32 %i.cg, %i.c
  %17 = load ptr, ptr %16, align 16, !tbaa !167
  store ptr %17, ptr %10, align 8
  store i32 %i.ck, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_ZN4llvm16DAGTypeLegalizer14SetSplitVectorENS_7SDValueES1_S1_(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr nonnull %1, i32 %.04669, ptr %14, i32 %i.ci, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10) #14
  %i.cl = add nuw nsw i32 %.04669, 1              ; 2 uses
  %.not48 = icmp eq i32 %i.cl, %i.c
  br i1 %.not48, label %._crit_edge71, label %bb.f, !llvm.loop !438
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm16DAGTypeLegalizer17SplitVecRes_VAARGEPNS_6SDNodeERNS_7SDValueES4_(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %7 = alloca %"class.llvm::SDValue", align 8     ; 3 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.b, align 8, !tbaa !38
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !40
  store i16 %.sroa.0.0.copyload.i, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.21.0.copyload.i, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60, !nonnull !61, !align !62
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !158
  %i.h = call { i16, ptr } @_ZNK4llvm3EVT26getHalfNumVectorElementsVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = extractvalue { i16, ptr } %i.h, 0
  store i16 %i.i, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.k = extractvalue { i16, ptr } %i.h, 1
  store ptr %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42   ; 4 uses
  %.sroa.033.0.copyload = load ptr, ptr %i.m, align 8, !tbaa !44
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.q = load i64, ptr %i.p, align 8, !tbaa !63
  store i64 %i.q, ptr %8, align 8, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.t = load i32, ptr %i.s, align 4, !tbaa !64
  store i32 %i.t, ptr %i.r, align 8, !tbaa !66
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !60, !nonnull !61, !align !62
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !157
  %i.x = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.w) #14
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !60, !nonnull !61, !align !62
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !158
  %i.ab = call noundef ptr @_ZNK4llvm3EVT13getTypeForEVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #14
  %i.ac = call i8 @_ZNK4llvm10DataLayout15getABITypeAlignEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %i.x, ptr noundef %i.ab) #14
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !60, !nonnull !61, !align !62
  %.sroa.027.0.copyload = load i16, ptr %5, align 8, !tbaa !38
  %.sroa.229.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.ae = zext nneg i8 %i.ac to i64
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getVAArgENS_3EVTERKNS_5SDLocENS_7SDValueES5_S5_j(ptr noundef nonnull align 8 dereferenceable(920) %i.ad, i16 %.sroa.027.0.copyload, ptr %.sroa.229.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr %.sroa.033.0.copyload, i32 %.sroa.6.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, i32 noundef %i.ag) #14 ; 2 uses
  %.fca.0.extract20 = extractvalue { ptr, i32 } %i.ah, 0 ; 2 uses
  %.fca.1.extract21 = extractvalue { ptr, i32 } %i.ah, 1
  store ptr %.fca.0.extract20, ptr %2, align 8, !tbaa !44
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %.fca.1.extract21, ptr %.sroa.431.0..sroa_idx, align 8, !tbaa !45
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !60, !nonnull !61, !align !62
  %.sroa.014.0.copyload = load i16, ptr %5, align 8, !tbaa !38
  %.sroa.216.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.aj = call { ptr, i32 } @_ZN4llvm12SelectionDAG8getVAArgENS_3EVTERKNS_5SDLocENS_7SDValueES5_S5_j(ptr noundef nonnull align 8 dereferenceable(920) %i.ai, i16 %.sroa.014.0.copyload, ptr %.sroa.216.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr %.fca.0.extract20, i32 1, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7, i32 noundef %i.ag) #14 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.aj, 0 ; 2 uses
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.aj, 1
  store ptr %.fca.0.extract4, ptr %3, align 8, !tbaa !44
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract5, ptr %.sroa.418.0..sroa_idx, align 8, !tbaa !45
  call void @_ZN4llvm16DAGTypeLegalizer16ReplaceValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr %1, i32 1, ptr %.fca.0.extract4, i32 1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm16DAGTypeLegalizer25SplitVecRes_ExtVecInRegOpEPNS_6SDNodeERNS_7SDValueES4_(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %5 = alloca %"struct.llvm::EVT", align 8        ; 4 uses
  %6 = alloca %"struct.llvm::EVT", align 8        ; 4 uses
  %7 = alloca %"struct.std::pair.104", align 8    ; 5 uses
  %8 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %9 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %10 = alloca %"struct.std::pair.382", align 8   ; 4 uses
  %11 = alloca %"class.llvm::SDLoc", align 8      ; 7 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 9 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 8 uses
  %14 = alloca %"struct.std::pair", align 8       ; 5 uses
  %15 = alloca %"struct.llvm::EVT", align 8       ; 7 uses
  %16 = alloca %"struct.llvm::EVT", align 8       ; 8 uses
  %17 = alloca %"struct.std::pair.104", align 8   ; 6 uses
  %18 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %19 = alloca %"class.llvm::SmallVector.194", align 8 ; 10 uses
  %20 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %21 = alloca %"class.llvm::ArrayRef.199", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  %.sroa.068.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !44 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !45 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !63
  store i64 %i.f, ptr %11, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !64
  store i32 %i.i, ptr %i.g, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  store ptr null, ptr %12, align 8, !tbaa !167
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i32 0, ptr %i.j, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  store ptr null, ptr %13, align 8, !tbaa !167
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !168
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.068.0.copyload, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.n = zext i32 %.sroa.5.0.copyload to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.n ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.o, align 8, !tbaa !38
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !40
  %i.p = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !61, !align !62
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !60, !nonnull !61, !align !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  call void @_ZNK4llvm18TargetLoweringBase17getTypeConversionERNS_11LLVMContextENS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.382") align 8 %10, ptr noundef nonnull align 8 dereferenceable(518435) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i16 %.sroa.0.0.copyload.i.i, ptr %.sroa.21.0.copyload.i.i) #14
  %i.u = load i8, ptr %10, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  %i.v = icmp eq i8 %i.u, 6
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm16DAGTypeLegalizer14GetSplitVectorENS_7SDValueERS1_S2_(ptr noundef nonnull align 8 dereferenceable(2640) %0, ptr nonnull %.sroa.068.0.copyload, i32 %.sroa.5.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %13) #14
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !60, !nonnull !61, !align !62 ; 2 uses
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !42, !noalias !445 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14, !noalias !445
  %i.y = load i64, ptr %i.e, align 8, !tbaa !63, !noalias !445
  store i64 %i.y, ptr %9, align 8, !tbaa !63, !noalias !445
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aa = load i32, ptr %i.h, align 4, !tbaa !64, !noalias !445
  store i32 %i.aa, ptr %i.z, align 8, !tbaa !66, !noalias !445
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14, !noalias !446
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14, !noalias !446
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14, !noalias !446
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14, !noalias !446
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !167, !noalias !446
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !168, !noalias !446
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36, !noalias !446
  %i.ag = zext i32 %i.ad to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ag ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.ah, align 8, !tbaa !38, !noalias !446
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.21.0.copyload.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !tbaa !40, !noalias !446
  store i16 %.sroa.0.0.copyload.i.i.i.i, ptr %8, align 8, !noalias !446
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i.i, ptr %i.ai, align 8, !noalias !446
  call void @_ZNK4llvm12SelectionDAG15GetSplitDestVTsERKNS_3EVTE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.104") align 8 %7, ptr noundef nonnull align 8 dereferenceable(920) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %8) #14, !noalias !446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 16, i1 false), !tbaa.struct !214, !noalias !446
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !214, !noalias !446
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14, !noalias !446
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14, !noalias !446
  call void @_ZN4llvm12SelectionDAG11SplitVectorERKNS_7SDValueERKNS_5SDLocERKNS_3EVTES9_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %14, ptr noundef nonnull align 8 dereferenceable(920) %i.w, ptr noundef nonnull align 8 dereferenceable(12) %i.x, ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14, !noalias !446
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14, !noalias !446
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14, !noalias !445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 12, i1 false), !tbaa.struct !166
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(12) %i.ak, i64 12, i1 false), !tbaa.struct !166
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %i.al = load ptr, ptr %12, align 8, !tbaa !167
end_hunk_0
