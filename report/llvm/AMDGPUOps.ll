Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUOps?download=true
inline.NumInlined: 37411
inline.NumDeleted: 5924
loop-unroll.NumCompletelyUnrolled: 197
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 201
begin_hunk_0_@_ZN4mlir6amdgpu21PackedStochRoundFp8Op5parseERNS_11OpAsmParserERNS_14OperationStateE:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %0) #25 ; 0 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !83
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 736
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call i8 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %7, i1 noundef zeroext true) #25
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i16 257, ptr %i.ax, align 8
  %i.ay = load ptr, ptr %0, align 8, !tbaa !83
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 416
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call i8 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.279, i64 4, ptr noundef nonnull align 8 dereferenceable(34) %4) #25, !inline_history !591
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.bd = load ptr, ptr %0, align 8, !tbaa !83
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %16, i8 0, i64 24, i1 false)
  %i.bh = load ptr, ptr %0, align 8, !tbaa !83
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 744
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call i16 %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %16, i1 noundef zeroext true) #25 ; 2 uses
  %i.bl = and i16 %i.bk, 256
  %.not = icmp eq i16 %i.bl, 0
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = trunc i16 %i.bk to i1
  br i1 %i.bm, label %bb.k, label %.critedge84

.critedge84:                                      ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir11OpAsmParser17UnresolvedOperandELb1EE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(28) %16)
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.bn = load i32, ptr %i.c, align 8, !tbaa !51
  %.not.i87 = icmp eq i32 %i.bn, 0
  br i1 %.not.i87, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i16 257, ptr %i.bo, align 8
  %i.bp = load ptr, ptr %0, align 8, !tbaa !83
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 416
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call i8 %i.br(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.280, i64 5, ptr noundef nonnull align 8 dereferenceable(34) %3) #25, !inline_history !591
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bu = load ptr, ptr %0, align 8, !tbaa !83
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 328
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = call i8 %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.bz = load ptr, ptr %0, align 8, !tbaa !83
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.cd = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, i32 noundef 32) #25
  %i.ce = call i8 @_ZN4mlir9AsmParser14parseAttributeINS_11IntegerAttrEEEN4llvm11ParseResultERT_NS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr %i.cd)
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.cg = load ptr, ptr %9, align 8, !tbaa !45
  %.not126 = icmp eq ptr %i.cg, null
  br i1 %.not126, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4mlir14OperationState18getOrAddPropertiesINS_6amdgpu6detail39PackedStochRoundFp8OpGenericAdaptorBase10PropertiesEEERT_v(ptr noundef nonnull align 8 dereferenceable(304) %1)
  %i.ci = load i64, ptr %9, align 8
  store i64 %i.ci, ptr %i.ch, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cj = load ptr, ptr %0, align 8, !tbaa !83
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 344
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call i8 %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.co = load ptr, ptr %0, align 8, !tbaa !83
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 104
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call i8 %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %i.ct = call i8 @_ZN4mlir9AsmParser9parseTypeINS_9FloatTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %17)
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.u, label %.thread

.thread:                                          ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.cv = load i64, ptr %17, align 8, !tbaa !69
  store i64 %i.cv, ptr %10, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i16 257, ptr %i.cw, align 8
  %i.cx = load ptr, ptr %0, align 8, !tbaa !83
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 416
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call i8 %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.144, i64 2, ptr noundef nonnull align 8 dereferenceable(34) %2) #25, !inline_history !591
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  store ptr null, ptr %18, align 8, !tbaa !257
  %i.dc = call i8 @_ZN4mlir9AsmParser9parseTypeINS_10VectorTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %18)
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.w, label %.thread124

.thread124:                                       ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %.loopexit

bb.w:                                             ; preds = %bb.v
  %i.de = load i64, ptr %18, align 8, !tbaa !69
  store i64 %i.de, ptr %12, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.df = load ptr, ptr %0, align 8, !tbaa !83
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 424
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = call i8 %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.279, i64 4) #25
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  store ptr null, ptr %19, align 8, !tbaa !257
  %i.dk = load ptr, ptr %0, align 8, !tbaa !83
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 584
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = call i16 %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %19) #25 ; 2 uses
  %i.do = and i16 %i.dn, 256
  %.not127 = icmp eq i16 %i.do, 0
  br i1 %.not127, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = trunc i16 %i.dn to i1
  br i1 %i.dp, label %bb.z, label %.critedge86

