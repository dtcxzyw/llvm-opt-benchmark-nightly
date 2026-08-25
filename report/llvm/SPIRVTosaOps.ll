Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SPIRVTosaOps?download=true
inline.NumInlined: 1190
inline.NumDeleted: 655
begin_hunk_0_@_ZN4mlir5spirv12TosaSelectOp6verifyEv:.lr.ph.i.i.i.i.i.i
  %5 = alloca %"class.mlir::spirv::TensorArmType", align 8 ; 4 uses
  %6 = alloca %"class.mlir::spirv::TensorArmType", align 8 ; 4 uses
  %7 = alloca %"class.mlir::spirv::TensorArmType", align 8 ; 4 uses
  %8 = alloca %"class.mlir::spirv::TensorArmType", align 8 ; 4 uses
  %i.a = alloca [4 x i64], align 8                ; 8 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %10 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %11 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.b = load ptr, ptr %0, align 8, !tbaa !62     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8
  %i.g = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  store ptr %i.h, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.0.0.copyload.i.i.i.i.i30 = load ptr, ptr %i.i, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i30, i64 8
  %.0.copyload.i.i.i.i.i.i.i31 = load i64, ptr %i.j, align 8
  %i.k = and i64 %.0.copyload.i.i.i.i.i.i.i31, -8
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  store ptr %i.l, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i33 = load ptr, ptr %i.m, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i33, i64 8
  %.0.copyload.i.i.i.i.i.i.i34 = load i64, ptr %i.n, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i.i34, -8
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  store ptr %i.p, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.q = getelementptr inbounds i8, ptr %i.b, i64 -8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8
  %i.r = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  store ptr %i.s, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.h, ptr %4, align 8
  %i.t = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  %i.u = extractvalue { ptr, i64 } %i.t, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.u, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br i1 %.not.i.i.i.i.i.i.i.i, label %.thread97, label %bb.a

bb.a:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.l, ptr %3, align 8
  %i.v = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %i.w = extractvalue { ptr, i64 } %i.v, 1
  %.not.i.i33.i.i.i.i.i.i = icmp eq i64 %i.w, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %.not.i.i33.i.i.i.i.i.i, label %.thread97, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.p, ptr %2, align 8
  %i.x = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #9
  %i.y = extractvalue { ptr, i64 } %i.x, 1
  %.not.i.i34.i.i.i.i.i.i = icmp eq i64 %i.y, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %.not.i.i34.i.i.i.i.i.i, label %.thread97, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %i.s, ptr %1, align 8
  %i.z = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  %i.aa = extractvalue { ptr, i64 } %i.z, 1
  %.not.i.i35.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br i1 %.not.i.i35.i.i.i.i.i.i, label %.thread97, label %"_ZN4llvm6any_ofINS_8ArrayRefIN4mlir5spirv13TensorArmTypeEEEZNS3_12TosaSelectOp6verifyEvE3$_0EEbOT_T0_.exit.thread"

