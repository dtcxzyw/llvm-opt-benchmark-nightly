Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/XeGPUContiguityAnalysis?download=true
inline.NumInlined: 2927
inline.NumDeleted: 1357
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4mlir5xegpu6detail13axis_dataflow16AxisInfoAnalysis14visitBroadcastENS_6vector11BroadcastOpEN4llvm8ArrayRefIPKNS_8dataflow7LatticeINS2_8AxisInfoEEEEENS7_IPSB_EE:bb.a

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i:          ; preds = %bb.ae, %_ZN4mlir8dataflow7LatticeINS_5xegpu6detail13axis_dataflow8AxisInfoEE4joinERKS5_.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !28 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i
  call void @free(ptr noundef %i.dx) #16
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i:         ; preds = %bb.af, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i
  %i.ea = load ptr, ptr %9, align 8, !tbaa !28    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZN4mlir5xegpu6detail13axis_dataflow8AxisInfoD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i
  call void @free(ptr noundef %i.ea) #16
  br label %_ZN4mlir5xegpu6detail13axis_dataflow8AxisInfoD2Ev.exit

_ZN4mlir5xegpu6detail13axis_dataflow8AxisInfoD2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !28 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i47, label %bb.ah

bb.ah:                                            ; preds = %_ZN4mlir5xegpu6detail13axis_dataflow8AxisInfoD2Ev.exit
  call void @free(ptr noundef %i.ee) #16
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i47

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i47:        ; preds = %bb.ah, %_ZN4mlir5xegpu6detail13axis_dataflow8AxisInfoD2Ev.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !28 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i48, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i47
  call void @free(ptr noundef %i.ei) #16
  br label %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i48

_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i48:       ; preds = %bb.ai, %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit.i47
  %i.el = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZN4mlir5xegpu6detail13axis_dataflow8AxisInfoD2Ev.exit49, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i48
  call void @free(ptr noundef %i.el) #16
  br label %_ZN4mlir5xegpu6detail13axis_dataflow8AxisInfoD2Ev.exit49

