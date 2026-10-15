Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Deserializer?download=true
inline.NumInlined: 9244
inline.NumDeleted: 3938
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4mlir5spirv12Deserializer10processPhiEN4llvm8ArrayRefIjEE:bb.a
  %.fca.0.extract.i14 = extractvalue { ptr, i8 } %i.bu, 0 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i14, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i14, i64 24 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !204 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i14, i64 28
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !205
  %.not.i15 = icmp ult i32 %i.bx, %i.bz
  br i1 %.not.i15, label %bb.q, label %bb.p, !prof !231

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i32 noundef %i.bn)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

bb.q:                                             ; preds = %bb.o
  %i.ca = zext i32 %i.bx to i64
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !203
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ca
  store i32 %i.bn, ptr %i.cc, align 1
  %i.cd = load i32, ptr %i.bw, align 8, !tbaa !204
  %i.ce = add i32 %i.cd, 1
  store i32 %i.ce, ptr %i.bw, align 8, !tbaa !204
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.cf = add i32 %.021, 2                        ; 2 uses
  %i.cg = icmp ult i32 %i.cf, %i.bh
  br i1 %i.cg, label %bb.o, label %.loopexit, !llvm.loop !1420

.loopexit:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit, %_ZN4mlir5spirv12Deserializer7getTypeEj.exit, %_ZN4mlir18InFlightDiagnosticD2Ev.exit13, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.011.0 = phi i8 [ %i.p, %_ZN4mlir18InFlightDiagnosticD2Ev.exit13 ], [ %i.f, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %_ZN4mlir5spirv12Deserializer7getTypeEj.exit ], [ 1, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit ]
  ret i8 %.sroa.011.0
}

declare ptr @_ZN4mlir5Block11addArgumentENS_4TypeENS_8LocationE(ptr noundef nonnull align 8 dereferenceable(80), ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir5spirv12Deserializer13processSwitchEN4llvm8ArrayRefIjEE(ptr noundef nonnull align 8 dereferenceable(1144) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvm::SmallVector.894", align 8 ; 10 uses
  %10 = alloca %"class.llvm::SmallVector.899", align 8 ; 10 uses
  %11 = alloca %"class.llvm::SmallVector.901", align 8 ; 15 uses
  %12 = alloca %"class.mlir::ValueRange", align 8 ; 5 uses
  %13 = alloca %"class.mlir::ValueRange", align 8 ; 3 uses
  %14 = alloca %"class.llvm::ArrayRef.948", align 8 ; 3 uses
  %15 = alloca %"class.mlir::BlockRange", align 8 ; 2 uses
  %16 = alloca %"class.llvm::ArrayRef.954", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.011.0.copyload = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !213
  store ptr @.str.184, ptr %4, align 8, !tbaa !214
  store i8 3, ptr %i.d, align 8, !tbaa !212
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %3, ptr %.sroa.011.0.copyload, ptr noundef nonnull align 8 dereferenceable(34) %4) #22
  %i.f = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #22
  %i.g = load ptr, ptr %3, align 8, !tbaa !222
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !223, !range !224, !noundef !225
  %i.j = trunc nuw i8 %i.i to i1
  store i8 0, ptr %i.h, align 8, !tbaa !223
  br i1 %i.j, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.k) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.x

bb.f:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %2, 2
  br i1 %i.l, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.010.0.copyload = load ptr, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.o, align 1, !tbaa !213
  store ptr @.str.185, ptr %6, align 8, !tbaa !214
  store i8 3, ptr %i.n, align 8, !tbaa !212
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, ptr %.sroa.010.0.copyload, ptr noundef nonnull align 8 dereferenceable(34) %6) #22
  %i.p = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #22
  %i.q = load ptr, ptr %5, align 8, !tbaa !222
  %.not.i15 = icmp eq ptr %i.q, null
  br i1 %.not.i15, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !223, !range !224, !noundef !225
  %i.t = trunc nuw i8 %i.s to i1
  store i8 0, ptr %i.r, align 8, !tbaa !223
  br i1 %i.t, label %bb.j, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit16

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.u) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit16