"_ZN4llvm6any_ofINS_8ArrayRefIN4mlir5spirv13TensorArmTypeEEEZNS3_12TosaSelectOp6verifyEvE3$_0EEbOT_T0_.exit.thread": ; preds = %bb.c
  %i.ab = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #9 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 1      ; 3 uses
  %i.ad = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #9 ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 1
  %i.af = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #9 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 1
  %i.ah = call { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #9 ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %i.ah, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 %i.ae, ptr %i.aj, align 8, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ag, ptr %i.ak, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ai, ptr %i.al, align 8, !tbaa !19
  %i.am = load i128, ptr %i.aj, align 1
  %i.an = load i128, ptr %i.a, align 8
  %i.ao = xor i128 %i.am, %i.an
  %i.ap = getelementptr i8, ptr %i.aj, i64 16
  %i.aq = getelementptr i8, ptr %i.a, i64 16
  %i.ar = load i64, ptr %i.ap, align 1
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = zext i64 %i.ar to i128
  %i.au = zext i64 %i.as to i128
  %i.av = xor i128 %i.at, %i.au
  %i.aw = or i128 %i.ao, %i.av
  %i.ax = icmp ne i128 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  %.not9.i.i.i.i.i.i = icmp eq i32 %i.ay, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %.not9.i.i.i.i.i.i, label %bb.d, label %.thread97

bb.d:                                             ; preds = %"_ZN4llvm6any_ofINS_8ArrayRefIN4mlir5spirv13TensorArmTypeEEEZNS3_12TosaSelectOp6verifyEvE3$_0EEbOT_T0_.exit.thread"
  %i.az = extractvalue { ptr, i64 } %i.ab, 0      ; 2 uses
  %.idx = shl nuw nsw i64 %i.ac, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx
  %.not109120 = icmp eq i64 %i.ac, 0
  br i1 %.not109120, label %.thread97, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.bb = extractvalue { ptr, i64 } %i.ad, 0
  %i.bc = extractvalue { ptr, i64 } %i.af, 0
  %i.bd = extractvalue { ptr, i64 } %i.ah, 0
  br label %.lr.ph.i.i.i.i.i.i35

.lr.ph.i.i.i.i.i.i35:                             ; preds = %.lr.ph, %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir5spirv12TosaSelectOp6verifyEvE3$_1EEbOT_T0_.exit"
  %.sroa.063.0124 = phi ptr [ %i.bd, %.lr.ph ], [ %i.co, %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir5spirv12TosaSelectOp6verifyEvE3$_1EEbOT_T0_.exit" ] ; 2 uses
  %.sroa.665.0123 = phi ptr [ %i.bc, %.lr.ph ], [ %i.cn, %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir5spirv12TosaSelectOp6verifyEvE3$_1EEbOT_T0_.exit" ] ; 3 uses
  %.sroa.10.0122 = phi ptr [ %i.bb, %.lr.ph ], [ %i.cm, %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir5spirv12TosaSelectOp6verifyEvE3$_1EEbOT_T0_.exit" ] ; 3 uses
  %.sroa.14.0121 = phi ptr [ %i.az, %.lr.ph ], [ %i.cl, %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir5spirv12TosaSelectOp6verifyEvE3$_1EEbOT_T0_.exit" ] ; 3 uses
  %i.be = load i64, ptr %.sroa.14.0121, align 8, !tbaa !19 ; 5 uses
  %i.bf = load i64, ptr %.sroa.10.0122, align 8, !tbaa !19 ; 5 uses
  %i.bg = load i64, ptr %.sroa.665.0123, align 8, !tbaa !19 ; 5 uses
  %i.bh = load i64, ptr %.sroa.063.0124, align 8, !tbaa !19 ; 2 uses
  %i.bi = icmp eq i64 %i.be, -9223372036854775808
  %i.bj = icmp eq i64 %i.bf, -9223372036854775808
  %or.cond = select i1 %i.bi, i1 true, i1 %i.bj
  %i.bk = icmp eq i64 %i.bg, -9223372036854775808
  %or.cond129 = select i1 %or.cond, i1 true, i1 %i.bk
  %i.bl = icmp eq i64 %i.bh, -9223372036854775808
  %or.cond130 = select i1 %or.cond129, i1 true, i1 %i.bl
  br i1 %or.cond130, label %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir5spirv12TosaSelectOp6verifyEvE3$_1EEbOT_T0_.exit", label %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir5spirv12TosaSelectOp6verifyEvE3$_1EEbOT_T0_.exit.thread"

"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir5spirv12TosaSelectOp6verifyEvE3$_1EEbOT_T0_.exit.thread": ; preds = %.lr.ph.i.i.i.i.i.i35
  %i.bm = icmp eq i64 %i.be, %i.bf
  %i.bn = icmp eq i64 %i.be, 1                    ; 2 uses
  %or.cond.i = or i1 %i.bn, %i.bm
  %i.bo = icmp eq i64 %i.bf, 1                    ; 2 uses
  %spec.select.i = or i1 %i.bo, %or.cond.i
  br i1 %spec.select.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir5spirv12TosaSelectOp6verifyEvE3$_1EEbOT_T0_.exit.thread"
  %i.bp = icmp eq i64 %i.be, %i.bg
  %or.cond.i47 = or i1 %i.bn, %i.bp
  %i.bq = icmp eq i64 %i.bg, 1                    ; 2 uses
  %spec.select.i48 = or i1 %i.bq, %or.cond.i47
  br i1 %spec.select.i48, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.br = icmp eq i64 %i.bf, %i.bg
  %or.cond.i49 = or i1 %i.bo, %i.br
  %spec.select.i50 = or i1 %i.bq, %or.cond.i49
  br i1 %spec.select.i50, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir5spirv12TosaSelectOp6verifyEvE3$_1EEbOT_T0_.exit.thread"
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 33
  store i8 1, ptr %i.bt, align 1, !tbaa !73
  store ptr @.str.2, ptr %10, align 8, !tbaa !58
  store i8 3, ptr %i.bs, align 8, !tbaa !70
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %10) #9
  %i.bu = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #9
  %i.bv = load ptr, ptr %9, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !82, !range !83, !noundef !84
  %i.by = trunc nuw i8 %i.bx to i1
  store i8 0, ptr %i.bw, align 8, !tbaa !82
  br i1 %i.by, label %bb.j, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.bz) #9
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %.thread97

bb.k:                                             ; preds = %bb.f
  %i.ca = icmp slt i64 %i.bf, %i.bg
  %..i = select i1 %i.ca, ptr %.sroa.665.0123, ptr %.sroa.10.0122 ; 2 uses
  %i.cb = load i64, ptr %..i, align 8, !tbaa !19
  %i.cc = icmp slt i64 %i.be, %i.cb
  %..i51 = select i1 %i.cc, ptr %..i, ptr %.sroa.14.0121
  %13 = load i64, ptr %..i51, align 8, !tbaa !19
  %.not = icmp eq i64 %13, %i.bh
  br i1 %.not, label %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir5spirv12TosaSelectOp6verifyEvE3$_1EEbOT_T0_.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #9
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 1, ptr %i.ce, align 1, !tbaa !73
  store ptr @.str.3, ptr %12, align 8, !tbaa !58
  store i8 3, ptr %i.cd, align 8, !tbaa !70
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %12) #9
  %i.cf = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %11) #9
  %i.cg = load ptr, ptr %11, align 8, !tbaa !74
  %.not.i52 = icmp eq ptr %i.cg, null
  br i1 %.not.i52, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %11) #9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 200 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !82, !range !83, !noundef !84
  %i.cj = trunc nuw i8 %i.ci to i1
  store i8 0, ptr %i.ch, align 8, !tbaa !82
  br i1 %i.cj, label %bb.o, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit53

