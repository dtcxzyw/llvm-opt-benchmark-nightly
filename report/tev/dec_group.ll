Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dec_group?download=true
inline.NumInlined: 2848
inline.NumDeleted: 1074
loop-unroll.NumCompletelyUnrolled: 609
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 661
begin_hunk_0_@_ZN3jxl12_GLOBAL__N_121GetBlockFromBitstreamD2Ev:bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN3jxl12_GLOBAL__N_121GetBlockFromBitstreamD0Ev(ptr noundef nonnull align 8 dereferenceable(7496) initializes((0, 8)) %0) unnamed_addr #38 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3jxl12_GLOBAL__N_121GetBlockFromBitstreamE, i64 16), ptr %0, align 8, !tbaa !194
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6168
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #49, !inline_history !4979
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5560
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #49, !inline_history !4979
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4952
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #49, !inline_history !4979
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4344
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #49, !inline_history !4979
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3736
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.e) #49, !inline_history !4979
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3128
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #49, !inline_history !4979
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2520
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #49, !inline_history !4979
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1912
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #49, !inline_history !4979
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1304
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #49, !inline_history !4979
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 696
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.j) #49, !inline_history !4979
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.k) #49, !inline_history !4979
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 7496) #52
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i32 0, 2) i32 @_ZN3jxl12_GLOBAL__N_116DecodeACVarBlockILNS_6ACTypeE0ELb1EEENS_6StatusEmmPiPKimmmmmNS_10AcStrategyEPKjPNS_9BitReaderEPNS_15ANSSymbolReaderERKNSt3__16vectorIhNSE_9allocatorIhEEEEPKhS6_RKNS_11BlockCtxMapENS_5ACPtrEm(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef captures(none) %2, ptr noalias nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 %7, i64 noundef %8, i64 %9, ptr noalias nofree noundef readonly captures(none) %10, ptr noalias noundef %11, ptr noalias noundef %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %13, ptr nofree noundef readonly captures(none) %14, ptr nofree noundef readonly captures(none) %15, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %16, i64 %17, i64 noundef %18) unnamed_addr #8 {
bb.a:
  %i.a = inttoptr i64 %17 to ptr
  %i.b = trunc i64 %1 to i32
  %i.c = shl nuw i32 1, %i.b
  %i.d = sext i32 %i.c to i64                     ; 6 uses
  %i.e = shl nsw i64 %i.d, 6                      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4994)
  %i.f = icmp eq i64 %6, 0
  %i.g = icmp eq ptr %3, null                     ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %3, align 4, !tbaa !23, !alias.scope !4993
  br label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr [4 x i8], ptr %2, i64 %6
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !23, !alias.scope !4994
  br label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %6
  %i.m = load i32, ptr %i.l, align 4, !tbaa !23, !alias.scope !4993
  %i.n = getelementptr [4 x i8], ptr %2, i64 %6
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !23, !alias.scope !4994
  %i.q = add i32 %i.m, 1
  %i.r = add i32 %i.q, %i.p
  %i.s = sdiv i32 %i.r, 2
  br label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit

_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit:    ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.s, %bb.f ], [ %i.k, %bb.e ], [ %i.h, %bb.c ], [ 32, %bb.b ] ; 2 uses
  %i.t = and i64 %9, 255
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN3jxlL14kStrategyOrderE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !222
  %i.w = zext i8 %i.v to i64                      ; 2 uses
  %.idx88 = mul nuw nsw i64 %i.w, 24
  %i.x = getelementptr i8, ptr @_ZN3jxlL17kCoeffOrderOffsetE, i64 %.idx88
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %5
  %i.z = load i64, ptr %i.y, align 8, !tbaa !191
  %.idx = shl i64 %i.z, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 %.idx
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 %8
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !222
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %6
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !23 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !299 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !334 ; 4 uses
  %.not17.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not17.i, label %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = ptrtoaddr ptr %i.ag to i64
  %i.al = add i64 %i.aj, -4
  %i.am = sub i64 %i.al, %i.ak                    ; 2 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 12
  br i1 %min.iters.check, label %.lr.ph.i.preheader125, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ao, 9223372036854775804     ; 3 uses
  %i.ap = shl i64 %n.vec, 2
  %i.aq = getelementptr i8, ptr %i.ag, i64 %i.ap
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi110 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.ar = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !23
  %wide.load111 = load <2 x i32>, ptr %i.as, align 4, !tbaa !23
  %i.at = icmp ugt <2 x i32> %broadcast.splat, %wide.load
  %i.au = icmp ugt <2 x i32> %broadcast.splat, %wide.load111
  %i.av = zext <2 x i1> %i.at to <2 x i64>
  %i.aw = zext <2 x i1> %i.au to <2 x i64>
  %i.ax = add <2 x i64> %vec.phi, %i.av           ; 2 uses
  %i.ay = add <2 x i64> %vec.phi110, %i.aw        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !4983

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit, label %.lr.ph.i.preheader125

.lr.ph.i.preheader125:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.019.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.014.018.i.ph = phi ptr [ %i.ag, %.lr.ph.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader125, %.lr.ph.i
  %.019.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader125 ]
  %.sroa.014.018.i = phi ptr [ %i.be, %.lr.ph.i ], [ %.sroa.014.018.i.ph, %.lr.ph.i.preheader125 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.014.018.i, align 4, !tbaa !23
  %i.bc = icmp ugt i32 %i.ae, %i.bb
  %i.bd = zext i1 %i.bc to i64
  %spec.select.i = add i64 %.019.i, %i.bd         ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.014.018.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.be, %i.ai
  br i1 %.not.i, label %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit, label %.lr.ph.i, !llvm.loop !4984

_ZNK3jxl11BlockCtxMap7ContextEijmm.exit:          ; preds = %.lr.ph.i, %middle.block, %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit ], [ %i.ba, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %i.bf = icmp ult i64 %5, 2
  %i.bg = xor i64 %5, 1
  %i.bh = mul i64 %i.bg, 13
  %i.bi = select i1 %i.bf, i64 %i.bh, i64 26
  %i.bj = add i64 %i.bi, %i.w
  %i.bk = ptrtoint ptr %i.ai to i64
  %i.bl = ptrtoint ptr %i.ag to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  %i.bo = add nsw i64 %i.bn, 1
  %i.bp = mul i64 %i.bo, %i.bj
  %i.bq = add i64 %.0.lcssa.i, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 128
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !337
  %i.bt = mul i64 %i.bs, %i.bq
  %i.bu = zext i8 %i.ac to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 96
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !338
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.bt
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bu
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !222
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %.0.i, i32 64) ; 2 uses
  %i.cb = icmp ult i32 %.0.i, 8
  %i.cc = lshr i32 %spec.store.select.i, 1
  %i.cd = add nuw nsw i32 %i.cc, 4
  %.0.i82 = select i1 %i.cb, i32 %spec.store.select.i, i32 %i.cd
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 120 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !317
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = mul i32 %.0.i82, %i.cg
  %i.ci = trunc i64 %0 to i32
  %i.cj = add i32 %i.ca, %i.ci
  %i.ck = add i32 %i.cj, %i.ch
  %i.cl = sext i32 %i.ck to i64
  %i.cm = load ptr, ptr %13, align 8, !tbaa !338, !noalias !4995
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cl
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !222, !noalias !4995
  %i.cp = zext i8 %i.co to i64
  %i.cq = tail call noundef i64 @_ZN3jxl15ANSSymbolReader23ReadHybridUintClusteredILb1EEEmmPNS_9BitReaderE(ptr noundef nonnull align 8 dereferenceable(604) %12, i64 noundef %i.cp, ptr noundef %11) #50 ; 5 uses
  %i.cr = mul nsw i64 %i.d, 63
  %i.cs = icmp ugt i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.h, label %.preheader.preheader.a

.preheader.preheader.a:                           ; preds = %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit
  %19 = and i64 %9, 4294967295                    ; 3 uses
  %20 = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !222
  %i.ct = add nsw i64 %i.d, -1
  %i.cu = add i64 %i.ct, %i.cq
  %i.cv = lshr i64 %i.cu, %1
  %i.cw = trunc i64 %i.cv to i32                  ; 2 uses
  %i.cx = getelementptr [4 x i8], ptr %2, i64 %6
  %22 = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %19
  %23 = load i8, ptr %22, align 1, !tbaa !222
  %24 = tail call i8 @llvm.umax.i8(i8 %23, i8 1)
  %umax = zext i8 %24 to i64                      ; 3 uses
  %25 = tail call i8 @llvm.umax.i8(i8 %21, i8 1)
  %umax99 = zext i8 %25 to i64
  %26 = shl nuw i64 1, %19
  %27 = and i64 %26, 786431
  %min.iters.check113.not = icmp eq i64 %27, 0
  %n.vec115 = and i64 %umax, 248                  ; 3 uses
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.cw, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n122 = icmp eq i64 %n.vec115, %umax
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader.a, %._crit_edge
  %.07991 = phi i64 [ %i.dp, %._crit_edge ], [ 0, %.preheader.preheader.a ] ; 2 uses
  %i.cy = mul i64 %.07991, %4
  %invariant.gep = getelementptr [4 x i8], ptr %i.cx, i64 %i.cy ; 2 uses
  br i1 %min.iters.check113.not, label %vector.body118, label %scalar.ph112.preheader

vector.body118:                                   ; preds = %.preheader, %vector.body118
  %index119 = phi i64 [ %index.next120, %vector.body118 ], [ 0, %.preheader ] ; 2 uses
  %i.cz = getelementptr [4 x i8], ptr %invariant.gep, i64 %index119 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  store <4 x i32> %broadcast.splat117, ptr %i.cz, align 4, !tbaa !23
  store <4 x i32> %broadcast.splat117, ptr %i.da, align 4, !tbaa !23
  %index.next120 = add nuw i64 %index119, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next120, %n.vec115
  br i1 %i.db, label %middle.block121, label %vector.body118, !llvm.loop !4987

middle.block121:                                  ; preds = %vector.body118
  br i1 %cmp.n122, label %._crit_edge, label %scalar.ph112.preheader

scalar.ph112.preheader:                           ; preds = %.preheader, %middle.block121
  %.07890.ph = phi i64 [ 0, %.preheader ], [ %n.vec115, %middle.block121 ]
  br label %scalar.ph112

._crit_edge92.split:                              ; preds = %._crit_edge
  %i.dc = load i64, ptr %i.ce, align 8, !tbaa !317
  %i.dd = mul nuw nsw i32 %i.ca, 458
  %i.de = trunc i64 %i.dc to i32
  %i.df = mul i32 %i.de, 37
  %i.dg = add i32 %i.df, %i.dd
  %i.dh = zext i32 %i.dg to i64
  %i.di = icmp ugt i64 %i.e, %i.d
  %i.dj = icmp ne i64 %i.cq, 0                    ; 2 uses
  %i.dk = and i1 %i.di, %i.dj
  br i1 %i.dk, label %.lr.ph, label %._crit_edge97