.critedge86:                                      ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %.loopexit

bb.z:                                             ; preds = %bb.y
  %.sroa.015.0.copyload = load ptr, ptr %19, align 8, !tbaa !69
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE9push_backES2_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr %.sroa.015.0.copyload)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.w
  %i.dq = load ptr, ptr %0, align 8, !tbaa !83
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = call noundef nonnull align 8 dereferenceable(8) ptr %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.du = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %i.dt, i32 noundef 32) #25
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull %12, i64 1)
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.dw = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.dv)
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %.critedge.i.i.preheader, label %.loopexit

20:                                               ; preds = %.critedge.i.i.preheader
  %21 = load i32, ptr %i.c, align 8, !tbaa !51
  %.not.i89 = icmp eq i32 %21, 0
  br i1 %.not.i89, label %bb.ad, label %bb.ac

.critedge.i.i.preheader:                          ; preds = %bb.ab
  %i.dy = load ptr, ptr %0, align 8, !tbaa !83
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 760
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = call i8 %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %7, ptr %i.du, ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #25, !inline_history !514
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %20, label %.loopexit

bb.ac:                                            ; preds = %20
  %i.ed = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEERNS3_INS_4TypeELj1EEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.dv)
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac, %20
  br label %.loopexit

.critedge:                                        ; preds = %bb.a, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge.i.i.preheader, %bb.ac, %bb.ab, %.thread124, %bb.u, %.thread, %bb.s, %bb.r, %bb.o, %bb.n, %bb.m, %bb.h, %bb.g, %bb.f, %bb.e, %bb.ad, %.critedge86, %.critedge84, %.critedge
  %.sroa.0122.3 = phi i8 [ 0, %.critedge ], [ 0, %bb.ac ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %.critedge84 ], [ 0, %bb.h ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.r ], [ 0, %.thread ], [ 0, %bb.s ], [ 0, %.thread124 ], [ 0, %.critedge86 ], [ 0, %bb.u ], [ 0, %bb.ab ], [ 1, %bb.ad ], [ 0, %.critedge.i.i.preheader ]
  %i.ef = load ptr, ptr %13, align 8, !tbaa !48   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.f
  br i1 %i.eg, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj1EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.ef) #25
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj1EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj1EED2Ev.exit: ; preds = %.loopexit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.eh = load ptr, ptr %8, align 8, !tbaa !48    ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.b
  br i1 %i.ei, label %_ZN4llvm11SmallVectorIN4mlir11OpAsmParser17UnresolvedOperandELj4EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj1EED2Ev.exit
  call void @free(ptr noundef %i.eh) #25
  br label %_ZN4llvm11SmallVectorIN4mlir11OpAsmParser17UnresolvedOperandELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir11OpAsmParser17UnresolvedOperandELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj1EED2Ev.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret i8 %.sroa.0122.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6amdgpu21PackedStochRoundFp8Op5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit:
  %2 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.1087", align 8 ; 9 uses
  %4 = alloca %"struct.mlir::detail::TypedValue.1401", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 2, ptr %i.c, align 4, !tbaa !50
  store ptr @.str.283, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 10, ptr %.sroa.3.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8, !tbaa !51
  %i.d = load ptr, ptr %0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.e = call ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %i.d) #25
  store ptr %i.e, ptr %2, align 8
  %i.f = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  %i.i = load ptr, ptr %3, align 8, !tbaa !48
  %i.j = load i32, ptr %i.b, align 8, !tbaa !51
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %1, align 8, !tbaa !83
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.g, i64 %i.h, ptr %i.i, i64 %i.k) #25
  %i.o = load ptr, ptr %1, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call noundef nonnull align 8 dereferenceable(48) ptr %i.q(ptr noundef nonnull align 8 dereferenceable(16) %1) #25, !inline_history !518 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !519  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !523
  %.not.i.i = icmp ult ptr %i.t, %i.v
  br i1 %.not.i.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit
  %i.w = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.r, i8 noundef zeroext 32) #25 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.x, ptr %i.s, align 8, !tbaa !519
  store i8 32, ptr %i.t, align 1, !tbaa !22
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit: ; preds = %bb.a, %bb.b
  %i.y = load ptr, ptr %0, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !17
  %i.ac = load ptr, ptr %1, align 8, !tbaa !83
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 168
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i) #25, !inline_history !524
  %i.af = load ptr, ptr %1, align 8, !tbaa !83
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef nonnull align 8 dereferenceable(48) ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %1) #25, !inline_history !518 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !519 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !523
  %.not.i.i38 = icmp ult ptr %i.ak, %i.am
  br i1 %.not.i.i38, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.an = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i8 noundef zeroext 32) #25 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit39

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !519
  store i8 32, ptr %i.ak, align 1, !tbaa !22
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit39

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit39: ; preds = %bb.c, %bb.d
  %i.ap = load ptr, ptr %1, align 8, !tbaa !83
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef nonnull align 8 dereferenceable(48) ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %1) #25, !inline_history !529 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !523
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !519 ; 2 uses
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit39
  %i.ay = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull @.str.134, i64 noundef 1) #25 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