bb.o:                                             ; preds = %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ck) #9
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit53

_ZN4mlir18InFlightDiagnosticD2Ev.exit53:          ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %.thread97

"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir5spirv12TosaSelectOp6verifyEvE3$_1EEbOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i.i.i35, %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.14.0121, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.10.0122, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.665.0123, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.063.0124, i64 8
  %.not109 = icmp eq ptr %i.cl, %i.ba
  br i1 %.not109, label %.thread97, label %.lr.ph.i.i.i.i.i.i35

.thread97:                                        ; preds = %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir5spirv12TosaSelectOp6verifyEvE3$_1EEbOT_T0_.exit", %.lr.ph.i.i.i.i.i.i, %bb.a, %bb.b, %bb.c, %bb.d, %_ZN4mlir18InFlightDiagnosticD2Ev.exit53, %_ZN4mlir18InFlightDiagnosticD2Ev.exit, %"_ZN4llvm6any_ofINS_8ArrayRefIN4mlir5spirv13TensorArmTypeEEEZNS3_12TosaSelectOp6verifyEvE3$_0EEbOT_T0_.exit.thread"
  %.sroa.025.6 = phi i8 [ 1, %.lr.ph.i.i.i.i.i.i ], [ 0, %"_ZN4llvm6any_ofINS_8ArrayRefIN4mlir5spirv13TensorArmTypeEEEZNS3_12TosaSelectOp6verifyEvE3$_0EEbOT_T0_.exit.thread" ], [ %i.bu, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.cf, %_ZN4mlir18InFlightDiagnosticD2Ev.exit53 ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ], [ 1, %"_ZN4llvm6any_ofINS_8ArrayRefIlEEZN4mlir5spirv12TosaSelectOp6verifyEvE3$_1EEbOT_T0_.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  ret i8 %.sroa.025.6
}