.lr.ph:                                           ; preds = %._crit_edge92.split
  %i.dl = lshr exact i64 %i.e, 4
  %i.dm = icmp ule i64 %i.cq, %i.dl
  %i.dn = zext i1 %i.dm to i64
  %i.do = add nsw i64 %i.d, -1
  br label %bb.g

._crit_edge:                                      ; preds = %scalar.ph112, %middle.block121
  %i.dp = add nuw nsw i64 %.07991, 1              ; 2 uses
  %exitcond100.not = icmp eq i64 %i.dp, %umax99
  br i1 %exitcond100.not, label %._crit_edge92.split, label %.preheader, !llvm.loop !4988

scalar.ph112:                                     ; preds = %scalar.ph112.preheader, %scalar.ph112
  %.07890 = phi i64 [ %i.dq, %scalar.ph112 ], [ %.07890.ph, %scalar.ph112.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.07890
  store i32 %i.cw, ptr %gep, align 4, !tbaa !23
  %i.dq = add nuw nsw i64 %.07890, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %umax
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph112, !llvm.loop !4989

._crit_edge97:                                    ; preds = %bb.g, %._crit_edge92.split
  %.lcssa = phi i1 [ %i.dj, %._crit_edge92.split ], [ %i.fb, %bb.g ]
  %spec.select = zext i1 %.lcssa to i32
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.095 = phi i64 [ %i.d, %.lr.ph ], [ %i.ez, %bb.g ] ; 3 uses
  %.07794 = phi i64 [ %i.dn, %.lr.ph ], [ %i.ex, %bb.g ]
  %.08093 = phi i64 [ %i.cq, %.lr.ph ], [ %i.ey, %bb.g ] ; 2 uses
  %i.dr = add i64 %i.do, %.08093
  %i.ds = lshr i64 %i.dr, %1
  %i.dt = lshr i64 %.095, %1
  %i.du = getelementptr inbounds nuw [2 x i8], ptr @_ZN3jxlL23kCoeffNumNonzeroContextE, i64 %i.ds
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !256
  %i.dw = zext i16 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr @_ZN3jxlL17kCoeffFreqContextE, i64 %i.dt
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !256
  %i.dz = zext i16 %i.dy to i64
  %i.ea = add nuw nsw i64 %i.dz, %i.dw
  %i.eb = shl nuw nsw i64 %i.ea, 1
  %i.ec = load ptr, ptr %13, align 8, !tbaa !338, !noalias !4996
  %i.ed = getelementptr i8, ptr %i.ec, i64 %0
  %i.ee = getelementptr i8, ptr %i.ed, i64 %i.dh
  %i.ef = getelementptr i8, ptr %i.ee, i64 %i.eb
  %i.eg = getelementptr i8, ptr %i.ef, i64 %.07794
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !222, !noalias !4996
  %i.ei = zext i8 %i.eh to i64
  %i.ej = tail call noundef i64 @_ZN3jxl15ANSSymbolReader23ReadHybridUintClusteredILb1EEEmmPNS_9BitReaderE(ptr noundef nonnull align 8 dereferenceable(604) %12, i64 noundef %i.ei, ptr noundef %11) #50 ; 3 uses
  %i.ek = lshr i64 %i.ej, 1
  %i.el = and i64 %i.ej, 1
  %i.em = sub nsw i64 0, %i.el
  %i.en = xor i64 %i.ek, %i.em
  %i.eo = shl i64 %i.en, %18
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.095
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !23
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.er ; 2 uses
  %i.et = load i16, ptr %i.es, align 2, !tbaa !256
  %i.eu = trunc i64 %i.eo to i16
  %i.ev = add i16 %i.et, %i.eu
  store i16 %i.ev, ptr %i.es, align 2, !tbaa !256
  %i.ew = icmp ne i64 %i.ej, 0
  %i.ex = zext i1 %i.ew to i64                    ; 2 uses
  %i.ey = sub nuw i64 %.08093, %i.ex              ; 2 uses
  %i.ez = add nuw i64 %.095, 1                    ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.e
  %i.fb = icmp ne i64 %i.ey, 0                    ; 2 uses
  %i.fc = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %i.fc, label %bb.g, label %._crit_edge97, !llvm.loop !4992

bb.h:                                             ; preds = %._crit_edge97, %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit
  %.sroa.087.0 = phi i32 [ %spec.select, %._crit_edge97 ], [ 1, %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit ]
  ret i32 %.sroa.087.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i32 0, 2) i32 @_ZN3jxl12_GLOBAL__N_116DecodeACVarBlockILNS_6ACTypeE1ELb1EEENS_6StatusEmmPiPKimmmmmNS_10AcStrategyEPKjPNS_9BitReaderEPNS_15ANSSymbolReaderERKNSt3__16vectorIhNSE_9allocatorIhEEEEPKhS6_RKNS_11BlockCtxMapENS_5ACPtrEm(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef captures(none) %2, ptr noalias nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 %7, i64 noundef %8, i64 %9, ptr noalias nofree noundef readonly captures(none) %10, ptr noalias noundef %11, ptr noalias noundef %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %13, ptr nofree noundef readonly captures(none) %14, ptr nofree noundef readonly captures(none) %15, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %16, i64 %17, i64 noundef %18) unnamed_addr #8 {
bb.a:
  %i.a = inttoptr i64 %17 to ptr
  %i.b = trunc i64 %1 to i32
  %i.c = shl nuw i32 1, %i.b
  %i.d = sext i32 %i.c to i64                     ; 6 uses
  %i.e = shl nsw i64 %i.d, 6                      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5011)
  %i.f = icmp eq i64 %6, 0
  %i.g = icmp eq ptr %3, null                     ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %3, align 4, !tbaa !23, !alias.scope !5010
  br label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr [4 x i8], ptr %2, i64 %6
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !23, !alias.scope !5011
  br label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %6
  %i.m = load i32, ptr %i.l, align 4, !tbaa !23, !alias.scope !5010
  %i.n = getelementptr [4 x i8], ptr %2, i64 %6
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !23, !alias.scope !5011
  %i.q = add i32 %i.m, 1
  %i.r = add i32 %i.q, %i.p
  %i.s = sdiv i32 %i.r, 2
  br label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit

_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit:    ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.s, %bb.f ], [ %i.k, %bb.e ], [ %i.h, %bb.c ], [ 32, %bb.b ] ; 2 uses
  %i.t = and i64 %9, 255
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN3jxlL14kStrategyOrderE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !222
  %i.w = zext i8 %i.v to i64                      ; 2 uses
  %.idx88 = mul nuw nsw i64 %i.w, 24
  %i.x = getelementptr i8, ptr @_ZN3jxlL17kCoeffOrderOffsetE, i64 %.idx88
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %5
  %i.z = load i64, ptr %i.y, align 8, !tbaa !191
  %.idx = shl i64 %i.z, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 %.idx
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 %8
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !222
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %6
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !23 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !299 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !334 ; 4 uses
  %.not17.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not17.i, label %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = ptrtoaddr ptr %i.ag to i64
  %i.al = add i64 %i.aj, -4
  %i.am = sub i64 %i.al, %i.ak                    ; 2 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 12
  br i1 %min.iters.check, label %.lr.ph.i.preheader125, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ao, 9223372036854775804     ; 3 uses
  %i.ap = shl i64 %n.vec, 2
  %i.aq = getelementptr i8, ptr %i.ag, i64 %i.ap
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi110 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.ar = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !23
  %wide.load111 = load <2 x i32>, ptr %i.as, align 4, !tbaa !23
  %i.at = icmp ugt <2 x i32> %broadcast.splat, %wide.load
  %i.au = icmp ugt <2 x i32> %broadcast.splat, %wide.load111
  %i.av = zext <2 x i1> %i.at to <2 x i64>
  %i.aw = zext <2 x i1> %i.au to <2 x i64>
  %i.ax = add <2 x i64> %vec.phi, %i.av           ; 2 uses
  %i.ay = add <2 x i64> %vec.phi110, %i.aw        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !5000

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit, label %.lr.ph.i.preheader125

.lr.ph.i.preheader125:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.019.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.014.018.i.ph = phi ptr [ %i.ag, %.lr.ph.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader125, %.lr.ph.i
  %.019.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader125 ]
  %.sroa.014.018.i = phi ptr [ %i.be, %.lr.ph.i ], [ %.sroa.014.018.i.ph, %.lr.ph.i.preheader125 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.014.018.i, align 4, !tbaa !23
  %i.bc = icmp ugt i32 %i.ae, %i.bb
  %i.bd = zext i1 %i.bc to i64
  %spec.select.i = add i64 %.019.i, %i.bd         ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.014.018.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.be, %i.ai
  br i1 %.not.i, label %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit, label %.lr.ph.i, !llvm.loop !5001

_ZNK3jxl11BlockCtxMap7ContextEijmm.exit:          ; preds = %.lr.ph.i, %middle.block, %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit ], [ %i.ba, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %i.bf = icmp ult i64 %5, 2
  %i.bg = xor i64 %5, 1
  %i.bh = mul i64 %i.bg, 13
  %i.bi = select i1 %i.bf, i64 %i.bh, i64 26
  %i.bj = add i64 %i.bi, %i.w
  %i.bk = ptrtoint ptr %i.ai to i64
  %i.bl = ptrtoint ptr %i.ag to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  %i.bo = add nsw i64 %i.bn, 1
  %i.bp = mul i64 %i.bo, %i.bj
  %i.bq = add i64 %.0.lcssa.i, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 128
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !337
  %i.bt = mul i64 %i.bs, %i.bq
  %i.bu = zext i8 %i.ac to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 96
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !338
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.bt
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bu
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !222
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %.0.i, i32 64) ; 2 uses
  %i.cb = icmp ult i32 %.0.i, 8
  %i.cc = lshr i32 %spec.store.select.i, 1
  %i.cd = add nuw nsw i32 %i.cc, 4
  %.0.i82 = select i1 %i.cb, i32 %spec.store.select.i, i32 %i.cd
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 120 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !317
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = mul i32 %.0.i82, %i.cg
  %i.ci = trunc i64 %0 to i32
  %i.cj = add i32 %i.ca, %i.ci
  %i.ck = add i32 %i.cj, %i.ch
  %i.cl = sext i32 %i.ck to i64
  %i.cm = load ptr, ptr %13, align 8, !tbaa !338, !noalias !5012
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cl
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !222, !noalias !5012
  %i.cp = zext i8 %i.co to i64
  %i.cq = tail call noundef i64 @_ZN3jxl15ANSSymbolReader23ReadHybridUintClusteredILb1EEEmmPNS_9BitReaderE(ptr noundef nonnull align 8 dereferenceable(604) %12, i64 noundef %i.cp, ptr noundef %11) #50 ; 5 uses
  %i.cr = mul nsw i64 %i.d, 63
  %i.cs = icmp ugt i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.h, label %.preheader.preheader.a