_ZN4mlir18InFlightDiagnosticD2Ev.exit16:          ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.x

bb.k:                                             ; preds = %bb.f
  %i.v = and i64 %2, 1
  %.not14 = icmp eq i64 %i.v, 0
  br i1 %.not14, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.09.0.copyload = load ptr, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.y, align 1, !tbaa !213
  store ptr @.str.186, ptr %8, align 8, !tbaa !214
  store i8 3, ptr %i.x, align 8, !tbaa !212
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %7, ptr %.sroa.09.0.copyload, ptr noundef nonnull align 8 dereferenceable(34) %8) #22
  %i.z = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #22
  %i.aa = load ptr, ptr %7, align 8, !tbaa !222
  %.not.i17 = icmp eq ptr %i.aa, null
  br i1 %.not.i17, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !223, !range !224, !noundef !225
  %i.ad = trunc nuw i8 %i.ac to i1
  store i8 0, ptr %i.ab, align 8, !tbaa !223
  br i1 %i.ad, label %bb.o, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit18

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ae) #22
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit18

_ZN4mlir18InFlightDiagnosticD2Ev.exit18:          ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.x

bb.p:                                             ; preds = %bb.k
  %i.af = load i32, ptr %1, align 4, !tbaa !227
  %i.ag = tail call ptr @_ZN4mlir5spirv12Deserializer8getValueEj(ptr noundef nonnull align 8 dereferenceable(1144) %0, i32 noundef %i.af) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !227
  %i.aj = tail call noundef ptr @_ZN4mlir5spirv12Deserializer16getOrCreateBlockEj(ptr noundef nonnull align 8 dereferenceable(1144) %0, i32 noundef %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.al = tail call ptr @_ZN4mlir5spirv12Deserializer20createFileLineColLocENS_9OpBuilderE(ptr noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull byval(%"class.mlir::OpBuilder") align 8 %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.am, ptr %9, align 8, !tbaa !203
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store i32 0, ptr %i.an, align 8, !tbaa !204
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  store i32 12, ptr %i.ao, align 4, !tbaa !205
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.ap, ptr %10, align 8, !tbaa !203
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !204
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 2 uses
  store i32 6, ptr %i.ar, align 4, !tbaa !205
  %i.as = trunc i64 %2 to i32                     ; 2 uses
  %i.at = icmp ugt i32 %i.as, 2
  br i1 %i.at, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir5BlockELb1EE9push_backES3_.exit
  %.pre = load i32, ptr %i.aq, align 8, !tbaa !204
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.p
  %i.au = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.p ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.av = zext i32 %i.au to i64                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr null, i64 0) #22
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.aw, ptr %11, align 8, !tbaa !203
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i32 0, ptr %i.ax, align 8, !tbaa !204
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 3, ptr %i.ay, align 4, !tbaa !205
  %.sroa.0.0.copyload.i = load i64, ptr %12, align 8 ; 12 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 12 uses
  %i.az = icmp ugt i32 %i.au, 3
  br i1 %i.az, label %.lr.ph.i.i.i.preheader.i.i.i, label %_ZSt6fill_nIPN4mlir10ValueRangeEmS1_ET_S3_T0_RKT1_.exit.i.i

.lr.ph.i.i.i.preheader.i.i.i:                     ; preds = %._crit_edge
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull %i.aw, i64 noundef %i.av, i64 noundef 16) #22
  %i.ba = load ptr, ptr %11, align 8, !tbaa !203  ; 2 uses
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.i.prol
  %.09.i.i.i.i.i.i.prol = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ba, %.lr.ph.i.i.i.preheader.i.i.i ] ; 3 uses
  %.068.i.i.i.i.i.i.prol = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.av, %.lr.ph.i.i.i.preheader.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader.i.i.i ]
  store i64 %.sroa.0.0.copyload.i, ptr %.09.i.i.i.i.i.i.prol, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.prol, align 8
  %i.bb = add nsw i64 %.068.i.i.i.i.i.i.prol, -1  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1422

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.preheader.i.i.i
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.ba, %.lr.ph.i.i.i.preheader.i.i.i ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.prol ]
  %.068.i.i.i.i.i.i.unr = phi i64 [ %i.av, %.lr.ph.i.i.i.preheader.i.i.i ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bd = icmp ult i32 %i.au, 8
  br i1 %i.bd, label %_ZN4llvm11SmallVectorIN4mlir10ValueRangeELj3EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.068.i.i.i.i.i.i = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %.068.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  store i64 %.sroa.0.0.copyload.i, ptr %.09.i.i.i.i.i.i, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  store i64 %.sroa.0.0.copyload.i, ptr %i.be, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.1, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  store i64 %.sroa.0.0.copyload.i, ptr %i.bf, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 40
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.2, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  store i64 %.sroa.0.0.copyload.i, ptr %i.bg, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 56
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.3, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 64
  store i64 %.sroa.0.0.copyload.i, ptr %i.bh, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 72
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.4, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 80
  store i64 %.sroa.0.0.copyload.i, ptr %i.bi, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 88
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.5, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 96
  store i64 %.sroa.0.0.copyload.i, ptr %i.bj, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 104
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.6, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 112
  store i64 %.sroa.0.0.copyload.i, ptr %i.bk, align 8
  %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 120
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..09.i.i.i.sroa_idx.i.i.i.7, align 8
  %i.bl = add nsw i64 %.068.i.i.i.i.i.i, -8       ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.7 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i.7, label %_ZN4llvm11SmallVectorIN4mlir10ValueRangeELj3EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1423

_ZSt6fill_nIPN4mlir10ValueRangeEmS1_ET_S3_T0_RKT1_.exit.i.i: ; preds = %._crit_edge
  %.not.i19 = icmp eq i32 %i.au, 0
  br i1 %.not.i19, label %_ZN4llvm11SmallVectorIN4mlir10ValueRangeELj3EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt6fill_nIPN4mlir10ValueRangeEmS1_ET_S3_T0_RKT1_.exit.i.i
  store i64 %.sroa.0.0.copyload.i, ptr %i.aw, align 8
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i, align 8
  %.not.i.i.i.i.i = icmp eq i32 %i.au, 1
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm11SmallVectorIN4mlir10ValueRangeELj3EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %.sroa.0.0.copyload.i, ptr %i.bn, align 8
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.1, align 8
  %.not.i.i.i.i.i.1 = icmp eq i32 %i.au, 2
  br i1 %.not.i.i.i.i.i.1, label %_ZN4llvm11SmallVectorIN4mlir10ValueRangeELj3EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i64 %.sroa.0.0.copyload.i, ptr %i.bo, align 8
  %.sroa.4.0..09.i.i.i.sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %11, i64 56
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.4.0..09.i.i.i.sroa_idx.i.i.2, align 8
  br label %_ZN4llvm11SmallVectorIN4mlir10ValueRangeELj3EEC2EmRKS2_.exit

_ZN4llvm11SmallVectorIN4mlir10ValueRangeELj3EEC2EmRKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZSt6fill_nIPN4mlir10ValueRangeEmS1_ET_S3_T0_RKT1_.exit.i.i
  store i32 %i.au, ptr %i.ax, align 8, !tbaa !204
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr null, i64 0) #22
  %i.bp = load ptr, ptr %9, align 8, !tbaa !203
  store ptr %i.bp, ptr %14, align 8, !tbaa !1426
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.br = load i32, ptr %i.an, align 8, !tbaa !204
  %i.bs = zext i32 %i.br to i64
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !1427
  %i.bt = load ptr, ptr %10, align 8, !tbaa !203
  %i.bu = load i32, ptr %i.aq, align 8, !tbaa !204
  %i.bv = zext i32 %i.bu to i64
  call void @_ZN4mlir10BlockRangeC2EN4llvm8ArrayRefIPNS_5BlockEEE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr %i.bt, i64 %i.bv) #22
  %i.bw = load ptr, ptr %11, align 8, !tbaa !203
  store ptr %i.bw, ptr %16, align 8, !tbaa !332
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.by = load i32, ptr %i.ax, align 8, !tbaa !204
  %i.bz = zext i32 %i.by to i64
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !333
  %i.ca = load i64, ptr %13, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = call ptr @_ZN4mlir5spirv8SwitchOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEPNS_5BlockENS_10ValueRangeEN4llvm8ArrayRefIiEENS_10BlockRangeENSA_IS8_EE(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr %i.al, ptr %i.ag, ptr noundef nonnull %i.aj, i64 %i.ca, i64 %i.cc, ptr noundef nonnull byval(%"class.llvm::ArrayRef.948") align 8 %14, ptr noundef nonnull byval(%"class.mlir::BlockRange") align 8 %15, ptr noundef nonnull byval(%"class.llvm::ArrayRef.954") align 8 %16) #22 ; 0 uses
  %i.ce = load ptr, ptr %11, align 8, !tbaa !203  ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.aw
  br i1 %i.cf, label %_ZN4llvm11SmallVectorIN4mlir10ValueRangeELj3EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir10ValueRangeELj3EEC2EmRKS2_.exit
  call void @free(ptr noundef %i.ce) #22
  br label %_ZN4llvm11SmallVectorIN4mlir10ValueRangeELj3EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir10ValueRangeELj3EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir10ValueRangeELj3EEC2EmRKS2_.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.cg = load ptr, ptr %10, align 8, !tbaa !203  ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.ap
  br i1 %i.ch, label %_ZN4llvm11SmallVectorIPN4mlir5BlockELj6EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir10ValueRangeELj3EED2Ev.exit
  call void @free(ptr noundef %i.cg) #22
  br label %_ZN4llvm11SmallVectorIPN4mlir5BlockELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPN4mlir5BlockELj6EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir10ValueRangeELj3EED2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.ci = load ptr, ptr %9, align 8, !tbaa !203   ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.am
  br i1 %i.cj, label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN4llvm11SmallVectorIPN4mlir5BlockELj6EED2Ev.exit
  call void @free(ptr noundef %i.ci) #22
  br label %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit

_ZN4llvm11SmallVectorIiLj12EED2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorIPN4mlir5BlockELj6EED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.x

.lr.ph:                                           ; preds = %bb.p, %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir5BlockELb1EE9push_backES3_.exit
  %.031 = phi i32 [ %21, %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir5BlockELb1EE9push_backES3_.exit ], [ 2, %bb.p ] ; 3 uses
  %17 = zext i32 %.031 to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %17
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !227 ; 2 uses
  %i.cm = load i32, ptr %i.an, align 8, !tbaa !204 ; 2 uses
  %i.cn = load i32, ptr %i.ao, align 4, !tbaa !205
  %.not.i20 = icmp ult i32 %i.cm, %i.cn
  br i1 %.not.i20, label %bb.u, label %bb.t, !prof !231

bb.t:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseIiLb1EE15growAndPushBackEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %i.cl)
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

bb.u:                                             ; preds = %.lr.ph
  %i.co = zext i32 %i.cm to i64
  %i.cp = load ptr, ptr %9, align 8, !tbaa !203
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.co
  store i32 %i.cl, ptr %i.cq, align 1
  %i.cr = load i32, ptr %i.an, align 8, !tbaa !204
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.an, align 8, !tbaa !204
  br label %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit

_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit: ; preds = %bb.t, %bb.u
  %18 = or disjoint i32 %.031, 1
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %19
  %i.ct = load i32, ptr %20, align 4, !tbaa !227
  %i.cu = call noundef ptr @_ZN4mlir5spirv12Deserializer16getOrCreateBlockEj(ptr noundef nonnull align 8 dereferenceable(1144) %0, i32 noundef %i.ct) ; 2 uses
  %i.cv = load i32, ptr %i.aq, align 8, !tbaa !204 ; 2 uses
  %i.cw = load i32, ptr %i.ar, align 4, !tbaa !205
  %.not.i21 = icmp ult i32 %i.cv, %i.cw
  br i1 %.not.i21, label %bb.w, label %bb.v, !prof !231