bb.f:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit39
  store i8 43, ptr %i.aw, align 1
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !519
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store ptr %i.ba, ptr %i.av, align 8, !tbaa !519
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit: ; preds = %bb.e, %bb.f
  %i.bb = load ptr, ptr %1, align 8, !tbaa !83
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef nonnull align 8 dereferenceable(48) ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %1) #25, !inline_history !518 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !519 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !523
  %.not.i.i40 = icmp ult ptr %i.bg, %i.bi
  br i1 %.not.i.i40, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.bj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.be, i8 noundef zeroext 32) #25 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit41

bb.h:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store ptr %i.bk, ptr %i.bf, align 8, !tbaa !519
  store i8 32, ptr %i.bg, align 1, !tbaa !22
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit41

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit41: ; preds = %bb.g, %bb.h
  %i.bl = load ptr, ptr %0, align 8, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !14
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %.sroa.0.0.copyload.i.i.i.i43 = load ptr, ptr %i.bo, align 8, !tbaa !17
  %i.bp = load ptr, ptr %1, align 8, !tbaa !83
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 168
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i43) #25, !inline_history !524
  %i.bs = load ptr, ptr %1, align 8, !tbaa !83
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef nonnull align 8 dereferenceable(48) ptr %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %1) #25, !inline_history !518 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !519 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !523
  %.not.i.i44 = icmp ult ptr %i.bx, %i.bz
  br i1 %.not.i.i44, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit41
  %i.ca = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.bv, i8 noundef zeroext 32) #25 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit45

bb.j:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit41
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store ptr %i.cb, ptr %i.bw, align 8, !tbaa !519
end_hunk_0
begin_hunk_1_@_ZN4mlir6amdgpu24RawBufferAtomicCmpswapOp5parseERNS_11OpAsmParserERNS_14OperationStateE:bb.a
  br i1 %i.bw, label %bb.m, label %_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEEEENS2_11ParseResultEOT_NS_4TypeENS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE.exit

bb.m:                                             ; preds = %bb.l
  %i.bx = load ptr, ptr %0, align 8, !tbaa !83
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call ptr %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.cb = load ptr, ptr %0, align 8, !tbaa !83
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 752
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = call i8 %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef 0, i1 noundef zeroext true, i32 noundef -1) #25
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.n, label %_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEEEENS2_11ParseResultEOT_NS_4TypeENS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE.exit

bb.n:                                             ; preds = %bb.m
  %i.cg = load ptr, ptr %0, align 8, !tbaa !83
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 344
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call i8 %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.o, label %_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEEEENS2_11ParseResultEOT_NS_4TypeENS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE.exit

bb.o:                                             ; preds = %bb.n
  %i.cl = load ptr, ptr %0, align 8, !tbaa !83
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 424
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call i8 %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.313, i64 10) #25
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.cq = load ptr, ptr %0, align 8, !tbaa !83
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = call ptr %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %0) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %14, i8 0, i64 24, i1 false)
  %i.cu = load ptr, ptr %0, align 8, !tbaa !83
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 744
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = call i16 %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %14, i1 noundef zeroext true) #25 ; 2 uses
  %i.cy = and i16 %i.cx, 256
  %.not = icmp eq i16 %i.cy, 0
  br i1 %.not, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = trunc i16 %i.cx to i1
  br i1 %i.cz, label %bb.r, label %.critedge94