.preheader.preheader.a:                           ; preds = %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit
  %19 = and i64 %9, 4294967295                    ; 3 uses
  %20 = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !222
  %i.ct = add nsw i64 %i.d, -1
  %i.cu = add i64 %i.ct, %i.cq
  %i.cv = lshr i64 %i.cu, %1
  %i.cw = trunc i64 %i.cv to i32                  ; 2 uses
  %i.cx = getelementptr [4 x i8], ptr %2, i64 %6
  %22 = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %19
  %23 = load i8, ptr %22, align 1, !tbaa !222
  %24 = tail call i8 @llvm.umax.i8(i8 %23, i8 1)
  %umax = zext i8 %24 to i64                      ; 3 uses
  %25 = tail call i8 @llvm.umax.i8(i8 %21, i8 1)
  %umax99 = zext i8 %25 to i64
  %26 = shl nuw i64 1, %19
  %27 = and i64 %26, 786431
  %min.iters.check113.not = icmp eq i64 %27, 0
  %n.vec115 = and i64 %umax, 248                  ; 3 uses
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.cw, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n122 = icmp eq i64 %n.vec115, %umax
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader.a, %._crit_edge
  %.07991 = phi i64 [ %i.dp, %._crit_edge ], [ 0, %.preheader.preheader.a ] ; 2 uses
  %i.cy = mul i64 %.07991, %4
  %invariant.gep = getelementptr [4 x i8], ptr %i.cx, i64 %i.cy ; 2 uses
  br i1 %min.iters.check113.not, label %vector.body118, label %scalar.ph112.preheader

vector.body118:                                   ; preds = %.preheader, %vector.body118
  %index119 = phi i64 [ %index.next120, %vector.body118 ], [ 0, %.preheader ] ; 2 uses
  %i.cz = getelementptr [4 x i8], ptr %invariant.gep, i64 %index119 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  store <4 x i32> %broadcast.splat117, ptr %i.cz, align 4, !tbaa !23
  store <4 x i32> %broadcast.splat117, ptr %i.da, align 4, !tbaa !23
  %index.next120 = add nuw i64 %index119, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next120, %n.vec115
  br i1 %i.db, label %middle.block121, label %vector.body118, !llvm.loop !5004

middle.block121:                                  ; preds = %vector.body118
  br i1 %cmp.n122, label %._crit_edge, label %scalar.ph112.preheader

scalar.ph112.preheader:                           ; preds = %.preheader, %middle.block121
  %.07890.ph = phi i64 [ 0, %.preheader ], [ %n.vec115, %middle.block121 ]
  br label %scalar.ph112

._crit_edge92.split:                              ; preds = %._crit_edge
  %i.dc = load i64, ptr %i.ce, align 8, !tbaa !317
  %i.dd = mul nuw nsw i32 %i.ca, 458
  %i.de = trunc i64 %i.dc to i32
  %i.df = mul i32 %i.de, 37
  %i.dg = add i32 %i.df, %i.dd
  %i.dh = zext i32 %i.dg to i64
  %i.di = icmp ugt i64 %i.e, %i.d
  %i.dj = icmp ne i64 %i.cq, 0                    ; 2 uses
  %i.dk = and i1 %i.di, %i.dj
  br i1 %i.dk, label %.lr.ph, label %._crit_edge97

.lr.ph:                                           ; preds = %._crit_edge92.split
  %i.dl = lshr exact i64 %i.e, 4
  %i.dm = icmp ule i64 %i.cq, %i.dl
  %i.dn = zext i1 %i.dm to i64
  %i.do = add nsw i64 %i.d, -1
  br label %bb.g

._crit_edge:                                      ; preds = %scalar.ph112, %middle.block121
  %i.dp = add nuw nsw i64 %.07991, 1              ; 2 uses
  %exitcond100.not = icmp eq i64 %i.dp, %umax99
  br i1 %exitcond100.not, label %._crit_edge92.split, label %.preheader, !llvm.loop !5005

scalar.ph112:                                     ; preds = %scalar.ph112.preheader, %scalar.ph112
  %.07890 = phi i64 [ %i.dq, %scalar.ph112 ], [ %.07890.ph, %scalar.ph112.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.07890
  store i32 %i.cw, ptr %gep, align 4, !tbaa !23
  %i.dq = add nuw nsw i64 %.07890, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %umax
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph112, !llvm.loop !5006

._crit_edge97:                                    ; preds = %bb.g, %._crit_edge92.split
  %.lcssa = phi i1 [ %i.dj, %._crit_edge92.split ], [ %i.fb, %bb.g ]
  %spec.select = zext i1 %.lcssa to i32
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.095 = phi i64 [ %i.d, %.lr.ph ], [ %i.ez, %bb.g ] ; 3 uses
  %.07794 = phi i64 [ %i.dn, %.lr.ph ], [ %i.ex, %bb.g ]
  %.08093 = phi i64 [ %i.cq, %.lr.ph ], [ %i.ey, %bb.g ] ; 2 uses
  %i.dr = add i64 %i.do, %.08093
  %i.ds = lshr i64 %i.dr, %1
  %i.dt = lshr i64 %.095, %1
  %i.du = getelementptr inbounds nuw [2 x i8], ptr @_ZN3jxlL23kCoeffNumNonzeroContextE, i64 %i.ds
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !256
  %i.dw = zext i16 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr @_ZN3jxlL17kCoeffFreqContextE, i64 %i.dt
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !256
  %i.dz = zext i16 %i.dy to i64
  %i.ea = add nuw nsw i64 %i.dz, %i.dw
  %i.eb = shl nuw nsw i64 %i.ea, 1
  %i.ec = load ptr, ptr %13, align 8, !tbaa !338, !noalias !5013
  %i.ed = getelementptr i8, ptr %i.ec, i64 %0
  %i.ee = getelementptr i8, ptr %i.ed, i64 %i.dh
  %i.ef = getelementptr i8, ptr %i.ee, i64 %i.eb
  %i.eg = getelementptr i8, ptr %i.ef, i64 %.07794
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !222, !noalias !5013
  %i.ei = zext i8 %i.eh to i64
  %i.ej = tail call noundef i64 @_ZN3jxl15ANSSymbolReader23ReadHybridUintClusteredILb1EEEmmPNS_9BitReaderE(ptr noundef nonnull align 8 dereferenceable(604) %12, i64 noundef %i.ei, ptr noundef %11) #50 ; 3 uses
  %i.ek = lshr i64 %i.ej, 1
  %i.el = and i64 %i.ej, 1
  %i.em = sub nsw i64 0, %i.el
  %i.en = xor i64 %i.ek, %i.em
  %i.eo = shl i64 %i.en, %18
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.095
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !23
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.er ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !23
  %i.eu = trunc i64 %i.eo to i32
  %i.ev = add i32 %i.et, %i.eu
  store i32 %i.ev, ptr %i.es, align 4, !tbaa !23
  %i.ew = icmp ne i64 %i.ej, 0
  %i.ex = zext i1 %i.ew to i64                    ; 2 uses
  %i.ey = sub nuw i64 %.08093, %i.ex              ; 2 uses
  %i.ez = add nuw i64 %.095, 1                    ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.e
  %i.fb = icmp ne i64 %i.ey, 0                    ; 2 uses
  %i.fc = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %i.fc, label %bb.g, label %._crit_edge97, !llvm.loop !5009

bb.h:                                             ; preds = %._crit_edge97, %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit
  %.sroa.087.0 = phi i32 [ %spec.select, %._crit_edge97 ], [ 1, %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit ]
  ret i32 %.sroa.087.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i32 0, 2) i32 @_ZN3jxl12_GLOBAL__N_116DecodeACVarBlockILNS_6ACTypeE0ELb0EEENS_6StatusEmmPiPKimmmmmNS_10AcStrategyEPKjPNS_9BitReaderEPNS_15ANSSymbolReaderERKNSt3__16vectorIhNSE_9allocatorIhEEEEPKhS6_RKNS_11BlockCtxMapENS_5ACPtrEm(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef captures(none) %2, ptr noalias nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 %7, i64 noundef %8, i64 %9, ptr noalias nofree noundef readonly captures(none) %10, ptr noalias noundef %11, ptr noalias noundef %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %13, ptr nofree noundef readonly captures(none) %14, ptr nofree noundef readonly captures(none) %15, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %16, i64 %17, i64 noundef %18) unnamed_addr #8 {
bb.a:
  %i.a = inttoptr i64 %17 to ptr
  %i.b = trunc i64 %1 to i32
  %i.c = shl nuw i32 1, %i.b
  %i.d = sext i32 %i.c to i64                     ; 6 uses
  %i.e = shl nsw i64 %i.d, 6                      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5028)
  %i.f = icmp eq i64 %6, 0
  %i.g = icmp eq ptr %3, null                     ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %3, align 4, !tbaa !23, !alias.scope !5027
  br label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr [4 x i8], ptr %2, i64 %6
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !23, !alias.scope !5028
  br label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %6
  %i.m = load i32, ptr %i.l, align 4, !tbaa !23, !alias.scope !5027
  %i.n = getelementptr [4 x i8], ptr %2, i64 %6
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !23, !alias.scope !5028
  %i.q = add i32 %i.m, 1
  %i.r = add i32 %i.q, %i.p
  %i.s = sdiv i32 %i.r, 2
  br label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit

_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit:    ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.s, %bb.f ], [ %i.k, %bb.e ], [ %i.h, %bb.c ], [ 32, %bb.b ] ; 2 uses
  %i.t = and i64 %9, 255
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN3jxlL14kStrategyOrderE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !222
  %i.w = zext i8 %i.v to i64                      ; 2 uses
  %.idx88 = mul nuw nsw i64 %i.w, 24
  %i.x = getelementptr i8, ptr @_ZN3jxlL17kCoeffOrderOffsetE, i64 %.idx88
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %5
  %i.z = load i64, ptr %i.y, align 8, !tbaa !191
  %.idx = shl i64 %i.z, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 %.idx
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 %8
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !222
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %6
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !23 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !299 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !334 ; 4 uses
  %.not17.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not17.i, label %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = ptrtoaddr ptr %i.ag to i64
  %i.al = add i64 %i.aj, -4
  %i.am = sub i64 %i.al, %i.ak                    ; 2 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 12
  br i1 %min.iters.check, label %.lr.ph.i.preheader125, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ao, 9223372036854775804     ; 3 uses
  %i.ap = shl i64 %n.vec, 2
  %i.aq = getelementptr i8, ptr %i.ag, i64 %i.ap
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi110 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.ar = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !23
  %wide.load111 = load <2 x i32>, ptr %i.as, align 4, !tbaa !23
  %i.at = icmp ugt <2 x i32> %broadcast.splat, %wide.load
  %i.au = icmp ugt <2 x i32> %broadcast.splat, %wide.load111
  %i.av = zext <2 x i1> %i.at to <2 x i64>
  %i.aw = zext <2 x i1> %i.au to <2 x i64>
  %i.ax = add <2 x i64> %vec.phi, %i.av           ; 2 uses
  %i.ay = add <2 x i64> %vec.phi110, %i.aw        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !5017

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit, label %.lr.ph.i.preheader125