bb.v:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN4mlir5BlockELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull %i.cu)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir5BlockELb1EE9push_backES3_.exit

bb.w:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIiLb1EE9push_backEi.exit
  %i.cx = zext i32 %i.cv to i64
  %i.cy = load ptr, ptr %10, align 8, !tbaa !203
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cx
  store ptr %i.cu, ptr %i.cz, align 1
  %i.da = load i32, ptr %i.aq, align 8, !tbaa !204
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.aq, align 8, !tbaa !204
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN4mlir5BlockELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN4mlir5BlockELb1EE9push_backES3_.exit: ; preds = %bb.v, %bb.w
  %21 = add i32 %.031, 2                          ; 2 uses
  %i.dc = icmp ult i32 %21, %i.as
  br i1 %i.dc, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1424

bb.x:                                             ; preds = %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit, %_ZN4mlir18InFlightDiagnosticD2Ev.exit18, %_ZN4mlir18InFlightDiagnosticD2Ev.exit16, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.013.0 = phi i8 [ %i.p, %_ZN4mlir18InFlightDiagnosticD2Ev.exit16 ], [ %i.z, %_ZN4mlir18InFlightDiagnosticD2Ev.exit18 ], [ 1, %_ZN4llvm11SmallVectorIiLj12EED2Ev.exit ], [ %i.f, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ]
  ret i8 %.sroa.013.0
}

