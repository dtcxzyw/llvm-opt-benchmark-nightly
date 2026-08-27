Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LanaiAsmBackend?download=true
inline.NumInlined: 24
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK12_GLOBAL__N_115LanaiAsmBackend24createObjectTargetWriterEv:bb.a
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_ZN4llvm23MCELFObjectTargetWriter8getOSABIENS_6Triple6OSTypeE.exit

_ZN4llvm23MCELFObjectTargetWriter8getOSABIENS_6Triple6OSTypeE.exit: ; preds = %bb.a, %switch.lookup
  %.0.i = phi i8 [ %switch.load, %switch.lookup ], [ 0, %bb.a ]
  tail call void @_ZN4llvm26createLanaiELFObjectWriterEh(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, i8 noundef zeroext %.0.i) #8
  ret void
}

declare void @_ZNK4llvm12MCAsmBackend12getFixupKindENS_9StringRefE() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define internal { ptr, i64 } @_ZNK12_GLOBAL__N_115LanaiAsmBackend16getFixupKindInfoEt(ptr noundef nonnull align 8 dereferenceable(28) %0, i16 noundef zeroext %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i16 %1, 4010
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { ptr, i64 } @_ZNK4llvm12MCAsmBackend16getFixupKindInfoEt(ptr noundef nonnull align 8 dereferenceable(24) %0, i16 noundef zeroext %1) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = zext i16 %1 to i64
  %i.d = add nuw nsw i64 %i.c, 4294963286
  %i.e = and i64 %i.d, 4294967295
  %i.f = getelementptr inbounds nuw [16 x i8], ptr @_ZZNK12_GLOBAL__N_115LanaiAsmBackend16getFixupKindInfoEtE5Infos, i64 %i.e ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.f, align 16, !tbaa !33
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.3.0.copyload, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.fca.1.insert.merged = phi { ptr, i64 } [ %i.b, %bb.b ], [ %i.h, %bb.c ]
  ret { ptr, i64 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZN4llvm12MCAsmBackend13evaluateFixupERKNS_10MCFragmentERNS_7MCFixupERNS_7MCValueERm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i16 0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115LanaiAsmBackend10applyFixupERKN4llvm10MCFragmentERKNS1_7MCFixupERKNS1_7MCValueEPhmb(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %3, ptr nofree noundef captures(none) %4, i64 noundef %5, i1 noundef zeroext %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store i64 %5, ptr %i.a, align 8, !tbaa !34
  br i1 %6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(112) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull byval(%"class.llvm::MCValue") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #8
  %.pre = load i64, ptr %i.a, align 8, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i64 [ %.pre, %bb.b ], [ %5, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.k = load i16, ptr %i.j, align 4, !tbaa !37   ; 2 uses
  %i.l = and i64 %i.i, 4294967295                 ; 2 uses
  store i64 %i.l, ptr %i.a, align 8, !tbaa !34
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call { ptr, i64 } %i.o(ptr noundef nonnull align 8 dereferenceable(28) %0, i16 noundef zeroext %i.k) #8
  %i.q = extractvalue { ptr, i64 } %i.p, 1
  %i.r = trunc i64 %i.q to i32
  %i.s = lshr i32 %i.r, 8
  %i.t = and i32 %i.s, 255                        ; 3 uses
  %i.u = add nuw nsw i32 %i.t, 7
  %i.v = lshr i32 %i.u, 3                         ; 8 uses
  %.not3335 = icmp eq i32 %i.v, 0                 ; 2 uses
  br i1 %.not3335, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %xtraiter = and i64 %i.w, 1
  %i.x = icmp eq i32 %i.v, 1
  br i1 %i.x, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.w, 62
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.03136.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bz, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod60 = trunc i32 %i.v to i1
  call void @llvm.assume(i1 %lcmp.mod60)
  %i.y = sub nsw i64 3, %indvars.iv.epil.init
  %i.z = and i64 %i.y, 4294967295
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !41
  %i.ac = zext i8 %i.ab to i64
  %i.ad = shl nuw nsw i64 %indvars.iv.epil.init, 3
  %i.ae = shl i64 %i.ac, %i.ad
  %i.af = or i64 %i.ae, %.03136.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.d
  %.031.lcssa = phi i64 [ 0, %bb.d ], [ %i.bz, %._crit_edge.loopexit.unr-lcssa ], [ %i.af, %.lr.ph.epil.preheader ]
  %i.ag = load ptr, ptr %0, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call { ptr, i64 } %i.ai(ptr noundef nonnull align 8 dereferenceable(28) %0, i16 noundef zeroext %i.k) #8
  %i.ak = extractvalue { ptr, i64 } %i.aj, 1
  %i.al = lshr i64 %i.ak, 8
  %i.am = and i64 %i.al, 255
  %i.an = sub nsw i64 64, %i.am
  %i.ao = and i64 %i.an, 4294967295
  %i.ap = lshr i64 -1, %i.ao
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !34
  %i.ar = and i64 %i.ap, %i.aq
  %i.as = or i64 %i.ar, %.031.lcssa               ; 5 uses
  br i1 %.not3335, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %i.at = zext nneg i32 %i.v to i64               ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.t, 57
  %i.au = add nsw i32 %i.v, -5
  %i.av = icmp ult i32 %i.au, -4
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.av
  br i1 %or.cond, label %.lr.ph41.preheader, label %vector.main.loop.iter.check

.lr.ph41.preheader:                               ; preds = %iter.check
  %xtraiter61 = and i64 %i.at, 1
  %i.aw = icmp eq i32 %i.v, 1
  br i1 %i.aw, label %.lr.ph41.epil.preheader, label %.lr.ph41.preheader.new

.lr.ph41.preheader.new:                           ; preds = %.lr.ph41.preheader
  %unroll_iter64 = and i64 %i.at, 62
  br label %.lr.ph41

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check46 = icmp samesign ult i32 %i.t, 121
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.as, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ax = shl nuw nsw <16 x i64> %vec.ind, splat (i64 3)
  %i.ay = lshr <16 x i64> %broadcast.splat, %i.ax
  %i.az = trunc <16 x i64> %i.ay to <16 x i8>
  %i.ba = sub nsw i64 3, %index
  %i.bb = and i64 %i.ba, 4294967283
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -15
  %reverse = shufflevector <16 x i8> %i.az, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.bd, align 1, !tbaa !41
  %index.next = add nuw i64 %index, 16
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  br label %vector.body, !llvm.loop !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert48 = insertelement <8 x i64> poison, i64 %i.as, i64 0
  %i.be = shufflevector <8 x i64> %broadcast.splatinsert48, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index52 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind53 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vec.epilog.ph ], [ %vec.ind.next56, %vec.epilog.vector.body ] ; 2 uses
  %i.bf = sub nsw i64 3, %index52
  %i.bg = and i64 %i.bf, 4294967291
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -7
  %i.bj = shl nuw nsw <8 x i64> %vec.ind53, splat (i64 3)
  %i.bk = shufflevector <8 x i64> %i.bj, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bl = lshr <8 x i64> %i.be, %i.bk
  %reverse54 = trunc <8 x i64> %i.bl to <8 x i8>
  store <8 x i8> %reverse54, ptr %i.bi, align 1, !tbaa !41
  %index.next55 = add nuw i64 %index52, 8
  %vec.ind.next56 = add nuw nsw <8 x i64> %vec.ind53, splat (i64 8)
  br label %vec.epilog.vector.body, !llvm.loop !46

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %.03136 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bz, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.bm = sub nsw i64 3, %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !41
  %i.bp = zext i8 %i.bo to i64
  %i.bq = shl nuw nsw i64 %indvars.iv, 3
  %i.br = shl i64 %i.bp, %i.bq
  %i.bs = or i64 %i.br, %.03136
  %i.bt = sub nsw i64 2, %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !41
  %i.bw = zext i8 %i.bv to i64
  %indvars.iv.next = shl i64 %indvars.iv, 3
  %i.bx = or disjoint i64 %indvars.iv.next, 8
  %i.by = shl i64 %i.bw, %i.bx
  %i.bz = or i64 %i.by, %i.bs                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !47

.lr.ph41:                                         ; preds = %.lr.ph41, %.lr.ph41.preheader.new
  %indvars.iv43 = phi i64 [ 0, %.lr.ph41.preheader.new ], [ %indvars.iv.next44.1, %.lr.ph41 ] ; 5 uses
  %niter65 = phi i64 [ 0, %.lr.ph41.preheader.new ], [ %niter65.next.1, %.lr.ph41 ]
  %i.ca = shl nuw nsw i64 %indvars.iv43, 3
  %i.cb = lshr i64 %i.as, %i.ca
  %i.cc = trunc i64 %i.cb to i8
  %i.cd = sub nsw i64 3, %indvars.iv43
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 %i.cd
  store i8 %i.cc, ptr %i.ce, align 1, !tbaa !41
  %indvars.iv.next44 = shl i64 %indvars.iv43, 3
  %i.cf = or disjoint i64 %indvars.iv.next44, 8
  %i.cg = lshr i64 %i.as, %i.cf
  %i.ch = trunc i64 %i.cg to i8
  %i.ci = sub nsw i64 2, %indvars.iv43
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 %i.ci
  store i8 %i.ch, ptr %i.cj, align 1, !tbaa !41
  %indvars.iv.next44.1 = add nuw nsw i64 %indvars.iv43, 2 ; 2 uses
  %niter65.next.1 = add i64 %niter65, 2           ; 2 uses
  %niter65.ncmp.1 = icmp eq i64 %niter65.next.1, %unroll_iter64
  br i1 %niter65.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph41, !llvm.loop !48

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph41
  %lcmp.mod62.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.loopexit, label %.lr.ph41.epil.preheader

.lr.ph41.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph41.preheader
  %indvars.iv43.epil.init = phi i64 [ 0, %.lr.ph41.preheader ], [ %indvars.iv.next44.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod63 = trunc i32 %i.v to i1
  call void @llvm.assume(i1 %lcmp.mod63)
  %i.ck = shl nuw nsw i64 %indvars.iv43.epil.init, 3
  %i.cl = lshr i64 %i.as, %i.ck
  %i.cm = trunc i64 %i.cl to i8
  %i.cn = sub nsw i64 3, %indvars.iv43.epil.init
  %i.co = and i64 %i.cn, 4294967295
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 %i.co
  store i8 %i.cm, ptr %i.cp, align 1, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph41.epil.preheader, %.loopexit.loopexit.unr-lcssa, %._crit_edge, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm12MCAsmBackend17mayNeedRelaxationEjNS_8ArrayRefINS_9MCOperandEEERKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(320) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZNK4llvm12MCAsmBackend28fixupNeedsRelaxationAdvancedERKNS_10MCFragmentERKNS_7MCFixupERKNS_7MCValueEmb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(28), i64 noundef, i1 noundef zeroext) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm12MCAsmBackend16relaxInstructionERNS_6MCInstERKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(320) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12MCAsmBackend10relaxAlignERNS_10MCFragmentERj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm12MCAsmBackend18relaxDwarfLineAddrERNS_10MCFragmentE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm12MCAsmBackend13relaxDwarfCFAERNS_10MCFragmentE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm12MCAsmBackend14relaxSFrameCFAERNS_10MCFragmentE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZNK4llvm12MCAsmBackend11relaxLEB128ERNS_10MCFragmentERl(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i16 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm12MCAsmBackend17getMinimumNopSizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm12MCAsmBackend17getMaximumNopSizeERKNS_15MCSubtargetInfoE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(320) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_115LanaiAsmBackend12writeNopDataERN4llvm11raw_ostreamEmPKNS1_15MCSubtargetInfoE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i64 %2, 3
  %.not = icmp eq i64 %i.a, 0                     ; 2 uses
  %i.b = icmp ne i64 %2, 0
  %or.cond = and i1 %.not, %i.b
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ]
  %i.c = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.7, i64 noundef 4) #8 ; 0 uses
  %i.d = add nuw i64 %.06, 4                      ; 2 uses
  %i.e = icmp ult i64 %i.d, %2
  br i1 %i.e, label %.lr.ph, label %.loopexit, !llvm.loop !49

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  ret i1 %.not
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm12MCAsmBackend12finishLayoutEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4llvm12MCAsmBackend29generateCompactUnwindEncodingEPKNS_16MCDwarfFrameInfoEPKNS_9MCContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN4llvm26createLanaiELFObjectWriterEh(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, i8 noundef zeroext) local_unnamed_addr #4

declare { ptr, i64 } @_ZNK4llvm12MCAsmBackend16getFixupKindInfoEt(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef zeroext) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { builtin nounwind allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !18, i64 44}
!9 = !{!"_ZTSN4llvm6TripleE", !10, i64 0, !15, i64 32, !16, i64 36, !17, i64 40, !18, i64 44, !19, i64 48, !20, i64 52}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !14, i64 8, !6, i64 16}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"_ZTSN4llvm6Triple8ArchTypeE", !6, i64 0}
!16 = !{!"_ZTSN4llvm6Triple11SubArchTypeE", !6, i64 0}
!17 = !{!"_ZTSN4llvm6Triple10VendorTypeE", !6, i64 0}
!18 = !{!"_ZTSN4llvm6Triple6OSTypeE", !6, i64 0}
!19 = !{!"_ZTSN4llvm6Triple15EnvironmentTypeE", !6, i64 0}
!20 = !{!"_ZTSN4llvm6Triple16ObjectFormatTypeE", !6, i64 0}
!21 = !{!22, !23, i64 8}
!22 = !{!"_ZTSN4llvm12MCAsmBackendE", !23, i64 8, !24, i64 16, !24, i64 17, !25, i64 20}
!23 = !{!"p1 _ZTSN4llvm11MCAssemblerE", !13, i64 0}
!24 = !{!"bool", !6, i64 0}
!25 = !{!"_ZTSN4llvm10endiannessE", !6, i64 0}
!26 = !{!22, !24, i64 16}
!27 = !{!22, !24, i64 17}
!28 = !{!22, !25, i64 20}
!29 = !{!30, !30, i64 0}
!30 = !{!"vtable pointer", !7, i64 0}
!31 = !{!32, !18, i64 24}
!32 = !{!"_ZTSN12_GLOBAL__N_115LanaiAsmBackendE", !22, i64 0, !18, i64 24}
!33 = !{!12, !12, i64 0}
!34 = !{!14, !14, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTSN4llvm14MCObjectWriterE", !13, i64 0}
!37 = !{!38, !40, i64 12}
!38 = !{!"_ZTSN4llvm7MCFixupE", !39, i64 0, !5, i64 8, !40, i64 12, !24, i64 14, !24, i64 15}
!39 = !{!"p1 _ZTSN4llvm6MCExprE", !13, i64 0}
!40 = !{!"short", !6, i64 0}
!41 = !{!6, !6, i64 0}
!42 = distinct !{!42, !43, !44, !45}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = distinct !{!46, !43, !44, !45}
!47 = distinct !{!47, !43}
!48 = distinct !{!48, !43, !44}
!49 = distinct !{!49, !43}
end_hunk_0