.lr.ph.i.preheader125:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.019.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.014.018.i.ph = phi ptr [ %i.ag, %.lr.ph.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader125, %.lr.ph.i
  %.019.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader125 ]
  %.sroa.014.018.i = phi ptr [ %i.be, %.lr.ph.i ], [ %.sroa.014.018.i.ph, %.lr.ph.i.preheader125 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.014.018.i, align 4, !tbaa !23
  %i.bc = icmp ugt i32 %i.ae, %i.bb
  %i.bd = zext i1 %i.bc to i64
  %spec.select.i = add i64 %.019.i, %i.bd         ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.014.018.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.be, %i.ai
  br i1 %.not.i, label %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit, label %.lr.ph.i, !llvm.loop !5018

_ZNK3jxl11BlockCtxMap7ContextEijmm.exit:          ; preds = %.lr.ph.i, %middle.block, %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit ], [ %i.ba, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %i.bf = icmp ult i64 %5, 2
  %i.bg = xor i64 %5, 1
  %i.bh = mul i64 %i.bg, 13
  %i.bi = select i1 %i.bf, i64 %i.bh, i64 26
  %i.bj = add i64 %i.bi, %i.w
  %i.bk = ptrtoint ptr %i.ai to i64
  %i.bl = ptrtoint ptr %i.ag to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  %i.bo = add nsw i64 %i.bn, 1
  %i.bp = mul i64 %i.bo, %i.bj
  %i.bq = add i64 %.0.lcssa.i, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 128
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !337
  %i.bt = mul i64 %i.bs, %i.bq
  %i.bu = zext i8 %i.ac to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 96
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !338
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.bt
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bu
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !222
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %.0.i, i32 64) ; 2 uses
  %i.cb = icmp ult i32 %.0.i, 8
  %i.cc = lshr i32 %spec.store.select.i, 1
  %i.cd = add nuw nsw i32 %i.cc, 4
  %.0.i82 = select i1 %i.cb, i32 %spec.store.select.i, i32 %i.cd
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 120 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !317
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = mul i32 %.0.i82, %i.cg
  %i.ci = trunc i64 %0 to i32
  %i.cj = add i32 %i.ca, %i.ci
  %i.ck = add i32 %i.cj, %i.ch
  %i.cl = sext i32 %i.ck to i64
  %i.cm = load ptr, ptr %13, align 8, !tbaa !338, !noalias !5029
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cl
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !222, !noalias !5029
  %i.cp = zext i8 %i.co to i64
  %i.cq = tail call noundef i64 @_ZN3jxl15ANSSymbolReader23ReadHybridUintClusteredILb0EEEmmPNS_9BitReaderE(ptr noundef nonnull align 8 dereferenceable(604) %12, i64 noundef %i.cp, ptr noundef %11) #50 ; 5 uses
  %i.cr = mul nsw i64 %i.d, 63
  %i.cs = icmp ugt i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.h, label %.preheader.preheader.a

.preheader.preheader.a:                           ; preds = %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit
  %19 = and i64 %9, 4294967295                    ; 3 uses
  %20 = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !222
  %i.ct = add nsw i64 %i.d, -1
  %i.cu = add i64 %i.ct, %i.cq
  %i.cv = lshr i64 %i.cu, %1
  %i.cw = trunc i64 %i.cv to i32                  ; 2 uses
  %i.cx = getelementptr [4 x i8], ptr %2, i64 %6
  %22 = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %19
  %23 = load i8, ptr %22, align 1, !tbaa !222
  %24 = tail call i8 @llvm.umax.i8(i8 %23, i8 1)
  %umax = zext i8 %24 to i64                      ; 3 uses
  %25 = tail call i8 @llvm.umax.i8(i8 %21, i8 1)
  %umax99 = zext i8 %25 to i64
  %26 = shl nuw i64 1, %19
  %27 = and i64 %26, 786431
  %min.iters.check113.not = icmp eq i64 %27, 0
  %n.vec115 = and i64 %umax, 248                  ; 3 uses
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.cw, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n122 = icmp eq i64 %n.vec115, %umax
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader.a, %._crit_edge
  %.07991 = phi i64 [ %i.dp, %._crit_edge ], [ 0, %.preheader.preheader.a ] ; 2 uses
  %i.cy = mul i64 %.07991, %4
  %invariant.gep = getelementptr [4 x i8], ptr %i.cx, i64 %i.cy ; 2 uses
  br i1 %min.iters.check113.not, label %vector.body118, label %scalar.ph112.preheader

vector.body118:                                   ; preds = %.preheader, %vector.body118
  %index119 = phi i64 [ %index.next120, %vector.body118 ], [ 0, %.preheader ] ; 2 uses
  %i.cz = getelementptr [4 x i8], ptr %invariant.gep, i64 %index119 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  store <4 x i32> %broadcast.splat117, ptr %i.cz, align 4, !tbaa !23
  store <4 x i32> %broadcast.splat117, ptr %i.da, align 4, !tbaa !23
  %index.next120 = add nuw i64 %index119, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next120, %n.vec115
  br i1 %i.db, label %middle.block121, label %vector.body118, !llvm.loop !5021

middle.block121:                                  ; preds = %vector.body118
  br i1 %cmp.n122, label %._crit_edge, label %scalar.ph112.preheader

scalar.ph112.preheader:                           ; preds = %.preheader, %middle.block121
  %.07890.ph = phi i64 [ 0, %.preheader ], [ %n.vec115, %middle.block121 ]
  br label %scalar.ph112

._crit_edge92.split:                              ; preds = %._crit_edge
  %i.dc = load i64, ptr %i.ce, align 8, !tbaa !317
  %i.dd = mul nuw nsw i32 %i.ca, 458
  %i.de = trunc i64 %i.dc to i32
  %i.df = mul i32 %i.de, 37
  %i.dg = add i32 %i.df, %i.dd
  %i.dh = zext i32 %i.dg to i64
  %i.di = icmp ugt i64 %i.e, %i.d
  %i.dj = icmp ne i64 %i.cq, 0                    ; 2 uses
  %i.dk = and i1 %i.di, %i.dj
  br i1 %i.dk, label %.lr.ph, label %._crit_edge97

.lr.ph:                                           ; preds = %._crit_edge92.split
  %i.dl = lshr exact i64 %i.e, 4
  %i.dm = icmp ule i64 %i.cq, %i.dl
  %i.dn = zext i1 %i.dm to i64
  %i.do = add nsw i64 %i.d, -1
  br label %bb.g

._crit_edge:                                      ; preds = %scalar.ph112, %middle.block121
  %i.dp = add nuw nsw i64 %.07991, 1              ; 2 uses
  %exitcond100.not = icmp eq i64 %i.dp, %umax99
  br i1 %exitcond100.not, label %._crit_edge92.split, label %.preheader, !llvm.loop !5022

scalar.ph112:                                     ; preds = %scalar.ph112.preheader, %scalar.ph112
  %.07890 = phi i64 [ %i.dq, %scalar.ph112 ], [ %.07890.ph, %scalar.ph112.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.07890
  store i32 %i.cw, ptr %gep, align 4, !tbaa !23
  %i.dq = add nuw nsw i64 %.07890, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %umax
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph112, !llvm.loop !5023

._crit_edge97:                                    ; preds = %bb.g, %._crit_edge92.split
  %.lcssa = phi i1 [ %i.dj, %._crit_edge92.split ], [ %i.fb, %bb.g ]
  %spec.select = zext i1 %.lcssa to i32
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.095 = phi i64 [ %i.d, %.lr.ph ], [ %i.ez, %bb.g ] ; 3 uses
  %.07794 = phi i64 [ %i.dn, %.lr.ph ], [ %i.ex, %bb.g ]
  %.08093 = phi i64 [ %i.cq, %.lr.ph ], [ %i.ey, %bb.g ] ; 2 uses
  %i.dr = add i64 %i.do, %.08093
  %i.ds = lshr i64 %i.dr, %1
  %i.dt = lshr i64 %.095, %1
  %i.du = getelementptr inbounds nuw [2 x i8], ptr @_ZN3jxlL23kCoeffNumNonzeroContextE, i64 %i.ds
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !256
  %i.dw = zext i16 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr @_ZN3jxlL17kCoeffFreqContextE, i64 %i.dt
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !256
  %i.dz = zext i16 %i.dy to i64
  %i.ea = add nuw nsw i64 %i.dz, %i.dw
  %i.eb = shl nuw nsw i64 %i.ea, 1
  %i.ec = load ptr, ptr %13, align 8, !tbaa !338, !noalias !5030
  %i.ed = getelementptr i8, ptr %i.ec, i64 %0
  %i.ee = getelementptr i8, ptr %i.ed, i64 %i.dh
  %i.ef = getelementptr i8, ptr %i.ee, i64 %i.eb
  %i.eg = getelementptr i8, ptr %i.ef, i64 %.07794
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !222, !noalias !5030
  %i.ei = zext i8 %i.eh to i64
  %i.ej = tail call noundef i64 @_ZN3jxl15ANSSymbolReader23ReadHybridUintClusteredILb0EEEmmPNS_9BitReaderE(ptr noundef nonnull align 8 dereferenceable(604) %12, i64 noundef %i.ei, ptr noundef %11) #50 ; 3 uses
  %i.ek = lshr i64 %i.ej, 1
  %i.el = and i64 %i.ej, 1
  %i.em = sub nsw i64 0, %i.el
  %i.en = xor i64 %i.ek, %i.em
  %i.eo = shl i64 %i.en, %18
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.095
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !23
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.er ; 2 uses
  %i.et = load i16, ptr %i.es, align 2, !tbaa !256
  %i.eu = trunc i64 %i.eo to i16
  %i.ev = add i16 %i.et, %i.eu
  store i16 %i.ev, ptr %i.es, align 2, !tbaa !256
  %i.ew = icmp ne i64 %i.ej, 0
  %i.ex = zext i1 %i.ew to i64                    ; 2 uses
  %i.ey = sub nuw i64 %.08093, %i.ex              ; 2 uses
  %i.ez = add nuw i64 %.095, 1                    ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.e
  %i.fb = icmp ne i64 %i.ey, 0                    ; 2 uses
  %i.fc = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %i.fc, label %bb.g, label %._crit_edge97, !llvm.loop !5026

bb.h:                                             ; preds = %._crit_edge97, %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit
  %.sroa.087.0 = phi i32 [ %spec.select, %._crit_edge97 ], [ 1, %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit ]
  ret i32 %.sroa.087.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i32 0, 2) i32 @_ZN3jxl12_GLOBAL__N_116DecodeACVarBlockILNS_6ACTypeE1ELb0EEENS_6StatusEmmPiPKimmmmmNS_10AcStrategyEPKjPNS_9BitReaderEPNS_15ANSSymbolReaderERKNSt3__16vectorIhNSE_9allocatorIhEEEEPKhS6_RKNS_11BlockCtxMapENS_5ACPtrEm(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef captures(none) %2, ptr noalias nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 %7, i64 noundef %8, i64 %9, ptr noalias nofree noundef readonly captures(none) %10, ptr noalias noundef %11, ptr noalias noundef %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %13, ptr nofree noundef readonly captures(none) %14, ptr nofree noundef readonly captures(none) %15, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %16, i64 %17, i64 noundef %18) unnamed_addr #8 {