declare ptr @_ZN4mlir5spirv8SwitchOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEPNS_5BlockENS_10ValueRangeEN4llvm8ArrayRefIiEENS_10BlockRangeENSA_IS8_EE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr noundef, i64, i64, ptr noundef byval(%"class.llvm::ArrayRef.948") align 8, ptr noundef byval(%"class.mlir::BlockRange") align 8, ptr noundef byval(%"class.llvm::ArrayRef.954") align 8) local_unnamed_addr #2

declare noundef ptr @_ZN4mlir5Block13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare ptr @_ZN4mlir5spirv19BranchConditionalOp6createERNS_9OpBuilderENS_8LocationENS_5ValueENS_10ValueRangeES6_NS_9ArrayAttrEPNS_5BlockES9_(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, i64, i64, ptr noundef byval(%"class.mlir::ValueRange") align 8, ptr, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir5spirv8SwitchOp11getLiteralsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN4mlir5spirv8SwitchOp6createERNS_9OpBuilderENS_8LocationENS_5ValueEPNS_5BlockENS_10ValueRangeENS_20DenseIntElementsAttrENS_10BlockRangeEN4llvm8ArrayRefIS8_EE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr noundef, i64, i64, i64, ptr noundef byval(%"class.mlir::BlockRange") align 8, ptr noundef byval(%"class.llvm::ArrayRef.954") align 8) local_unnamed_addr #2

declare void @_ZN4mlir10BlockRangeC1ENS_14SuccessorRangeE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #2

declare void @_ZN4mlir19MutableOperandRange6assignENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(56), i64, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i8 @_ZN4mlir5spirv12Deserializer20splitSelectionHeaderEv(ptr noundef nonnull align 8 dereferenceable(1144) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::tuple.1443", align 8   ; 4 uses
  %2 = alloca %"class.std::tuple.1479", align 8   ; 4 uses
  %3 = alloca %"class.llvm::MapVector", align 8   ; 10 uses
  %4 = alloca %"struct.std::pair.987", align 8    ; 11 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %5 = alloca %"class.mlir::OpBuilder", align 8   ; 7 uses
  %6 = alloca %"class.mlir::ValueRange", align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 24, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN4mlir5BlockEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8copyFromERKSA_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !203
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !204
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 0, ptr %i.g, align 4, !tbaa !205
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 8 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !204  ; 4 uses
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorISt4pairIPN4mlir5BlockENS2_5spirv14BlockMergeInfoEELj0EED2Ev.exit.i, label %_ZSt4copyIPKSt4pairIPN4mlir5BlockENS1_5spirv14BlockMergeInfoEEPS6_ET0_T_SB_SA_.exit36.i.i.i

_ZSt4copyIPKSt4pairIPN4mlir5BlockENS1_5spirv14BlockMergeInfoEEPS6_ET0_T_SB_SA_.exit36.i.i.i: ; preds = %bb.a
  %i.j = zext i32 %i.i to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.e, i64 noundef %i.j, i64 noundef 40) #22
  %i.k = load i32, ptr %i.h, align 8, !tbaa !204  ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i, label %.lr.ph50, label %bb.b