_ZN4mlir5xegpu6detail13axis_dataflow8AxisInfoD2Ev.exit49: ; preds = %_ZN4llvm11SmallVectorIlLj6EED2Ev.exit1.i48, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN4mlir5xegpu6detail13axis_dataflow8AxisInfoD2Ev.exit49, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir5xegpu6detail13axis_dataflow16AxisInfoAnalysis14visitShapeCastENS_6vector11ShapeCastOpEN4llvm8ArrayRefIPKNS_8dataflow7LatticeINS2_8AxisInfoEEEEENS7_IPSB_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, i64 %3, ptr %4, i64 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"struct.mlir::xegpu::detail::axis_dataflow::AxisInfo", align 8 ; 11 uses
  %7 = alloca %"class.mlir::VectorType", align 8  ; 5 uses
  %8 = alloca %"class.mlir::VectorType", align 8  ; 6 uses
  %9 = alloca %"struct.mlir::xegpu::detail::axis_dataflow::AxisInfo", align 8 ; 20 uses
  %10 = alloca %"struct.mlir::xegpu::detail::axis_dataflow::AxisInfo", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.d, align 8
  %i.e = and i64 %.0.copyload.i.i.i.i.i.i, -8     ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  store ptr %i.f, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.g = getelementptr inbounds i8, ptr %1, i64 -8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i.i, -8   ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr
  store ptr %i.i, ptr %8, align 8
  %i.j = icmp eq i64 %i.e, 0
  %i.k = icmp eq i64 %i.h, 0
  %or.cond = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4mlir5xegpu6detail13axis_dataflow16AxisInfoAnalysis17setAllPessimisticEPNS_9OperationEN4llvm8ArrayRefIPNS_8dataflow7LatticeINS2_8AxisInfoEEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr %4, i64 %5)
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.l = load ptr, ptr %2, align 8, !tbaa !114
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  call void @_ZN4mlir5xegpu6detail13axis_dataflow8AxisInfoC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(224) %9, ptr noundef nonnull align 8 dereferenceable(224) %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !25
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN4mlir5xegpu6detail13axis_dataflow16AxisInfoAnalysis17setAllPessimisticEPNS_9OperationEN4llvm8ArrayRefIPNS_8dataflow7LatticeINS2_8AxisInfoEEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr %4, i64 %5)
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.p = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #16 ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.p, 1        ; 4 uses
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %_ZZN4mlir5xegpu6detail13axis_dataflow16AxisInfoAnalysis14visitShapeCastENS_6vector11ShapeCastOpEN4llvm8ArrayRefIPKNS_8dataflow7LatticeINS2_8AxisInfoEEEEENS7_IPSB_EEENKUlNS7_IlEEE_clESH_.exit, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.s = add i32 %.07.i, 1                        ; 2 uses
  %i.t = zext i32 %i.s to i64                     ; 3 uses
  %i.u = icmp ugt i64 %i.r, %i.t
  br i1 %i.u, label %.lr.ph.i, label %_ZZN4mlir5xegpu6detail13axis_dataflow16AxisInfoAnalysis14visitShapeCastENS_6vector11ShapeCastOpEN4llvm8ArrayRefIPKNS_8dataflow7LatticeINS2_8AxisInfoEEEEENS7_IPSB_EEENKUlNS7_IlEEE_clESH_.exit, !llvm.loop !295

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %i.v = phi i64 [ %i.t, %bb.f ], [ 0, %bb.e ]    ; 2 uses
  %.07.i = phi i32 [ %i.s, %bb.f ], [ 0, %bb.e ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !73
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.f, label %_ZZN4mlir5xegpu6detail13axis_dataflow16AxisInfoAnalysis14visitShapeCastENS_6vector11ShapeCastOpEN4llvm8ArrayRefIPKNS_8dataflow7LatticeINS2_8AxisInfoEEEEENS7_IPSB_EEENKUlNS7_IlEEE_clESH_.exit

_ZZN4mlir5xegpu6detail13axis_dataflow16AxisInfoAnalysis14visitShapeCastENS_6vector11ShapeCastOpEN4llvm8ArrayRefIPKNS_8dataflow7LatticeINS2_8AxisInfoEEEEENS7_IPSB_EEENKUlNS7_IlEEE_clESH_.exit: ; preds = %bb.f, %.lr.ph.i, %bb.e
  %.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.v, %.lr.ph.i ], [ %i.t, %bb.f ] ; 3 uses
  %i.z = sub i64 %i.r, %.lcssa.i                  ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.lcssa.i
  %i.ab = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #16 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0      ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1      ; 3 uses
  %.not.i36 = icmp eq i64 %i.ad, 0
  br i1 %.not.i36, label %_ZZN4mlir5xegpu6detail13axis_dataflow16AxisInfoAnalysis14visitShapeCastENS_6vector11ShapeCastOpEN4llvm8ArrayRefIPKNS_8dataflow7LatticeINS2_8AxisInfoEEEEENS7_IPSB_EEENKUlNS7_IlEEE_clESH_.exit42, label %.lr.ph.i37

bb.g:                                             ; preds = %.lr.ph.i37
  %i.ae = add i32 %.07.i38, 1                     ; 2 uses
  %i.af = zext i32 %i.ae to i64                   ; 3 uses
  %i.ag = icmp ugt i64 %i.ad, %i.af
  br i1 %i.ag, label %.lr.ph.i37, label %_ZZN4mlir5xegpu6detail13axis_dataflow16AxisInfoAnalysis14visitShapeCastENS_6vector11ShapeCastOpEN4llvm8ArrayRefIPKNS_8dataflow7LatticeINS2_8AxisInfoEEEEENS7_IPSB_EEENKUlNS7_IlEEE_clESH_.exit42, !llvm.loop !295