bb.a:
  %i.a = inttoptr i64 %17 to ptr
  %i.b = trunc i64 %1 to i32
  %i.c = shl nuw i32 1, %i.b
  %i.d = sext i32 %i.c to i64                     ; 6 uses
  %i.e = shl nsw i64 %i.d, 6                      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5045)
  %i.f = icmp eq i64 %6, 0
  %i.g = icmp eq ptr %3, null                     ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %3, align 4, !tbaa !23, !alias.scope !5044
  br label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr [4 x i8], ptr %2, i64 %6
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !23, !alias.scope !5045
  br label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %6
  %i.m = load i32, ptr %i.l, align 4, !tbaa !23, !alias.scope !5044
  %i.n = getelementptr [4 x i8], ptr %2, i64 %6
  %i.o = getelementptr i8, ptr %i.n, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !23, !alias.scope !5045
  %i.q = add i32 %i.m, 1
  %i.r = add i32 %i.q, %i.p
  %i.s = sdiv i32 %i.r, 2
  br label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit

_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit:    ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.s, %bb.f ], [ %i.k, %bb.e ], [ %i.h, %bb.c ], [ 32, %bb.b ] ; 2 uses
  %i.t = and i64 %9, 255
  %i.u = getelementptr inbounds nuw i8, ptr @_ZN3jxlL14kStrategyOrderE, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !222
  %i.w = zext i8 %i.v to i64                      ; 2 uses
  %.idx88 = mul nuw nsw i64 %i.w, 24
  %i.x = getelementptr i8, ptr @_ZN3jxlL17kCoeffOrderOffsetE, i64 %.idx88
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %5
  %i.z = load i64, ptr %i.y, align 8, !tbaa !191
  %.idx = shl i64 %i.z, 8
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 %.idx
  %i.ab = getelementptr inbounds nuw i8, ptr %14, i64 %8
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !222
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %15, i64 %6
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !23 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !299 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !334 ; 4 uses
  %.not17.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not17.i, label %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = ptrtoaddr ptr %i.ag to i64
  %i.al = add i64 %i.aj, -4
  %i.am = sub i64 %i.al, %i.ak                    ; 2 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 12
  br i1 %min.iters.check, label %.lr.ph.i.preheader125, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ao, 9223372036854775804     ; 3 uses
  %i.ap = shl i64 %n.vec, 2
  %i.aq = getelementptr i8, ptr %i.ag, i64 %i.ap
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi110 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %i.ar = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !23
  %wide.load111 = load <2 x i32>, ptr %i.as, align 4, !tbaa !23
  %i.at = icmp ugt <2 x i32> %broadcast.splat, %wide.load
  %i.au = icmp ugt <2 x i32> %broadcast.splat, %wide.load111
  %i.av = zext <2 x i1> %i.at to <2 x i64>
  %i.aw = zext <2 x i1> %i.au to <2 x i64>
  %i.ax = add <2 x i64> %vec.phi, %i.av           ; 2 uses
  %i.ay = add <2 x i64> %vec.phi110, %i.aw        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !5034

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit, label %.lr.ph.i.preheader125

.lr.ph.i.preheader125:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.019.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ba, %middle.block ]
  %.sroa.014.018.i.ph = phi ptr [ %i.ag, %.lr.ph.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader125, %.lr.ph.i
  %.019.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader125 ]
  %.sroa.014.018.i = phi ptr [ %i.be, %.lr.ph.i ], [ %.sroa.014.018.i.ph, %.lr.ph.i.preheader125 ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.014.018.i, align 4, !tbaa !23
  %i.bc = icmp ugt i32 %i.ae, %i.bb
  %i.bd = zext i1 %i.bc to i64
  %spec.select.i = add i64 %.019.i, %i.bd         ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.014.018.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.be, %i.ai
  br i1 %.not.i, label %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit, label %.lr.ph.i, !llvm.loop !5035

_ZNK3jxl11BlockCtxMap7ContextEijmm.exit:          ; preds = %.lr.ph.i, %middle.block, %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit ], [ %i.ba, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %i.bf = icmp ult i64 %5, 2
  %i.bg = xor i64 %5, 1
  %i.bh = mul i64 %i.bg, 13
  %i.bi = select i1 %i.bf, i64 %i.bh, i64 26
  %i.bj = add i64 %i.bi, %i.w
  %i.bk = ptrtoint ptr %i.ai to i64
  %i.bl = ptrtoint ptr %i.ag to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  %i.bo = add nsw i64 %i.bn, 1
  %i.bp = mul i64 %i.bo, %i.bj
  %i.bq = add i64 %.0.lcssa.i, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 128
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !337
  %i.bt = mul i64 %i.bs, %i.bq
  %i.bu = zext i8 %i.ac to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 96
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !338
  %i.bx = getelementptr i8, ptr %i.bw, i64 %i.bt
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bu
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !222
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %.0.i, i32 64) ; 2 uses
  %i.cb = icmp ult i32 %.0.i, 8
  %i.cc = lshr i32 %spec.store.select.i, 1
  %i.cd = add nuw nsw i32 %i.cc, 4
  %.0.i82 = select i1 %i.cb, i32 %spec.store.select.i, i32 %i.cd
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 120 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !317
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = mul i32 %.0.i82, %i.cg
  %i.ci = trunc i64 %0 to i32
  %i.cj = add i32 %i.ca, %i.ci
  %i.ck = add i32 %i.cj, %i.ch
  %i.cl = sext i32 %i.ck to i64
  %i.cm = load ptr, ptr %13, align 8, !tbaa !338, !noalias !5046
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cl
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !222, !noalias !5046
  %i.cp = zext i8 %i.co to i64
  %i.cq = tail call noundef i64 @_ZN3jxl15ANSSymbolReader23ReadHybridUintClusteredILb0EEEmmPNS_9BitReaderE(ptr noundef nonnull align 8 dereferenceable(604) %12, i64 noundef %i.cp, ptr noundef %11) #50 ; 5 uses
  %i.cr = mul nsw i64 %i.d, 63
  %i.cs = icmp ugt i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.h, label %.preheader.preheader.a

.preheader.preheader.a:                           ; preds = %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit
  %19 = and i64 %9, 4294967295                    ; 3 uses
  %20 = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !222
  %i.ct = add nsw i64 %i.d, -1
  %i.cu = add i64 %i.ct, %i.cq
  %i.cv = lshr i64 %i.cu, %1
  %i.cw = trunc i64 %i.cv to i32                  ; 2 uses
  %i.cx = getelementptr [4 x i8], ptr %2, i64 %6
  %22 = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %19
  %23 = load i8, ptr %22, align 1, !tbaa !222
  %24 = tail call i8 @llvm.umax.i8(i8 %23, i8 1)
  %umax = zext i8 %24 to i64                      ; 3 uses
  %25 = tail call i8 @llvm.umax.i8(i8 %21, i8 1)
  %umax99 = zext i8 %25 to i64
  %26 = shl nuw i64 1, %19
  %27 = and i64 %26, 786431
  %min.iters.check113.not = icmp eq i64 %27, 0
  %n.vec115 = and i64 %umax, 248                  ; 3 uses
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.cw, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n122 = icmp eq i64 %n.vec115, %umax
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader.a, %._crit_edge
  %.07991 = phi i64 [ %i.dp, %._crit_edge ], [ 0, %.preheader.preheader.a ] ; 2 uses
  %i.cy = mul i64 %.07991, %4
  %invariant.gep = getelementptr [4 x i8], ptr %i.cx, i64 %i.cy ; 2 uses
  br i1 %min.iters.check113.not, label %vector.body118, label %scalar.ph112.preheader

vector.body118:                                   ; preds = %.preheader, %vector.body118
  %index119 = phi i64 [ %index.next120, %vector.body118 ], [ 0, %.preheader ] ; 2 uses
  %i.cz = getelementptr [4 x i8], ptr %invariant.gep, i64 %index119 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  store <4 x i32> %broadcast.splat117, ptr %i.cz, align 4, !tbaa !23
  store <4 x i32> %broadcast.splat117, ptr %i.da, align 4, !tbaa !23
  %index.next120 = add nuw i64 %index119, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next120, %n.vec115
  br i1 %i.db, label %middle.block121, label %vector.body118, !llvm.loop !5038

middle.block121:                                  ; preds = %vector.body118
  br i1 %cmp.n122, label %._crit_edge, label %scalar.ph112.preheader

scalar.ph112.preheader:                           ; preds = %.preheader, %middle.block121
  %.07890.ph = phi i64 [ 0, %.preheader ], [ %n.vec115, %middle.block121 ]
  br label %scalar.ph112

._crit_edge92.split:                              ; preds = %._crit_edge
  %i.dc = load i64, ptr %i.ce, align 8, !tbaa !317
  %i.dd = mul nuw nsw i32 %i.ca, 458
  %i.de = trunc i64 %i.dc to i32
  %i.df = mul i32 %i.de, 37
  %i.dg = add i32 %i.df, %i.dd
  %i.dh = zext i32 %i.dg to i64
  %i.di = icmp ugt i64 %i.e, %i.d
  %i.dj = icmp ne i64 %i.cq, 0                    ; 2 uses
  %i.dk = and i1 %i.di, %i.dj
  br i1 %i.dk, label %.lr.ph, label %._crit_edge97

.lr.ph:                                           ; preds = %._crit_edge92.split
  %i.dl = lshr exact i64 %i.e, 4
  %i.dm = icmp ule i64 %i.cq, %i.dl
  %i.dn = zext i1 %i.dm to i64
  %i.do = add nsw i64 %i.d, -1
  br label %bb.g

._crit_edge:                                      ; preds = %scalar.ph112, %middle.block121
  %i.dp = add nuw nsw i64 %.07991, 1              ; 2 uses
  %exitcond100.not = icmp eq i64 %i.dp, %umax99
  br i1 %exitcond100.not, label %._crit_edge92.split, label %.preheader, !llvm.loop !5039