declare { ptr, i64 } @_ZNK4mlir5spirv13TensorArmType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !74
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %0) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !82, !range !83, !noundef !84
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8, !tbaa !82
  br i1 %i.d, label %bb.d, label %_ZNSt14_Optional_baseIN4mlir10DiagnosticELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.e) #9
  br label %_ZNSt14_Optional_baseIN4mlir10DiagnosticELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4mlir10DiagnosticELb0ELb0EED2Ev.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

declare ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr, i64) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #3

declare ptr @_ZNK4mlir17DenseElementsAttr14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4mlir4Type12isIntOrIndexEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, ptr } @_ZNK4mlir17DenseElementsAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4mlir17DenseElementsAttr18IntElementIteratorC1ES0_m(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64 noundef) unnamed_addr #2

declare noundef i64 @_ZNK4mlir17DenseElementsAttr14getNumElementsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZN4mlir5spirv12_GLOBAL__N_121verifyPool2DOutputDimEPNS_9OperationEllllllN4llvm9StringRefES5_S5_S5_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr %.0.val, i64 %.8.val, ptr %.0.val1, i64 %.8.val3, ptr %.0.val5, i64 %.8.val7, ptr %.0.val9, i64 %.8.val11) unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %10 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %11 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %12 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %13 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %14 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %15 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %16 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %18 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %20 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %22 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %23 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %24 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %26 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 31 uses
  %27 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %28 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %29 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = icmp eq i64 %1, -9223372036854775808
  br i1 %i.a, label %bb.bb, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sub i64 %1, %3
  %i.c = add i64 %i.b, %5
  %i.d = add i64 %i.c, %6                         ; 2 uses
  %i.e = srem i64 %i.d, %4
  %i.f = sdiv i64 %i.d, %4
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.aw, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #9
  %i.g = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %27, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !73
  store ptr @.str.16, ptr %27, align 8, !tbaa !58
  store i8 3, ptr %i.g, align 8, !tbaa !70
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %26, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %27) #9
  %i.i = load ptr, ptr %26, align 8, !tbaa !74
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRlEEOS0_OT_.exit77, label %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #9
  %i.k = getelementptr inbounds nuw i8, ptr %25, i64 32
  store i8 5, ptr %i.k, align 8, !tbaa !70
  %i.l = getelementptr inbounds nuw i8, ptr %25, i64 33
  store i8 1, ptr %i.l, align 1, !tbaa !73
  store ptr %.0.val, ptr %25, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %.8.val, ptr %i.m, align 8, !tbaa !58
  %i.n = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.j, ptr noundef nonnull align 8 dereferenceable(34) %25) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #9
  %.pr = load ptr, ptr %26, align 8, !tbaa !74
  %.not.i.i7 = icmp eq ptr %.pr, null
  br i1 %.not.i.i7, label %_ZNO4mlir18InFlightDiagnosticlsIRlEEOS0_OT_.exit77, label %bb.d

bb.d:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRN4llvm9StringRefEEEOS0_OT_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #9
  store i32 3, ptr %24, align 8, !tbaa !88
  %i.p = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr @.str.17, ptr %i.p, align 8, !tbaa !91
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %24, i64 16
  store i64 7, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 42 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !11   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %26, i64 36 ; 14 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !12
  %.not.i.i.i.i.i = icmp ult i32 %i.r, %i.t
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e, !prof !92

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %24)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA8_KcEEOS0_OT_.exit

bb.f:                                             ; preds = %bb.d
  %i.u = zext i32 %i.r to i64
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %24, i64 24, i1 false)
  %i.x = load i32, ptr %i.q, align 8, !tbaa !11
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.q, align 8, !tbaa !11
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA8_KcEEOS0_OT_.exit
end_hunk_0