.critedge94:                                      ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEEEENS2_11ParseResultEOT_NS_4TypeENS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE.exit

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir11OpAsmParser17UnresolvedOperandELb1EE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(28) %14)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o
  %i.da = load ptr, ptr %0, align 8, !tbaa !83
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 104
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = call i8 %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.u, label %_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEEEENS2_11ParseResultEOT_NS_4TypeENS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE.exit

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  store ptr null, ptr %15, align 8, !tbaa !257
  %i.df = load ptr, ptr %0, align 8, !tbaa !83
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 568
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = call i8 %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %15) #25, !inline_history !513
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.v, label %.thread

.thread:                                          ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEEEENS2_11ParseResultEOT_NS_4TypeENS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE.exit

bb.v:                                             ; preds = %bb.u
  %i.dk = load i64, ptr %15, align 8, !tbaa !69
  store i64 %i.dk, ptr %8, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.dl = load ptr, ptr %0, align 8, !tbaa !83
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = call i8 %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %bb.w, label %_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEEEENS2_11ParseResultEOT_NS_4TypeENS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE.exit

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  store ptr null, ptr %16, align 8, !tbaa !257
  %i.dq = call i8 @_ZN4mlir9AsmParser9parseTypeINS_10MemRefTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %16)
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.x, label %.thread146

.thread146:                                       ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEEEENS2_11ParseResultEOT_NS_4TypeENS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE.exit

bb.x:                                             ; preds = %bb.w
  %i.ds = load i64, ptr %16, align 8, !tbaa !69
  store i64 %i.ds, ptr %9, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  %i.dt = load ptr, ptr %0, align 8, !tbaa !83
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 120
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = call i8 %i.dv(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.y, label %_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEEEENS2_11ParseResultEOT_NS_4TypeENS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE.exit

bb.y:                                             ; preds = %bb.x
  %i.dy = call i8 @_ZN4mlir9AsmParser13parseTypeListERN4llvm15SmallVectorImplINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %_ZN4llvm4copyINS_8ArrayRefIiEEPiEET0_OT_S4_.exit, label %_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEEEENS2_11ParseResultEOT_NS_4TypeENS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE.exit

_ZN4llvm4copyINS_8ArrayRefIiEEPiEET0_OT_S4_.exit: ; preds = %bb.y
  %i.ea = load i32, ptr %i.c, align 8, !tbaa !51
  %i.eb = load i32, ptr %i.f, align 8, !tbaa !51
  %i.ec = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4mlir14OperationState18getOrAddPropertiesINS_6amdgpu6detail42RawBufferAtomicCmpswapOpGenericAdaptorBase10PropertiesEEERT_v(ptr noundef nonnull align 8 dereferenceable(304) %1) ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store i32 1, ptr %i.ed, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 20
  store i32 1, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 28
  store i32 %i.ea, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  store i32 %i.eb, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ee = load ptr, ptr %0, align 8, !tbaa !83
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = call noundef nonnull align 8 dereferenceable(8) ptr %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  %i.ei = call ptr @_ZN4mlir7Builder14getIntegerTypeEj(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, i32 noundef 32) #25
  call void @_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr nonnull %8, i64 1)
  %.sroa.016.0.copyload = load ptr, ptr %8, align 8, !tbaa !69
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ek = load ptr, ptr %0, align 8, !tbaa !83
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 760
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = call i8 %i.em(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr %.sroa.016.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #25, !inline_history !514
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %.critedge.i.i97, label %_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEEEENS2_11ParseResultEOT_NS_4TypeENS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE.exit

.critedge.i.i97:                                  ; preds = %_ZN4llvm4copyINS_8ArrayRefIiEEPiEET0_OT_S4_.exit
  %.sroa.013.0.copyload = load ptr, ptr %8, align 8, !tbaa !69
  %i.ep = load ptr, ptr %0, align 8, !tbaa !83
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 760
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = call i8 %i.er(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %3, ptr %.sroa.013.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #25, !inline_history !514
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.z, label %_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEEEENS2_11ParseResultEOT_NS_4TypeENS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE.exit

bb.z:                                             ; preds = %.critedge.i.i97
  %i.eu = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm8ArrayRefINS0_17UnresolvedOperandEEERNS3_INS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.ej)
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.aa, label %_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEEEENS2_11ParseResultEOT_NS_4TypeENS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE.exit

bb.aa:                                            ; preds = %bb.z
  %i.ew = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEERNS3_INS_4TypeELj1EEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.ej)
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.ab, label %_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEEEENS2_11ParseResultEOT_NS_4TypeENS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ey = load i32, ptr %i.f, align 8, !tbaa !51  ; 2 uses
  %.not.i102 = icmp eq i32 %i.ey, 0
  br i1 %.not.i102, label %_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEEEENS2_11ParseResultEOT_NS_4TypeENS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ez = load ptr, ptr %7, align 8, !tbaa !48    ; 2 uses
  %i.fa = zext i32 %i.ey to i64
  %.idx.i.i103 = shl nuw nsw i64 %i.fa, 5
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.idx.i.i103
  br label %.critedge.i.i105