scalar.ph112:                                     ; preds = %scalar.ph112.preheader, %scalar.ph112
  %.07890 = phi i64 [ %i.dq, %scalar.ph112 ], [ %.07890.ph, %scalar.ph112.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.07890
  store i32 %i.cw, ptr %gep, align 4, !tbaa !23
  %i.dq = add nuw nsw i64 %.07890, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %umax
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph112, !llvm.loop !5040

._crit_edge97:                                    ; preds = %bb.g, %._crit_edge92.split
  %.lcssa = phi i1 [ %i.dj, %._crit_edge92.split ], [ %i.fb, %bb.g ]
  %spec.select = zext i1 %.lcssa to i32
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.095 = phi i64 [ %i.d, %.lr.ph ], [ %i.ez, %bb.g ] ; 3 uses
  %.07794 = phi i64 [ %i.dn, %.lr.ph ], [ %i.ex, %bb.g ]
  %.08093 = phi i64 [ %i.cq, %.lr.ph ], [ %i.ey, %bb.g ] ; 2 uses
  %i.dr = add i64 %i.do, %.08093
  %i.ds = lshr i64 %i.dr, %1
  %i.dt = lshr i64 %.095, %1
  %i.du = getelementptr inbounds nuw [2 x i8], ptr @_ZN3jxlL23kCoeffNumNonzeroContextE, i64 %i.ds
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !256
  %i.dw = zext i16 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr @_ZN3jxlL17kCoeffFreqContextE, i64 %i.dt
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !256
  %i.dz = zext i16 %i.dy to i64
  %i.ea = add nuw nsw i64 %i.dz, %i.dw
  %i.eb = shl nuw nsw i64 %i.ea, 1
  %i.ec = load ptr, ptr %13, align 8, !tbaa !338, !noalias !5047
  %i.ed = getelementptr i8, ptr %i.ec, i64 %0
  %i.ee = getelementptr i8, ptr %i.ed, i64 %i.dh
  %i.ef = getelementptr i8, ptr %i.ee, i64 %i.eb
  %i.eg = getelementptr i8, ptr %i.ef, i64 %.07794
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !222, !noalias !5047
  %i.ei = zext i8 %i.eh to i64
  %i.ej = tail call noundef i64 @_ZN3jxl15ANSSymbolReader23ReadHybridUintClusteredILb0EEEmmPNS_9BitReaderE(ptr noundef nonnull align 8 dereferenceable(604) %12, i64 noundef %i.ei, ptr noundef %11) #50 ; 3 uses
  %i.ek = lshr i64 %i.ej, 1
  %i.el = and i64 %i.ej, 1
  %i.em = sub nsw i64 0, %i.el
  %i.en = xor i64 %i.ek, %i.em
  %i.eo = shl i64 %i.en, %18
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.095
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !23
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.er ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !23
  %i.eu = trunc i64 %i.eo to i32
  %i.ev = add i32 %i.et, %i.eu
  store i32 %i.ev, ptr %i.es, align 4, !tbaa !23
  %i.ew = icmp ne i64 %i.ej, 0
  %i.ex = zext i1 %i.ew to i64                    ; 2 uses
  %i.ey = sub nuw i64 %.08093, %i.ex              ; 2 uses
  %i.ez = add nuw i64 %.095, 1                    ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.e
  %i.fb = icmp ne i64 %i.ey, 0                    ; 2 uses
  %i.fc = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %i.fc, label %bb.g, label %._crit_edge97, !llvm.loop !5043

bb.h:                                             ; preds = %._crit_edge97, %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit
  %.sroa.087.0 = phi i32 [ %spec.select, %._crit_edge97 ], [ 1, %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit ]
  ret i32 %.sroa.087.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN3jxl15ANSSymbolReader23ReadHybridUintClusteredILb1EEEmmPNS_9BitReaderE(ptr noundef nonnull align 8 dereferenceable(604) %0, i64 noundef %1, ptr noalias noundef %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5066)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !5067, !noalias !5066 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !247

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !333, !noalias !5066 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !5068, !noalias !5066 ; 2 uses
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8, !tbaa !5068, !noalias !5066
  %i.h = and i32 %i.f, 1048575
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !23, !noalias !5066
  %i.l = add i32 %i.b, -1
  store i32 %i.l, ptr %i.a, align 4, !tbaa !5067, !noalias !5066
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !5069, !noalias !5066 ; 2 uses
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !5069, !noalias !5066
  br label %_ZN3jxl15ANSSymbolReader30ReadHybridUintClusteredInlinedILb1EEEmmPNS_9BitReaderE.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !312, !alias.scope !5066 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !313, !alias.scope !5066
  %i.t = icmp ugt ptr %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e, !prof !314

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3jxl9BitReader19BoundsCheckedRefillEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #49
  br label %_ZN3jxl9BitReader6RefillEv.exit41.i

bb.e:                                             ; preds = %bb.c
  %.0.copyload.i.i = load i64, ptr %i.q, align 1, !noalias !5066
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !316, !alias.scope !5066 ; 3 uses
  %i.w = shl i64 %.0.copyload.i.i, %i.v
  %i.x = load i64, ptr %2, align 8, !tbaa !315, !alias.scope !5066
  %i.y = or i64 %i.x, %i.w
  store i64 %i.y, ptr %2, align 8, !tbaa !315, !alias.scope !5066
  %i.z = sub i64 63, %i.v
  %i.aa = lshr i64 %i.z, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aa
  store ptr %i.ab, ptr %i.p, align 8, !tbaa !312, !alias.scope !5066
  %i.ac = or i64 %i.v, 56
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !316, !alias.scope !5066
  br label %_ZN3jxl9BitReader6RefillEv.exit41.i

_ZN3jxl9BitReader6RefillEv.exit41.i:              ; preds = %bb.e, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !339, !range !340, !noalias !5070, !noundef !341 ; 2 uses
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %bb.h, !prof !314

bb.f:                                             ; preds = %_ZN3jxl9BitReader6RefillEv.exit41.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !342, !noalias !5071
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %1
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !347
  %i.ak = load i64, ptr %2, align 8, !tbaa !315   ; 3 uses
  %i.al = and i64 %i.ak, 255
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.al ; 4 uses
  %i.an = load i8, ptr %i.am, align 2, !tbaa !349 ; 3 uses
  %i.ao = icmp ugt i8 %i.an, 8
  br i1 %i.ao, label %bb.g, label %._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit17_crit_edge

._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit17_crit_edge: ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre29 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !316
  br label %_ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit17

bb.g:                                             ; preds = %bb.f
  %i.ap = zext i8 %i.an to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !316
  %i.as = add i64 %i.ar, -8
  %i.at = lshr i64 %i.ak, 8                       ; 2 uses
  %i.au = add nsw i64 %i.ap, -8
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !350
  %i.ax = zext i16 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ax
  %notmask.i.i16 = shl nsw i64 -1, %i.au
  %i.az = xor i64 %notmask.i.i16, -1
  %i.ba = and i64 %i.at, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ba ; 2 uses
  %.pre = load i8, ptr %i.bb, align 2, !tbaa !349
  br label %_ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit17

_ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit17: ; preds = %._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit17_crit_edge, %bb.g
  %i.bc = phi i64 [ %i.at, %bb.g ], [ %i.ak, %._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit17_crit_edge ]
  %i.bd = phi i64 [ %i.as, %bb.g ], [ %.pre29, %._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit17_crit_edge ]
  %i.be = phi i8 [ %.pre, %bb.g ], [ %i.an, %._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit17_crit_edge ]
  %.0.i15 = phi ptr [ %i.bb, %bb.g ], [ %i.am, %._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit17_crit_edge ]
  %i.bf = zext i8 %i.be to i64                    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = sub i64 %i.bd, %i.bf                    ; 2 uses
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !316
  %i.bi = lshr i64 %i.bc, %i.bf                   ; 2 uses
  store i64 %i.bi, ptr %2, align 8, !tbaa !315
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i15, i64 2
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !350
  %i.bl = zext i16 %i.bk to i64
  br label %_ZN3jxl15ANSSymbolReader23ReadSymbolWithoutRefillEmPNS_9BitReaderE.exit3

bb.h:                                             ; preds = %_ZN3jxl9BitReader6RefillEv.exit41.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5072)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !296, !noalias !5072 ; 2 uses
  %i.bo = and i32 %i.bn, 4095                     ; 2 uses
  %i.bp = load ptr, ptr %0, align 8, !tbaa !351, !noalias !5072
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !352, !noalias !5072
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl i64 %1, %i.bs
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bt ; 2 uses
  %i.bv = zext nneg i32 %i.bo to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !297, !noalias !5072
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !353, !noalias !5072
  %i.cb = lshr i64 %i.bv, %i.by                   ; 2 uses
  %i.cc = and i32 %i.ca, %i.bo
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.cb
  %.0.copyload.i19 = load i64, ptr %i.ce, align 1, !alias.scope !5073, !noalias !5072 ; 4 uses
  %i.cf = and i64 %.0.copyload.i19, 255
  %i.cg = lshr i64 %.0.copyload.i19, 8
  %i.ch = and i64 %i.cg, 255
  %i.ci = lshr i64 %.0.copyload.i19, 16
  %i.cj = and i64 %i.ci, 65535
  %.not.i20 = icmp samesign ugt i64 %i.cf, %i.cd  ; 2 uses
  %i.ck = select i1 %.not.i20, i64 0, i64 %.0.copyload.i19 ; 2 uses
  %i.cl = lshr i64 %i.ck, 32
end_hunk_0
begin_hunk_1_@_ZN3jxl15ANSSymbolReader23ReadHybridUintClusteredILb0EEEmmPNS_9BitReaderE:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !342, !noalias !5095
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %1
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !347
  %i.v = load i64, ptr %2, align 8, !tbaa !315, !alias.scope !5093 ; 3 uses
  %i.w = and i64 %i.v, 255
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.w ; 4 uses
  %i.y = load i8, ptr %i.x, align 2, !tbaa !349   ; 3 uses
  %i.z = icmp ugt i8 %i.y, 8
  br i1 %i.z, label %bb.e, label %._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i_crit_edge

._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i_crit_edge: ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre2 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !316, !alias.scope !5093
  br label %_ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aa = zext i8 %i.y to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !316, !alias.scope !5093
  %i.ad = add i64 %i.ac, -8
  %i.ae = lshr i64 %i.v, 8                        ; 2 uses
  %i.af = add nsw i64 %i.aa, -8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !350
  %i.ai = zext i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ai
  %notmask.i.i9.i = shl nsw i64 -1, %i.af
  %i.ak = xor i64 %notmask.i.i9.i, -1
  %i.al = and i64 %i.ae, %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.al ; 2 uses
  %.pre = load i8, ptr %i.am, align 2, !tbaa !349
  br label %_ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i

_ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i: ; preds = %._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i_crit_edge, %bb.e
  %i.an = phi i64 [ %i.ae, %bb.e ], [ %i.v, %._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i_crit_edge ]
  %i.ao = phi i64 [ %i.ad, %bb.e ], [ %.pre2, %._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i_crit_edge ]
  %i.ap = phi i8 [ %.pre, %bb.e ], [ %i.y, %._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i_crit_edge ]
  %.0.i8.i = phi ptr [ %i.am, %bb.e ], [ %i.x, %._ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i_crit_edge ]
  %i.aq = zext i8 %i.ap to i64                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = sub i64 %i.ao, %i.aq                    ; 2 uses
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !316, !alias.scope !5093
  %i.at = lshr i64 %i.an, %i.aq                   ; 2 uses
  store i64 %i.at, ptr %2, align 8, !tbaa !315, !alias.scope !5093
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i8.i, i64 2
  %i.av = load i16, ptr %i.au, align 2, !tbaa !350
  %i.aw = zext i16 %i.av to i64
  br label %_ZN3jxl15ANSSymbolReader23ReadSymbolWithoutRefillEmPNS_9BitReaderE.exit.i