.lr.ph.i37:                                       ; preds = %_ZZN4mlir5xegpu6detail13axis_dataflow16AxisInfoAnalysis14visitShapeCastENS_6vector11ShapeCastOpEN4llvm8ArrayRefIPKNS_8dataflow7LatticeINS2_8AxisInfoEEEEENS7_IPSB_EEENKUlNS7_IlEEE_clESH_.exit, %bb.g
  %i.ah = phi i64 [ %i.af, %bb.g ], [ 0, %_ZZN4mlir5xegpu6detail13axis_dataflow16AxisInfoAnalysis14visitShapeCastENS_6vector11ShapeCastOpEN4llvm8ArrayRefIPKNS_8dataflow7LatticeINS2_8AxisInfoEEEEENS7_IPSB_EEENKUlNS7_IlEEE_clESH_.exit ] ; 2 uses
  %.07.i38 = phi i32 [ %i.ae, %bb.g ], [ 0, %_ZZN4mlir5xegpu6detail13axis_dataflow16AxisInfoAnalysis14visitShapeCastENS_6vector11ShapeCastOpEN4llvm8ArrayRefIPKNS_8dataflow7LatticeINS2_8AxisInfoEEEEENS7_IPSB_EEENKUlNS7_IlEEE_clESH_.exit ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !73
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.g, label %_ZZN4mlir5xegpu6detail13axis_dataflow16AxisInfoAnalysis14visitShapeCastENS_6vector11ShapeCastOpEN4llvm8ArrayRefIPKNS_8dataflow7LatticeINS2_8AxisInfoEEEEENS7_IPSB_EEENKUlNS7_IlEEE_clESH_.exit42

_ZZN4mlir5xegpu6detail13axis_dataflow16AxisInfoAnalysis14visitShapeCastENS_6vector11ShapeCastOpEN4llvm8ArrayRefIPKNS_8dataflow7LatticeINS2_8AxisInfoEEEEENS7_IPSB_EEENKUlNS7_IlEEE_clESH_.exit42: ; preds = %bb.g, %.lr.ph.i37, %_ZZN4mlir5xegpu6detail13axis_dataflow16AxisInfoAnalysis14visitShapeCastENS_6vector11ShapeCastOpEN4llvm8ArrayRefIPKNS_8dataflow7LatticeINS2_8AxisInfoEEEEENS7_IPSB_EEENKUlNS7_IlEEE_clESH_.exit
  %.lcssa.i39 = phi i64 [ 0, %_ZZN4mlir5xegpu6detail13axis_dataflow16AxisInfoAnalysis14visitShapeCastENS_6vector11ShapeCastOpEN4llvm8ArrayRefIPKNS_8dataflow7LatticeINS2_8AxisInfoEEEEENS7_IPSB_EEENKUlNS7_IlEEE_clESH_.exit ], [ %i.ah, %.lr.ph.i37 ], [ %i.af, %bb.g ] ; 2 uses
  %i.al = sub i64 %i.ad, %.lcssa.i39
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.lcssa.i39
  %i.an = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #16
  %i.ao = extractvalue { ptr, i64 } %i.an, 1      ; 7 uses
  %i.ap = trunc i64 %i.ao to i32                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @_ZN4mlir5xegpu6detail13axis_dataflow8AxisInfo14getPessimisticEj(ptr dead_on_unwind nonnull writable sret(%"struct.mlir::xegpu::detail::axis_dataflow::AxisInfo") align 8 %10, i32 noundef %i.ap)
  %.not.i.i = icmp eq i64 %i.z, %i.al
  br i1 %.not.i.i, label %bb.h, label %_ZN4llvmeqIlEEbNS_8ArrayRefIT_EES3_.exit.thread91

bb.h:                                             ; preds = %_ZZN4mlir5xegpu6detail13axis_dataflow16AxisInfoAnalysis14visitShapeCastENS_6vector11ShapeCastOpEN4llvm8ArrayRefIPKNS_8dataflow7LatticeINS2_8AxisInfoEEEEENS7_IPSB_EEENKUlNS7_IlEEE_clESH_.exit42
  %.not.not.i.i.i.i.i.i = icmp eq i64 %i.r, %.lcssa.i
  br i1 %.not.not.i.i.i.i.i.i, label %_ZN4llvmeqIlEEbNS_8ArrayRefIT_EES3_.exit.thread, label %_ZN4llvmeqIlEEbNS_8ArrayRefIT_EES3_.exit

_ZN4llvmeqIlEEbNS_8ArrayRefIT_EES3_.exit:         ; preds = %bb.h
  %.idx.i.i = shl nuw nsw i64 %i.z, 3
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.aa, ptr %i.am, i64 %.idx.i.i)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZN4llvmeqIlEEbNS_8ArrayRefIT_EES3_.exit.thread, label %_ZN4llvmeqIlEEbNS_8ArrayRefIT_EES3_.exit.thread91