bb.b:                                             ; preds = %_ZSt4copyIPKSt4pairIPN4mlir5BlockENS1_5spirv14BlockMergeInfoEEPS6_ET0_T_SB_SA_.exit36.i.i.i
  %i.l = zext i32 %i.k to i64
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !203
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !203
  %gepdiff.i.i.i = mul nuw nsw i64 %i.l, 40
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 8 %i.m, i64 %gepdiff.i.i.i, i1 false)
  br label %.lr.ph50

.lr.ph50:                                         ; preds = %bb.b, %_ZSt4copyIPKSt4pairIPN4mlir5BlockENS1_5spirv14BlockMergeInfoEEPS6_ET0_T_SB_SA_.exit36.i.i.i
  store i32 %i.i, ptr %i.f, align 8, !tbaa !204
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !203 ; 2 uses
  %i.o = zext i32 %i.i to i64
  %.idx = mul nuw nsw i64 %i.o, 40
  %i.p = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 596
  br label %bb.e

._crit_edge51:                                    ; preds = %bb.o
  %.pre55 = load ptr, ptr %i.c, align 8, !tbaa !203 ; 2 uses
  %i.z = icmp eq ptr %.pre55, %i.e
  br i1 %i.z, label %_ZN4llvm11SmallVectorISt4pairIPN4mlir5BlockENS2_5spirv14BlockMergeInfoEELj0EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge51
  call void @free(ptr noundef %.pre55) #22
  br label %_ZN4llvm11SmallVectorISt4pairIPN4mlir5BlockENS2_5spirv14BlockMergeInfoEELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorISt4pairIPN4mlir5BlockENS2_5spirv14BlockMergeInfoEELj0EED2Ev.exit.i: ; preds = %bb.a, %bb.c, %._crit_edge51
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !457 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZN4llvm9MapVectorIPN4mlir5BlockENS1_5spirv14BlockMergeInfoENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_S5_ELj0EEELj0EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIPN4mlir5BlockENS2_5spirv14BlockMergeInfoEELj0EED2Ev.exit.i
  %i.ad = load ptr, ptr %3, align 8, !tbaa !458
  %i.ae = zext i32 %i.ab to i64                   ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 4
  %i.ag = add nuw nsw i64 %i.ae, 31
  %i.ah = lshr i64 %i.ag, 3
  %i.ai = and i64 %i.ah, 1073741820
  %i.aj = add nuw nsw i64 %i.ai, %i.af
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ad, i64 noundef %i.aj, i64 noundef 8) #22
  br label %_ZN4llvm9MapVectorIPN4mlir5BlockENS1_5spirv14BlockMergeInfoENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_S5_ELj0EEELj0EED2Ev.exit

_ZN4llvm9MapVectorIPN4mlir5BlockENS1_5spirv14BlockMergeInfoENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_S5_ELj0EEELj0EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIPN4mlir5BlockENS2_5spirv14BlockMergeInfoEELj0EED2Ev.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i8 1