bb.f:                                             ; preds = %_ZN3jxl9BitReader6RefillEv.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5096)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !296, !noalias !5097 ; 2 uses
  %i.az = and i32 %i.ay, 4095                     ; 2 uses
  %i.ba = load ptr, ptr %0, align 8, !tbaa !351, !noalias !5097
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !352, !noalias !5097
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = shl i64 %1, %i.bd
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.be ; 2 uses
  %i.bg = zext nneg i32 %i.az to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !297, !noalias !5097
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !353, !noalias !5097
  %i.bm = lshr i64 %i.bg, %i.bj                   ; 2 uses
  %i.bn = and i32 %i.bl, %i.az
  %i.bo = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bm
  %.0.copyload.i10.i = load i64, ptr %i.bp, align 1, !alias.scope !5098, !noalias !5096 ; 4 uses
  %i.bq = and i64 %.0.copyload.i10.i, 255
  %i.br = lshr i64 %.0.copyload.i10.i, 8
  %i.bs = and i64 %i.br, 255
  %i.bt = lshr i64 %.0.copyload.i10.i, 16
  %i.bu = and i64 %i.bt, 65535
  %.not.i.i = icmp samesign ugt i64 %i.bq, %i.bo  ; 2 uses
  %i.bv = select i1 %.not.i.i, i64 0, i64 %.0.copyload.i10.i ; 2 uses
  %i.bw = lshr i64 %i.bv, 32
  %i.bx = and i64 %i.bw, 65535
  %i.by = lshr i64 %i.bv, 48
  %i.bz = select i1 %.not.i.i, i64 %i.bm, i64 %i.bs
  %i.ca = add nuw nsw i64 %i.bx, %i.bo
  %i.cb = xor i64 %i.by, %i.bu
  %i.cc = lshr i32 %i.ay, 12
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = mul nuw nsw i64 %i.cb, %i.cd
  %i.cf = add nuw nsw i64 %i.ca, %i.ce
  %i.cg = trunc i64 %i.cf to i32                  ; 3 uses
  %i.ch = load i64, ptr %2, align 8, !tbaa !315, !alias.scope !5093 ; 2 uses
  %i.ci = icmp ult i32 %i.cg, 65536               ; 2 uses
  %i.cj = shl i32 %i.cg, 16
  %i.ck = trunc i64 %i.ch to i32
  %i.cl = and i32 %i.ck, 65535
  %i.cm = or disjoint i32 %i.cj, %i.cl
  %i.cn = select i1 %i.ci, i64 16, i64 0          ; 2 uses
  %i.co = select i1 %i.ci, i32 %i.cm, i32 %i.cg   ; 2 uses
  store i32 %i.co, ptr %i.ax, align 4, !tbaa !296, !noalias !5097
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !316, !alias.scope !5097
  %i.cr = sub i64 %i.cq, %i.cn                    ; 2 uses
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !316, !alias.scope !5097
  %i.cs = lshr i64 %i.ch, %i.cn                   ; 2 uses
  store i64 %i.cs, ptr %2, align 8, !tbaa !315, !alias.scope !5097
  %i.ct = and i32 %i.co, 4095
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = lshr i64 %i.cu, %i.bj
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cv
  tail call void @llvm.prefetch.p0(ptr %i.cw, i32 0, i32 3, i32 1)
  br label %_ZN3jxl15ANSSymbolReader23ReadSymbolWithoutRefillEmPNS_9BitReaderE.exit.i

_ZN3jxl15ANSSymbolReader23ReadSymbolWithoutRefillEmPNS_9BitReaderE.exit.i: ; preds = %bb.f, %_ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i
  %i.cx = phi i64 [ %i.as, %_ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i ], [ %i.cr, %bb.f ]
  %i.cy = phi i64 [ %i.at, %_ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i ], [ %i.cs, %bb.f ] ; 2 uses
  %.0.i.i = phi i64 [ %i.aw, %_ZNK3jxl19HuffmanDecodingData10ReadSymbolEPNS_9BitReaderE.exit.i ], [ %i.bz, %bb.f ] ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !358, !noalias !5093
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %1 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !354
  %i.de = zext i32 %i.dd to i64                   ; 2 uses
  %i.df = icmp samesign ult i64 %.0.i.i, %i.de
  br i1 %i.df, label %_ZN3jxl15ANSSymbolReader30ReadHybridUintClusteredInlinedILb0EEEmmPNS_9BitReaderE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3jxl15ANSSymbolReader23ReadSymbolWithoutRefillEmPNS_9BitReaderE.exit.i
  %i.dg = load i32, ptr %i.db, align 4, !tbaa !355
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !356 ; 2 uses
  %i.dk = zext i32 %i.dj to i64                   ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !357 ; 2 uses
  %i.dn = zext i32 %i.dm to i64
  %i.do = add nuw nsw i64 %i.dn, %i.dk            ; 2 uses
  %i.dp = sub nsw i64 %i.dh, %i.do
  %i.dq = sub nuw nsw i64 %.0.i.i, %i.de
  %i.dr = lshr i64 %i.dq, %i.do
  %i.ds = add nsw i64 %i.dp, %i.dr
  %i.dt = and i64 %i.ds, 31                       ; 4 uses
  %notmask.i.i = shl nsw i32 -1, %i.dj
  %i.du = xor i32 %notmask.i.i, -1
  %i.dv = trunc nuw nsw i64 %.0.i.i to i32
  %i.dw = and i32 %i.du, %i.dv
  %i.dx = lshr i64 %.0.i.i, %i.dk
  %notmask.i.i.i = shl nsw i64 -1, %i.dt
  %i.dy = xor i64 %notmask.i.i.i, -1
  %i.dz = and i64 %i.cy, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = sub i64 %i.cx, %i.dt
  store i64 %i.eb, ptr %i.ea, align 8, !tbaa !316, !alias.scope !5093
  %i.ec = lshr i64 %i.cy, %i.dt
  store i64 %i.ec, ptr %2, align 8, !tbaa !315, !alias.scope !5093
  %i.ed = shl nuw i32 1, %i.dm                    ; 2 uses
  %i.ee = zext i32 %i.ed to i64
  %i.ef = add nsw i32 %i.ed, -1
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = and i64 %i.dx, %i.eg
  %i.ei = or i64 %i.eh, %i.ee
  %i.ej = shl nuw nsw i64 %i.ei, %i.dt
  %i.ek = or i64 %i.dz, %i.ej
  %i.el = shl i64 %i.ek, %i.dk
  %i.em = trunc i64 %i.el to i32
  %i.en = or i32 %i.dw, %i.em
  %i.eo = zext i32 %i.en to i64
  br label %_ZN3jxl15ANSSymbolReader30ReadHybridUintClusteredInlinedILb0EEEmmPNS_9BitReaderE.exit