_ZN4llvmeqIlEEbNS_8ArrayRefIT_EES3_.exit.thread:  ; preds = %bb.h, %_ZN4llvmeqIlEEbNS_8ArrayRefIT_EES3_.exit
  %i.aq = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #16
  %i.ar = sub i64 %i.ao, %i.z                     ; 3 uses
  %i.as = trunc i64 %i.ar to i32                  ; 2 uses
  %i.at = icmp ult i32 %i.as, %i.ap
  br i1 %i.at, label %.lr.ph98, label %.loopexit

.lr.ph98:                                         ; preds = %_ZN4llvmeqIlEEbNS_8ArrayRefIT_EES3_.exit.thread
  %i.au = extractvalue { ptr, i64 } %i.aq, 1      ; 3 uses
  %i.av = sub i64 %i.au, %i.ao                    ; 4 uses
  %i.aw = load ptr, ptr %9, align 8, !tbaa !28    ; 5 uses
  %i.ax = ptrtoaddr ptr %i.aw to i64              ; 3 uses
  %i.ay = load ptr, ptr %10, align 8, !tbaa !28   ; 5 uses
  %i.az = ptrtoaddr ptr %i.ay to i64              ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !28 ; 5 uses
  %i.bc = ptrtoaddr ptr %i.bb to i64              ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !28 ; 5 uses
  %i.bf = ptrtoaddr ptr %i.be to i64              ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 128
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !28 ; 5 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64              ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !28 ; 5 uses
  %i.bl = ptrtoaddr ptr %i.bk to i64              ; 3 uses
  %i.bm = and i64 %i.ar, 4294967295               ; 8 uses
  %wide.trip.count104 = and i64 %i.ao, 4294967295 ; 4 uses
  %i.bn = sub nsw i64 %wide.trip.count104, %i.bm  ; 3 uses
  %min.iters.check = icmp ult i64 %i.bn, 76
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph98
  %i.bo = xor i64 %i.bm, -1
  %i.bp = add nsw i64 %wide.trip.count104, %i.bo  ; 2 uses
  %i.bq = trunc i64 %i.au to i32
  %i.br = add i32 %i.bq, %i.as
  %i.bs = trunc i64 %i.bp to i32
  %i.bt = xor i32 %i.br, -1
  %i.bu = add i32 %i.bt, %i.ap
  %i.bv = icmp ult i32 %i.bu, %i.bs
  %i.bw = icmp ugt i64 %i.bp, 4294967295
  %i.bx = or i1 %i.bv, %i.bw
  br i1 %i.bx, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.by = sub i64 %i.az, %i.bf
  %diff.check = icmp ugt i64 %i.by, -16
  %i.bz = sub i64 %i.az, %i.bl
  %diff.check123 = icmp ugt i64 %i.bz, -16
  %conflict.rdx = or i1 %diff.check, %diff.check123
  %i.ca = shl nuw nsw i64 %i.bm, 3                ; 6 uses
  %i.cb = add i64 %i.au, %i.ar
  %i.cc = sub i64 %i.cb, %i.ao
  %i.cd = shl i64 %i.cc, 3
  %i.ce = and i64 %i.cd, 34359738360              ; 8 uses
  %11 = add i64 %i.ca, %i.az
  %i.cf = add i64 %i.ce, %i.ax
  %i.cg = sub i64 %i.cf, %11
  %diff.check124 = icmp ugt i64 %i.cg, -16
  %conflict.rdx125 = or i1 %conflict.rdx, %diff.check124
  %i.ch = add i64 %i.ce, %i.bc
  %i.ci = add i64 %i.ca, %i.az
  %i.cj = sub i64 %i.ci, %i.ch
  %diff.check126 = icmp ugt i64 %i.cj, -16
  %conflict.rdx127 = or i1 %conflict.rdx125, %diff.check126
  %i.ck = add i64 %i.ce, %i.bi                    ; 2 uses
  %i.cl = add i64 %i.ca, %i.az
  %i.cm = sub i64 %i.cl, %i.ck
  %diff.check128 = icmp ugt i64 %i.cm, -16
  %conflict.rdx129 = or i1 %conflict.rdx127, %diff.check128
  %i.cn = sub i64 %i.bf, %i.bl
  %diff.check130 = icmp ugt i64 %i.cn, -16
  %conflict.rdx131 = or i1 %conflict.rdx129, %diff.check130
  %i.co = add i64 %i.ca, %i.bf                    ; 2 uses
  %i.cp = add i64 %i.ce, %i.ax
  %i.cq = sub i64 %i.cp, %i.co
  %diff.check132 = icmp ugt i64 %i.cq, -16
  %conflict.rdx133 = or i1 %conflict.rdx131, %diff.check132
  %i.cr = add i64 %i.ce, %i.bc
  %i.cs = sub i64 %i.cr, %i.co
  %diff.check134 = icmp ugt i64 %i.cs, -16
  %conflict.rdx135 = or i1 %conflict.rdx133, %diff.check134
  %i.ct = add i64 %i.ca, %i.bf
  %i.cu = sub i64 %i.ct, %i.ck
  %diff.check136 = icmp ugt i64 %i.cu, -16
  %conflict.rdx137 = or i1 %conflict.rdx135, %diff.check136
  %i.cv = add i64 %i.ca, %i.bl                    ; 3 uses
  %i.cw = add i64 %i.ce, %i.ax
  %i.cx = sub i64 %i.cw, %i.cv
  %diff.check138 = icmp ugt i64 %i.cx, -16
  %conflict.rdx139 = or i1 %conflict.rdx137, %diff.check138
  %i.cy = add i64 %i.ce, %i.bc
  %i.cz = sub i64 %i.cy, %i.cv
  %diff.check140 = icmp ugt i64 %i.cz, -16
  %conflict.rdx141 = or i1 %conflict.rdx139, %diff.check140
  %i.da = add i64 %i.ce, %i.bi
  %i.db = sub i64 %i.da, %i.cv
  %diff.check142 = icmp ugt i64 %i.db, -16
  %conflict.rdx143 = or i1 %conflict.rdx141, %diff.check142
  br i1 %conflict.rdx143, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bn, -2                      ; 3 uses
  %i.dc = add nsw i64 %i.bm, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dd = add nuw i64 %i.bm, %index               ; 4 uses
  %i.de = add i64 %i.av, %i.dd
  %i.df = and i64 %i.de, 4294967295               ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.df
  %wide.load = load <2 x i64>, ptr %i.dg, align 8, !tbaa !73
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dd
  store <2 x i64> %wide.load, ptr %i.dh, align 8, !tbaa !73
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.df
  %wide.load144 = load <2 x i64>, ptr %i.di, align 8, !tbaa !73
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.dd
  store <2 x i64> %wide.load144, ptr %i.dj, align 8, !tbaa !73
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.df
  %wide.load145 = load <2 x i64>, ptr %i.dk, align 8, !tbaa !73
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.dd
  store <2 x i64> %wide.load145, ptr %i.dl, align 8, !tbaa !73
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !296

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph98, %middle.block
  %indvars.iv101.ph = phi i64 [ %i.bm, %vector.memcheck ], [ %i.bm, %vector.scevcheck ], [ %i.bm, %.lr.ph98 ], [ %i.dc, %middle.block ] ; 8 uses
  %i.dn = sub i64 %i.ao, %indvars.iv101.ph
  %.neg = add nsw i64 %indvars.iv101.ph, 1
  %xtraiter149 = and i64 %i.dn, 1
  %lcmp.mod150.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod150.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.do = add i64 %i.av, %indvars.iv101.ph
  %i.dp = and i64 %i.do, 4294967295               ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !73
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv101.ph
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !73
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.dp
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !73
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv101.ph
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !73
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.dp
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !73
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv101.ph
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !73
  %indvars.iv.next102.prol = add nuw nsw i64 %indvars.iv101.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv101.unr = phi i64 [ %indvars.iv101.ph, %scalar.ph.preheader ], [ %indvars.iv.next102.prol, %scalar.ph.prol ]
  %i.dz = icmp eq i64 %wide.trip.count104, %.neg
  br i1 %i.dz, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv101 = phi i64 [ %indvars.iv.next102.1, %scalar.ph ], [ %indvars.iv101.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ea = add i64 %i.av, %indvars.iv101
  %i.eb = and i64 %i.ea, 4294967295               ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !73
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv101
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !73
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.eb
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !73
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv101
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !73
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.eb
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !73
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv101
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !73
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 4 uses
  %i.el = add i64 %i.av, %indvars.iv.next102
  %i.em = and i64 %i.el, 4294967295               ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !73
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next102
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !73
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.em
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !73
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next102
  store i64 %i.er, ptr %i.es, align 8, !tbaa !73
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.em
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !73
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next102
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !73
  %indvars.iv.next102.1 = add nuw nsw i64 %indvars.iv101, 2 ; 2 uses
  %exitcond105.not.1 = icmp eq i64 %indvars.iv.next102.1, %wide.trip.count104
  br i1 %exitcond105.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !297

_ZN4llvmeqIlEEbNS_8ArrayRefIT_EES3_.exit.thread91: ; preds = %_ZZN4mlir5xegpu6detail13axis_dataflow16AxisInfoAnalysis14visitShapeCastENS_6vector11ShapeCastOpEN4llvm8ArrayRefIPKNS_8dataflow7LatticeINS2_8AxisInfoEEEEENS7_IPSB_EEENKUlNS7_IlEEE_clESH_.exit42, %_ZN4llvmeqIlEEbNS_8ArrayRefIT_EES3_.exit
  %i.ew = call { ptr, i64 } @_ZNK4mlir10VectorType8getShapeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #16 ; 2 uses
  %i.ex = extractvalue { ptr, i64 } %i.ew, 0
  %i.ey = extractvalue { ptr, i64 } %i.ew, 1
  %i.ez = getelementptr [8 x i8], ptr %i.ex, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.ez, i64 -8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !73 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %9, i64 128
  %i.fd = load i32, ptr %i.n, align 8, !tbaa !25  ; 5 uses
  %i.fe = add i32 %i.fd, -1
  %i.ff = zext i32 %i.fe to i64
  %i.fg = load ptr, ptr %i.fc, align 8, !tbaa !28
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.ff
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !73
  %.not99 = icmp eq i32 %i.fd, 0
  br i1 %.not99, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvmeqIlEEbNS_8ArrayRefIT_EES3_.exit.thread91
  %i.fj = load ptr, ptr %9, align 8, !tbaa !28    ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !28 ; 3 uses
  %wide.trip.count = zext i32 %i.fd to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.fm = icmp eq i32 %i.fd, 1
  br i1 %i.fm, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.i

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.08894.epil.init = phi i64 [ 9223372036854775807, %.lr.ph ], [ %.sroa.speculated.1, %._crit_edge.loopexit.unr-lcssa ]
  %.08993.epil.init = phi i64 [ 9223372036854775807, %.lr.ph ], [ %.sroa.speculated58.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod148 = trunc i32 %i.fd to i1
  call void @llvm.assume(i1 %lcmp.mod148)
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv.epil.init
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !73
  %.sroa.speculated58.epil = call i64 @llvm.smin.i64(i64 %i.fo, i64 %.08993.epil.init)
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.epil.init
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !73
  %.sroa.speculated.epil = call i64 @llvm.smin.i64(i64 %i.fq, i64 %.08894.epil.init)
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.epil.preheader
  %.sroa.speculated58.lcssa = phi i64 [ %.sroa.speculated58.1, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.speculated58.epil, %.epil.preheader ]
  %.sroa.speculated.lcssa = phi i64 [ %.sroa.speculated.1, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.speculated.epil, %.epil.preheader ]
  %i.fr = call i64 @llvm.smin.i64(i64 %i.fb, i64 %.sroa.speculated58.lcssa)
  %i.fs = call i64 @llvm.smin.i64(i64 %i.fb, i64 %.sroa.speculated.lcssa)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvmeqIlEEbNS_8ArrayRefIT_EES3_.exit.thread91
  %.089.lcssa = phi i64 [ %i.fb, %_ZN4llvmeqIlEEbNS_8ArrayRefIT_EES3_.exit.thread91 ], [ %i.fr, %._crit_edge.loopexit ]
  %.088.lcssa = phi i64 [ %i.fb, %_ZN4llvmeqIlEEbNS_8ArrayRefIT_EES3_.exit.thread91 ], [ %i.fs, %._crit_edge.loopexit ]
  %i.ft = add i64 %i.ao, 4294967295
  %i.fu = and i64 %i.ft, 4294967295               ; 3 uses
  %i.fv = load ptr, ptr %10, align 8, !tbaa !28
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fu
  store i64 %.089.lcssa, ptr %i.fw, align 8, !tbaa !73
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !28
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fu
  store i64 %.088.lcssa, ptr %i.fz, align 8, !tbaa !73
  %i.ga = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !28
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.fu
  store i64 %i.fi, ptr %i.gc, align 8, !tbaa !73
  br label %.loopexit

bb.i:                                             ; preds = %bb.i, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.i ] ; 4 uses
  %.08894 = phi i64 [ 9223372036854775807, %.lr.ph.new ], [ %.sroa.speculated.1, %bb.i ]
  %.08993 = phi i64 [ 9223372036854775807, %.lr.ph.new ], [ %.sroa.speculated58.1, %bb.i ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.i ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !73
  %.sroa.speculated58 = call i64 @llvm.smin.i64(i64 %i.ge, i64 %.08993)
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !73
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.gg, i64 %.08894)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %indvars.iv.next
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !73
  %.sroa.speculated58.1 = call i64 @llvm.smin.i64(i64 %i.gi, i64 %.sroa.speculated58) ; 3 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !73
  %.sroa.speculated.1 = call i64 @llvm.smin.i64(i64 %i.gk, i64 %.sroa.speculated) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.i, !llvm.loop !298

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN4llvmeqIlEEbNS_8ArrayRefIT_EES3_.exit.thread, %._crit_edge
  %i.gl = getelementptr inbounds nuw i8, ptr %9, i64 200
  %i.gm = load i8, ptr %i.gl, align 8, !tbaa !95, !range !111, !noundef !83
  %i.gn = trunc nuw i8 %i.gm to i1
end_hunk_0