bb.ad:                                            ; preds = %.critedge.i.i105
  %i.fc = getelementptr inbounds nuw i8, ptr %.018.i.i106, i64 32 ; 2 uses
  %.not.i.i108 = icmp eq ptr %i.fc, %i.fb
  br i1 %.not.i.i108, label %_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEEEENS2_11ParseResultEOT_NS_4TypeENS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE.exit, label %.critedge.i.i105

.critedge.i.i105:                                 ; preds = %bb.ac, %bb.ad
  %.018.i.i106 = phi ptr [ %i.fc, %bb.ad ], [ %i.ez, %bb.ac ] ; 2 uses
  %i.fd = load ptr, ptr %0, align 8, !tbaa !83
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 760
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = call i8 %i.ff(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %.018.i.i106, ptr %i.ei, ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #25, !inline_history !549
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.ad, label %_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEEEENS2_11ParseResultEOT_NS_4TypeENS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE.exit

.critedge:                                        ; preds = %bb.a, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEEEENS2_11ParseResultEOT_NS_4TypeENS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE.exit

_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEEEENS2_11ParseResultEOT_NS_4TypeENS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE.exit: ; preds = %bb.ad, %.critedge.i.i105, %_ZN4llvm4copyINS_8ArrayRefIiEEPiEET0_OT_S4_.exit, %.critedge.i.i97, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %.thread146, %bb.v, %.thread, %bb.t, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %.critedge94, %.critedge
  %.sroa.0144.3 = phi i8 [ 0, %.critedge ], [ 0, %bb.aa ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %.critedge94 ], [ 0, %bb.n ], [ 0, %.thread ], [ 0, %bb.t ], [ 0, %.thread146 ], [ 0, %bb.v ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %_ZN4llvm4copyINS_8ArrayRefIiEEPiEET0_OT_S4_.exit ], [ 0, %.critedge.i.i97 ], [ 0, %bb.z ], [ 1, %bb.ab ], [ 0, %.critedge.i.i105 ], [ 1, %bb.ad ]
  %i.fi = load ptr, ptr %11, align 8, !tbaa !48   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.i
  br i1 %i.fj, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj1EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEEEENS2_11ParseResultEOT_NS_4TypeENS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE.exit
  call void @free(ptr noundef %i.fi) #25
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj1EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj1EED2Ev.exit: ; preds = %_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEEEENS2_11ParseResultEOT_NS_4TypeENS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.fk = load ptr, ptr %7, align 8, !tbaa !48    ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.e
  br i1 %i.fl, label %_ZN4llvm11SmallVectorIN4mlir11OpAsmParser17UnresolvedOperandELj4EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj1EED2Ev.exit
  call void @free(ptr noundef %i.fk) #25
  br label %_ZN4llvm11SmallVectorIN4mlir11OpAsmParser17UnresolvedOperandELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir11OpAsmParser17UnresolvedOperandELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIN4mlir4TypeELj1EED2Ev.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.fm = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.b
  br i1 %i.fn, label %_ZN4llvm11SmallVectorIN4mlir11OpAsmParser17UnresolvedOperandELj4EED2Ev.exit109, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm11SmallVectorIN4mlir11OpAsmParser17UnresolvedOperandELj4EED2Ev.exit
  call void @free(ptr noundef %i.fm) #25
  br label %_ZN4llvm11SmallVectorIN4mlir11OpAsmParser17UnresolvedOperandELj4EED2Ev.exit109

_ZN4llvm11SmallVectorIN4mlir11OpAsmParser17UnresolvedOperandELj4EED2Ev.exit109: ; preds = %_ZN4llvm11SmallVectorIN4mlir11OpAsmParser17UnresolvedOperandELj4EED2Ev.exit, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i8 %.sroa.0144.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir6amdgpu24RawBufferAtomicCmpswapOp5printERNS_12OpAsmPrinterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit:
  %2 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %3 = alloca %"class.llvm::SmallVector.1087", align 8 ; 11 uses
  %4 = alloca %"class.mlir::Builder", align 8     ; 4 uses
  %5 = alloca %"class.mlir::ValueTypeRange.1457", align 8 ; 6 uses
  %6 = alloca %"class.mlir::OperandRange", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 2, ptr %i.c, align 4, !tbaa !50
  store ptr @.str.151, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 19, ptr %.sroa.3.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.d = load ptr, ptr %0, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #25
  store ptr %i.f, ptr %4, align 8, !tbaa !219
  %i.g = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %.not.i.i.i = icmp ugt i32 %i.i, 16777215
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.k = lshr i32 %i.i, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.k, 1
  %i.l = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.critedge, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit
  %i.o = call ptr @_ZN4mlir7Builder11getBoolAttrEb(ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext true) #25
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.q = load i32, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %i.r = load i32, ptr %i.c, align 4, !tbaa !50
  %.not.i40 = icmp ult i32 %i.q, %i.r
  br i1 %.not.i40, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull @.str.147, i64 11)
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.s = zext i32 %i.q to i64
  %i.t = load ptr, ptr %3, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.s ; 2 uses
  store ptr @.str.147, ptr %i.u, align 1
  %.sroa.3.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 11, ptr %.sroa.3.0..sroa_idx.i41, align 1
  %i.v = load i32, ptr %i.b, align 8, !tbaa !51
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.b, align 8, !tbaa !51
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.x = load ptr, ptr %0, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.y = call ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %i.x) #25
  store ptr %i.y, ptr %2, align 8
  %i.z = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.aa = extractvalue { ptr, i64 } %i.z, 0
  %i.ab = extractvalue { ptr, i64 } %i.z, 1
  %i.ac = load ptr, ptr %3, align 8, !tbaa !48
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !51
  %i.ae = zext i32 %i.ad to i64
  %i.af = load ptr, ptr %1, align 8, !tbaa !83
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.aa, i64 %i.ab, ptr %i.ac, i64 %i.ae) #25
  %i.ai = load ptr, ptr %1, align 8, !tbaa !83
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call noundef nonnull align 8 dereferenceable(48) ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %1) #25, !inline_history !518 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !519 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !523
  %.not.i.i = icmp ult ptr %i.an, %i.ap
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.aq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.al, i8 noundef zeroext 32) #25 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