_ZN3jxl15ANSSymbolReader30ReadHybridUintClusteredInlinedILb0EEEmmPNS_9BitReaderE.exit: ; preds = %_ZN3jxl15ANSSymbolReader23ReadSymbolWithoutRefillEmPNS_9BitReaderE.exit.i, %bb.g
  %.0.i7.i = phi i64 [ %i.eo, %bb.g ], [ %.0.i.i, %_ZN3jxl15ANSSymbolReader23ReadSymbolWithoutRefillEmPNS_9BitReaderE.exit.i ]
  ret i64 %.0.i7.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fma.f32(float, float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <7 x float> @llvm.masked.load.v7f32.p0(ptr captures(none), <7 x i1>, <7 x float>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #5 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #7 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #8 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #9 = { "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #18 = { alwaysinline mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #20 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #24 = { alwaysinline mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #26 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #32 = { alwaysinline mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #34 = { nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #38 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #39 = { nobuiltin nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #41 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #42 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #43 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #45 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #46 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #47 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #48 = { nounwind }
attributes #49 = { nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #50 = { "no-builtin-fread" "no-builtin-fwrite" }
attributes #51 = { builtin nounwind allocsize(0) "no-builtin-fread" "no-builtin-fwrite" }
attributes #52 = { builtin nounwind "no-builtin-fread" "no-builtin-fwrite" }

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}
!llvm.errno.tbaa = !{!22}

!0 = distinct !{!0, !228}
!1 = distinct !{!1, !228}
!2 = distinct !{!2, !228}
!3 = distinct !{!3, !228}
!4 = distinct !{!4, !228}
!5 = distinct !{!5, !228}
!6 = distinct !{!6, !228}
!7 = distinct !{!7, !228}
!8 = distinct !{!8, !228}
!9 = distinct !{!9, !228}
!10 = distinct !{!10, !228}
!11 = distinct !{!11, !228}
!12 = distinct !{!12, !228}
!13 = distinct !{!13, !228}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!18 = !{!"Simple C++ TBAA"}
!19 = !{!"omnipotent char", !18, i64 0}
!20 = !{!"int", !19, i64 0}
!21 = !{!"__libc_errno", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{!20, !20, i64 0}
!24 = !{!"any pointer", !19, i64 0}
!25 = !{!"p1 _ZTS22JxlMemoryManagerStruct", !24, i64 0}
!26 = !{!"p1 _ZTSN3jxl13CodecMetadataE", !24, i64 0}
!27 = !{!"long", !19, i64 0}
!28 = !{!"_ZTSN3jxl15FrameDimensionsE", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !27, i64 48, !27, i64 56, !27, i64 64, !27, i64 72, !27, i64 80, !27, i64 88, !27, i64 96, !27, i64 104, !27, i64 112, !27, i64 120, !27, i64 128, !27, i64 136}
!29 = !{!"_ZTSN3jxl13AlignedMemoryE", !24, i64 0, !25, i64 8, !24, i64 16}
!30 = !{!"_ZTSN3jxl6detail9PlaneBaseE", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !27, i64 16, !29, i64 24, !27, i64 48}
!31 = !{!"_ZTSN3jxl5PlaneIhEE", !30, i64 0}
!32 = !{!"p1 omnipotent char", !24, i64 0}
!33 = !{!"_ZTSN3jxl15AcStrategyImageE", !31, i64 0, !32, i64 56, !27, i64 64}
!34 = !{!"p1 float", !24, i64 0}
!35 = !{!"p1 _ZTSN3jxl13QuantEncodingE", !24, i64 0}
!36 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13QuantEncodingELi0ELb0EEE", !35, i64 0}
!37 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13QuantEncodingENS_9allocatorIS2_EEEE", !36, i64 0}
!38 = !{!"_ZTSNSt3__16vectorIN3jxl13QuantEncodingENS_9allocatorIS2_EEEE", !35, i64 0, !35, i64 8, !37, i64 16}
!39 = !{!"_ZTSN3jxl15DequantMatricesE", !20, i64 0, !29, i64 8, !34, i64 32, !34, i64 40, !19, i64 48, !19, i64 60, !19, i64 72, !38, i64 720}
!40 = !{!"float", !19, i64 0}
!41 = !{!"p1 _ZTSN3jxl15DequantMatricesE", !24, i64 0}
!42 = !{!"_ZTSN3jxl9QuantizerE", !19, i64 0, !19, i64 16, !20, i64 32, !20, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !19, i64 52, !41, i64 64}
!43 = !{!"_ZTSN3jxl5PlaneIiEE", !30, i64 0}
!44 = !{!"_ZTSN3jxl5PlaneIaEE", !30, i64 0}
!45 = !{!"_ZTSN3jxl16ColorCorrelationE", !19, i64 0, !20, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !20, i64 32, !20, i64 36}
!46 = !{!"_ZTSN3jxl19ColorCorrelationMapE", !44, i64 0, !44, i64 56, !45, i64 112}
!47 = !{!"_ZTSNSt3__15arrayIfLm8EEE", !19, i64 0}
!48 = !{!"_ZTSN3jxl11NoiseParamsE", !47, i64 0}
!49 = !{!"p1 _ZTSNSt3__15arrayIN3jxl14ReferenceFrameELm4EEE", !24, i64 0}
!50 = !{!"p1 _ZTSN3jxl13PatchPositionE", !24, i64 0}
!51 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13PatchPositionELi0ELb0EEE", !50, i64 0}
!52 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13PatchPositionENS_9allocatorIS2_EEEE", !51, i64 0}
!53 = !{!"_ZTSNSt3__16vectorIN3jxl13PatchPositionENS_9allocatorIS2_EEEE", !50, i64 0, !50, i64 8, !52, i64 16}
!54 = !{!"p1 _ZTSN3jxl22PatchReferencePositionE", !24, i64 0}
!55 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl22PatchReferencePositionELi0ELb0EEE", !54, i64 0}
!56 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl22PatchReferencePositionENS_9allocatorIS2_EEEE", !55, i64 0}
!57 = !{!"_ZTSNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEEE", !54, i64 0, !54, i64 8, !56, i64 16}
!58 = !{!"p1 _ZTSN3jxl13PatchBlendingE", !24, i64 0}
!59 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13PatchBlendingELi0ELb0EEE", !58, i64 0}
!60 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13PatchBlendingENS_9allocatorIS2_EEEE", !59, i64 0}
!61 = !{!"_ZTSNSt3__16vectorIN3jxl13PatchBlendingENS_9allocatorIS2_EEEE", !58, i64 0, !58, i64 8, !60, i64 16}
!62 = !{!"p1 _ZTSN3jxl15PatchDictionary13PatchTreeNodeE", !24, i64 0}
!63 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl15PatchDictionary13PatchTreeNodeELi0ELb0EEE", !62, i64 0}
!64 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEEE", !63, i64 0}
!65 = !{!"_ZTSNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEEE", !62, i64 0, !62, i64 8, !64, i64 16}
!66 = !{!"p1 long", !24, i64 0}
!67 = !{!"_ZTSNSt3__122__compressed_pair_elemIPmLi0ELb0EEE", !66, i64 0}
!68 = !{!"_ZTSNSt3__117__compressed_pairIPmNS_9allocatorImEEEE", !67, i64 0}
!69 = !{!"_ZTSNSt3__16vectorImNS_9allocatorImEEEE", !66, i64 0, !66, i64 8, !68, i64 16}
!70 = !{!"p1 _ZTSNSt3__14pairImmEE", !24, i64 0}
!71 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_4pairImmEELi0ELb0EEE", !70, i64 0}
!72 = !{!"_ZTSNSt3__117__compressed_pairIPNS_4pairImmEENS_9allocatorIS2_EEEE", !71, i64 0}
!73 = !{!"_ZTSNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEEE", !70, i64 0, !70, i64 8, !72, i64 16}
!74 = !{!"_ZTSN3jxl15PatchDictionaryE", !25, i64 0, !49, i64 8, !53, i64 16, !57, i64 40, !61, i64 64, !27, i64 88, !65, i64 96, !69, i64 120, !73, i64 144, !73, i64 168}
!75 = !{!"p1 _ZTSN3jxl15QuantizedSplineE", !24, i64 0}
!76 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl15QuantizedSplineELi0ELb0EEE", !75, i64 0}
!77 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl15QuantizedSplineENS_9allocatorIS2_EEEE", !76, i64 0}
!78 = !{!"_ZTSNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEEE", !75, i64 0, !75, i64 8, !77, i64 16}
!79 = !{!"p1 _ZTSN3jxl6Spline5PointE", !24, i64 0}
!80 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl6Spline5PointELi0ELb0EEE", !79, i64 0}
!81 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl6Spline5PointENS_9allocatorIS3_EEEE", !80, i64 0}
!82 = !{!"_ZTSNSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEEE", !79, i64 0, !79, i64 8, !81, i64 16}
!83 = !{!"p1 _ZTSN3jxl13SplineSegmentE", !24, i64 0}
!84 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13SplineSegmentELi0ELb0EEE", !83, i64 0}
!85 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13SplineSegmentENS_9allocatorIS2_EEEE", !84, i64 0}
!86 = !{!"_ZTSNSt3__16vectorIN3jxl13SplineSegmentENS_9allocatorIS2_EEEE", !83, i64 0, !83, i64 8, !85, i64 16}
!87 = !{!"_ZTSN3jxl7SplinesE", !20, i64 0, !78, i64 8, !82, i64 32, !86, i64 56, !69, i64 80, !69, i64 104}
!88 = !{!"_ZTSN3jxl13ImageFeaturesE", !48, i64 0, !74, i64 32, !87, i64 224}
!89 = !{!"p1 int", !24, i64 0}
!90 = !{!"_ZTSNSt3__122__compressed_pair_elemIPjLi0ELb0EEE", !89, i64 0}
!91 = !{!"_ZTSNSt3__117__compressed_pairIPjNS_9allocatorIjEEEE", !90, i64 0}
!92 = !{!"_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE", !89, i64 0, !89, i64 8, !91, i64 16}
!93 = !{!"_ZTSN3jxl6Image3IfEE", !19, i64 0}
!94 = !{!"p1 _ZTSN3jxl6Image3IfEE", !24, i64 0}
!95 = !{!"_ZTSNSt3__122__compressed_pair_elemIPhLi0ELb0EEE", !32, i64 0}
!96 = !{!"_ZTSNSt3__117__compressed_pairIPhNS_9allocatorIhEEEE", !95, i64 0}
!97 = !{!"_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !32, i64 0, !32, i64 8, !96, i64 16}
!98 = !{!"_ZTSN3jxl11BlockCtxMapE", !19, i64 0, !92, i64 72, !97, i64 96, !27, i64 120, !27, i64 128}
!99 = !{!"_ZTSNSt3__15arrayIN3jxl14ReferenceFrameELm4EEE", !19, i64 0}
!100 = !{!"_ZTSN3jxl17PassesSharedStateE", !25, i64 0, !26, i64 8, !28, i64 16, !33, i64 160, !39, i64 232, !42, i64 976, !43, i64 1048, !31, i64 1104, !46, i64 1160, !88, i64 1312, !27, i64 1664, !92, i64 1672, !31, i64 1696, !93, i64 1752, !94, i64 1920, !98, i64 1928, !19, i64 2064, !99, i64 2736, !27, i64 2800}
!101 = !{!"p1 _ZTSN3jxl17PassesSharedStateE", !24, i64 0}
!102 = !{!"p1 _ZTSN3jxl19RenderPipelineStageE", !24, i64 0}
!103 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl19RenderPipelineStageELi0ELb0EEE", !102, i64 0}
!104 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEEE", !103, i64 0}
!105 = !{!"_ZTSNSt3__110unique_ptrIN3jxl19RenderPipelineStageENS_14default_deleteIS2_EEEE", !104, i64 0}
!106 = !{!"p1 _ZTSN3jxl7ANSCodeE", !24, i64 0}
!107 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl7ANSCodeELi0ELb0EEE", !106, i64 0}
!108 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl7ANSCodeENS_9allocatorIS2_EEEE", !107, i64 0}
!109 = !{!"_ZTSNSt3__16vectorIN3jxl7ANSCodeENS_9allocatorIS2_EEEE", !106, i64 0, !106, i64 8, !108, i64 16}
!110 = !{!"p1 _ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !24, i64 0}
!111 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_6vectorIhNS_9allocatorIhEEEELi0ELb0EEE", !110, i64 0}
!112 = !{!"_ZTSNSt3__117__compressed_pairIPNS_6vectorIhNS_9allocatorIhEEEENS2_IS4_EEEE", !111, i64 0}
!113 = !{!"_ZTSNSt3__16vectorINS0_IhNS_9allocatorIhEEEENS1_IS3_EEEE", !110, i64 0, !110, i64 8, !112, i64 16}
!114 = !{!"_ZTSN3jxl5PlaneIfEE", !30, i64 0}
!115 = !{!"_ZTS11JxlDataType", !19, i64 0}
!116 = !{!"_ZTS13JxlEndianness", !19, i64 0}
!117 = !{!"_ZTS14JxlPixelFormat", !20, i64 0, !115, i64 4, !116, i64 8, !27, i64 16}
!118 = !{!"_ZTSN3jxl13PixelCallbackE", !24, i64 0, !24, i64 8, !24, i64 16, !24, i64 24}
!119 = !{!"_ZTSN3jxl11ImageOutputE", !117, i64 0, !27, i64 24, !118, i64 32, !24, i64 64, !27, i64 72, !27, i64 80}
!120 = !{!"p1 _ZTSN3jxl11ImageOutputE", !24, i64 0}
!121 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl11ImageOutputELi0ELb0EEE", !120, i64 0}
!122 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl11ImageOutputENS_9allocatorIS2_EEEE", !121, i64 0}
!123 = !{!"_ZTSNSt3__16vectorIN3jxl11ImageOutputENS_9allocatorIS2_EEEE", !120, i64 0, !120, i64 8, !122, i64 16}
!124 = !{!"bool", !19, i64 0}
!125 = !{!"_ZTSN3jxl11OrientationE", !19, i64 0}
!126 = !{!"_ZTSNSt3__122__cxx_atomic_base_implIjEE", !19, i64 0}
!127 = !{!"_ZTSNSt3__117__cxx_atomic_implIjNS_22__cxx_atomic_base_implIjEEEE", !126, i64 0}
!128 = !{!"_ZTSNSt3__113__atomic_baseIjLb0EEE", !127, i64 0}
!129 = !{!"_ZTSNSt3__113__atomic_baseIjLb1EEE", !128, i64 0}
!130 = !{!"_ZTSNSt3__16atomicIjEE", !129, i64 0}
!131 = !{!"p1 _ZTSN3jxl7ACImageE", !24, i64 0}
!132 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl7ACImageELi0ELb0EEE", !131, i64 0}
!133 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl7ACImageENS_14default_deleteIS2_EEEE", !132, i64 0}
end_hunk_1