bb.e:                                             ; preds = %.lr.ph50, %bb.o
  %.049 = phi ptr [ %.pre, %.lr.ph50 ], [ %i.dz, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %.049, i64 40, i1 false)
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !454
  %.not37 = icmp eq ptr %i.ak, null
  br i1 %.not37, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %4, align 8, !tbaa !290
  %i.am = call noundef zeroext i1 @_ZN4mlir5Block19mightHaveTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.al) #22
  br i1 %i.am, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %4, align 8, !tbaa !290
  %i.ao = call noundef ptr @_ZN4mlir5Block13getTerminatorEv(ptr noundef nonnull align 8 dereferenceable(80) %i.an) #22 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !262
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !321 ; 2 uses
  %i.as = icmp eq ptr %i.ar, @_ZN4mlir6detail14TypeIDResolverINS_5spirv19BranchConditionalOpEvE2idE
  %i.at = icmp eq ptr %i.ar, @_ZN4mlir6detail14TypeIDResolverINS_5spirv8SwitchOpEvE2idE
  %spec.select.i = or i1 %i.as, %i.at
  br i1 %spec.select.i, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !203 ; 2 uses
  %i.av = load i32, ptr %i.h, align 8, !tbaa !204 ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %.idx52 = mul nuw nsw i64 %i.aw, 40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx52
  %.not3845 = icmp eq i32 %i.av, 0
  %.pre54 = load ptr, ptr %4, align 8, !tbaa !290 ; 4 uses
  br i1 %.not3845, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %.035.lcssa = phi i1 [ false, %bb.h ], [ %spec.select, %.lr.ph ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre54, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !200 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre54, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.az, %i.ba
  br i1 %.not.i, label %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.thread, label %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit

_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit: ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !200
  %i.bd = icmp ne ptr %i.bc, %i.ba
  %or.cond = select i1 %i.bd, i1 true, i1 %.035.lcssa
  br i1 %or.cond, label %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.thread, label %bb.o

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.03447 = phi ptr [ %i.bh, %.lr.ph ], [ %i.au, %bb.h ] ; 2 uses
  %.03546 = phi i1 [ %spec.select, %.lr.ph ], [ false, %bb.h ]
  %i.be = getelementptr inbounds nuw i8, ptr %.03447, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !453
  %i.bg = icmp eq ptr %i.bf, %.pre54
  %spec.select = select i1 %i.bg, i1 true, i1 %.03546 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.03447, i64 40 ; 2 uses
  %.not38 = icmp eq ptr %i.bh, %i.ax
  br i1 %.not38, label %._crit_edge, label %.lr.ph

_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit.thread: ; preds = %._crit_edge, %_ZN4llvm16hasSingleElementIRN4mlir5BlockEEEbOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.bi = call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %i.ao) #22
  %i.bj = call noundef ptr @_ZN4mlir5Block10splitBlockEN4llvm14ilist_iteratorINS1_12ilist_detail12node_optionsINS_9OperationELb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(80) %.pre54, ptr %i.bi) #22
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !290
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bk = load ptr, ptr %4, align 8, !tbaa !290   ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bm = call noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bk) #22
  %i.bn = call noundef ptr @_ZN4mlir6Region10getContextEv(ptr noundef nonnull align 8 dereferenceable(28) %i.bm) #22
  store ptr %i.bn, ptr %5, align 8, !tbaa !180
  store ptr null, ptr %i.s, align 8, !tbaa !1444
  store ptr %i.bk, ptr %i.t, align 8, !tbaa !201
  store ptr %i.bl, ptr %i.u, align 8
  %i.bo = load ptr, ptr %4, align 8, !tbaa !290
  %i.bp = call noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bo) #22
  %i.bq = call ptr @_ZN4mlir6Region6getLocEv(ptr noundef nonnull align 8 dereferenceable(28) %i.bp) #22
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !290
  call void @_ZN4mlir10ValueRangeC1EN4llvm8ArrayRefINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr null, i64 0) #22
  %i.bs = load i64, ptr %6, align 8
  %i.bt = load i64, ptr %i.v, align 8
  %i.bu = call ptr @_ZN4mlir5spirv8BranchOp6createERNS_9OpBuilderENS_8LocationEPNS_5BlockENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr %i.bq, ptr noundef %i.br, i64 %i.bs, i64 %i.bt) #22 ; 0 uses
  %i.bv = load ptr, ptr %4, align 8, !tbaa !290   ; 2 uses
  %i.bw = load ptr, ptr %i.b, align 8, !tbaa !458, !noalias !1445 ; 3 uses
  %i.bx = load ptr, ptr %i.w, align 8, !tbaa !459, !noalias !1445 ; 2 uses
  %i.by = load i32, ptr %i.x, align 4, !tbaa !457, !noalias !1445 ; 4 uses
  %i.bz = icmp eq i32 %i.by, 0
end_hunk_0