bb.f:                                             ; preds = %.critedge
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !519
  store i8 32, ptr %i.an, align 1, !tbaa !22
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit: ; preds = %bb.e, %bb.f
  %i.as = load ptr, ptr %0, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !14
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !17
  %i.aw = load ptr, ptr %1, align 8, !tbaa !83
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 168
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i.i.i.i) #25, !inline_history !524
  %i.az = load ptr, ptr %1, align 8, !tbaa !83
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef nonnull align 8 dereferenceable(48) ptr %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %1) #25, !inline_history !529 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !523
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !519 ; 2 uses
  %i.bh = icmp eq ptr %i.be, %i.bg
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.bi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, ptr noundef nonnull @.str.135, i64 noundef 1) #25 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

bb.h:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  store i8 44, ptr %i.bg, align 1
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !519
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store ptr %i.bk, ptr %i.bf, align 8, !tbaa !519
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit: ; preds = %bb.g, %bb.h
  %i.bl = load ptr, ptr %1, align 8, !tbaa !83
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef nonnull align 8 dereferenceable(48) ptr %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %1) #25, !inline_history !518 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !519 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !523
  %.not.i.i43 = icmp ult ptr %i.bq, %i.bs
  br i1 %.not.i.i43, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.bt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, i8 noundef zeroext 32) #25 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit44

bb.j:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store ptr %i.bu, ptr %i.bp, align 8, !tbaa !519
  store i8 32, ptr %i.bq, align 1, !tbaa !22
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit44

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit44: ; preds = %bb.i, %bb.j
  %i.bv = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !12
end_hunk_1
