Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ComplexVector?download=true
inline.NumInlined: 9532
inline.NumDeleted: 3275
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev:bb.a
.sink.split.i:                                    ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %.noexc unwind label %bb.c, !inline_history !1

.noexc:                                           ; preds = %.sink.split.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !143
  %.not.i = icmp eq ptr %i.i, null
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !87
  %..i = select i1 %.not.i, i64 8, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %..i
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_ZN8facebook5velox21intrusive_ptr_releaseEPNS0_6BufferE.exit unwind label %bb.c, !inline_history !1

bb.c:                                             ; preds = %.noexc, %.sink.split.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #41
  unreachable

_ZN8facebook5velox21intrusive_ptr_releaseEPNS0_6BufferE.exit: ; preds = %.noexc, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKi(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(38) %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %class.anon.215, align 8            ; 6 uses
  %5 = alloca %class.anon.216, align 8            ; 6 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.201", align 16 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %8 = alloca %class.anon.215, align 8            ; 6 uses
  %9 = alloca %class.anon.216, align 8            ; 6 uses
  %10 = alloca %"struct.fmt::v11::detail::format_arg_store.201", align 16 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %12 = alloca %class.anon.215, align 8           ; 6 uses
  %13 = alloca %class.anon.216, align 8           ; 6 uses
  %14 = alloca %"struct.fmt::v11::detail::format_arg_store.824", align 16 ; 5 uses
  %15 = alloca %"class.facebook::velox::SelectivityVector", align 8 ; 62 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.facebook::velox::DecodedVector", align 8 ; 14 uses
  %18 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %19 = alloca %"class.boost::intrusive_ptr", align 8 ; 5 uses
  %20 = alloca %"class.std::optional", align 4    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i8, ptr %i.d, align 8, !tbaa !98
  %i.f = icmp eq i8 %i.e, 33
  br i1 %i.f, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 37
  %i.i = load i8, ptr %i.h, align 1, !tbaa !108, !range !147, !noundef !148
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i, label %bb.c

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i:   ; preds = %bb.b
  %.0.in.pre.i.i = load i8, ptr %i.g, align 4, !tbaa !149, !range !147
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.l = load i32, ptr %i.k, align 4, !tbaa !121
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !120  ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !119
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %2, align 8, !tbaa !110    ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.o, 0
  br i1 %.not.i.i.i, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.t = and i32 %i.o, 2147483584                 ; 3 uses
  %i.u = zext nneg i32 %i.t to i64
  %.not37.i.i.not.i.i663.not = icmp eq i32 %i.t, 0
  br i1 %.not37.i.i.not.i.i663.not, label %.critedge.i.i.i.i, label %.lr.ph666

bb.g:                                             ; preds = %.lr.ph666
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i664, 64 ; 2 uses
  %.not37.i.i.not.i.i = icmp samesign ult i64 %indvars.iv.next.i.i, %i.u
  br i1 %.not37.i.i.not.i.i, label %.lr.ph666, label %.critedge.i.i.i.i, !llvm.loop !502

.lr.ph666:                                        ; preds = %bb.f, %bb.g
  %indvars.iv.i.i664 = phi i64 [ %indvars.iv.next.i.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.v = lshr exact i64 %indvars.iv.i.i664, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !80
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %bb.g, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, !llvm.loop !502

.critedge.i.i.i.i:                                ; preds = %bb.g, %bb.f
  %.not38.i.i.i.i = icmp eq i32 %i.o, %i.t
  br i1 %.not38.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.critedge.i.i.i.i
  %i.z = lshr i32 %i.o, 6
  %i.aa = and i32 %i.o, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %notmask.i40.i.i.i.i = shl nsw i64 -1, %i.ab
  %i.ac = zext nneg i32 %i.z to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !80
  %.demorgan.i.i = or i64 %i.ae, %notmask.i40.i.i.i.i
  %i.af = icmp eq i64 %.demorgan.i.i, -1
  %i.ag = zext i1 %i.af to i16
  %i.ah = or disjoint i16 %i.ag, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i: ; preds = %.lr.ph666, %bb.h, %.critedge.i.i.i.i, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.insert.ext.i.i = phi i16 [ 256, %bb.d ], [ 256, %bb.c ], [ 257, %bb.e ], [ 257, %.critedge.i.i.i.i ], [ %i.ah, %bb.h ], [ 256, %.lr.ph666 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i, ptr %i.g, align 4
  %i.ai = trunc i16 %.sroa.0.0.insert.ext.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i
  %.0.in.i.i = phi i8 [ %.0.in.pre.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i ], [ %i.ai, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i ]
  %.0.i.i = trunc nuw i8 %.0.in.i.i to i1
  br i1 %.0.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !120 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.am = load i32, ptr %i.al, align 4, !tbaa !121 ; 2 uses
  %i.an = icmp slt i32 %i.am, %i.ak
  br i1 %i.an, label %.lr.ph.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit"

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.07.i = phi i32 [ %i.ar, %.lr.ph.i ], [ %i.am, %bb.i ] ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !87
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 144
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %.07.i, i1 noundef zeroext true), !inline_history !503
  %i.ar = add i32 %.07.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ar, %i.ak
  br i1 %exitcond.not.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %.lr.ph.i, !llvm.loop !504

bb.j:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i
  %i.as = load ptr, ptr %2, align 8, !tbaa !110   ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !121 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !120 ; 7 uses
  %.not.i.i.i.i = icmp slt i32 %i.au, %i.aw
  br i1 %.not.i.i.i.i, label %bb.k, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit"

bb.k:                                             ; preds = %bb.j
  %i.ax = add i32 %i.au, 63                       ; 2 uses
  %i.ay = srem i32 %i.ax, 64
  %i.az = sub nsw i32 %i.ax, %i.ay                ; 6 uses
  %i.ba = and i32 %i.aw, -64                      ; 6 uses
  %i.bb = icmp slt i32 %i.ba, %i.az
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = ashr i32 %i.aw, 6
  %i.bd = and i32 %i.aw, 63
  %i.be = zext nneg i32 %i.bd to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.be
  %i.bf = xor i64 %notmask.i.i.i.i.i, -1
  %i.bg = sub nsw i32 %i.az, %i.au                ; 2 uses
  %i.bh = zext nneg i32 %i.bg to i64
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.bh
  %i.bi = xor i64 %notmask.i.i.i.i.i.i, -1
  %i.bj = sub nsw i32 64, %i.bg
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl i64 %i.bi, %i.bk
  %i.bm = and i64 %i.bl, %i.bf
  %i.bn = sext i32 %i.bc to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !80
  %i.bq = and i64 %i.bm, %i.bp                    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.l, %.preheader.i.i.i.i.i
  %.011.i.i.i.i.i = phi i64 [ %i.by, %.preheader.i.i.i.i.i ], [ %i.bq, %bb.l ] ; 3 uses
  %i.br = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i, i1 true)
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = or disjoint i32 %i.ba, %i.bs
  %i.bu = load ptr, ptr %0, align 8, !tbaa !87
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 144
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.bt, i1 noundef zeroext true), !inline_history !505
  %i.bx = add nsw i64 %.011.i.i.i.i.i, -1
  %i.by = and i64 %i.bx, %.011.i.i.i.i.i          ; 2 uses
  %.not10.i.i.i.i.i = icmp eq i64 %i.by, 0
  br i1 %.not10.i.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %.preheader.i.i.i.i.i, !llvm.loop !506

bb.m:                                             ; preds = %bb.k
  %.not32.i.i.i.i = icmp eq i32 %i.au, %i.az
  br i1 %.not32.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit41.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = sdiv i32 %i.au, 64                      ; 2 uses
  %i.ca = sub nsw i32 %i.az, %i.au                ; 2 uses
  %i.cb = zext nneg i32 %i.ca to i64
  %notmask.i.i35.i.i.i.i = shl nsw i64 -1, %i.cb
  %i.cc = xor i64 %notmask.i.i35.i.i.i.i, -1
  %i.cd = sub nsw i32 64, %i.ca
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl i64 %i.cc, %i.ce
  %i.cg = sext i32 %i.bz to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !80
  %i.cj = and i64 %i.ci, %i.cf                    ; 2 uses
  %.not.i36.i.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i36.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit41.i.i.i.i", label %.preheader.i37.i.i.i.i

.preheader.i37.i.i.i.i:                           ; preds = %bb.n
  %i.ck = shl nsw i32 %i.bz, 6
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.preheader.i37.i.i.i.i
  %.011.i38.i.i.i.i = phi i64 [ %i.cj, %.preheader.i37.i.i.i.i ], [ %i.cs, %bb.o ] ; 3 uses
  %i.cl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i, i1 true)
  %i.cm = trunc nuw nsw i64 %i.cl to i32
  %i.cn = or disjoint i32 %i.ck, %i.cm
  %i.co = load ptr, ptr %0, align 8, !tbaa !87
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 144
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.cq(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.cn, i1 noundef zeroext true), !inline_history !505
  %i.cr = add i64 %.011.i38.i.i.i.i, -1
  %i.cs = and i64 %i.cr, %.011.i38.i.i.i.i        ; 2 uses
  %.not10.i40.i.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not10.i40.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit41.i.i.i.i", label %bb.o, !llvm.loop !506

"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit41.i.i.i.i": ; preds = %bb.o, %bb.n, %bb.m
  %i.ct = add nsw i32 %i.az, 64                   ; 2 uses
  %.not3353.i.i.i.i = icmp sgt i32 %i.ct, %i.ba
  br i1 %.not3353.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit41.i.i.i.i"
  %.not34.i.i.i.i = icmp eq i32 %i.aw, %i.ba
  br i1 %.not34.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %bb.s

.lr.ph.i.i.i.i:                                   ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit41.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  %i.cu = phi i32 [ %i.ds, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.ct, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit41.i.i.i.i" ] ; 2 uses
  %.054.i.i.i.i = phi i32 [ %i.cu, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.az, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUlimE_clEim.exit41.i.i.i.i" ] ; 2 uses
  %i.cv = sdiv i32 %.054.i.i.i.i, 64              ; 3 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !80 ; 2 uses
  switch i64 %i.cy, label %.lr.ph.i.i.i.i.i [
    i64 -1, label %bb.p
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.cz = shl nsw i32 %i.cv, 6
  br label %bb.r

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %i.da = shl nsw i32 %i.cv, 6                    ; 2 uses
  %i.db = add i32 %i.da, 64
  %i.dc = sext i32 %i.db to i64
  %.0.off.i.i.i.i = add i32 %.054.i.i.i.i, 127
  %.not23.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i, 64
  br i1 %.not23.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph22.i.i.i.i.i

.lr.ph22.i.i.i.i.i:                               ; preds = %bb.p
  %i.dd = sext i32 %i.da to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph22.i.i.i.i.i
  %.021.i.i.i.i.i = phi i64 [ %i.dd, %.lr.ph22.i.i.i.i.i ], [ %i.di, %bb.q ] ; 2 uses
  %i.de = trunc i64 %.021.i.i.i.i.i to i32
  %i.df = load ptr, ptr %0, align 8, !tbaa !87
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 144
  %i.dh = load ptr, ptr %i.dg, align 8
  tail call void %i.dh(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.de, i1 noundef zeroext true), !inline_history !507
  %i.di = add nuw i64 %.021.i.i.i.i.i, 1          ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.dc
  br i1 %i.dj, label %bb.q, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !508

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i.i
  %.01520.i.i.i.i.i = phi i64 [ %i.cy, %.lr.ph.i.i.i.i.i ], [ %i.dr, %bb.r ] ; 3 uses
  %i.dk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01520.i.i.i.i.i, i1 true)
  %i.dl = trunc nuw nsw i64 %i.dk to i32
  %i.dm = or disjoint i32 %i.cz, %i.dl
  %i.dn = load ptr, ptr %0, align 8, !tbaa !87
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 144
  %i.dp = load ptr, ptr %i.do, align 8
  tail call void %i.dp(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.dm, i1 noundef zeroext true), !inline_history !509
  %i.dq = add i64 %.01520.i.i.i.i.i, -1
  %i.dr = and i64 %i.dq, %.01520.i.i.i.i.i        ; 2 uses
  %.not.i43.i.i.i.i = icmp eq i64 %i.dr, 0
  br i1 %.not.i43.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.r, !llvm.loop !510

"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %bb.q, %bb.r, %bb.p, %.lr.ph.i.i.i.i
  %i.ds = add nsw i32 %i.cu, 64                   ; 2 uses
  %.not33.i.i.i.i = icmp sgt i32 %i.ds, %i.ba
  br i1 %.not33.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !511

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dt = ashr i32 %i.aw, 6
  %i.du = and i32 %i.aw, 63
  %i.dv = zext nneg i32 %i.du to i64
  %notmask.i44.i.i.i.i = shl nsw i64 -1, %i.dv
  %i.dw = xor i64 %notmask.i44.i.i.i.i, -1
  %i.dx = sext i32 %i.dt to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !80
  %i.ea = and i64 %i.dz, %i.dw                    ; 2 uses
  %.not.i45.i.i.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not.i45.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %.preheader.i46.i.i.i.i

.preheader.i46.i.i.i.i:                           ; preds = %bb.s, %.preheader.i46.i.i.i.i
  %.011.i47.i.i.i.i = phi i64 [ %i.ei, %.preheader.i46.i.i.i.i ], [ %i.ea, %bb.s ] ; 3 uses
  %i.eb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i47.i.i.i.i, i1 true)
  %i.ec = trunc nuw nsw i64 %i.eb to i32
  %i.ed = or disjoint i32 %i.ba, %i.ec
  %i.ee = load ptr, ptr %0, align 8, !tbaa !87
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 144
  %i.eg = load ptr, ptr %i.ef, align 8
  tail call void %i.eg(ptr noundef nonnull align 8 dereferenceable(94) %0, i32 noundef %i.ed, i1 noundef zeroext true), !inline_history !505
  %i.eh = add nsw i64 %.011.i47.i.i.i.i, -1
  %i.ei = and i64 %i.eh, %.011.i47.i.i.i.i        ; 2 uses
  %.not10.i49.i.i.i.i = icmp eq i64 %i.ei, 0
  br i1 %.not10.i49.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_0EEvT_.exit", label %.preheader.i46.i.i.i.i, !llvm.loop !506

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #39
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !150 ; 2 uses
  %i.el = load ptr, ptr %2, align 8, !tbaa !110   ; 3 uses
  %i.em = ptrtoint ptr %i.ek to i64               ; 2 uses
  %i.en = ptrtoint ptr %i.el to i64               ; 2 uses
  %i.eo = sub i64 %i.em, %i.en                    ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.ep, align 8
  %.not.i.i.i.i.i69 = icmp eq ptr %i.ek, %i.el
  br i1 %.not.i.i.i.i.i69, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.eq = icmp ugt i64 %i.eo, 9223372036854775800
  br i1 %i.eq, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, !prof !56

.noexc.i.i.i:                                     ; preds = %bb.u
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.u
  %i.er = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eo) #42
  %.pre = load ptr, ptr %2, align 8, !tbaa !151   ; 2 uses
  %.pre456 = load ptr, ptr %i.ej, align 8, !tbaa !151
  %.pre462 = ptrtoint ptr %.pre456 to i64
  %.pre463 = ptrtoint ptr %.pre to i64
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, %bb.t
  %.pre-phi464 = phi i64 [ %.pre463, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.en, %bb.t ]
  %.pre-phi = phi i64 [ %.pre462, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.em, %bb.t ]
  %i.es = phi ptr [ %.pre, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.el, %bb.t ] ; 2 uses
  %i.et = phi ptr [ %i.er, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.t ] ; 5 uses
  store ptr %i.et, ptr %15, align 8, !tbaa !110
  %i.eu = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.eo
  %i.ew = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !111
  %i.ex = sub i64 %.pre-phi, %.pre-phi464         ; 4 uses
  %i.ey = icmp sgt i64 %i.ex, 8
  br i1 %i.ey, label %bb.w, label %bb.x, !prof !63

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.et, ptr align 8 %i.es, i64 %i.ex, i1 false)
  br label %_ZN8facebook5velox17SelectivityVectorC2ERKS1_.exit

bb.x:                                             ; preds = %bb.v
  %i.ez = icmp eq i64 %i.ex, 8
  br i1 %i.ez, label %bb.y, label %_ZN8facebook5velox17SelectivityVectorC2ERKS1_.exit

bb.y:                                             ; preds = %bb.x
  %i.fa = load i64, ptr %i.es, align 8, !tbaa !80
  store i64 %i.fa, ptr %i.et, align 8, !tbaa !80
  br label %_ZN8facebook5velox17SelectivityVectorC2ERKS1_.exit

_ZN8facebook5velox17SelectivityVectorC2ERKS1_.exit: ; preds = %bb.w, %bb.x, %bb.y
  %i.fb = getelementptr inbounds i8, ptr %i.et, i64 %i.ex
  store ptr %i.fb, ptr %i.eu, align 8, !tbaa !150
  %i.fc = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.fc, ptr noundef nonnull align 8 dereferenceable(14) %i.fd, i64 14, i1 false)
  %.not = icmp eq ptr %3, null                    ; 14 uses
  br i1 %.not, label %bb.z, label %bb.af

bb.z:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorC2ERKS1_.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !152 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !120 ; 2 uses
  %.not53 = icmp slt i32 %i.ff, %i.fh
  br i1 %.not53, label %bb.aa, label %bb.af, !prof !56

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39, !noalias !541
  store i32 %i.ff, ptr %14, align 16, !tbaa !94, !noalias !541
  %i.fi = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 %i.fh, ptr %i.fi, align 16, !tbaa !94, !noalias !541
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull @.str.12, i64 11, i64 17, ptr nonnull %14)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !541
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr nonnull @.str.12) #38
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.ae:                                            ; preds = %bb.ab
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = load ptr, ptr %16, align 8, !tbaa !92   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ae
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !94
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.fj, %bb.ad ], [ %i.fk, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #39
  br label %bb.ha

bb.af:                                            ; preds = %bb.z, %_ZN8facebook5velox17SelectivityVectorC2ERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #39
  invoke void @_ZN8facebook5velox13DecodedVectorC1ERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %17, ptr noundef nonnull align 8 dereferenceable(94) %1, i1 noundef zeroext true)
          to label %bb.ag unwind label %bb.by

bb.ag:                                            ; preds = %bb.af
  %i.fq = getelementptr inbounds nuw i8, ptr %17, i64 58
  %i.fr = load i8, ptr %i.fq, align 2, !tbaa !162, !range !147, !noundef !148
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %bb.ah, label %bb.cv

bb.ah:                                            ; preds = %bb.ag
  %i.ft = load ptr, ptr %1, align 8, !tbaa !87
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = invoke noundef zeroext i1 %i.fv(ptr noundef nonnull align 8 dereferenceable(94) %1)
          to label %bb.ai unwind label %bb.bz

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.fw, label %bb.aj, label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

bb.aj:                                            ; preds = %bb.ai
  %i.fx = load ptr, ptr %1, align 8, !tbaa !87
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 288
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = invoke noundef ptr %i.fz(ptr noundef nonnull align 8 dereferenceable(94) %1)
          to label %bb.ak unwind label %bb.ca

bb.ak:                                            ; preds = %bb.aj
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !78 ; 7 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 37
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !108, !range !147, !noundef !148
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i103, label %bb.al

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i103: ; preds = %bb.ak
  %.0.in.pre.i.i104 = load i8, ptr %i.gd, align 4, !tbaa !149, !range !147
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i72

bb.al:                                            ; preds = %bb.ak
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !121
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.am, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i70

bb.am:                                            ; preds = %bb.al
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !120 ; 6 uses
  %i.gm = load i32, ptr %i.fd, align 8, !tbaa !119
  %i.gn = icmp eq i32 %i.gl, %i.gm
  br i1 %i.gn, label %bb.an, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i70

bb.an:                                            ; preds = %bb.am
  %i.go = load ptr, ptr %2, align 8, !tbaa !110   ; 2 uses
  %.not.i.i.i95 = icmp sgt i32 %i.gl, 0
  br i1 %.not.i.i.i95, label %bb.ao, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i70

bb.ao:                                            ; preds = %bb.an
  %i.gp = and i32 %i.gl, 2147483584               ; 3 uses
  %i.gq = zext nneg i32 %i.gp to i64
  %.not37.i.i.not.i.i97651.not = icmp eq i32 %i.gp, 0
  br i1 %.not37.i.i.not.i.i97651.not, label %.critedge.i.i.i.i98, label %.lr.ph654

bb.ap:                                            ; preds = %.lr.ph654
  %indvars.iv.next.i.i102 = add nuw nsw i64 %indvars.iv.i.i96652, 64 ; 2 uses
  %.not37.i.i.not.i.i97 = icmp samesign ult i64 %indvars.iv.next.i.i102, %i.gq
  br i1 %.not37.i.i.not.i.i97, label %.lr.ph654, label %.critedge.i.i.i.i98, !llvm.loop !502

.lr.ph654:                                        ; preds = %bb.ao, %bb.ap
  %indvars.iv.i.i96652 = phi i64 [ %indvars.iv.next.i.i102, %bb.ap ], [ 0, %bb.ao ] ; 2 uses
  %i.gr = lshr exact i64 %indvars.iv.i.i96652, 3
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gr
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !80
  %i.gu = icmp eq i64 %i.gt, -1
  br i1 %i.gu, label %bb.ap, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i70, !llvm.loop !502

.critedge.i.i.i.i98:                              ; preds = %bb.ap, %bb.ao
  %.not38.i.i.i.i99 = icmp eq i32 %i.gl, %i.gp
  br i1 %.not38.i.i.i.i99, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i70, label %bb.aq

bb.aq:                                            ; preds = %.critedge.i.i.i.i98
  %i.gv = lshr i32 %i.gl, 6
  %i.gw = and i32 %i.gl, 63
  %i.gx = zext nneg i32 %i.gw to i64
  %notmask.i40.i.i.i.i100 = shl nsw i64 -1, %i.gx
  %i.gy = zext nneg i32 %i.gv to i64
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gy
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !80
  %.demorgan.i.i101 = or i64 %i.ha, %notmask.i40.i.i.i.i100
  %i.hb = icmp eq i64 %.demorgan.i.i101, -1
  %i.hc = zext i1 %i.hb to i16
  %i.hd = or disjoint i16 %i.hc, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i70

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i70: ; preds = %.lr.ph654, %bb.aq, %.critedge.i.i.i.i98, %bb.an, %bb.am, %bb.al
  %.sroa.0.0.insert.ext.i.i71 = phi i16 [ 256, %bb.am ], [ 256, %bb.al ], [ 257, %bb.an ], [ 257, %.critedge.i.i.i.i98 ], [ %i.hd, %bb.aq ], [ 256, %.lr.ph654 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i71, ptr %i.gd, align 4
  %i.he = trunc i16 %.sroa.0.0.insert.ext.i.i71 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i72

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i72: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i70, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i103
  %.0.in.i.i73 = phi i8 [ %.0.in.pre.i.i104, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i103 ], [ %i.he, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i70 ]
  %.0.i.i74 = trunc nuw i8 %.0.in.i.i73 to i1
  br i1 %.0.i.i74, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i72
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !120 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !121 ; 2 uses
  %i.hj = icmp slt i32 %i.hi, %i.hg
  br i1 %i.hj, label %.lr.ph.i93, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_1EEvT_.exit"

.lr.ph.i93:                                       ; preds = %bb.ar
  %i.hk = getelementptr inbounds nuw i8, ptr %15, i64 37
  %i.hl = sext i32 %i.hi to i64
  %wide.trip.count.i = sext i32 %i.hg to i64
  br label %bb.as

bb.as:                                            ; preds = %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i", %.lr.ph.i93
  %indvars.iv.i = phi i64 [ %i.hl, %.lr.ph.i93 ], [ %indvars.iv.next.i, %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i" ] ; 5 uses
  %i.hm = trunc nsw i64 %indvars.iv.i to i32
  br i1 %.not, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hn = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.i
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !122
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.hp = phi i32 [ %i.ho, %bb.at ], [ %i.hm, %bb.as ]
  %i.hq = zext i32 %i.hp to i64                   ; 2 uses
  %i.hr = lshr i64 %i.hq, 6
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.hr
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !80
  %i.hu = and i64 %i.hq, 63
  %i.hv = shl nuw i64 1, %i.hu
  %i.hw = and i64 %i.hv, %i.ht
  %.not.i.i4.i = icmp eq i64 %i.hw, 0
  br i1 %.not.i.i4.i, label %bb.av, label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i"

bb.av:                                            ; preds = %bb.au
  %i.hx = load ptr, ptr %15, align 8, !tbaa !110
  %i.hy = lshr i64 %indvars.iv.i, 3
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hy ; 2 uses
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !94
  %i.ib = and i64 %indvars.iv.i, 7
  %i.ic = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ib
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !94
  %i.ie = and i8 %i.id, %i.ia
  store i8 %i.ie, ptr %i.hz, align 1, !tbaa !94
  store i8 0, ptr %i.hk, align 1, !tbaa !108
  br label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i"

"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i": ; preds = %bb.av, %bb.au
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i94, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_1EEvT_.exit", label %bb.as, !llvm.loop !514

bb.aw:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i72
  %i.if = load ptr, ptr %2, align 8, !tbaa !110   ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !121 ; 6 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !120 ; 7 uses
  %.not.i.i.i.i75 = icmp slt i32 %i.ih, %i.ij
  br i1 %.not.i.i.i.i75, label %bb.ax, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_1EEvT_.exit"

bb.ax:                                            ; preds = %bb.aw
  %i.ik = add i32 %i.ih, 63                       ; 2 uses
  %i.il = srem i32 %i.ik, 64
  %i.im = sub nsw i32 %i.ik, %i.il                ; 6 uses
  %i.in = and i32 %i.ij, -64                      ; 6 uses
  %i.io = icmp slt i32 %i.in, %i.im
  br i1 %i.io, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.ip = ashr i32 %i.ij, 6
  %i.iq = and i32 %i.ij, 63
  %i.ir = zext nneg i32 %i.iq to i64
  %notmask.i.i.i.i.i87 = shl nsw i64 -1, %i.ir
  %i.is = xor i64 %notmask.i.i.i.i.i87, -1
  %i.it = sub nsw i32 %i.im, %i.ih                ; 2 uses
  %i.iu = zext nneg i32 %i.it to i64
  %notmask.i.i.i.i.i.i88 = shl nsw i64 -1, %i.iu
  %i.iv = xor i64 %notmask.i.i.i.i.i.i88, -1
  %i.iw = sub nsw i32 64, %i.it
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = shl i64 %i.iv, %i.ix
  %i.iz = and i64 %i.iy, %i.is
  %i.ja = sext i32 %i.ip to i64
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.ja
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !80
  %i.jd = and i64 %i.iz, %i.jc                    ; 2 uses
  %.not.i.i.i.i.i89 = icmp eq i64 %i.jd, 0
  br i1 %.not.i.i.i.i.i89, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_1EEvT_.exit", label %.preheader.i.i.i.i.i90

.preheader.i.i.i.i.i90:                           ; preds = %bb.ay
  %i.je = getelementptr inbounds nuw i8, ptr %15, i64 37
  br label %bb.az

bb.az:                                            ; preds = %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i.i.i.i.i", %.preheader.i.i.i.i.i90
  %.011.i.i.i.i.i91 = phi i64 [ %i.jd, %.preheader.i.i.i.i.i90 ], [ %i.kd, %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i.i.i.i.i" ] ; 3 uses
  %i.jf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i91, i1 true)
  %i.jg = trunc nuw nsw i64 %i.jf to i32
  %i.jh = or disjoint i32 %i.in, %i.jg            ; 3 uses
  br i1 %.not, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ji
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !122
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.jl = phi i32 [ %i.jk, %bb.ba ], [ %i.jh, %bb.az ]
  %i.jm = zext i32 %i.jl to i64                   ; 2 uses
  %i.jn = lshr i64 %i.jm, 6
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.jn
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !80
  %i.jq = and i64 %i.jm, 63
  %i.jr = shl nuw i64 1, %i.jq
  %i.js = and i64 %i.jr, %i.jp
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.js, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bc, label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i.i.i.i.i"

bb.bc:                                            ; preds = %bb.bb
  %i.jt = load ptr, ptr %15, align 8, !tbaa !110
  %i.ju = sext i32 %i.jh to i64                   ; 2 uses
  %i.jv = lshr i64 %i.ju, 3
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.jv ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !94
  %i.jy = and i64 %i.ju, 7
  %i.jz = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !94
  %i.kb = and i8 %i.ka, %i.jx
  store i8 %i.kb, ptr %i.jw, align 1, !tbaa !94
  store i8 0, ptr %i.je, align 1, !tbaa !108
  br label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i.i.i.i.i"

"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i.i.i.i.i": ; preds = %bb.bc, %bb.bb
  %i.kc = add nsw i64 %.011.i.i.i.i.i91, -1
  %i.kd = and i64 %i.kc, %.011.i.i.i.i.i91        ; 2 uses
  %.not10.i.i.i.i.i92 = icmp eq i64 %i.kd, 0
  br i1 %.not10.i.i.i.i.i92, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_1EEvT_.exit", label %bb.az, !llvm.loop !515

bb.bd:                                            ; preds = %bb.ax
  %.not32.i.i.i.i76 = icmp eq i32 %i.ih, %i.im
  br i1 %.not32.i.i.i.i76, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i", label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ke = sdiv i32 %i.ih, 64                      ; 2 uses
  %i.kf = sub nsw i32 %i.im, %i.ih                ; 2 uses
  %i.kg = zext nneg i32 %i.kf to i64
  %notmask.i.i35.i.i.i.i77 = shl nsw i64 -1, %i.kg
  %i.kh = xor i64 %notmask.i.i35.i.i.i.i77, -1
  %i.ki = sub nsw i32 64, %i.kf
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = shl i64 %i.kh, %i.kj
  %i.kl = sext i32 %i.ke to i64
  %i.km = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.kl
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !80
  %i.ko = and i64 %i.kn, %i.kk                    ; 2 uses
  %.not.i36.i.i.i.i78 = icmp eq i64 %i.ko, 0
  br i1 %.not.i36.i.i.i.i78, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i", label %.preheader.i37.i.i.i.i79

.preheader.i37.i.i.i.i79:                         ; preds = %bb.be
  %i.kp = shl nsw i32 %i.ke, 6
  %i.kq = getelementptr inbounds nuw i8, ptr %15, i64 37
  br label %bb.bf

bb.bf:                                            ; preds = %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i41.i.i.i.i", %.preheader.i37.i.i.i.i79
  %.011.i38.i.i.i.i80 = phi i64 [ %i.ko, %.preheader.i37.i.i.i.i79 ], [ %i.lp, %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i41.i.i.i.i" ] ; 3 uses
  %i.kr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i80, i1 true)
  %i.ks = trunc nuw nsw i64 %i.kr to i32
  %i.kt = or disjoint i32 %i.kp, %i.ks            ; 3 uses
  br i1 %.not, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ku = sext i32 %i.kt to i64
  %i.kv = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ku
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !122
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.kx = phi i32 [ %i.kw, %bb.bg ], [ %i.kt, %bb.bf ]
  %i.ky = zext i32 %i.kx to i64                   ; 2 uses
  %i.kz = lshr i64 %i.ky, 6
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.kz
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !80
  %i.lc = and i64 %i.ky, 63
  %i.ld = shl nuw i64 1, %i.lc
  %i.le = and i64 %i.ld, %i.lb
  %.not.i.i.i40.i.i.i.i = icmp eq i64 %i.le, 0
  br i1 %.not.i.i.i40.i.i.i.i, label %bb.bi, label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i41.i.i.i.i"

bb.bi:                                            ; preds = %bb.bh
  %i.lf = load ptr, ptr %15, align 8, !tbaa !110
  %i.lg = sext i32 %i.kt to i64                   ; 2 uses
  %i.lh = lshr i64 %i.lg, 3
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lh ; 2 uses
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !94
  %i.lk = and i64 %i.lg, 7
  %i.ll = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !94
  %i.ln = and i8 %i.lm, %i.lj
  store i8 %i.ln, ptr %i.li, align 1, !tbaa !94
  store i8 0, ptr %i.kq, align 1, !tbaa !108
  br label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i41.i.i.i.i"

"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i41.i.i.i.i": ; preds = %bb.bi, %bb.bh
  %i.lo = add i64 %.011.i38.i.i.i.i80, -1
  %i.lp = and i64 %i.lo, %.011.i38.i.i.i.i80      ; 2 uses
  %.not10.i42.i.i.i.i = icmp eq i64 %i.lp, 0
  br i1 %.not10.i42.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i", label %bb.bf, !llvm.loop !515

"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i": ; preds = %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i41.i.i.i.i", %bb.be, %bb.bd
  %i.lq = add nsw i32 %i.im, 64                   ; 2 uses
  %.not3359.i.i.i.i = icmp sgt i32 %i.lq, %i.in
  br i1 %.not3359.i.i.i.i, label %._crit_edge.i.i.i.i83, label %.lr.ph.i.i.i.i81

.lr.ph.i.i.i.i81:                                 ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i"
  %i.lr = getelementptr inbounds nuw i8, ptr %15, i64 37 ; 3 uses
  br label %bb.bj

._crit_edge.i.i.i.i83:                            ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i"
  %.not34.i.i.i.i84 = icmp eq i32 %i.ij, %i.in
  br i1 %.not34.i.i.i.i84, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_1EEvT_.exit", label %bb.br

bb.bj:                                            ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %.lr.ph.i.i.i.i81
  %i.ls = phi i32 [ %i.lq, %.lr.ph.i.i.i.i81 ], [ %i.on, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %.060.i.i.i.i = phi i32 [ %i.im, %.lr.ph.i.i.i.i81 ], [ %i.ls, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %i.lt = sdiv i32 %.060.i.i.i.i, 64              ; 3 uses
  %i.lu = sext i32 %i.lt to i64
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.lu
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !80 ; 2 uses
  switch i64 %i.lw, label %.lr.ph.i.i.i.i.i86 [
    i64 -1, label %bb.bk
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i86:                               ; preds = %bb.bj
  %i.lx = shl nsw i32 %i.lt, 6
  br label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.ly = shl nsw i32 %i.lt, 6                    ; 2 uses
  %i.lz = add i32 %i.ly, 64
  %i.ma = sext i32 %i.lz to i64                   ; 2 uses
  %.0.off.i.i.i.i85 = add i32 %.060.i.i.i.i, 127
  %.not24.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i85, 64
  br i1 %.not24.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph23.i.i.i.i.i

.lr.ph23.i.i.i.i.i:                               ; preds = %bb.bk
  %i.mb = sext i32 %i.ly to i64                   ; 2 uses
  br i1 %.not, label %.lr.ph23.i.i.i.i.i.split.us, label %.lr.ph23.i.i.i.i.i.split

.lr.ph23.i.i.i.i.i.split.us:                      ; preds = %.lr.ph23.i.i.i.i.i, %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clImEEDaT_.exit.i.i.i.i.i.us"
  %.022.i.i.i.i.i.us = phi i64 [ %i.ms, %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clImEEDaT_.exit.i.i.i.i.i.us" ], [ %i.mb, %.lr.ph23.i.i.i.i.i ] ; 5 uses
  %i.mc = lshr i64 %.022.i.i.i.i.i.us, 6
  %i.md = and i64 %i.mc, 67108863
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.md
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !80
  %i.mg = and i64 %.022.i.i.i.i.i.us, 63
  %i.mh = shl nuw i64 1, %i.mg
  %i.mi = and i64 %i.mh, %i.mf
  %.not.i.i.i45.i.i.i.i.us = icmp eq i64 %i.mi, 0
  br i1 %.not.i.i.i45.i.i.i.i.us, label %bb.bl, label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clImEEDaT_.exit.i.i.i.i.i.us"

bb.bl:                                            ; preds = %.lr.ph23.i.i.i.i.i.split.us
  %i.mj = load ptr, ptr %15, align 8, !tbaa !110
  %sext.i.i.i.i.i.i.us = shl i64 %.022.i.i.i.i.i.us, 32
  %i.mk = ashr exact i64 %sext.i.i.i.i.i.i.us, 32
  %i.ml = lshr i64 %i.mk, 3
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.ml ; 2 uses
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !94
  %i.mo = and i64 %.022.i.i.i.i.i.us, 7
  %i.mp = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.mo
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !94
  %i.mr = and i8 %i.mq, %i.mn
  store i8 %i.mr, ptr %i.mm, align 1, !tbaa !94
  store i8 0, ptr %i.lr, align 1, !tbaa !108
  br label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clImEEDaT_.exit.i.i.i.i.i.us"

"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clImEEDaT_.exit.i.i.i.i.i.us": ; preds = %bb.bl, %.lr.ph23.i.i.i.i.i.split.us
  %i.ms = add nuw i64 %.022.i.i.i.i.i.us, 1       ; 2 uses
  %i.mt = icmp ult i64 %i.ms, %i.ma
  br i1 %i.mt, label %.lr.ph23.i.i.i.i.i.split.us, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !516

.lr.ph23.i.i.i.i.i.split:                         ; preds = %.lr.ph23.i.i.i.i.i, %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clImEEDaT_.exit.i.i.i.i.i"
  %.022.i.i.i.i.i = phi i64 [ %i.nm, %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clImEEDaT_.exit.i.i.i.i.i" ], [ %i.mb, %.lr.ph23.i.i.i.i.i ] ; 4 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.022.i.i.i.i.i
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !122
  %i.mw = zext i32 %i.mv to i64                   ; 2 uses
  %i.mx = lshr i64 %i.mw, 6
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.mx
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !80
  %i.na = and i64 %i.mw, 63
  %i.nb = shl nuw i64 1, %i.na
  %i.nc = and i64 %i.nb, %i.mz
  %.not.i.i.i45.i.i.i.i = icmp eq i64 %i.nc, 0
  br i1 %.not.i.i.i45.i.i.i.i, label %bb.bm, label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clImEEDaT_.exit.i.i.i.i.i"

bb.bm:                                            ; preds = %.lr.ph23.i.i.i.i.i.split
  %i.nd = load ptr, ptr %15, align 8, !tbaa !110
  %sext.i.i.i.i.i.i = shl i64 %.022.i.i.i.i.i, 32
  %i.ne = ashr exact i64 %sext.i.i.i.i.i.i, 32
  %i.nf = lshr i64 %i.ne, 3
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.nf ; 2 uses
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !94
  %i.ni = and i64 %.022.i.i.i.i.i, 7
  %i.nj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ni
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !94
  %i.nl = and i8 %i.nk, %i.nh
  store i8 %i.nl, ptr %i.ng, align 1, !tbaa !94
  store i8 0, ptr %i.lr, align 1, !tbaa !108
  br label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clImEEDaT_.exit.i.i.i.i.i"

"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clImEEDaT_.exit.i.i.i.i.i": ; preds = %bb.bm, %.lr.ph23.i.i.i.i.i.split
  %i.nm = add nuw i64 %.022.i.i.i.i.i, 1          ; 2 uses
  %i.nn = icmp ult i64 %i.nm, %i.ma
  br i1 %i.nn, label %.lr.ph23.i.i.i.i.i.split, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !516

bb.bn:                                            ; preds = %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i46.i.i.i.i", %.lr.ph.i.i.i.i.i86
  %.01521.i.i.i.i.i = phi i64 [ %i.lw, %.lr.ph.i.i.i.i.i86 ], [ %i.om, %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i46.i.i.i.i" ] ; 3 uses
  %i.no = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521.i.i.i.i.i, i1 true)
  %i.np = trunc nuw nsw i64 %i.no to i32
  %i.nq = or disjoint i32 %i.lx, %i.np            ; 3 uses
  br i1 %.not, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nr = sext i32 %i.nq to i64
  %i.ns = getelementptr inbounds [4 x i8], ptr %3, i64 %i.nr
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !122
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.nu = phi i32 [ %i.nt, %bb.bo ], [ %i.nq, %bb.bn ]
  %i.nv = zext i32 %i.nu to i64                   ; 2 uses
  %i.nw = lshr i64 %i.nv, 6
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.nw
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !80
  %i.nz = and i64 %i.nv, 63
  %i.oa = shl nuw i64 1, %i.nz
  %i.ob = and i64 %i.oa, %i.ny
  %.not.i.i18.i.i.i.i.i = icmp eq i64 %i.ob, 0
  br i1 %.not.i.i18.i.i.i.i.i, label %bb.bq, label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i46.i.i.i.i"

bb.bq:                                            ; preds = %bb.bp
  %i.oc = load ptr, ptr %15, align 8, !tbaa !110
  %i.od = sext i32 %i.nq to i64                   ; 2 uses
  %i.oe = lshr i64 %i.od, 3
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oe ; 2 uses
  %i.og = load i8, ptr %i.of, align 1, !tbaa !94
  %i.oh = and i64 %i.od, 7
  %i.oi = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.oh
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !94
  %i.ok = and i8 %i.oj, %i.og
  store i8 %i.ok, ptr %i.of, align 1, !tbaa !94
  store i8 0, ptr %i.lr, align 1, !tbaa !108
  br label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i46.i.i.i.i"

"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i46.i.i.i.i": ; preds = %bb.bq, %bb.bp
  %i.ol = add i64 %.01521.i.i.i.i.i, -1
  %i.om = and i64 %i.ol, %.01521.i.i.i.i.i        ; 2 uses
  %.not.i47.i.i.i.i = icmp eq i64 %i.om, 0
  br i1 %.not.i47.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.bn, !llvm.loop !517

"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_1EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clImEEDaT_.exit.i.i.i.i.i", %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clImEEDaT_.exit.i.i.i.i.i.us", %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i46.i.i.i.i", %bb.bk, %bb.bj
  %i.on = add nsw i32 %i.ls, 64                   ; 2 uses
  %.not33.i.i.i.i82 = icmp sgt i32 %i.on, %i.in
  br i1 %.not33.i.i.i.i82, label %._crit_edge.i.i.i.i83, label %bb.bj, !llvm.loop !518

bb.br:                                            ; preds = %._crit_edge.i.i.i.i83
  %i.oo = ashr i32 %i.ij, 6
  %i.op = and i32 %i.ij, 63
  %i.oq = zext nneg i32 %i.op to i64
  %notmask.i48.i.i.i.i = shl nsw i64 -1, %i.oq
  %i.or = xor i64 %notmask.i48.i.i.i.i, -1
  %i.os = sext i32 %i.oo to i64
  %i.ot = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.os
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !80
  %i.ov = and i64 %i.ou, %i.or                    ; 2 uses
  %.not.i49.i.i.i.i = icmp eq i64 %i.ov, 0
  br i1 %.not.i49.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_1EEvT_.exit", label %.preheader.i50.i.i.i.i

.preheader.i50.i.i.i.i:                           ; preds = %bb.br
  %i.ow = getelementptr inbounds nuw i8, ptr %15, i64 37
  br label %bb.bs

bb.bs:                                            ; preds = %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i54.i.i.i.i", %.preheader.i50.i.i.i.i
  %.011.i51.i.i.i.i = phi i64 [ %i.ov, %.preheader.i50.i.i.i.i ], [ %i.pv, %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i54.i.i.i.i" ] ; 3 uses
  %i.ox = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i51.i.i.i.i, i1 true)
  %i.oy = trunc nuw nsw i64 %i.ox to i32
  %i.oz = or disjoint i32 %i.in, %i.oy            ; 3 uses
  br i1 %.not, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.pa
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !122
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.pd = phi i32 [ %i.pc, %bb.bt ], [ %i.oz, %bb.bs ]
  %i.pe = zext i32 %i.pd to i64                   ; 2 uses
  %i.pf = lshr i64 %i.pe, 6
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.pf
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !80
  %i.pi = and i64 %i.pe, 63
  %i.pj = shl nuw i64 1, %i.pi
  %i.pk = and i64 %i.pj, %i.ph
  %.not.i.i.i53.i.i.i.i = icmp eq i64 %i.pk, 0
  br i1 %.not.i.i.i53.i.i.i.i, label %bb.bv, label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i54.i.i.i.i"

bb.bv:                                            ; preds = %bb.bu
  %i.pl = load ptr, ptr %15, align 8, !tbaa !110
  %i.pm = sext i32 %i.oz to i64                   ; 2 uses
  %i.pn = lshr i64 %i.pm, 3
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pn ; 2 uses
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !94
  %i.pq = and i64 %i.pm, 7
  %i.pr = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.pq
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !94
  %i.pt = and i8 %i.ps, %i.pp
  store i8 %i.pt, ptr %i.po, align 1, !tbaa !94
  store i8 0, ptr %i.ow, align 1, !tbaa !108
  br label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i54.i.i.i.i"

"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i54.i.i.i.i": ; preds = %bb.bv, %bb.bu
  %i.pu = add nsw i64 %.011.i51.i.i.i.i, -1
  %i.pv = and i64 %i.pu, %.011.i51.i.i.i.i        ; 2 uses
  %.not10.i55.i.i.i.i = icmp eq i64 %i.pv, 0
  br i1 %.not10.i55.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_1EEvT_.exit", label %bb.bs, !llvm.loop !515

"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_1EEvT_.exit": ; preds = %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i54.i.i.i.i", %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i.i.i.i.i", %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_1clIiEEDaT_.exit.i", %bb.br, %._crit_edge.i.i.i.i83, %bb.ay, %bb.aw, %bb.ar
  %i.pw = load ptr, ptr %15, align 8, !tbaa !110  ; 4 uses
  %i.px = load i32, ptr %i.fc, align 8, !tbaa !119 ; 6 uses
  %.not.i.i.i105 = icmp sgt i32 %i.px, 0
  br i1 %.not.i.i.i105, label %bb.bw, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i

bb.bw:                                            ; preds = %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_1EEvT_.exit"
  %i.py = and i32 %i.px, 2147483584               ; 4 uses
  %i.pz = zext nneg i32 %i.py to i64
  %.not37.i.i.not.i655.not = icmp eq i32 %i.py, 0
  br i1 %.not37.i.i.not.i655.not, label %.critedge.i.i.i, label %.lr.ph658

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i: ; preds = %.lr.ph658
  %indvars.iv.next.i107 = add nuw nsw i64 %indvars.iv.i106656, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i107, %i.pz
  br i1 %.not37.i.i.not.i, label %.lr.ph658, label %.critedge.i.i.i, !llvm.loop !0

.lr.ph658:                                        ; preds = %bb.bw, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i
  %indvars.iv.i106656 = phi i64 [ %indvars.iv.next.i107, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i ], [ 0, %bb.bw ] ; 3 uses
  %i.qa = lshr exact i64 %indvars.iv.i106656, 3
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.qa
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !80 ; 2 uses
  %.not.i42.i.i.i = icmp eq i64 %i.qc, 0
  br i1 %.not.i42.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, !llvm.loop !0

.critedge.i.i.i:                                  ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, %bb.bw
  %.not38.i.i.i = icmp eq i32 %i.px, %i.py
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %bb.bx

bb.bx:                                            ; preds = %.critedge.i.i.i
  %i.qd = lshr i32 %i.px, 6
  %i.qe = and i32 %i.px, 63
  %i.qf = zext nneg i32 %i.qe to i64
  %notmask.i43.i.i.i = shl nsw i64 -1, %i.qf
  %i.qg = xor i64 %notmask.i43.i.i.i, -1
  %i.qh = zext nneg i32 %i.qd to i64
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %i.qh
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !80
  %i.qk = and i64 %i.qj, %i.qg                    ; 2 uses
  %.not.i44.i.i.i = icmp eq i64 %i.qk, 0
  br i1 %.not.i44.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i: ; preds = %bb.bx, %.critedge.i.i.i, %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_1EEvT_.exit"
  %i.ql = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 0, ptr %i.ql, align 4, !tbaa !121
  %i.qm = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 0, ptr %i.qm, align 8, !tbaa !120
  %i.qn = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i16 256, ptr %i.qn, align 4
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i: ; preds = %.lr.ph658
  %i.qo = trunc nuw nsw i64 %indvars.iv.i106656 to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, %bb.bx
  %.sink67.i.i.i = phi i64 [ %i.qk, %bb.bx ], [ %i.qc, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %.sink65.i.i.i = phi i32 [ %i.py, %bb.bx ], [ %i.qo, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %i.qp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i, i1 true)
  %i.qq = trunc nuw nsw i64 %i.qp to i32
  %i.qr = or disjoint i32 %.sink65.i.i.i, %i.qq   ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %i.qr, ptr %i.qs, align 4, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  store i32 -1, ptr %i.c, align 4, !tbaa !122
  store ptr %i.pw, ptr %12, align 8, !tbaa !125
  %i.qt = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.c, ptr %i.qt, align 8, !tbaa !126
  %i.qu = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i8 1, ptr %i.qu, align 8, !tbaa !127
  store ptr %i.pw, ptr %13, align 8, !tbaa !129
  %i.qv = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.c, ptr %i.qv, align 8, !tbaa !126
  %i.qw = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i8 1, ptr %i.qw, align 8, !tbaa !130
  %i.qx = invoke noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.qr, i32 noundef %i.px, ptr noundef nonnull byval(%class.anon.215) align 8 %12, ptr noundef nonnull byval(%class.anon.216) align 8 %13)
          to label %.noexc unwind label %bb.ca    ; 0 uses

.noexc:                                           ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  %i.qy = load i32, ptr %i.c, align 4, !tbaa !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.qz = add nsw i32 %i.qy, 1
  %i.ra = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 %i.qz, ptr %i.ra, align 8, !tbaa !120
  %i.rb = getelementptr inbounds nuw i8, ptr %15, i64 37
  store i8 0, ptr %i.rb, align 1, !tbaa !108
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

bb.by:                                            ; preds = %bb.af
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

bb.bz:                                            ; preds = %bb.gh, %bb.gg, %bb.ah
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ca:                                            ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i, %bb.aj
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, %.noexc, %bb.ai
  %i.rf = load ptr, ptr %1, align 8, !tbaa !87
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 288
  %i.rh = load ptr, ptr %i.rg, align 8
  %i.ri = invoke noundef ptr %i.rh(ptr noundef nonnull align 8 dereferenceable(94) %1)
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit
  %i.rj = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.ri, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox9RowVectorE, i64 0) #39 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !106
  %.not424 = icmp eq i64 %i.rl, 0
  br i1 %.not424, label %.loopexit, label %.lr.ph422

.lr.ph422:                                        ; preds = %bb.cb
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  br label %bb.cd

bb.cc:                                            ; preds = %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cd:                                            ; preds = %.lr.ph422, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit
  %indvars.iv453 = phi i64 [ 0, %.lr.ph422 ], [ %indvars.iv.next454, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit ] ; 7 uses
  %i.rq = trunc nuw nsw i64 %indvars.iv453 to i32 ; 3 uses
  %i.rr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8facebook5velox9RowVector7childAtEj(ptr noundef nonnull align 8 dereferenceable(152) %i.rj, i32 noundef %i.rq)
          to label %bb.ce unwind label %.loopexit391

bb.ce:                                            ; preds = %bb.cd
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !85
  %.not387 = icmp eq ptr %i.rs, null
  br i1 %.not387, label %bb.co, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.rt = load ptr, ptr %i.rm, align 8, !tbaa !55
  %i.ru = call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(18) %i.rt, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox7RowTypeE, i64 0) #39 ; 3 uses
  %i.rv = icmp eq ptr %i.ru, null
  br i1 %i.rv, label %bb.cg, label %_ZNK8facebook5velox4Type5asRowEv.exit

bb.cg:                                            ; preds = %bb.cf
  invoke void @__cxa_bad_cast() #38
          to label %.noexc108 unwind label %.loopexit.split-lp

.noexc108:                                        ; preds = %bb.cg
  unreachable

_ZNK8facebook5velox4Type5asRowEv.exit:            ; preds = %bb.cf
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 48
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 56
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !165
  %i.rz = load ptr, ptr %i.rw, align 8, !tbaa !166 ; 2 uses
  %i.sa = ptrtoint ptr %i.ry to i64
  %i.sb = ptrtoint ptr %i.rz to i64
  %i.sc = sub i64 %i.sa, %i.sb
  %i.sd = ashr exact i64 %i.sc, 4                 ; 2 uses
  %.not.i = icmp ugt i64 %i.sd, %indvars.iv453
  br i1 %.not.i, label %bb.ck, label %bb.ch, !prof !63

bb.ch:                                            ; preds = %_ZNK8facebook5velox4Type5asRowEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39, !noalias !542
  store i32 %i.rq, ptr %10, align 16, !tbaa !94, !alias.scope !543, !noalias !542
  %i.se = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.sd, ptr %i.se, align 16, !tbaa !94, !alias.scope !543, !noalias !542
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.12, i64 11, i64 66, ptr nonnull %10)
          to label %.noexc109 unwind label %.loopexit.split-lp

.noexc109:                                        ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39, !noalias !542
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox7RowType7childAtEjE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.12) #38
          to label %bb.ci unwind label %bb.cj

bb.ci:                                            ; preds = %.noexc109
  unreachable

bb.cj:                                            ; preds = %.noexc109
  %i.sf = landingpad { ptr, i32 }
          cleanup
  %i.sg = load ptr, ptr %11, align 8, !tbaa !92   ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.si = icmp eq ptr %i.sg, %i.sh
  br i1 %i.si, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.cj
  %i.sj = load i64, ptr %i.sh, align 8, !tbaa !94
  %i.sk = add i64 %i.sj, 1
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKi:bb.a
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !121
  %i.ud = icmp eq i32 %i.uc, 0
  br i1 %i.ud, label %bb.cz, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i112

bb.cz:                                            ; preds = %bb.cy
  %i.ue = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.uf = load i32, ptr %i.ue, align 8, !tbaa !120 ; 6 uses
  %i.ug = load i32, ptr %i.fd, align 8, !tbaa !119
  %i.uh = icmp eq i32 %i.uf, %i.ug
  br i1 %i.uh, label %bb.da, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i112

bb.da:                                            ; preds = %bb.cz
  %i.ui = load ptr, ptr %2, align 8, !tbaa !110   ; 2 uses
  %.not.i.i.i171 = icmp sgt i32 %i.uf, 0
  br i1 %.not.i.i.i171, label %bb.db, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i112

bb.db:                                            ; preds = %bb.da
  %i.uj = and i32 %i.uf, 2147483584               ; 3 uses
  %i.uk = zext nneg i32 %i.uj to i64
  %.not37.i.i.not.i.i173639.not = icmp eq i32 %i.uj, 0
  br i1 %.not37.i.i.not.i.i173639.not, label %.critedge.i.i.i.i174, label %.lr.ph642

bb.dc:                                            ; preds = %.lr.ph642
  %indvars.iv.next.i.i178 = add nuw nsw i64 %indvars.iv.i.i172640, 64 ; 2 uses
  %.not37.i.i.not.i.i173 = icmp samesign ult i64 %indvars.iv.next.i.i178, %i.uk
  br i1 %.not37.i.i.not.i.i173, label %.lr.ph642, label %.critedge.i.i.i.i174, !llvm.loop !502

.lr.ph642:                                        ; preds = %bb.db, %bb.dc
  %indvars.iv.i.i172640 = phi i64 [ %indvars.iv.next.i.i178, %bb.dc ], [ 0, %bb.db ] ; 2 uses
  %i.ul = lshr exact i64 %indvars.iv.i.i172640, 3
  %i.um = getelementptr inbounds nuw i8, ptr %i.ui, i64 %i.ul
  %i.un = load i64, ptr %i.um, align 8, !tbaa !80
  %i.uo = icmp eq i64 %i.un, -1
  br i1 %i.uo, label %bb.dc, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i112, !llvm.loop !502

.critedge.i.i.i.i174:                             ; preds = %bb.dc, %bb.db
  %.not38.i.i.i.i175 = icmp eq i32 %i.uf, %i.uj
  br i1 %.not38.i.i.i.i175, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i112, label %bb.dd

bb.dd:                                            ; preds = %.critedge.i.i.i.i174
  %i.up = lshr i32 %i.uf, 6
  %i.uq = and i32 %i.uf, 63
  %i.ur = zext nneg i32 %i.uq to i64
  %notmask.i40.i.i.i.i176 = shl nsw i64 -1, %i.ur
  %i.us = zext nneg i32 %i.up to i64
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %i.us
  %i.uu = load i64, ptr %i.ut, align 8, !tbaa !80
  %.demorgan.i.i177 = or i64 %i.uu, %notmask.i40.i.i.i.i176
  %i.uv = icmp eq i64 %.demorgan.i.i177, -1
  %i.uw = zext i1 %i.uv to i16
  %i.ux = or disjoint i16 %i.uw, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i112

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i112: ; preds = %.lr.ph642, %bb.dd, %.critedge.i.i.i.i174, %bb.da, %bb.cz, %bb.cy
  %.sroa.0.0.insert.ext.i.i113 = phi i16 [ 256, %bb.cz ], [ 256, %bb.cy ], [ 257, %bb.da ], [ 257, %.critedge.i.i.i.i174 ], [ %i.ux, %bb.dd ], [ 256, %.lr.ph642 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i113, ptr %i.tx, align 4
  %i.uy = trunc i16 %.sroa.0.0.insert.ext.i.i113 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i114

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i114: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i112, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i179
  %.0.in.i.i115 = phi i8 [ %.0.in.pre.i.i180, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i179 ], [ %i.uy, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i112 ]
  %.0.i.i116 = trunc nuw i8 %.0.in.i.i115 to i1
  br i1 %.0.i.i116, label %bb.de, label %bb.dj

bb.de:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i114
  %i.uz = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.va = load i32, ptr %i.uz, align 8, !tbaa !120 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !121 ; 2 uses
  %i.vd = icmp slt i32 %i.vc, %i.va
  br i1 %i.vd, label %.lr.ph.i164, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_2EEvT_.exit"

.lr.ph.i164:                                      ; preds = %bb.de
  %i.ve = getelementptr inbounds nuw i8, ptr %15, i64 37
  %i.vf = sext i32 %i.vc to i64
  %wide.trip.count.i165 = sext i32 %i.va to i64
  br label %bb.df

bb.df:                                            ; preds = %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i", %.lr.ph.i164
  %indvars.iv.i166 = phi i64 [ %i.vf, %.lr.ph.i164 ], [ %indvars.iv.next.i169, %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i" ] ; 5 uses
  %i.vg = trunc nsw i64 %indvars.iv.i166 to i32
  br i1 %.not, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.vh = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.i166
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !122
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.vj = phi i32 [ %i.vi, %bb.dg ], [ %i.vg, %bb.df ]
  %i.vk = zext i32 %i.vj to i64                   ; 2 uses
  %i.vl = lshr i64 %i.vk, 6
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %i.vl
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !80
  %i.vo = and i64 %i.vk, 63
  %i.vp = shl nuw i64 1, %i.vo
  %i.vq = and i64 %i.vp, %i.vn
  %.not.i.i4.i168 = icmp eq i64 %i.vq, 0
  br i1 %.not.i.i4.i168, label %bb.di, label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i"

bb.di:                                            ; preds = %bb.dh
  %i.vr = load ptr, ptr %15, align 8, !tbaa !110
  %i.vs = lshr i64 %indvars.iv.i166, 3
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vr, i64 %i.vs ; 2 uses
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !94
  %i.vv = and i64 %indvars.iv.i166, 7
  %i.vw = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.vv
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !94
  %i.vy = and i8 %i.vx, %i.vu
  store i8 %i.vy, ptr %i.vt, align 1, !tbaa !94
  store i8 0, ptr %i.ve, align 1, !tbaa !108
  br label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i"

"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i": ; preds = %bb.di, %bb.dh
  %indvars.iv.next.i169 = add nsw i64 %indvars.iv.i166, 1 ; 2 uses
  %exitcond.not.i170 = icmp eq i64 %indvars.iv.next.i169, %wide.trip.count.i165
  br i1 %exitcond.not.i170, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_2EEvT_.exit", label %bb.df, !llvm.loop !525

bb.dj:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i114
  %i.vz = load ptr, ptr %2, align 8, !tbaa !110   ; 4 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !121 ; 6 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.wd = load i32, ptr %i.wc, align 8, !tbaa !120 ; 7 uses
  %.not.i.i.i.i122 = icmp slt i32 %i.wb, %i.wd
  br i1 %.not.i.i.i.i122, label %bb.dk, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_2EEvT_.exit"

bb.dk:                                            ; preds = %bb.dj
  %i.we = add i32 %i.wb, 63                       ; 2 uses
  %i.wf = srem i32 %i.we, 64
  %i.wg = sub nsw i32 %i.we, %i.wf                ; 6 uses
  %i.wh = and i32 %i.wd, -64                      ; 6 uses
  %i.wi = icmp slt i32 %i.wh, %i.wg
  br i1 %i.wi, label %bb.dl, label %bb.dq

bb.dl:                                            ; preds = %bb.dk
  %i.wj = ashr i32 %i.wd, 6
  %i.wk = and i32 %i.wd, 63
  %i.wl = zext nneg i32 %i.wk to i64
  %notmask.i.i.i.i.i156 = shl nsw i64 -1, %i.wl
  %i.wm = xor i64 %notmask.i.i.i.i.i156, -1
  %i.wn = sub nsw i32 %i.wg, %i.wb                ; 2 uses
  %i.wo = zext nneg i32 %i.wn to i64
  %notmask.i.i.i.i.i.i157 = shl nsw i64 -1, %i.wo
  %i.wp = xor i64 %notmask.i.i.i.i.i.i157, -1
  %i.wq = sub nsw i32 64, %i.wn
  %i.wr = zext nneg i32 %i.wq to i64
  %i.ws = shl i64 %i.wp, %i.wr
  %i.wt = and i64 %i.ws, %i.wm
  %i.wu = sext i32 %i.wj to i64
  %i.wv = getelementptr inbounds [8 x i8], ptr %i.vz, i64 %i.wu
  %i.ww = load i64, ptr %i.wv, align 8, !tbaa !80
  %i.wx = and i64 %i.wt, %i.ww                    ; 2 uses
  %.not.i.i.i.i.i158 = icmp eq i64 %i.wx, 0
  br i1 %.not.i.i.i.i.i158, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_2EEvT_.exit", label %.preheader.i.i.i.i.i159

.preheader.i.i.i.i.i159:                          ; preds = %bb.dl
  %i.wy = getelementptr inbounds nuw i8, ptr %15, i64 37
  br label %bb.dm

bb.dm:                                            ; preds = %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i.i.i.i.i", %.preheader.i.i.i.i.i159
  %.011.i.i.i.i.i160 = phi i64 [ %i.wx, %.preheader.i.i.i.i.i159 ], [ %i.xx, %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i.i.i.i.i" ] ; 3 uses
  %i.wz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i160, i1 true)
  %i.xa = trunc nuw nsw i64 %i.wz to i32
  %i.xb = or disjoint i32 %i.wh, %i.xa            ; 3 uses
  br i1 %.not, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.xc = sext i32 %i.xb to i64
  %i.xd = getelementptr inbounds [4 x i8], ptr %3, i64 %i.xc
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !122
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.xf = phi i32 [ %i.xe, %bb.dn ], [ %i.xb, %bb.dm ]
  %i.xg = zext i32 %i.xf to i64                   ; 2 uses
  %i.xh = lshr i64 %i.xg, 6
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %i.xh
  %i.xj = load i64, ptr %i.xi, align 8, !tbaa !80
  %i.xk = and i64 %i.xg, 63
  %i.xl = shl nuw i64 1, %i.xk
  %i.xm = and i64 %i.xl, %i.xj
  %.not.i.i.i.i.i.i.i162 = icmp eq i64 %i.xm, 0
  br i1 %.not.i.i.i.i.i.i.i162, label %bb.dp, label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i.i.i.i.i"

bb.dp:                                            ; preds = %bb.do
  %i.xn = load ptr, ptr %15, align 8, !tbaa !110
  %i.xo = sext i32 %i.xb to i64                   ; 2 uses
  %i.xp = lshr i64 %i.xo, 3
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xn, i64 %i.xp ; 2 uses
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !94
  %i.xs = and i64 %i.xo, 7
  %i.xt = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.xs
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !94
  %i.xv = and i8 %i.xu, %i.xr
  store i8 %i.xv, ptr %i.xq, align 1, !tbaa !94
  store i8 0, ptr %i.wy, align 1, !tbaa !108
  br label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i.i.i.i.i"

"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i.i.i.i.i": ; preds = %bb.dp, %bb.do
  %i.xw = add nsw i64 %.011.i.i.i.i.i160, -1
  %i.xx = and i64 %i.xw, %.011.i.i.i.i.i160       ; 2 uses
  %.not10.i.i.i.i.i163 = icmp eq i64 %i.xx, 0
  br i1 %.not10.i.i.i.i.i163, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_2EEvT_.exit", label %bb.dm, !llvm.loop !526

bb.dq:                                            ; preds = %bb.dk
  %.not32.i.i.i.i123 = icmp eq i32 %i.wb, %i.wg
  br i1 %.not32.i.i.i.i123, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i", label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.xy = sdiv i32 %i.wb, 64                      ; 2 uses
  %i.xz = sub nsw i32 %i.wg, %i.wb                ; 2 uses
  %i.ya = zext nneg i32 %i.xz to i64
  %notmask.i.i35.i.i.i.i124 = shl nsw i64 -1, %i.ya
  %i.yb = xor i64 %notmask.i.i35.i.i.i.i124, -1
  %i.yc = sub nsw i32 64, %i.xz
  %i.yd = zext nneg i32 %i.yc to i64
  %i.ye = shl i64 %i.yb, %i.yd
  %i.yf = sext i32 %i.xy to i64
  %i.yg = getelementptr inbounds [8 x i8], ptr %i.vz, i64 %i.yf
  %i.yh = load i64, ptr %i.yg, align 8, !tbaa !80
  %i.yi = and i64 %i.yh, %i.ye                    ; 2 uses
  %.not.i36.i.i.i.i125 = icmp eq i64 %i.yi, 0
  br i1 %.not.i36.i.i.i.i125, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i", label %.preheader.i37.i.i.i.i126

.preheader.i37.i.i.i.i126:                        ; preds = %bb.dr
  %i.yj = shl nsw i32 %i.xy, 6
  %i.yk = getelementptr inbounds nuw i8, ptr %15, i64 37
  br label %bb.ds

bb.ds:                                            ; preds = %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i41.i.i.i.i", %.preheader.i37.i.i.i.i126
  %.011.i38.i.i.i.i127 = phi i64 [ %i.yi, %.preheader.i37.i.i.i.i126 ], [ %i.zj, %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i41.i.i.i.i" ] ; 3 uses
  %i.yl = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i127, i1 true)
  %i.ym = trunc nuw nsw i64 %i.yl to i32
  %i.yn = or disjoint i32 %i.yj, %i.ym            ; 3 uses
  br i1 %.not, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.yo = sext i32 %i.yn to i64
  %i.yp = getelementptr inbounds [4 x i8], ptr %3, i64 %i.yo
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !122
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.yr = phi i32 [ %i.yq, %bb.dt ], [ %i.yn, %bb.ds ]
  %i.ys = zext i32 %i.yr to i64                   ; 2 uses
  %i.yt = lshr i64 %i.ys, 6
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %i.yt
  %i.yv = load i64, ptr %i.yu, align 8, !tbaa !80
  %i.yw = and i64 %i.ys, 63
  %i.yx = shl nuw i64 1, %i.yw
  %i.yy = and i64 %i.yx, %i.yv
  %.not.i.i.i40.i.i.i.i129 = icmp eq i64 %i.yy, 0
  br i1 %.not.i.i.i40.i.i.i.i129, label %bb.dv, label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i41.i.i.i.i"

bb.dv:                                            ; preds = %bb.du
  %i.yz = load ptr, ptr %15, align 8, !tbaa !110
  %i.za = sext i32 %i.yn to i64                   ; 2 uses
  %i.zb = lshr i64 %i.za, 3
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 %i.zb ; 2 uses
  %i.zd = load i8, ptr %i.zc, align 1, !tbaa !94
  %i.ze = and i64 %i.za, 7
  %i.zf = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ze
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !94
  %i.zh = and i8 %i.zg, %i.zd
  store i8 %i.zh, ptr %i.zc, align 1, !tbaa !94
  store i8 0, ptr %i.yk, align 1, !tbaa !108
  br label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i41.i.i.i.i"

"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i41.i.i.i.i": ; preds = %bb.dv, %bb.du
  %i.zi = add i64 %.011.i38.i.i.i.i127, -1
  %i.zj = and i64 %i.zi, %.011.i38.i.i.i.i127     ; 2 uses
  %.not10.i42.i.i.i.i130 = icmp eq i64 %i.zj, 0
  br i1 %.not10.i42.i.i.i.i130, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i", label %bb.ds, !llvm.loop !526

"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i": ; preds = %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i41.i.i.i.i", %bb.dr, %bb.dq
  %i.zk = add nsw i32 %i.wg, 64                   ; 2 uses
  %.not3359.i.i.i.i131 = icmp sgt i32 %i.zk, %i.wh
  br i1 %.not3359.i.i.i.i131, label %._crit_edge.i.i.i.i135, label %.lr.ph.i.i.i.i132

.lr.ph.i.i.i.i132:                                ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i"
  %i.zl = getelementptr inbounds nuw i8, ptr %15, i64 37 ; 3 uses
  br label %bb.dw

._crit_edge.i.i.i.i135:                           ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUlimE_clEim.exit43.i.i.i.i"
  %.not34.i.i.i.i136 = icmp eq i32 %i.wd, %i.wh
  br i1 %.not34.i.i.i.i136, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_2EEvT_.exit", label %bb.ee

bb.dw:                                            ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %.lr.ph.i.i.i.i132
  %i.zm = phi i32 [ %i.zk, %.lr.ph.i.i.i.i132 ], [ %i.ach, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %.060.i.i.i.i133 = phi i32 [ %i.wg, %.lr.ph.i.i.i.i132 ], [ %i.zm, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ] ; 2 uses
  %i.zn = sdiv i32 %.060.i.i.i.i133, 64           ; 3 uses
  %i.zo = sext i32 %i.zn to i64
  %i.zp = getelementptr inbounds [8 x i8], ptr %i.vz, i64 %i.zo
  %i.zq = load i64, ptr %i.zp, align 8, !tbaa !80 ; 2 uses
  switch i64 %i.zq, label %.lr.ph.i.i.i.i.i151 [
    i64 -1, label %bb.dx
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i151:                              ; preds = %bb.dw
  %i.zr = shl nsw i32 %i.zn, 6
  br label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  %i.zs = shl nsw i32 %i.zn, 6                    ; 2 uses
  %i.zt = add i32 %i.zs, 64
  %i.zu = sext i32 %i.zt to i64                   ; 2 uses
  %.0.off.i.i.i.i144 = add i32 %.060.i.i.i.i133, 127
  %.not24.i.i.i.i.i145 = icmp ult i32 %.0.off.i.i.i.i144, 64
  br i1 %.not24.i.i.i.i.i145, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph23.i.i.i.i.i146

.lr.ph23.i.i.i.i.i146:                            ; preds = %bb.dx
  %i.zv = sext i32 %i.zs to i64                   ; 2 uses
  br i1 %.not, label %.lr.ph23.i.i.i.i.i146.split.us, label %.lr.ph23.i.i.i.i.i146.split

.lr.ph23.i.i.i.i.i146.split.us:                   ; preds = %.lr.ph23.i.i.i.i.i146, %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clImEEDaT_.exit.i.i.i.i.i.us"
  %.022.i.i.i.i.i147.us = phi i64 [ %i.aam, %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clImEEDaT_.exit.i.i.i.i.i.us" ], [ %i.zv, %.lr.ph23.i.i.i.i.i146 ] ; 5 uses
  %i.zw = lshr i64 %.022.i.i.i.i.i147.us, 6
  %i.zx = and i64 %i.zw, 67108863
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %i.zx
  %i.zz = load i64, ptr %i.zy, align 8, !tbaa !80
  %i.aaa = and i64 %.022.i.i.i.i.i147.us, 63
  %i.aab = shl nuw i64 1, %i.aaa
  %i.aac = and i64 %i.aab, %i.zz
  %.not.i.i.i45.i.i.i.i149.us = icmp eq i64 %i.aac, 0
  br i1 %.not.i.i.i45.i.i.i.i149.us, label %bb.dy, label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clImEEDaT_.exit.i.i.i.i.i.us"

bb.dy:                                            ; preds = %.lr.ph23.i.i.i.i.i146.split.us
  %i.aad = load ptr, ptr %15, align 8, !tbaa !110
  %sext.i.i.i.i.i.i150.us = shl i64 %.022.i.i.i.i.i147.us, 32
  %i.aae = ashr exact i64 %sext.i.i.i.i.i.i150.us, 32
  %i.aaf = lshr i64 %i.aae, 3
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aad, i64 %i.aaf ; 2 uses
  %i.aah = load i8, ptr %i.aag, align 1, !tbaa !94
  %i.aai = and i64 %.022.i.i.i.i.i147.us, 7
  %i.aaj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.aai
  %i.aak = load i8, ptr %i.aaj, align 1, !tbaa !94
  %i.aal = and i8 %i.aak, %i.aah
  store i8 %i.aal, ptr %i.aag, align 1, !tbaa !94
  store i8 0, ptr %i.zl, align 1, !tbaa !108
  br label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clImEEDaT_.exit.i.i.i.i.i.us"

"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clImEEDaT_.exit.i.i.i.i.i.us": ; preds = %bb.dy, %.lr.ph23.i.i.i.i.i146.split.us
  %i.aam = add nuw i64 %.022.i.i.i.i.i147.us, 1   ; 2 uses
  %i.aan = icmp ult i64 %i.aam, %i.zu
  br i1 %i.aan, label %.lr.ph23.i.i.i.i.i146.split.us, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !527

.lr.ph23.i.i.i.i.i146.split:                      ; preds = %.lr.ph23.i.i.i.i.i146, %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clImEEDaT_.exit.i.i.i.i.i"
  %.022.i.i.i.i.i147 = phi i64 [ %i.abg, %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clImEEDaT_.exit.i.i.i.i.i" ], [ %i.zv, %.lr.ph23.i.i.i.i.i146 ] ; 4 uses
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.022.i.i.i.i.i147
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !122
  %i.aaq = zext i32 %i.aap to i64                 ; 2 uses
  %i.aar = lshr i64 %i.aaq, 6
  %i.aas = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %i.aar
  %i.aat = load i64, ptr %i.aas, align 8, !tbaa !80
  %i.aau = and i64 %i.aaq, 63
  %i.aav = shl nuw i64 1, %i.aau
  %i.aaw = and i64 %i.aav, %i.aat
  %.not.i.i.i45.i.i.i.i149 = icmp eq i64 %i.aaw, 0
  br i1 %.not.i.i.i45.i.i.i.i149, label %bb.dz, label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clImEEDaT_.exit.i.i.i.i.i"

bb.dz:                                            ; preds = %.lr.ph23.i.i.i.i.i146.split
  %i.aax = load ptr, ptr %15, align 8, !tbaa !110
  %sext.i.i.i.i.i.i150 = shl i64 %.022.i.i.i.i.i147, 32
  %i.aay = ashr exact i64 %sext.i.i.i.i.i.i150, 32
  %i.aaz = lshr i64 %i.aay, 3
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aax, i64 %i.aaz ; 2 uses
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !94
  %i.abc = and i64 %.022.i.i.i.i.i147, 7
  %i.abd = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.abc
  %i.abe = load i8, ptr %i.abd, align 1, !tbaa !94
  %i.abf = and i8 %i.abe, %i.abb
  store i8 %i.abf, ptr %i.aba, align 1, !tbaa !94
  store i8 0, ptr %i.zl, align 1, !tbaa !108
  br label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clImEEDaT_.exit.i.i.i.i.i"

"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clImEEDaT_.exit.i.i.i.i.i": ; preds = %bb.dz, %.lr.ph23.i.i.i.i.i146.split
  %i.abg = add nuw i64 %.022.i.i.i.i.i147, 1      ; 2 uses
  %i.abh = icmp ult i64 %i.abg, %i.zu
  br i1 %i.abh, label %.lr.ph23.i.i.i.i.i146.split, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !527

bb.ea:                                            ; preds = %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i46.i.i.i.i", %.lr.ph.i.i.i.i.i151
  %.01521.i.i.i.i.i152 = phi i64 [ %i.zq, %.lr.ph.i.i.i.i.i151 ], [ %i.acg, %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i46.i.i.i.i" ] ; 3 uses
  %i.abi = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01521.i.i.i.i.i152, i1 true)
  %i.abj = trunc nuw nsw i64 %i.abi to i32
  %i.abk = or disjoint i32 %i.zr, %i.abj          ; 3 uses
  br i1 %.not, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.abl = sext i32 %i.abk to i64
  %i.abm = getelementptr inbounds [4 x i8], ptr %3, i64 %i.abl
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !122
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.abo = phi i32 [ %i.abn, %bb.eb ], [ %i.abk, %bb.ea ]
  %i.abp = zext i32 %i.abo to i64                 ; 2 uses
  %i.abq = lshr i64 %i.abp, 6
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %i.abq
  %i.abs = load i64, ptr %i.abr, align 8, !tbaa !80
  %i.abt = and i64 %i.abp, 63
  %i.abu = shl nuw i64 1, %i.abt
  %i.abv = and i64 %i.abu, %i.abs
  %.not.i.i18.i.i.i.i.i154 = icmp eq i64 %i.abv, 0
  br i1 %.not.i.i18.i.i.i.i.i154, label %bb.ed, label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i46.i.i.i.i"

bb.ed:                                            ; preds = %bb.ec
  %i.abw = load ptr, ptr %15, align 8, !tbaa !110
  %i.abx = sext i32 %i.abk to i64                 ; 2 uses
  %i.aby = lshr i64 %i.abx, 3
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abw, i64 %i.aby ; 2 uses
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !94
  %i.acb = and i64 %i.abx, 7
  %i.acc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.acb
  %i.acd = load i8, ptr %i.acc, align 1, !tbaa !94
  %i.ace = and i8 %i.acd, %i.aca
  store i8 %i.ace, ptr %i.abz, align 1, !tbaa !94
  store i8 0, ptr %i.zl, align 1, !tbaa !108
  br label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i46.i.i.i.i"

"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i46.i.i.i.i": ; preds = %bb.ed, %bb.ec
  %i.acf = add i64 %.01521.i.i.i.i.i152, -1
  %i.acg = and i64 %i.acf, %.01521.i.i.i.i.i152   ; 2 uses
  %.not.i47.i.i.i.i155 = icmp eq i64 %i.acg, 0
  br i1 %.not.i47.i.i.i.i155, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.ea, !llvm.loop !528

"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_2EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clImEEDaT_.exit.i.i.i.i.i", %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clImEEDaT_.exit.i.i.i.i.i.us", %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i46.i.i.i.i", %bb.dx, %bb.dw
  %i.ach = add nsw i32 %i.zm, 64                  ; 2 uses
  %.not33.i.i.i.i134 = icmp sgt i32 %i.ach, %i.wh
  br i1 %.not33.i.i.i.i134, label %._crit_edge.i.i.i.i135, label %bb.dw, !llvm.loop !529

bb.ee:                                            ; preds = %._crit_edge.i.i.i.i135
  %i.aci = ashr i32 %i.wd, 6
  %i.acj = and i32 %i.wd, 63
  %i.ack = zext nneg i32 %i.acj to i64
  %notmask.i48.i.i.i.i137 = shl nsw i64 -1, %i.ack
  %i.acl = xor i64 %notmask.i48.i.i.i.i137, -1
  %i.acm = sext i32 %i.aci to i64
  %i.acn = getelementptr inbounds [8 x i8], ptr %i.vz, i64 %i.acm
  %i.aco = load i64, ptr %i.acn, align 8, !tbaa !80
  %i.acp = and i64 %i.aco, %i.acl                 ; 2 uses
  %.not.i49.i.i.i.i138 = icmp eq i64 %i.acp, 0
  br i1 %.not.i49.i.i.i.i138, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_2EEvT_.exit", label %.preheader.i50.i.i.i.i139

.preheader.i50.i.i.i.i139:                        ; preds = %bb.ee
  %i.acq = getelementptr inbounds nuw i8, ptr %15, i64 37
  br label %bb.ef

bb.ef:                                            ; preds = %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i54.i.i.i.i", %.preheader.i50.i.i.i.i139
  %.011.i51.i.i.i.i140 = phi i64 [ %i.acp, %.preheader.i50.i.i.i.i139 ], [ %i.adp, %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i54.i.i.i.i" ] ; 3 uses
  %i.acr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i51.i.i.i.i140, i1 true)
  %i.acs = trunc nuw nsw i64 %i.acr to i32
  %i.act = or disjoint i32 %i.wh, %i.acs          ; 3 uses
  br i1 %.not, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.acu = sext i32 %i.act to i64
  %i.acv = getelementptr inbounds [4 x i8], ptr %3, i64 %i.acu
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !122
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.acx = phi i32 [ %i.acw, %bb.eg ], [ %i.act, %bb.ef ]
  %i.acy = zext i32 %i.acx to i64                 ; 2 uses
  %i.acz = lshr i64 %i.acy, 6
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %i.acz
  %i.adb = load i64, ptr %i.ada, align 8, !tbaa !80
  %i.adc = and i64 %i.acy, 63
  %i.add = shl nuw i64 1, %i.adc
  %i.ade = and i64 %i.add, %i.adb
  %.not.i.i.i53.i.i.i.i142 = icmp eq i64 %i.ade, 0
  br i1 %.not.i.i.i53.i.i.i.i142, label %bb.ei, label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i54.i.i.i.i"

bb.ei:                                            ; preds = %bb.eh
  %i.adf = load ptr, ptr %15, align 8, !tbaa !110
  %i.adg = sext i32 %i.act to i64                 ; 2 uses
  %i.adh = lshr i64 %i.adg, 3
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adf, i64 %i.adh ; 2 uses
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !94
  %i.adk = and i64 %i.adg, 7
  %i.adl = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.adk
  %i.adm = load i8, ptr %i.adl, align 1, !tbaa !94
  %i.adn = and i8 %i.adm, %i.adj
  store i8 %i.adn, ptr %i.adi, align 1, !tbaa !94
  store i8 0, ptr %i.acq, align 1, !tbaa !108
  br label %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i54.i.i.i.i"

"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i54.i.i.i.i": ; preds = %bb.ei, %bb.eh
  %i.ado = add nsw i64 %.011.i51.i.i.i.i140, -1
  %i.adp = and i64 %i.ado, %.011.i51.i.i.i.i140   ; 2 uses
  %.not10.i55.i.i.i.i143 = icmp eq i64 %i.adp, 0
  br i1 %.not10.i55.i.i.i.i143, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_2EEvT_.exit", label %bb.ef, !llvm.loop !526

"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_2EEvT_.exit": ; preds = %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i54.i.i.i.i", %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i.i.i.i.i", %"_ZZN8facebook5velox9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiENK3$_2clIiEEDaT_.exit.i", %bb.ee, %._crit_edge.i.i.i.i135, %bb.dl, %bb.dj, %bb.de
  %i.adq = load ptr, ptr %15, align 8, !tbaa !110 ; 4 uses
  %i.adr = load i32, ptr %i.fc, align 8, !tbaa !119 ; 6 uses
  %.not.i.i.i181 = icmp sgt i32 %i.adr, 0
  br i1 %.not.i.i.i181, label %bb.ej, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i182

bb.ej:                                            ; preds = %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_2EEvT_.exit"
  %i.ads = and i32 %i.adr, 2147483584             ; 4 uses
  %i.adt = zext nneg i32 %i.ads to i64
  %.not37.i.i.not.i185643.not = icmp eq i32 %i.ads, 0
  br i1 %.not37.i.i.not.i185643.not, label %.critedge.i.i.i186, label %.lr.ph646

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i183: ; preds = %.lr.ph646
  %indvars.iv.next.i193 = add nuw nsw i64 %indvars.iv.i184644, 64 ; 2 uses
  %.not37.i.i.not.i185 = icmp samesign ult i64 %indvars.iv.next.i193, %i.adt
  br i1 %.not37.i.i.not.i185, label %.lr.ph646, label %.critedge.i.i.i186, !llvm.loop !0

.lr.ph646:                                        ; preds = %bb.ej, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i183
  %indvars.iv.i184644 = phi i64 [ %indvars.iv.next.i193, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i183 ], [ 0, %bb.ej ] ; 3 uses
  %i.adu = lshr exact i64 %indvars.iv.i184644, 3
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adq, i64 %i.adu
  %i.adw = load i64, ptr %i.adv, align 8, !tbaa !80 ; 2 uses
  %.not.i42.i.i.i194 = icmp eq i64 %i.adw, 0
  br i1 %.not.i42.i.i.i194, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i183, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i195, !llvm.loop !0

.critedge.i.i.i186:                               ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i183, %bb.ej
  %.not38.i.i.i187 = icmp eq i32 %i.adr, %i.ads
  br i1 %.not38.i.i.i187, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i182, label %bb.ek

bb.ek:                                            ; preds = %.critedge.i.i.i186
  %i.adx = lshr i32 %i.adr, 6
  %i.ady = and i32 %i.adr, 63
  %i.adz = zext nneg i32 %i.ady to i64
  %notmask.i43.i.i.i188 = shl nsw i64 -1, %i.adz
  %i.aea = xor i64 %notmask.i43.i.i.i188, -1
  %i.aeb = zext nneg i32 %i.adx to i64
  %i.aec = getelementptr inbounds nuw [8 x i8], ptr %i.adq, i64 %i.aeb
  %i.aed = load i64, ptr %i.aec, align 8, !tbaa !80
  %i.aee = and i64 %i.aed, %i.aea                 ; 2 uses
  %.not.i44.i.i.i189 = icmp eq i64 %i.aee, 0
  br i1 %.not.i44.i.i.i189, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i182, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i190

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i182: ; preds = %bb.ek, %.critedge.i.i.i186, %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_2EEvT_.exit"
  %i.aef = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 0, ptr %i.aef, align 4, !tbaa !121
  %i.aeg = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 0, ptr %i.aeg, align 8, !tbaa !120
  %i.aeh = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i16 256, ptr %i.aeh, align 4
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit197

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i195: ; preds = %.lr.ph646
  %i.aei = trunc nuw nsw i64 %indvars.iv.i184644 to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i190

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i190: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i195, %bb.ek
  %.sink67.i.i.i191 = phi i64 [ %i.aee, %bb.ek ], [ %i.adw, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i195 ]
  %.sink65.i.i.i192 = phi i32 [ %i.ads, %bb.ek ], [ %i.aei, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i195 ]
  %i.aej = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i191, i1 true)
  %i.aek = trunc nuw nsw i64 %i.aej to i32
  %i.ael = or disjoint i32 %.sink65.i.i.i192, %i.aek ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %15, i64 28
  store i32 %i.ael, ptr %i.aem, align 4, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  store i32 -1, ptr %i.b, align 4, !tbaa !122
  store ptr %i.adq, ptr %8, align 8, !tbaa !125
  %i.aen = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.b, ptr %i.aen, align 8, !tbaa !126
  %i.aeo = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 1, ptr %i.aeo, align 8, !tbaa !127
  store ptr %i.adq, ptr %9, align 8, !tbaa !129
  %i.aep = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.b, ptr %i.aep, align 8, !tbaa !126
  %i.aeq = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 1, ptr %i.aeq, align 8, !tbaa !130
  %i.aer = invoke noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.ael, i32 noundef %i.adr, ptr noundef nonnull byval(%class.anon.215) align 8 %8, ptr noundef nonnull byval(%class.anon.216) align 8 %9)
          to label %.noexc196 unwind label %bb.el ; 0 uses

.noexc196:                                        ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i190
  %i.aes = load i32, ptr %i.b, align 4, !tbaa !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.aet = add nsw i32 %i.aes, 1
  %i.aeu = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 %i.aet, ptr %i.aeu, align 8, !tbaa !120
  %i.aev = getelementptr inbounds nuw i8, ptr %15, i64 37
  store i8 0, ptr %i.aev, align 1, !tbaa !108
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit197

bb.el:                                            ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i190, %bb.cv
  %i.aew = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit197: ; preds = %.noexc196, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i182, %bb.cw
  %i.aex = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !172 ; 2 uses
  %.not.i198 = icmp eq ptr %i.aey, null
  br i1 %.not.i198, label %bb.em, label %_ZNK8facebook5velox13DecodedVector7indicesEv.exit

bb.em:                                            ; preds = %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit197
  invoke void @_ZNK8facebook5velox13DecodedVector13fillInIndicesEv(ptr noundef nonnull align 8 dereferenceable(120) %17)
          to label %.noexc199 unwind label %bb.fj

.noexc199:                                        ; preds = %bb.em
  %.pre.i = load ptr, ptr %i.aex, align 8, !tbaa !172
  br label %_ZNK8facebook5velox13DecodedVector7indicesEv.exit

_ZNK8facebook5velox13DecodedVector7indicesEv.exit: ; preds = %.noexc199, %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit197
  %i.aez = phi ptr [ %.pre.i, %.noexc199 ], [ %i.aey, %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit197 ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #39
  store ptr null, ptr %18, align 8, !tbaa !131
  br i1 %.not, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit", label %bb.en

bb.en:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7indicesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #39
  %i.afa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.afb = load i32, ptr %i.afa, align 8, !tbaa !120
  %i.afc = sext i32 %i.afb to i64
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #39
  %i.aff = getelementptr inbounds nuw i8, ptr %20, i64 4
  store i8 0, ptr %i.aff, align 4, !tbaa !133
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %19, i64 noundef %i.afc, ptr noundef %i.afe, ptr noundef nonnull align 4 dereferenceable(8) %20, i1 noundef zeroext false)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.fk

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.en
  %i.afg = load ptr, ptr %19, align 8, !tbaa !131 ; 12 uses
  store ptr %i.afg, ptr %18, align 8, !tbaa !131
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.afg, i64 44
  %.pre458 = load i8, ptr %.phi.trans.insert, align 4, !tbaa !138
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  %i.afh = and i8 %.pre458, 2
  %.not.i204 = icmp eq i8 %i.afh, 0
  br i1 %.not.i204, label %bb.ep, label %bb.eo, !prof !63

bb.eo:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #38
          to label %.noexc205 unwind label %bb.fl

.noexc205:                                        ; preds = %bb.eo
  unreachable

bb.ep:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afg, i64 16
  %i.afj = load ptr, ptr %i.afi, align 8, !tbaa !139 ; 19 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %15, i64 36 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %15, i64 37
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !108, !range !147, !noundef !148
  %i.afn = trunc nuw i8 %i.afm to i1
  br i1 %i.afn, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i247, label %bb.eq

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i247: ; preds = %bb.ep
  %.0.in.pre.i.i248 = load i8, ptr %i.afk, align 4, !tbaa !149, !range !147
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i208

bb.eq:                                            ; preds = %bb.ep
  %i.afo = getelementptr inbounds nuw i8, ptr %15, i64 28
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !121
  %i.afq = icmp eq i32 %i.afp, 0
  br i1 %i.afq, label %bb.er, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i206

bb.er:                                            ; preds = %bb.eq
  %i.afr = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.afs = load i32, ptr %i.afr, align 8, !tbaa !120 ; 6 uses
  %i.aft = load i32, ptr %i.fc, align 8, !tbaa !119
  %i.afu = icmp eq i32 %i.afs, %i.aft
  br i1 %i.afu, label %bb.es, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i206

bb.es:                                            ; preds = %bb.er
  %i.afv = load ptr, ptr %15, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i239 = icmp sgt i32 %i.afs, 0
  br i1 %.not.i.i.i239, label %bb.et, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i206

bb.et:                                            ; preds = %bb.es
  %i.afw = and i32 %i.afs, 2147483584             ; 3 uses
  %i.afx = zext nneg i32 %i.afw to i64
  %.not37.i.i.not.i.i241647.not = icmp eq i32 %i.afw, 0
  br i1 %.not37.i.i.not.i.i241647.not, label %.critedge.i.i.i.i242, label %.lr.ph650

bb.eu:                                            ; preds = %.lr.ph650
  %indvars.iv.next.i.i246 = add nuw nsw i64 %indvars.iv.i.i240648, 64 ; 2 uses
  %.not37.i.i.not.i.i241 = icmp samesign ult i64 %indvars.iv.next.i.i246, %i.afx
  br i1 %.not37.i.i.not.i.i241, label %.lr.ph650, label %.critedge.i.i.i.i242, !llvm.loop !502

.lr.ph650:                                        ; preds = %bb.et, %bb.eu
  %indvars.iv.i.i240648 = phi i64 [ %indvars.iv.next.i.i246, %bb.eu ], [ 0, %bb.et ] ; 2 uses
  %i.afy = lshr exact i64 %indvars.iv.i.i240648, 3
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afv, i64 %i.afy
  %i.aga = load i64, ptr %i.afz, align 8, !tbaa !80
  %i.agb = icmp eq i64 %i.aga, -1
  br i1 %i.agb, label %bb.eu, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i206, !llvm.loop !502

.critedge.i.i.i.i242:                             ; preds = %bb.eu, %bb.et
  %.not38.i.i.i.i243 = icmp eq i32 %i.afs, %i.afw
  br i1 %.not38.i.i.i.i243, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i206, label %bb.ev

bb.ev:                                            ; preds = %.critedge.i.i.i.i242
  %i.agc = lshr i32 %i.afs, 6
  %i.agd = and i32 %i.afs, 63
  %i.age = zext nneg i32 %i.agd to i64
  %notmask.i40.i.i.i.i244 = shl nsw i64 -1, %i.age
  %i.agf = zext nneg i32 %i.agc to i64
  %i.agg = getelementptr inbounds nuw [8 x i8], ptr %i.afv, i64 %i.agf
  %i.agh = load i64, ptr %i.agg, align 8, !tbaa !80
  %.demorgan.i.i245 = or i64 %i.agh, %notmask.i40.i.i.i.i244
  %i.agi = icmp eq i64 %.demorgan.i.i245, -1
  %i.agj = zext i1 %i.agi to i16
  %i.agk = or disjoint i16 %i.agj, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i206

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i206: ; preds = %.lr.ph650, %bb.ev, %.critedge.i.i.i.i242, %bb.es, %bb.er, %bb.eq
  %.sroa.0.0.insert.ext.i.i207 = phi i16 [ 256, %bb.er ], [ 256, %bb.eq ], [ 257, %bb.es ], [ 257, %.critedge.i.i.i.i242 ], [ %i.agk, %bb.ev ], [ 256, %.lr.ph650 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i207, ptr %i.afk, align 4
  %i.agl = trunc i16 %.sroa.0.0.insert.ext.i.i207 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i208

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i208: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i206, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i247
  %.0.in.i.i209 = phi i8 [ %.0.in.pre.i.i248, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i247 ], [ %i.agl, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i206 ]
  %.0.i.i210 = trunc nuw i8 %.0.in.i.i209 to i1
  br i1 %.0.i.i210, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i208
  %i.agm = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.agn = load i32, ptr %i.agm, align 8, !tbaa !120 ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %15, i64 28
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !121 ; 2 uses
  %i.agq = icmp slt i32 %i.agp, %i.agn
  br i1 %i.agq, label %.lr.ph.i234, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit"

.lr.ph.i234:                                      ; preds = %bb.ew
  %i.agr = sext i32 %i.agp to i64                 ; 4 uses
  %wide.trip.count.i235 = sext i32 %i.agn to i64  ; 3 uses
  %i.ags = sub nsw i64 %wide.trip.count.i235, %i.agr
  %xtraiter = and i64 %i.ags, 3                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i234, %.prol.preheader
  %indvars.iv.i236.prol = phi i64 [ %indvars.iv.next.i237.prol, %.prol.preheader ], [ %i.agr, %.lr.ph.i234 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i234 ]
  %i.agt = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.i236.prol
  %i.agu = load i32, ptr %i.agt, align 4, !tbaa !122
  %i.agv = sext i32 %i.agu to i64
  %i.agw = getelementptr inbounds [4 x i8], ptr %i.aez, i64 %i.agv
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !122
  %i.agy = getelementptr inbounds [4 x i8], ptr %i.afj, i64 %indvars.iv.i236.prol
  store i32 %i.agx, ptr %i.agy, align 4, !tbaa !122
  %indvars.iv.next.i237.prol = add nsw i64 %indvars.iv.i236.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !530

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i234
  %indvars.iv.i236.unr = phi i64 [ %i.agr, %.lr.ph.i234 ], [ %indvars.iv.next.i237.prol, %.prol.preheader ]
  %i.agz = sub nsw i64 %i.agr, %wide.trip.count.i235
  %i.aha = icmp ugt i64 %i.agz, -4
  br i1 %i.aha, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit", label %.lr.ph.i234.new

.lr.ph.i234.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i234.new
  %indvars.iv.i236 = phi i64 [ %indvars.iv.next.i237.3, %.lr.ph.i234.new ], [ %indvars.iv.i236.unr, %.prol.loopexit ] ; 6 uses
  %i.ahb = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.i236
  %i.ahc = load i32, ptr %i.ahb, align 4, !tbaa !122
  %i.ahd = sext i32 %i.ahc to i64
  %i.ahe = getelementptr inbounds [4 x i8], ptr %i.aez, i64 %i.ahd
  %i.ahf = load i32, ptr %i.ahe, align 4, !tbaa !122
  %i.ahg = getelementptr inbounds [4 x i8], ptr %i.afj, i64 %indvars.iv.i236
  store i32 %i.ahf, ptr %i.ahg, align 4, !tbaa !122
  %indvars.iv.next.i237 = add nsw i64 %indvars.iv.i236, 1 ; 2 uses
  %i.ahh = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next.i237
  %i.ahi = load i32, ptr %i.ahh, align 4, !tbaa !122
  %i.ahj = sext i32 %i.ahi to i64
  %i.ahk = getelementptr inbounds [4 x i8], ptr %i.aez, i64 %i.ahj
  %i.ahl = load i32, ptr %i.ahk, align 4, !tbaa !122
  %i.ahm = getelementptr inbounds [4 x i8], ptr %i.afj, i64 %indvars.iv.next.i237
  store i32 %i.ahl, ptr %i.ahm, align 4, !tbaa !122
  %indvars.iv.next.i237.1 = add nsw i64 %indvars.iv.i236, 2 ; 2 uses
  %i.ahn = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next.i237.1
  %i.aho = load i32, ptr %i.ahn, align 4, !tbaa !122
  %i.ahp = sext i32 %i.aho to i64
  %i.ahq = getelementptr inbounds [4 x i8], ptr %i.aez, i64 %i.ahp
  %i.ahr = load i32, ptr %i.ahq, align 4, !tbaa !122
  %i.ahs = getelementptr inbounds [4 x i8], ptr %i.afj, i64 %indvars.iv.next.i237.1
  store i32 %i.ahr, ptr %i.ahs, align 4, !tbaa !122
  %indvars.iv.next.i237.2 = add nsw i64 %indvars.iv.i236, 3 ; 2 uses
  %i.aht = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next.i237.2
  %i.ahu = load i32, ptr %i.aht, align 4, !tbaa !122
  %i.ahv = sext i32 %i.ahu to i64
  %i.ahw = getelementptr inbounds [4 x i8], ptr %i.aez, i64 %i.ahv
  %i.ahx = load i32, ptr %i.ahw, align 4, !tbaa !122
  %i.ahy = getelementptr inbounds [4 x i8], ptr %i.afj, i64 %indvars.iv.next.i237.2
  store i32 %i.ahx, ptr %i.ahy, align 4, !tbaa !122
  %indvars.iv.next.i237.3 = add nsw i64 %indvars.iv.i236, 4 ; 2 uses
  %exitcond.not.i238.3 = icmp eq i64 %indvars.iv.next.i237.3, %wide.trip.count.i235
  br i1 %exitcond.not.i238.3, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit", label %.lr.ph.i234.new, !llvm.loop !531

bb.ex:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i208
  %i.ahz = load ptr, ptr %15, align 8, !tbaa !110 ; 4 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %15, i64 28
  %i.aib = load i32, ptr %i.aia, align 4, !tbaa !121 ; 6 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.aid = load i32, ptr %i.aic, align 8, !tbaa !120 ; 7 uses
  %.not.i.i.i.i215 = icmp slt i32 %i.aib, %i.aid
  br i1 %.not.i.i.i.i215, label %bb.ey, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit"

bb.ey:                                            ; preds = %bb.ex
  %i.aie = add i32 %i.aib, 63                     ; 2 uses
  %i.aif = srem i32 %i.aie, 64
  %i.aig = sub nsw i32 %i.aie, %i.aif             ; 6 uses
  %i.aih = and i32 %i.aid, -64                    ; 6 uses
  %i.aii = icmp slt i32 %i.aih, %i.aig
  br i1 %i.aii, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  %i.aij = ashr i32 %i.aid, 6
  %i.aik = and i32 %i.aid, 63
  %i.ail = zext nneg i32 %i.aik to i64
  %notmask.i.i.i.i.i228 = shl nsw i64 -1, %i.ail
  %i.aim = xor i64 %notmask.i.i.i.i.i228, -1
  %i.ain = sub nsw i32 %i.aig, %i.aib             ; 2 uses
  %i.aio = zext nneg i32 %i.ain to i64
  %notmask.i.i.i.i.i.i229 = shl nsw i64 -1, %i.aio
  %i.aip = xor i64 %notmask.i.i.i.i.i.i229, -1
  %i.aiq = sub nsw i32 64, %i.ain
  %i.air = zext nneg i32 %i.aiq to i64
  %i.ais = shl i64 %i.aip, %i.air
  %i.ait = and i64 %i.ais, %i.aim
  %i.aiu = sext i32 %i.aij to i64
  %i.aiv = getelementptr inbounds [8 x i8], ptr %i.ahz, i64 %i.aiu
  %i.aiw = load i64, ptr %i.aiv, align 8, !tbaa !80
  %i.aix = and i64 %i.ait, %i.aiw                 ; 2 uses
  %.not.i.i.i.i.i230 = icmp eq i64 %i.aix, 0
  br i1 %.not.i.i.i.i.i230, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit", label %.preheader.i.i.i.i.i231

.preheader.i.i.i.i.i231:                          ; preds = %bb.ez
  %i.aiy = sext i32 %i.aih to i64
  br label %bb.fa

bb.fa:                                            ; preds = %bb.fa, %.preheader.i.i.i.i.i231
  %.011.i.i.i.i.i232 = phi i64 [ %i.aix, %.preheader.i.i.i.i.i231 ], [ %i.aji, %bb.fa ] ; 3 uses
  %i.aiz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i.i.i.i.i232, i1 true)
  %i.aja = or disjoint i64 %i.aiz, %i.aiy         ; 2 uses
  %i.ajb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.aja
  %i.ajc = load i32, ptr %i.ajb, align 4, !tbaa !122
  %i.ajd = sext i32 %i.ajc to i64
  %i.aje = getelementptr inbounds [4 x i8], ptr %i.aez, i64 %i.ajd
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !122
  %i.ajg = getelementptr inbounds [4 x i8], ptr %i.afj, i64 %i.aja
  store i32 %i.ajf, ptr %i.ajg, align 4, !tbaa !122
  %i.ajh = add nsw i64 %.011.i.i.i.i.i232, -1
  %i.aji = and i64 %i.ajh, %.011.i.i.i.i.i232     ; 2 uses
  %.not10.i.i.i.i.i233 = icmp eq i64 %i.aji, 0
  br i1 %.not10.i.i.i.i.i233, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit", label %bb.fa, !llvm.loop !532

bb.fb:                                            ; preds = %bb.ey
  %.not32.i.i.i.i216 = icmp eq i32 %i.aib, %i.aig
  br i1 %.not32.i.i.i.i216, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i", label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ajj = sdiv i32 %i.aib, 64                    ; 2 uses
  %i.ajk = sub nsw i32 %i.aig, %i.aib             ; 2 uses
  %i.ajl = zext nneg i32 %i.ajk to i64
  %notmask.i.i35.i.i.i.i217 = shl nsw i64 -1, %i.ajl
  %i.ajm = xor i64 %notmask.i.i35.i.i.i.i217, -1
  %i.ajn = sub nsw i32 64, %i.ajk
  %i.ajo = zext nneg i32 %i.ajn to i64
  %i.ajp = shl i64 %i.ajm, %i.ajo
  %i.ajq = sext i32 %i.ajj to i64
  %i.ajr = getelementptr inbounds [8 x i8], ptr %i.ahz, i64 %i.ajq
  %i.ajs = load i64, ptr %i.ajr, align 8, !tbaa !80
  %i.ajt = and i64 %i.ajs, %i.ajp                 ; 2 uses
  %.not.i36.i.i.i.i218 = icmp eq i64 %i.ajt, 0
  br i1 %.not.i36.i.i.i.i218, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i", label %.preheader.i37.i.i.i.i219

.preheader.i37.i.i.i.i219:                        ; preds = %bb.fc
  %i.aju = shl nsw i32 %i.ajj, 6
  %i.ajv = sext i32 %i.aju to i64
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fd, %.preheader.i37.i.i.i.i219
  %.011.i38.i.i.i.i220 = phi i64 [ %i.ajt, %.preheader.i37.i.i.i.i219 ], [ %i.akf, %bb.fd ] ; 3 uses
  %i.ajw = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i38.i.i.i.i220, i1 true)
  %i.ajx = or disjoint i64 %i.ajw, %i.ajv         ; 2 uses
  %i.ajy = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ajx
  %i.ajz = load i32, ptr %i.ajy, align 4, !tbaa !122
  %i.aka = sext i32 %i.ajz to i64
  %i.akb = getelementptr inbounds [4 x i8], ptr %i.aez, i64 %i.aka
  %i.akc = load i32, ptr %i.akb, align 4, !tbaa !122
  %i.akd = getelementptr inbounds [4 x i8], ptr %i.afj, i64 %i.ajx
  store i32 %i.akc, ptr %i.akd, align 4, !tbaa !122
  %i.ake = add i64 %.011.i38.i.i.i.i220, -1
  %i.akf = and i64 %i.ake, %.011.i38.i.i.i.i220   ; 2 uses
  %.not10.i39.i.i.i.i = icmp eq i64 %i.akf, 0
  br i1 %.not10.i39.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i", label %bb.fd, !llvm.loop !532

"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i": ; preds = %bb.fd, %bb.fc, %bb.fb
  %i.akg = add nsw i32 %i.aig, 64                 ; 2 uses
  %.not3350.i.i.i.i = icmp sgt i32 %i.akg, %i.aih
  br i1 %.not3350.i.i.i.i, label %._crit_edge.i.i.i.i223, label %.lr.ph.i.i.i.i221

._crit_edge.i.i.i.i223:                           ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i"
  %.not34.i.i.i.i224 = icmp eq i32 %i.aid, %i.aih
  br i1 %.not34.i.i.i.i224, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit", label %bb.fh

.lr.ph.i.i.i.i221:                                ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i", %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  %i.akh = phi i32 [ %i.alk, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.akg, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i" ] ; 2 uses
  %.051.i.i.i.i = phi i32 [ %i.akh, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i" ], [ %i.aig, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUlimE_clEim.exit40.i.i.i.i" ] ; 2 uses
  %i.aki = sdiv i32 %.051.i.i.i.i, 64             ; 3 uses
  %i.akj = sext i32 %i.aki to i64
  %i.akk = getelementptr inbounds [8 x i8], ptr %i.ahz, i64 %i.akj
  %i.akl = load i64, ptr %i.akk, align 8, !tbaa !80 ; 2 uses
  switch i64 %i.akl, label %.lr.ph.i.i.i.i.i227 [
    i64 -1, label %bb.fe
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i"
  ]

.lr.ph.i.i.i.i.i227:                              ; preds = %.lr.ph.i.i.i.i221
  %i.akm = shl nsw i32 %i.aki, 6
  %i.akn = sext i32 %i.akm to i64
  br label %bb.fg

bb.fe:                                            ; preds = %.lr.ph.i.i.i.i221
  %i.ako = shl nsw i32 %i.aki, 6                  ; 2 uses
  %i.akp = add i32 %i.ako, 64
  %i.akq = sext i32 %i.akp to i64
  %.0.off.i.i.i.i226 = add i32 %.051.i.i.i.i, 127
  %.not22.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i226, 64
  br i1 %.not22.i.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %.lr.ph21.i.i.i.i.i

.lr.ph21.i.i.i.i.i:                               ; preds = %bb.fe
  %i.akr = sext i32 %i.ako to i64
  br label %bb.ff

bb.ff:                                            ; preds = %bb.ff, %.lr.ph21.i.i.i.i.i
  %.020.i.i.i.i.i = phi i64 [ %i.akr, %.lr.ph21.i.i.i.i.i ], [ %i.aky, %bb.ff ] ; 3 uses
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.020.i.i.i.i.i
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !122
  %i.aku = sext i32 %i.akt to i64
  %i.akv = getelementptr inbounds [4 x i8], ptr %i.aez, i64 %i.aku
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !122
  %i.akx = getelementptr inbounds nuw [4 x i8], ptr %i.afj, i64 %.020.i.i.i.i.i
  store i32 %i.akw, ptr %i.akx, align 4, !tbaa !122
  %i.aky = add nuw i64 %.020.i.i.i.i.i, 1         ; 2 uses
  %i.akz = icmp ult i64 %i.aky, %i.akq
  br i1 %i.akz, label %bb.ff, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", !llvm.loop !533

bb.fg:                                            ; preds = %bb.fg, %.lr.ph.i.i.i.i.i227
  %.01519.i.i.i.i.i = phi i64 [ %i.akl, %.lr.ph.i.i.i.i.i227 ], [ %i.alj, %bb.fg ] ; 3 uses
  %i.ala = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01519.i.i.i.i.i, i1 true)
  %i.alb = or disjoint i64 %i.ala, %i.akn         ; 2 uses
  %i.alc = getelementptr inbounds [4 x i8], ptr %3, i64 %i.alb
  %i.ald = load i32, ptr %i.alc, align 4, !tbaa !122
  %i.ale = sext i32 %i.ald to i64
  %i.alf = getelementptr inbounds [4 x i8], ptr %i.aez, i64 %i.ale
  %i.alg = load i32, ptr %i.alf, align 4, !tbaa !122
  %i.alh = getelementptr inbounds [4 x i8], ptr %i.afj, i64 %i.alb
  store i32 %i.alg, ptr %i.alh, align 4, !tbaa !122
  %i.ali = add i64 %.01519.i.i.i.i.i, -1
  %i.alj = and i64 %i.ali, %.01519.i.i.i.i.i      ; 2 uses
  %.not.i41.i.i.i.i = icmp eq i64 %i.alj, 0
  br i1 %.not.i41.i.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i", label %bb.fg, !llvm.loop !534

"_ZZN8facebook5velox4bits10forEachBitIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKNS0_17SelectivityVectorEPKiE3$_3EEvPKmiibT_ENKUliE_clEi.exit.i.i.i.i": ; preds = %bb.ff, %bb.fg, %bb.fe, %.lr.ph.i.i.i.i221
  %i.alk = add nsw i32 %i.akh, 64                 ; 2 uses
  %.not33.i.i.i.i222 = icmp sgt i32 %i.alk, %i.aih
  br i1 %.not33.i.i.i.i222, label %._crit_edge.i.i.i.i223, label %.lr.ph.i.i.i.i221, !llvm.loop !535

bb.fh:                                            ; preds = %._crit_edge.i.i.i.i223
  %i.all = ashr i32 %i.aid, 6
  %i.alm = and i32 %i.aid, 63
  %i.aln = zext nneg i32 %i.alm to i64
  %notmask.i42.i.i.i.i = shl nsw i64 -1, %i.aln
  %i.alo = xor i64 %notmask.i42.i.i.i.i, -1
  %i.alp = sext i32 %i.all to i64
  %i.alq = getelementptr inbounds [8 x i8], ptr %i.ahz, i64 %i.alp
  %i.alr = load i64, ptr %i.alq, align 8, !tbaa !80
  %i.als = and i64 %i.alr, %i.alo                 ; 2 uses
  %.not.i43.i.i.i.i225 = icmp eq i64 %i.als, 0
  br i1 %.not.i43.i.i.i.i225, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit", label %.preheader.i44.i.i.i.i

.preheader.i44.i.i.i.i:                           ; preds = %bb.fh
  %i.alt = sext i32 %i.aih to i64
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fi, %.preheader.i44.i.i.i.i
  %.011.i45.i.i.i.i = phi i64 [ %i.als, %.preheader.i44.i.i.i.i ], [ %i.amd, %bb.fi ] ; 3 uses
  %i.alu = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.011.i45.i.i.i.i, i1 true)
  %i.alv = or disjoint i64 %i.alu, %i.alt         ; 2 uses
  %i.alw = getelementptr inbounds [4 x i8], ptr %3, i64 %i.alv
  %i.alx = load i32, ptr %i.alw, align 4, !tbaa !122
  %i.aly = sext i32 %i.alx to i64
  %i.alz = getelementptr inbounds [4 x i8], ptr %i.aez, i64 %i.aly
  %i.ama = load i32, ptr %i.alz, align 4, !tbaa !122
  %i.amb = getelementptr inbounds [4 x i8], ptr %i.afj, i64 %i.alv
  store i32 %i.ama, ptr %i.amb, align 4, !tbaa !122
  %i.amc = add nsw i64 %.011.i45.i.i.i.i, -1
  %i.amd = and i64 %i.amc, %.011.i45.i.i.i.i      ; 2 uses
  %.not10.i46.i.i.i.i = icmp eq i64 %i.amd, 0
  br i1 %.not10.i46.i.i.i.i, label %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit", label %bb.fi, !llvm.loop !532

bb.fj:                                            ; preds = %bb.em
  %i.ame = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.fk:                                            ; preds = %bb.en
  %i.amf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #39
  br label %.body262

bb.fl:                                            ; preds = %bb.eo
  %i.amg = landingpad { ptr, i32 }
          cleanup
  br label %.body262

"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit": ; preds = %bb.fi, %bb.fa, %.prol.loopexit, %.lr.ph.i234.new, %bb.fh, %._crit_edge.i.i.i.i223, %bb.ez, %bb.ex, %bb.ew, %_ZNK8facebook5velox13DecodedVector7indicesEv.exit
  %i.amh = phi ptr [ null, %_ZNK8facebook5velox13DecodedVector7indicesEv.exit ], [ %i.afg, %bb.ew ], [ %i.afg, %.prol.loopexit ], [ %i.afg, %bb.ex ], [ %i.afg, %bb.ez ], [ %i.afg, %bb.fa ], [ %i.afg, %._crit_edge.i.i.i.i223 ], [ %i.afg, %bb.fh ], [ %i.afg, %.lr.ph.i234.new ], [ %i.afg, %bb.fi ]
  %.0373 = phi ptr [ null, %_ZNK8facebook5velox13DecodedVector7indicesEv.exit ], [ %i.afj, %bb.ew ], [ %i.afj, %.prol.loopexit ], [ %i.afj, %bb.ex ], [ %i.afj, %bb.ez ], [ %i.afj, %bb.fa ], [ %i.afj, %._crit_edge.i.i.i.i223 ], [ %i.afj, %bb.fh ], [ %i.afj, %.lr.ph.i234.new ], [ %i.afj, %bb.fi ] ; 2 uses
  %i.ami = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.amj = load ptr, ptr %i.ami, align 8, !tbaa !174
  %i.amk = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.amj, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox9RowVectorE, i64 0) #39 ; 2 uses
  %i.aml = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.amm = load i64, ptr %i.aml, align 8, !tbaa !106
  %.not423 = icmp eq i64 %i.amm, 0
  br i1 %.not423, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit"
  %i.amn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.amo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.amp = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %.not57 = icmp eq ptr %.0373, null
  %i.amq = select i1 %.not57, ptr %i.aez, ptr %.0373
  br label %bb.fo

._crit_edge.loopexit:                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit269
  %.pre459 = load ptr, ptr %18, align 8, !tbaa !131
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit"
  %i.amr = phi ptr [ %.pre459, %._crit_edge.loopexit ], [ %i.amh, %"_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_9RowVector4copyEPKNS0_10BaseVectorERKS1_PKiE3$_3EEvT_.exit" ] ; 7 uses
  %.not.i249 = icmp eq ptr %i.amr, null
  br i1 %.not.i249, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit254, label %bb.fm

bb.fm:                                            ; preds = %._crit_edge
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 40
  %i.amt = atomicrmw sub ptr %i.ams, i32 1 acq_rel, align 4
  %i.amu = icmp eq i32 %i.amt, 1
  br i1 %i.amu, label %.sink.split.i.i250, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit254

.sink.split.i.i250:                               ; preds = %bb.fm
  %i.amv = load ptr, ptr %i.amr, align 8, !tbaa !87
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 64
  %i.amx = load ptr, ptr %i.amw, align 8
  invoke void %i.amx(ptr noundef nonnull align 8 dereferenceable(64) %i.amr)
          to label %.noexc.i251 unwind label %bb.fn, !inline_history !1

.noexc.i251:                                      ; preds = %.sink.split.i.i250
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amr, i64 8
  %i.amz = load ptr, ptr %i.amy, align 8, !tbaa !143
  %.not.i.i252 = icmp eq ptr %i.amz, null
  %i.ana = load ptr, ptr %i.amr, align 8, !tbaa !87
  %..i.i253 = select i1 %.not.i.i252, i64 8, i64 48
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 %..i.i253
  %i.anc = load ptr, ptr %i.anb, align 8
  invoke void %i.anc(ptr noundef nonnull align 8 dereferenceable(64) %i.amr)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit254 unwind label %bb.fn, !inline_history !1

bb.fn:                                            ; preds = %.noexc.i251, %.sink.split.i.i250
  %i.and = landingpad { ptr, i32 }
          catch ptr null
  %i.ane = extractvalue { ptr, i32 } %i.and, 0
  call void @__clang_call_terminate(ptr %i.ane) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit254: ; preds = %._crit_edge, %bb.fm, %.noexc.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #39
  br label %.loopexit

bb.fo:                                            ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit269
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit269 ] ; 7 uses
  %i.anf = trunc nuw nsw i64 %indvars.iv to i32   ; 3 uses
  %i.ang = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8facebook5velox9RowVector7childAtEj(ptr noundef nonnull align 8 dereferenceable(152) %i.amk, i32 noundef %i.anf)
          to label %bb.fp unwind label %.loopexit395

bb.fp:                                            ; preds = %bb.fo
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !85
  %.not384 = icmp eq ptr %i.anh, null
  br i1 %.not384, label %bb.fz, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.ani = load ptr, ptr %i.amn, align 8, !tbaa !55
  %i.anj = call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(18) %i.ani, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox7RowTypeE, i64 0) #39 ; 3 uses
  %i.ank = icmp eq ptr %i.anj, null
  br i1 %i.ank, label %bb.fr, label %_ZNK8facebook5velox4Type5asRowEv.exit256

bb.fr:                                            ; preds = %bb.fq
  invoke void @__cxa_bad_cast() #38
          to label %.noexc255 unwind label %.loopexit.split-lp396

.noexc255:                                        ; preds = %bb.fr
  unreachable

_ZNK8facebook5velox4Type5asRowEv.exit256:         ; preds = %bb.fq
  %i.anl = getelementptr inbounds nuw i8, ptr %i.anj, i64 48
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anj, i64 56
  %i.ann = load ptr, ptr %i.anm, align 8, !tbaa !165
  %i.ano = load ptr, ptr %i.anl, align 8, !tbaa !166 ; 2 uses
  %i.anp = ptrtoint ptr %i.ann to i64
  %i.anq = ptrtoint ptr %i.ano to i64
  %i.anr = sub i64 %i.anp, %i.anq
  %i.ans = ashr exact i64 %i.anr, 4               ; 2 uses
  %.not.i257 = icmp ugt i64 %i.ans, %indvars.iv
  br i1 %.not.i257, label %bb.fv, label %bb.fs, !prof !63

bb.fs:                                            ; preds = %_ZNK8facebook5velox4Type5asRowEv.exit256
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !544
  store i32 %i.anf, ptr %6, align 16, !tbaa !94, !alias.scope !545, !noalias !544
  %i.ant = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.ans, ptr %i.ant, align 16, !tbaa !94, !alias.scope !545, !noalias !544
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.12, i64 11, i64 66, ptr nonnull %6)
          to label %.noexc261 unwind label %.loopexit.split-lp396

.noexc261:                                        ; preds = %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !544
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox7RowType7childAtEjE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nonnull @.str.12) #38
          to label %bb.ft unwind label %bb.fu

bb.ft:                                            ; preds = %.noexc261
  unreachable

bb.fu:                                            ; preds = %.noexc261
  %i.anu = landingpad { ptr, i32 }
          cleanup
  %i.anv = load ptr, ptr %7, align 8, !tbaa !92   ; 2 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.anx = icmp eq ptr %i.anv, %i.anw
  br i1 %i.anx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i258: ; preds = %bb.fu
  %i.any = load i64, ptr %i.anw, align 8, !tbaa !94
  %i.anz = add i64 %i.any, 1
  call void @_ZdlPvm(ptr noundef %i.anv, i64 noundef %i.anz) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i259: ; preds = %bb.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br label %.body262

bb.fv:                                            ; preds = %_ZNK8facebook5velox4Type5asRowEv.exit256
  %i.aoa = getelementptr inbounds nuw [16 x i8], ptr %i.ano, i64 %indvars.iv
  %i.aob = load ptr, ptr %i.amo, align 8, !tbaa !132
  %i.aoc = load ptr, ptr %i.amp, align 8, !tbaa !97
  %i.aod = getelementptr inbounds nuw [16 x i8], ptr %i.aoc, i64 %indvars.iv
  invoke void @_ZN8facebook5velox10BaseVector14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEEPNS0_6memory10MemoryPoolERS5_IS1_EPNS0_10VectorPoolE(ptr noundef nonnull align 8 dereferenceable(38) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.aoa, ptr noundef %i.aob, ptr noundef nonnull align 8 dereferenceable(16) %i.aod, ptr noundef null)
          to label %bb.fw unwind label %.loopexit395

bb.fw:                                            ; preds = %bb.fv
  %i.aoe = load ptr, ptr %i.amp, align 8, !tbaa !97
  %i.aof = getelementptr inbounds nuw [16 x i8], ptr %i.aoe, i64 %indvars.iv
  %i.aog = load ptr, ptr %i.aof, align 8, !tbaa !85 ; 2 uses
  %i.aoh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8facebook5velox9RowVector7childAtEj(ptr noundef nonnull align 8 dereferenceable(152) %i.amk, i32 noundef %i.anf)
          to label %bb.fx unwind label %.loopexit395

bb.fx:                                            ; preds = %bb.fw
  %i.aoi = load ptr, ptr %i.aoh, align 8, !tbaa !85 ; 2 uses
  %i.aoj = load ptr, ptr %i.aoi, align 8, !tbaa !87
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 280
  %i.aol = load ptr, ptr %i.aok, align 8
  %i.aom = invoke noundef ptr %i.aol(ptr noundef nonnull align 8 dereferenceable(94) %i.aoi)
          to label %bb.fy unwind label %.loopexit395

bb.fy:                                            ; preds = %bb.fx
  %i.aon = load ptr, ptr %i.aog, align 8, !tbaa !87
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 200
  %i.aop = load ptr, ptr %i.aoo, align 8
  invoke void %i.aop(ptr noundef nonnull align 8 dereferenceable(94) %i.aog, ptr noundef %i.aom, ptr noundef nonnull align 8 dereferenceable(38) %15, ptr noundef %i.amq)
          to label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit269 unwind label %.loopexit395

.loopexit395:                                     ; preds = %bb.fo, %bb.fv, %bb.fw, %bb.fx, %bb.fy
  %lpad.loopexit397 = landingpad { ptr, i32 }
          cleanup
  br label %.body262

.loopexit.split-lp396:                            ; preds = %bb.fr, %bb.fs
  %lpad.loopexit.split-lp398 = landingpad { ptr, i32 }
          cleanup
  br label %.body262

bb.fz:                                            ; preds = %bb.fp
  %i.aoq = load ptr, ptr %i.amp, align 8, !tbaa !97
  %i.aor = getelementptr inbounds nuw [16 x i8], ptr %i.aoq, i64 %indvars.iv ; 2 uses
  store ptr null, ptr %i.aor, align 8, !tbaa !167
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 8 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox15ArrayVectorBase16transferOrCopyToEPNS0_6memory10MemoryPoolE:bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %.pr30, i64 40
  %i.bp = atomicrmw sub ptr %i.bo, i32 1 acq_rel, align 4
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %.sink.split.i.i.i16, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit20

.sink.split.i.i.i16:                              ; preds = %bb.o
  %i.br = load ptr, ptr %.pr30, align 8, !tbaa !87
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(64) %.pr30)
          to label %.noexc.i.i17 unwind label %bb.p, !inline_history !1

.noexc.i.i17:                                     ; preds = %.sink.split.i.i.i16
  %i.bu = getelementptr inbounds nuw i8, ptr %.pr30, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !143
  %.not.i.i.i18 = icmp eq ptr %i.bv, null
  %i.bw = load ptr, ptr %.pr30, align 8, !tbaa !87
  %..i.i.i19 = select i1 %.not.i.i.i18, i64 8, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %..i.i.i19
  %i.by = load ptr, ptr %i.bx, align 8
  invoke void %i.by(ptr noundef nonnull align 8 dereferenceable(64) %.pr30)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit20 unwind label %bb.p, !inline_history !1

bb.p:                                             ; preds = %.noexc.i.i17, %.sink.split.i.i.i16
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit20: ; preds = %bb.o, %.noexc.i.i17
  %.pr32 = load ptr, ptr %7, align 8, !tbaa !131  ; 7 uses
  %.not.i21 = icmp eq ptr %.pr32, null
  br i1 %.not.i21, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit26, label %bb.q

bb.q:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit20
  %i.cb = getelementptr inbounds nuw i8, ptr %.pr32, i64 40
  %i.cc = atomicrmw sub ptr %i.cb, i32 1 acq_rel, align 4
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %.sink.split.i.i22, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit26

.sink.split.i.i22:                                ; preds = %bb.q
  %i.ce = load ptr, ptr %.pr32, align 8, !tbaa !87
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.cg = load ptr, ptr %i.cf, align 8
  invoke void %i.cg(ptr noundef nonnull align 8 dereferenceable(64) %.pr32)
          to label %.noexc.i23 unwind label %bb.r, !inline_history !1

.noexc.i23:                                       ; preds = %.sink.split.i.i22
  %i.ch = getelementptr inbounds nuw i8, ptr %.pr32, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !143
  %.not.i.i24 = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %.pr32, align 8, !tbaa !87
  %..i.i25 = select i1 %.not.i.i24, i64 8, i64 48
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %..i.i25
  %i.cl = load ptr, ptr %i.ck, align 8
  invoke void %i.cl(ptr noundef nonnull align 8 dereferenceable(64) %.pr32)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit26 unwind label %bb.r, !inline_history !1

bb.r:                                             ; preds = %.noexc.i23, %.sink.split.i.i22
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit26: ; preds = %bb.k, %_ZN8facebook5velox13AlignedBuffer4copyIiEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_PNS0_6memory10MemoryPoolE.exit13, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEOS4_.exit20, %bb.q, %.noexc.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  %i.co = load ptr, ptr %i.aw, align 8, !tbaa !131
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !139
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !200
  br label %bb.s

bb.s:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit26, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox15ArrayVectorBase19ensureNullRowsEmptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiiT_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !131  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.f = load i8, ptr %i.e, align 4, !tbaa !138
  %i.g = and i8 %i.f, 2
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit, label %bb.c, !prof !63

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !139  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !131  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.m = load i8, ptr %i.l, align 4, !tbaa !138
  %i.n = and i8 %i.m, 2
  %.not.i2 = icmp eq i8 %i.n, 0
  br i1 %.not.i2, label %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit3, label %bb.d, !prof !63

bb.d:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIiEEPT_vE18veloxCheckFailArgs) #38
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit3: ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !139  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load i32, ptr %i.q, align 8, !tbaa !152  ; 5 uses
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiiT_.exit", label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit3
  %i.t = and i32 %i.r, 2147483584                 ; 4 uses
  %.not32.not56.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not32.not56.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.u = zext nneg i32 %i.t to i64
  br label %bb.f

._crit_edge.i.i.i:                                ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i", %bb.e
  %.not33.i.i.i = icmp eq i32 %i.r, %i.t
  br i1 %.not33.i.i.i, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiiT_.exit", label %bb.h

bb.f:                                             ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i", %.lr.ph.i.i.i
  %indvars.iv58.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next59.i.i.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i" ] ; 4 uses
  %indvars.iv.i.i.i = phi i64 [ 64, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i" ] ; 2 uses
  %i.v = lshr exact i64 %indvars.iv58.i.i.i, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !80
  %i.y = xor i64 %i.x, -1                         ; 2 uses
  switch i64 %i.y, label %.lr.ph.i.i.i.i [
    i64 -1, label %bb.g
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i"
  ]

bb.g:                                             ; preds = %bb.f
  %i.z = shl nuw nsw i64 %indvars.iv58.i.i.i, 2   ; 2 uses
  %scevgep.i.i.i.i = getelementptr nuw i8, ptr %i.p, i64 %i.z
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %scevgep.i.i.i.i, i8 0, i64 256, i1 false), !tbaa !122
  %scevgep27.i.i.i.i = getelementptr nuw i8, ptr %i.i, i64 %i.z
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %scevgep27.i.i.i.i, i8 0, i64 256, i1 false), !tbaa !122
  br label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i"

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.01522.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i ], [ %i.y, %bb.f ] ; 3 uses
  %i.aa = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01522.i.i.i.i, i1 true)
  %i.ab = or disjoint i64 %i.aa, %indvars.iv58.i.i.i ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ab
  store i32 0, ptr %i.ac, align 4, !tbaa !122
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ab
  store i32 0, ptr %i.ad, align 4, !tbaa !122
  %i.ae = add i64 %.01522.i.i.i.i, -1
  %i.af = and i64 %i.ae, %.01522.i.i.i.i          ; 2 uses
  %.not.i45.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i45.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i", label %.lr.ph.i.i.i.i, !llvm.loop !681

"_ZZN8facebook5velox4bits10forEachBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiibT_ENKUliE_clEi.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i, %bb.g, %bb.f
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 64
  %.not32.not.i.i.i = icmp samesign ult i64 %indvars.iv.i.i.i, %i.u
  %indvars.iv.next59.i.i.i = add nuw nsw i64 %indvars.iv58.i.i.i, 64
  br i1 %.not32.not.i.i.i, label %bb.f, label %._crit_edge.i.i.i, !llvm.loop !682

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.ag = lshr i32 %i.r, 6
  %i.ah = and i32 %i.r, 63
  %i.ai = zext nneg i32 %i.ah to i64
  %notmask.i46.i.i.i = shl nsw i64 -1, %i.ai
  %i.aj = zext nneg i32 %i.ag to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !80
  %.demorgan.i.i = or i64 %i.al, %notmask.i46.i.i.i ; 2 uses
  %.not.i47.i.i.i = icmp eq i64 %.demorgan.i.i, -1
  br i1 %.not.i47.i.i.i, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiiT_.exit", label %.preheader.i48.i.i.i

.preheader.i48.i.i.i:                             ; preds = %bb.h
  %i.am = xor i64 %.demorgan.i.i, -1
  %i.an = zext nneg i32 %i.t to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.i48.i.i.i
  %.012.i53.i.i.i = phi i64 [ %i.am, %.preheader.i48.i.i.i ], [ %i.at, %bb.i ] ; 3 uses
  %i.ao = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i53.i.i.i, i1 true)
  %i.ap = or disjoint i64 %i.ao, %i.an            ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ap
  store i32 0, ptr %i.aq, align 4, !tbaa !122
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ap
  store i32 0, ptr %i.ar, align 4, !tbaa !122
  %i.as = add nsw i64 %.012.i53.i.i.i, -1
  %i.at = and i64 %i.as, %.012.i53.i.i.i          ; 2 uses
  %.not10.i54.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not10.i54.i.i.i, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiiT_.exit", label %bb.i, !llvm.loop !683

"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_15ArrayVectorBase19ensureNullRowsEmptyEvE3$_0EEvPKmiiT_.exit": ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i, %_ZNK8facebook5velox6Buffer9asMutableIiEEPT_v.exit3, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox15ArrayVectorBase23validateArrayVectorBaseERKNS0_21VectorValidateOptionsEi(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.846", align 16 ; 6 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.846", align 16 ; 6 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.846", align 16 ; 6 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.823", align 16 ; 5 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.823", align 16 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  tail call void @_ZNK8facebook5velox10BaseVector8validateERKNS0_21VectorValidateOptionsE(ptr noundef nonnull align 8 dereferenceable(94) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !152  ; 4 uses
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !131
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !146  ; 2 uses
  %.not = icmp ult i64 %i.h, %i.d
  br i1 %.not, label %bb.b, label %bb.e, !prof !56

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39, !noalias !705
  store i64 %i.h, ptr %7, align 16, !tbaa !94, !alias.scope !706, !noalias !705
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %i.d, ptr %i.i, align 16, !tbaa !94, !alias.scope !706, !noalias !705
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.12, i64 11, i64 68, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39, !noalias !705
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox15ArrayVectorBase23validateArrayVectorBaseERKNS0_21VectorValidateOptionsEiE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.12) #38
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %8, align 8, !tbaa !92     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !94
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !131
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !146  ; 2 uses
  %.not9 = icmp ult i64 %i.s, %i.d
  br i1 %.not9, label %bb.j, label %.preheader, !prof !56

.preheader:                                       ; preds = %bb.e
  %i.t = icmp sgt i32 %i.b, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !78   ; 2 uses
  %.not10 = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  br i1 %.not10, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !200
  %wide.trip.count115 = zext nneg i32 %i.b to i64
  br label %.critedge.us

.critedge.us:                                     ; preds = %bb.i, %.lr.ph.split.us
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %bb.i ], [ 0, %.lr.ph.split.us ] ; 6 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv112
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !122 ; 5 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.critedge.us
  %i.ac = icmp slt i32 %i.aa, 0
  br i1 %i.ac, label %.split.us, label %bb.g, !prof !56

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !201
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv112
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !122 ; 4 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %.split77.us, label %bb.h, !prof !56

bb.h:                                             ; preds = %bb.g
  %i.ah = add nuw nsw i32 %i.af, %i.aa
  %.not11.us = icmp sgt i32 %i.ah, %2
  br i1 %.not11.us, label %.split82.us, label %bb.i, !prof !56

bb.i:                                             ; preds = %bb.h, %.critedge.us
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count115
  br i1 %exitcond116.not, label %._crit_edge, label %.critedge.us, !llvm.loop !688

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !707
  store i64 %i.s, ptr %6, align 16, !tbaa !94, !alias.scope !708, !noalias !707
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.d, ptr %i.ai, align 16, !tbaa !94, !alias.scope !708, !noalias !707
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.12, i64 11, i64 68, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !707
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox15ArrayVectorBase23validateArrayVectorBaseERKNS0_21VectorValidateOptionsEiE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr nonnull @.str.12) #38
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %9, align 8, !tbaa !92    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.l
  %i.an = load i64, ptr %i.al, align 8, !tbaa !94
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  br label %bb.w

._crit_edge:                                      ; preds = %bb.v, %bb.i, %.preheader
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.v ] ; 8 uses
  %i.ap = lshr i64 %indvars.iv, 6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !80
  %i.as = and i64 %indvars.iv, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.ar, %i.at
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %bb.v, label %.critedge

.critedge:                                        ; preds = %.lr.ph.split
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !200
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !122 ; 5 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.v, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.az = icmp slt i32 %i.ax, 0
  br i1 %i.az, label %.split.us, label %bb.p, !prof !56

.split.us:                                        ; preds = %bb.m, %bb.f
  %i.ba = phi i32 [ %i.aa, %bb.f ], [ %i.ax, %bb.m ]
  %.us-phi75.in = phi i64 [ %indvars.iv112, %bb.f ], [ %indvars.iv, %bb.m ]
  %.us-phi75 = trunc i64 %.us-phi75.in to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39, !noalias !709
  store i32 %i.ba, ptr %5, align 16, !tbaa !94, !alias.scope !710, !noalias !709
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.bb, align 16, !tbaa !94, !alias.scope !710, !noalias !709
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %.us-phi75, ptr %i.bc, align 16, !tbaa !94, !alias.scope !710, !noalias !709
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.34, i64 70, i64 273, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39, !noalias !709
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox15ArrayVectorBase23validateArrayVectorBaseERKNS0_21VectorValidateOptionsEiE18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.34) #38
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.split.us
  unreachable

bb.o:                                             ; preds = %.split.us
  %i.bd = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE0EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE:bb.a
  %i.qs = sext i32 %i.qr to i64                   ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 120
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !200
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.qu, i64 %i.qs
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !122 ; 2 uses
  %i.qx = icmp sgt i32 %i.qw, 0
  br i1 %i.qx, label %.lr.ph363, label %._crit_edge364

.lr.ph363:                                        ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit196
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qq, i64 104
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !201
  %i.ra = getelementptr inbounds [4 x i8], ptr %i.qz, i64 %i.qs
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !122
  %i.rc = trunc i64 %indvars.iv405 to i8
  %i.rd = sext i32 %i.rb to i64
  %wide.trip.count = zext nneg i32 %i.qw to i64
  br label %bb.cb

._crit_edge364.loopexit:                          ; preds = %.loopexit
  %.pre431 = load ptr, ptr %i.is, align 8, !tbaa !237
  br label %._crit_edge364

._crit_edge364:                                   ; preds = %._crit_edge364.loopexit, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196
  %.pre429435 = phi ptr [ %.pre429437, %._crit_edge364.loopexit ], [ %.pre429, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196 ]
  %i.re = phi ptr [ %i.wu, %._crit_edge364.loopexit ], [ %i.px, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196 ] ; 2 uses
  %i.rf = phi ptr [ %.pre431, %._crit_edge364.loopexit ], [ %i.py, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196 ] ; 2 uses
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 1 ; 2 uses
  %i.rg = ptrtoint ptr %i.rf to i64
  %i.rh = ptrtoint ptr %i.re to i64
  %i.ri = sub i64 %i.rg, %i.rh
  %i.rj = sdiv exact i64 %i.ri, 120
  %i.rk = icmp ugt i64 %i.rj, %indvars.iv.next406
  br i1 %i.rk, label %.lr.ph366, label %._crit_edge367, !llvm.loop !1093

bb.cb:                                            ; preds = %.lr.ph363, %.loopexit
  %.pre429436 = phi ptr [ %.pre429, %.lr.ph363 ], [ %.pre429437, %.loopexit ]
  %i.rl = phi ptr [ %.pre429, %.lr.ph363 ], [ %i.wu, %.loopexit ] ; 2 uses
  %indvars.iv402 = phi i64 [ 0, %.lr.ph363 ], [ %indvars.iv.next403, %.loopexit ] ; 2 uses
  %i.rm = add nsw i64 %indvars.iv402, %i.rd       ; 6 uses
  %i.rn = getelementptr inbounds nuw [120 x i8], ptr %i.rl, i64 %indvars.iv405 ; 10 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 24
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !185 ; 4 uses
  %.not.i197 = icmp eq ptr %i.rp, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.rn, i64 58
  %.pre430 = load i8, ptr %.phi.trans.insert, align 2, !tbaa !162, !range !147 ; 2 uses
  br i1 %.not.i197, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.rq = trunc nuw i8 %.pre430 to i1
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rn, i64 57
  %i.rs = load i8, ptr %i.rr, align 1, !range !147
  %i.rt = trunc nuw i8 %i.rs to i1
  %or.cond.i = select i1 %i.rq, i1 true, i1 %i.rt
  br i1 %or.cond.i, label %.split, label %bb.cd

.split:                                           ; preds = %bb.cc
  %i.ru = lshr i64 %i.rm, 6
  %i.rv = and i64 %i.ru, 67108863
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %i.rv
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !80
  %i.ry = and i64 %i.rm, 63
  %i.rz = shl nuw i64 1, %i.ry
  %i.sa = and i64 %i.rx, %i.rz
  %.not.i.i199 = icmp eq i64 %i.sa, 0
  br i1 %.not.i.i199, label %bb.ce, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, !prof !292

bb.cd:                                            ; preds = %bb.cc
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rn, i64 59
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !186, !range !147, !noundef !148
  %i.sd = trunc nuw i8 %i.sc to i1
  br i1 %i.sd, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %.split317

.split317:                                        ; preds = %bb.cd
  %i.se = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !172
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.rm
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !122
  %i.si = zext i32 %i.sh to i64                   ; 2 uses
  %i.sj = lshr i64 %i.si, 6
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %i.sj
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !80
  %i.sm = and i64 %i.si, 63
  %i.sn = shl nuw i64 1, %i.sm
  %i.so = and i64 %i.sn, %i.sl
  %.not.i7.i = icmp eq i64 %i.so, 0
  br i1 %.not.i7.i, label %bb.ce, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !292

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.cd
  %i.sp = load i64, ptr %i.rp, align 8, !tbaa !80
  %i.sq = and i64 %i.sp, 1
  %.not.i6.i = icmp eq i64 %i.sq, 0
  br i1 %.not.i6.i, label %bb.ce, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !292

bb.ce:                                            ; preds = %.split317, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE0EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.142) #38
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  unreachable

bb.cg:                                            ; preds = %bb.cq
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.ch:                                            ; preds = %bb.ce
  %i.ss = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread: ; preds = %.split317, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.st = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !293
  %i.sv = trunc nsw i64 %i.rm to i32
  br label %bb.ci

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.cb, %.split
  %i.sw = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !293 ; 2 uses
  %i.sy = trunc nuw i8 %.pre430 to i1
  %i.sz = trunc nsw i64 %i.rm to i32              ; 3 uses
  br i1 %i.sy, label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i, label %bb.ci

bb.ci:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.ta = phi i32 [ %i.sv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.sz, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.tb = phi ptr [ %i.su, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.sx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.rn, i64 59
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !186, !range !147, !noundef !148
  %i.te = trunc nuw i8 %i.td to i1
  br i1 %i.te, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.tf = getelementptr inbounds nuw i8, ptr %i.rn, i64 64
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !187
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i

bb.ck:                                            ; preds = %bb.ci
  %i.th = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !172
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %i.rm
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !122
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i: ; preds = %bb.ck, %bb.cj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.tl = phi i32 [ %i.ta, %bb.ck ], [ %i.ta, %bb.cj ], [ %i.sz, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.tm = phi ptr [ %i.tb, %bb.ck ], [ %i.tb, %bb.cj ], [ %i.sx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %.0.i.i.i = phi i32 [ %i.tk, %bb.ck ], [ %i.tg, %bb.cj ], [ %i.sz, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.tn = sext i32 %.0.i.i.i to i64               ; 2 uses
  %i.to = lshr i64 %i.tn, 6
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %i.to
  %i.tq = load i64, ptr %i.tp, align 8, !tbaa !80
  %i.tr = and i64 %i.tn, 63
  %i.ts = lshr i64 %i.tq, %i.tr                   ; 2 uses
  %i.tt = trunc i64 %i.ts to i8
  %i.tu = and i8 %i.tt, 1                         ; 2 uses
  %i.tv = and i64 %i.ts, 1                        ; 2 uses
  %i.tw = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.tv) ; 2 uses
  %i.tx = lshr i64 %i.tw, 24
  %i.ty = or i64 %i.tx, 128                       ; 4 uses
  %i.tz = add nuw nsw i64 %i.tv, %i.tw            ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294, !noalias !1125 ; 3 uses
  %i.ua = lshr i64 %.val.i.i.i.i.i, 8             ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ua, 0
  %.pre.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !287, !noalias !1125 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.thread31.i.i.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i
  %i.ub = shl nuw nsw i64 %i.ty, 1
  %i.uc = or disjoint i64 %i.ub, 1
  %i.ud = trunc nuw i64 %i.ty to i8
  %i.ue = insertelement <16 x i8> poison, i8 %i.ud, i64 0
  %i.uf = shufflevector <16 x i8> %i.ue, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ug = and i64 %.val.i.i.i.i.i, 255            ; 4 uses
  %i.uh = shl nuw i64 1, %i.ug
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cp, %bb.cl
  %.023.i43.i.i.i.i.i = phi i64 [ %i.uh, %bb.cl ], [ %i.uz, %bb.cp ]
  %.025.i42.i.i.i.i.i = phi i64 [ %i.tz, %bb.cl ], [ %i.va, %bb.cp ] ; 2 uses
  %i.ui = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i42.i.i.i.i.i, i64 range(i64 0, 256) %i.ug)
  %i.uj = getelementptr inbounds nuw [192 x i8], ptr %.pre.i.i.i.i.i, i64 %i.ui ; 4 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 112
  call void @llvm.prefetch.p0(ptr nonnull %i.ul, i32 0, i32 3, i32 1), !noalias !1125
  %.val3633.i.i.i.i.i = load <16 x i8>, ptr %i.uj, align 16, !noalias !1125 ; 2 uses
  %i.um = icmp eq <16 x i8> %.val3633.i.i.i.i.i, %i.uf
  %i.un = bitcast <16 x i1> %i.um to i16
  %i.uo = and i16 %i.un, 16383
  %i.up = zext nneg i16 %i.uo to i32
  %i.uq = icmp ne ptr %i.uj, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ur = extractelement <16 x i8> %.val3633.i.i.i.i.i, i64 15
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %bb.cn, %bb.cm
  %.sroa.07.0.i.i.i.i.i = phi i32 [ %i.up, %bb.cm ], [ %i.uu, %bb.cn ] ; 4 uses
  %.not34.i.i.i.i.i = icmp eq i32 %.sroa.07.0.i.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.us = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.07.0.i.i.i.i.i, i1 true)
  %i.ut = add nsw i32 %.sroa.07.0.i.i.i.i.i, -1
  %i.uu = and i32 %i.ut, %.sroa.07.0.i.i.i.i.i
  %i.uv = zext nneg i32 %i.us to i64
  call void @llvm.assume(i1 %i.uq)
  %i.uw = getelementptr inbounds nuw [12 x i8], ptr %i.uk, i64 %i.uv ; 2 uses
  %.val38.i.i.i.i.i = load i8, ptr %i.uw, align 1, !tbaa !149, !range !147, !noalias !1125, !noundef !148
  %i.ux = icmp eq i8 %i.tu, %.val38.i.i.i.i.i
  br i1 %i.ux, label %.loopexit, label %.critedge.i.i.i.i.i.i, !prof !63, !llvm.loop !1100

bb.co:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.uy = icmp eq i8 %i.ur, 0
  br i1 %i.uy, label %.thread31.i.i.i.i.i, label %bb.cp, !prof !63

bb.cp:                                            ; preds = %bb.co
  %i.uz = add i64 %.023.i43.i.i.i.i.i, -1         ; 2 uses
  %i.va = add i64 %i.uc, %.025.i42.i.i.i.i.i
  %.not.i.i.i.i.i.i200 = icmp eq i64 %i.uz, 0
  br i1 %.not.i.i.i.i.i.i200, label %.thread31.i.i.i.i.i, label %bb.cm, !llvm.loop !1101

.thread31.i.i.i.i.i:                              ; preds = %bb.cp, %bb.co, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i
  %.pre-phi51.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIbEET_i.exit.i ], [ %i.ug, %bb.co ], [ %i.ug, %bb.cp ] ; 3 uses
  %i.vb = getelementptr i8, ptr %.pre.i.i.i.i.i, i64 14
  %.val.i.i.i.i.i.i = load i8, ptr %i.vb, align 1, !tbaa !94, !noalias !1125
  %i.vc = and i8 %.val.i.i.i.i.i.i, 15
  %i.vd = zext nneg i8 %i.vc to i64               ; 2 uses
  %i.ve = shl i64 %i.vd, %.pre-phi51.i.i.i.i.i    ; 2 uses
  %.not.i45.i.i.i.i.i = icmp ult i64 %i.ua, %i.ve
  br i1 %.not.i45.i.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %.thread31.i.i.i.i.i
  %i.vf = shl nuw i64 1, %.pre-phi51.i.i.i.i.i
  invoke fastcc void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %i.ua, i64 noundef %i.vf, i64 noundef %i.vd, i64 noundef %i.ve)
          to label %.noexc201 unwind label %bb.cg

.noexc201:                                        ; preds = %bb.cq
  %.pre47.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !287, !noalias !1125
  %.val35.pre.i.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294, !noalias !1125
  %.pre49.i.i.i.i.i = and i64 %.val35.pre.i.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i: ; preds = %.noexc201, %.thread31.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre-phi51.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre49.i.i.i.i.i, %.noexc201 ] ; 2 uses
  %i.vg = phi ptr [ %.pre.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre47.i.i.i.i.i, %.noexc201 ] ; 3 uses
  %i.vh = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.tz, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.vi = getelementptr inbounds nuw [192 x i8], ptr %i.vg, i64 %i.vh ; 2 uses
  %.val4435.i.i.i.i.i = load <16 x i8>, ptr %i.vi, align 16, !tbaa !94, !noalias !1125
  %i.vj = icmp slt <16 x i8> %.val4435.i.i.i.i.i, zeroinitializer
  %i.vk = bitcast <16 x i1> %i.vj to i16
  %i.vl = and i16 %i.vk, 16383                    ; 2 uses
  %.not36.i.i.i.i.i = icmp eq i16 %i.vl, 16383
  br i1 %.not36.i.i.i.i.i, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %i.vm = shl nuw nsw i64 %i.ty, 1
  %i.vn = or disjoint i64 %i.vm, 1
  br label %bb.cs

bb.cs:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, %bb.cr
  %i.vo = phi i64 [ %i.vh, %bb.cr ], [ %i.vu, %_ZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %.030.i.i.i.i.i = phi i64 [ %i.tz, %bb.cr ], [ %i.vt, %_ZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %i.vp = getelementptr inbounds nuw [192 x i8], ptr %i.vg, i64 %i.vo
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 15 ; 2 uses
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !298, !noalias !1125 ; 2 uses
  %.not.i46.i.i.i.i.i = icmp eq i8 %i.vr, -2
  br i1 %.not.i46.i.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.vs = add i8 %i.vr, 1
  store i8 %i.vs, ptr %i.vq, align 1, !tbaa !298, !noalias !1125
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i

_ZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i: ; preds = %bb.ct, %bb.cs
  %i.vt = add i64 %i.vn, %.030.i.i.i.i.i          ; 2 uses
  %i.vu = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.vt, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.vv = getelementptr inbounds nuw [192 x i8], ptr %i.vg, i64 %i.vu ; 3 uses
  %.val4337.i.i.i.i.i = load <16 x i8>, ptr %i.vv, align 16, !noalias !1125 ; 2 uses
  %i.vw = icmp slt <16 x i8> %.val4337.i.i.i.i.i, zeroinitializer
  %i.vx = bitcast <16 x i1> %i.vw to i16
  %i.vy = and i16 %i.vx, 16383                    ; 2 uses
  %.not38.i.i.i.i.i = icmp eq i16 %i.vy, 16383
  br i1 %.not38.i.i.i.i.i, label %bb.cs, label %bb.cu, !llvm.loop !1102

bb.cu:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i
  %i.vz = extractelement <16 x i8> %.val4337.i.i.i.i.i, i64 14
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vv, i64 14
  %i.wb = add i8 %i.vz, 16
  store i8 %i.wb, ptr %i.wa, align 2, !tbaa !299, !noalias !1125
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %.sroa.02.0.in.in.i.i.i.i.i = phi i16 [ %i.vl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.vy, %bb.cu ]
  %.1.i.i.i.i.i = phi ptr [ %i.vi, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.vv, %bb.cu ] ; 3 uses
  %.sroa.02.0.in.i.i.i.i.i = xor i16 %.sroa.02.0.in.in.i.i.i.i.i, 16383
  %i.wc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.02.0.in.i.i.i.i.i, i1 true)
  %i.wd = zext nneg i16 %i.wc to i64              ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 %i.wd ; 2 uses
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !94, !noalias !1125
  %i.wg = icmp eq i8 %i.wf, 0
  br i1 %i.wg, label %_ZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.14) #44, !noalias !1125
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i: ; preds = %bb.cv
  %i.wh = trunc nuw i64 %i.ty to i8
  store i8 %i.wh, ptr %i.we, align 1, !tbaa !94, !noalias !1125
  %i.wi = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 16
  %i.wj = getelementptr inbounds nuw [12 x i8], ptr %i.wi, i64 %i.wd ; 4 uses
  %i.wk = icmp ne ptr %.1.i.i.i.i.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.wk)
  store i8 %i.tu, ptr %i.wj, align 4, !tbaa !302, !noalias !1125
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wj, i64 4
  store i64 0, ptr %i.wl, align 4, !noalias !1125
  %i.wm = lshr i64 %i.wd, 2
  %i.wn = ptrtoint ptr %i.wj to i64
  %i.wo = or i64 %i.wm, %i.wn                     ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.km, align 8, !tbaa !1124, !noalias !1125
  %i.wp = icmp ult i64 %.val2.i.i.i.i.i.i.i, %i.wo
  %.pre428 = load ptr, ptr %12, align 8, !tbaa !236 ; 2 uses
  br i1 %i.wp, label %bb.cx, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJObEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

bb.cx:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  store i64 %i.wo, ptr %i.km, align 8, !tbaa !80, !noalias !1125
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJObEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJObEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i: ; preds = %bb.cx, %_ZN5folly3f146detail8F14ChunkISt4pairIKbN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294, !noalias !1125 ; 2 uses
  %i.wq = and i64 %.val.i.i.i.i.i.i.i.i, -256
  %i.wr = add i64 %i.wq, 256
  %i.ws = and i64 %.val.i.i.i.i.i.i.i.i, 255
  %i.wt = or disjoint i64 %i.wr, %i.ws
  store i64 %i.wt, ptr %i.kj, align 8, !tbaa !294, !noalias !1125
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cn, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJObEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i
  %.pre429437 = phi ptr [ %.pre428, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJObEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %.pre429436, %bb.cn ] ; 2 uses
  %i.wu = phi ptr [ %.pre428, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJObEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %i.rl, %bb.cn ] ; 2 uses
  %.lcssa59.sink.i.i.i.i.i = phi ptr [ %i.wj, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIbN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJObEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKbS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %i.uw, %bb.cn ] ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 4
  store i32 %i.tl, ptr %i.wv, align 4, !tbaa !122
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 8
  store i8 %i.rc, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !94
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next403, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge364.loopexit, label %bb.cb, !llvm.loop !1103

_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIbE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE0EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit: ; preds = %.critedge.i.i.i, %._crit_edge367
  %.0 = phi i32 [ 0, %._crit_edge367 ], [ %i.pa, %.critedge.i.i.i ] ; 2 uses
  %i.ww = load ptr, ptr %13, align 8, !tbaa !287  ; 4 uses
  %i.wx = getelementptr i8, ptr %i.ww, i64 15
  %.val24.i.i.i.i = load i8, ptr %i.wx, align 1, !tbaa !305
  %i.wy = icmp eq i8 %.val24.i.i.i.i, -1
  br i1 %i.wy, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIbE5clearEv.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIbE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE0EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit
  %.val23.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294 ; 4 uses
  %i.wz = and i64 %.val23.i.i.i.i, 252
  %.not.i.i.i.i202 = icmp eq i64 %i.wz, 0         ; 2 uses
  %i.xa = getelementptr i8, ptr %i.ww, i64 14
  %.val.i.i.i.i.i203 = load i8, ptr %i.xa, align 1, !tbaa !94
  %i.xb = and i8 %.val.i.i.i.i.i203, 15
  %i.xc = icmp ult i64 %.val23.i.i.i.i, 256
  br i1 %i.xc, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  br i1 %.not.i.i.i.i202, label %.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.cz
  %.pre.i.i.i.i = and i64 %.val23.i.i.i.i, 255
  br label %bb.db

bb.da:                                            ; preds = %.preheader.i.i.i.i
  %i.xd = load ptr, ptr %13, align 8, !tbaa !287  ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 14
  store i8 %i.xb, ptr %i.xe, align 2, !tbaa !299
  br label %bb.db

.preheader.i.i.i.i:                               ; preds = %bb.cz, %.preheader.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %i.xh, %.preheader.i.i.i.i ], [ 0, %bb.cz ] ; 2 uses
  %i.xf = load ptr, ptr %13, align 8, !tbaa !287
  %i.xg = getelementptr inbounds nuw [192 x i8], ptr %i.xf, i64 %.029.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.xg, i8 0, i64 16, i1 false)
  %i.xh = add nuw i64 %.029.i.i.i.i, 1            ; 2 uses
  %.val22.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294
  %i.xi = and i64 %.val22.i.i.i.i, 255            ; 2 uses
  %.0.highbits.i.i.i.i = lshr i64 %i.xh, %i.xi
  %i.xj = icmp eq i64 %.0.highbits.i.i.i.i, 0
  br i1 %i.xj, label %.preheader.i.i.i.i, label %bb.da, !llvm.loop !1104

bb.db:                                            ; preds = %bb.da, %._crit_edge.i.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.xi, %bb.da ] ; 2 uses
  %i.xk = phi ptr [ %i.ww, %._crit_edge.i.i.i.i ], [ %i.xd, %bb.da ]
  store i64 0, ptr %i.km, align 8, !tbaa !80
  store i64 %.pre-phi.i.i.i.i, ptr %i.kj, align 8, !tbaa !294
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cy
  %.val21.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i, %bb.db ], [ %.val23.i.i.i.i, %bb.cy ] ; 2 uses
  %i.xl = phi ptr [ %i.xk, %bb.db ], [ %i.ww, %bb.cy ] ; 2 uses
  br i1 %.not.i.i.i.i202, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIbE5clearEv.exit, label %bb.dd
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE3EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE:bb.a
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit196

_ZNK8facebook5velox13DecodedVector5indexEi.exit196: ; preds = %.lr.ph366, %bb.ca, %bb.bz, %bb.bx
  %i.qq = phi ptr [ %i.qd, %bb.ca ], [ %i.qd, %bb.bx ], [ %i.qd, %bb.bz ], [ %1, %.lr.ph366 ] ; 2 uses
  %i.qr = phi i32 [ %i.qp, %bb.ca ], [ %i.li, %bb.bx ], [ %i.ql, %bb.bz ], [ %i.li, %.lr.ph366 ]
  %i.qs = sext i32 %i.qr to i64                   ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 120
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !200
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.qu, i64 %i.qs
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !122 ; 2 uses
  %i.qx = icmp sgt i32 %i.qw, 0
  br i1 %i.qx, label %.lr.ph363, label %._crit_edge364

.lr.ph363:                                        ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit196
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qq, i64 104
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !201
  %i.ra = getelementptr inbounds [4 x i8], ptr %i.qz, i64 %i.qs
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !122
  %i.rc = trunc i64 %indvars.iv405 to i8
  %i.rd = sext i32 %i.rb to i64
  %wide.trip.count = zext nneg i32 %i.qw to i64
  br label %bb.cb

._crit_edge364.loopexit:                          ; preds = %.loopexit
  %.pre431 = load ptr, ptr %i.is, align 8, !tbaa !237
  br label %._crit_edge364

._crit_edge364:                                   ; preds = %._crit_edge364.loopexit, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196
  %.pre429435 = phi ptr [ %.pre429437, %._crit_edge364.loopexit ], [ %.pre429, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196 ]
  %i.re = phi ptr [ %i.wp, %._crit_edge364.loopexit ], [ %i.px, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196 ] ; 2 uses
  %i.rf = phi ptr [ %.pre431, %._crit_edge364.loopexit ], [ %i.py, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196 ] ; 2 uses
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 1 ; 2 uses
  %i.rg = ptrtoint ptr %i.rf to i64
  %i.rh = ptrtoint ptr %i.re to i64
  %i.ri = sub i64 %i.rg, %i.rh
  %i.rj = sdiv exact i64 %i.ri, 120
  %i.rk = icmp ugt i64 %i.rj, %indvars.iv.next406
  br i1 %i.rk, label %.lr.ph366, label %._crit_edge367, !llvm.loop !1156

bb.cb:                                            ; preds = %.lr.ph363, %.loopexit
  %.pre429436 = phi ptr [ %.pre429, %.lr.ph363 ], [ %.pre429437, %.loopexit ]
  %i.rl = phi ptr [ %.pre429, %.lr.ph363 ], [ %i.wp, %.loopexit ] ; 2 uses
  %indvars.iv402 = phi i64 [ 0, %.lr.ph363 ], [ %indvars.iv.next403, %.loopexit ] ; 2 uses
  %i.rm = add nsw i64 %indvars.iv402, %i.rd       ; 6 uses
  %i.rn = getelementptr inbounds nuw [120 x i8], ptr %i.rl, i64 %indvars.iv405 ; 10 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 24
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !185 ; 4 uses
  %.not.i197 = icmp eq ptr %i.rp, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.rn, i64 58
  %.pre430 = load i8, ptr %.phi.trans.insert, align 2, !tbaa !162, !range !147 ; 2 uses
  br i1 %.not.i197, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.rq = trunc nuw i8 %.pre430 to i1
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rn, i64 57
  %i.rs = load i8, ptr %i.rr, align 1, !range !147
  %i.rt = trunc nuw i8 %i.rs to i1
  %or.cond.i = select i1 %i.rq, i1 true, i1 %i.rt
  br i1 %or.cond.i, label %.split, label %bb.cd

.split:                                           ; preds = %bb.cc
  %i.ru = lshr i64 %i.rm, 6
  %i.rv = and i64 %i.ru, 67108863
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %i.rv
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !80
  %i.ry = and i64 %i.rm, 63
  %i.rz = shl nuw i64 1, %i.ry
  %i.sa = and i64 %i.rx, %i.rz
  %.not.i.i199 = icmp eq i64 %i.sa, 0
  br i1 %.not.i.i199, label %bb.ce, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, !prof !292

bb.cd:                                            ; preds = %bb.cc
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rn, i64 59
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !186, !range !147, !noundef !148
  %i.sd = trunc nuw i8 %i.sc to i1
  br i1 %i.sd, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %.split317

.split317:                                        ; preds = %bb.cd
  %i.se = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !172
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.rm
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !122
  %i.si = zext i32 %i.sh to i64                   ; 2 uses
  %i.sj = lshr i64 %i.si, 6
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %i.sj
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !80
  %i.sm = and i64 %i.si, 63
  %i.sn = shl nuw i64 1, %i.sm
  %i.so = and i64 %i.sn, %i.sl
  %.not.i7.i = icmp eq i64 %i.so, 0
  br i1 %.not.i7.i, label %bb.ce, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !292

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.cd
  %i.sp = load i64, ptr %i.rp, align 8, !tbaa !80
  %i.sq = and i64 %i.sp, 1
  %.not.i6.i = icmp eq i64 %i.sq, 0
  br i1 %.not.i6.i, label %bb.ce, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !292

bb.ce:                                            ; preds = %.split317, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE3EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.142) #38
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  unreachable

bb.cg:                                            ; preds = %bb.cq
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.ch:                                            ; preds = %bb.ce
  %i.ss = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread: ; preds = %.split317, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.st = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !293
  %i.sv = trunc nsw i64 %i.rm to i32
  br label %bb.ci

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.cb, %.split
  %i.sw = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !293 ; 2 uses
  %i.sy = trunc nuw i8 %.pre430 to i1
  %i.sz = trunc nsw i64 %i.rm to i32              ; 3 uses
  br i1 %i.sy, label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i, label %bb.ci

bb.ci:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.ta = phi i32 [ %i.sv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.sz, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.tb = phi ptr [ %i.su, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.sx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.rn, i64 59
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !186, !range !147, !noundef !148
  %i.te = trunc nuw i8 %i.td to i1
  br i1 %i.te, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.tf = getelementptr inbounds nuw i8, ptr %i.rn, i64 64
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !187
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i

bb.ck:                                            ; preds = %bb.ci
  %i.th = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !172
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %i.rm
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !122
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i: ; preds = %bb.ck, %bb.cj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.tl = phi i32 [ %i.ta, %bb.ck ], [ %i.ta, %bb.cj ], [ %i.sz, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.tm = phi ptr [ %i.tb, %bb.ck ], [ %i.tb, %bb.cj ], [ %i.sx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %.0.i.i.i = phi i32 [ %i.tk, %bb.ck ], [ %i.tg, %bb.cj ], [ %i.sz, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.tn = sext i32 %.0.i.i.i to i64
  %i.to = getelementptr inbounds [4 x i8], ptr %i.tm, i64 %i.tn
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !122 ; 3 uses
  %i.tq = sext i32 %i.tp to i64                   ; 2 uses
  %i.tr = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.tq) ; 2 uses
  %i.ts = lshr i64 %i.tr, 24
  %i.tt = or i64 %i.ts, 128                       ; 4 uses
  %i.tu = add nsw i64 %i.tr, %i.tq                ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294, !noalias !1188 ; 3 uses
  %i.tv = lshr i64 %.val.i.i.i.i.i, 8             ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.tv, 0
  %.pre.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !311, !noalias !1188 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.thread31.i.i.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i
  %i.tw = shl nuw nsw i64 %i.tt, 1
  %i.tx = or disjoint i64 %i.tw, 1
  %i.ty = trunc nuw i64 %i.tt to i8
  %i.tz = insertelement <16 x i8> poison, i8 %i.ty, i64 0
  %i.ua = shufflevector <16 x i8> %i.tz, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ub = and i64 %.val.i.i.i.i.i, 255            ; 4 uses
  %i.uc = shl nuw i64 1, %i.ub
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cp, %bb.cl
  %.023.i43.i.i.i.i.i = phi i64 [ %i.uc, %bb.cl ], [ %i.uu, %bb.cp ]
  %.025.i42.i.i.i.i.i = phi i64 [ %i.tu, %bb.cl ], [ %i.uv, %bb.cp ] ; 2 uses
  %i.ud = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i42.i.i.i.i.i, i64 range(i64 0, 256) %i.ub)
  %i.ue = getelementptr inbounds nuw [192 x i8], ptr %.pre.i.i.i.i.i, i64 %i.ud ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 112
  call void @llvm.prefetch.p0(ptr nonnull %i.ug, i32 0, i32 3, i32 1), !noalias !1188
  %.val3633.i.i.i.i.i = load <16 x i8>, ptr %i.ue, align 16, !noalias !1188 ; 2 uses
  %i.uh = icmp eq <16 x i8> %.val3633.i.i.i.i.i, %i.ua
  %i.ui = bitcast <16 x i1> %i.uh to i16
  %i.uj = and i16 %i.ui, 16383
  %i.uk = zext nneg i16 %i.uj to i32
  %i.ul = icmp ne ptr %i.ue, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.um = extractelement <16 x i8> %.val3633.i.i.i.i.i, i64 15
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %bb.cn, %bb.cm
  %.sroa.07.0.i.i.i.i.i = phi i32 [ %i.uk, %bb.cm ], [ %i.up, %bb.cn ] ; 4 uses
  %.not34.i.i.i.i.i = icmp eq i32 %.sroa.07.0.i.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.un = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.07.0.i.i.i.i.i, i1 true)
  %i.uo = add nsw i32 %.sroa.07.0.i.i.i.i.i, -1
  %i.up = and i32 %i.uo, %.sroa.07.0.i.i.i.i.i
  %i.uq = zext nneg i32 %i.un to i64
  call void @llvm.assume(i1 %i.ul)
  %i.ur = getelementptr inbounds nuw [12 x i8], ptr %i.uf, i64 %i.uq ; 2 uses
  %.val38.i.i.i.i.i = load i32, ptr %i.ur, align 4, !tbaa !122, !noalias !1188
  %i.us = icmp eq i32 %i.tp, %.val38.i.i.i.i.i
  br i1 %i.us, label %.loopexit, label %.critedge.i.i.i.i.i.i, !prof !63, !llvm.loop !1163

bb.co:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.ut = icmp eq i8 %i.um, 0
  br i1 %i.ut, label %.thread31.i.i.i.i.i, label %bb.cp, !prof !63

bb.cp:                                            ; preds = %bb.co
  %i.uu = add i64 %.023.i43.i.i.i.i.i, -1         ; 2 uses
  %i.uv = add i64 %i.tx, %.025.i42.i.i.i.i.i
  %.not.i.i.i.i.i.i200 = icmp eq i64 %i.uu, 0
  br i1 %.not.i.i.i.i.i.i200, label %.thread31.i.i.i.i.i, label %bb.cm, !llvm.loop !1164

.thread31.i.i.i.i.i:                              ; preds = %bb.cp, %bb.co, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i
  %.pre-phi51.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIiEET_i.exit.i ], [ %i.ub, %bb.co ], [ %i.ub, %bb.cp ] ; 3 uses
  %i.uw = getelementptr i8, ptr %.pre.i.i.i.i.i, i64 14
  %.val.i.i.i.i.i.i = load i8, ptr %i.uw, align 1, !tbaa !94, !noalias !1188
  %i.ux = and i8 %.val.i.i.i.i.i.i, 15
  %i.uy = zext nneg i8 %i.ux to i64               ; 2 uses
  %i.uz = shl i64 %i.uy, %.pre-phi51.i.i.i.i.i    ; 2 uses
  %.not.i45.i.i.i.i.i = icmp ult i64 %i.tv, %i.uz
  br i1 %.not.i45.i.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %.thread31.i.i.i.i.i
  %i.va = shl nuw i64 1, %.pre-phi51.i.i.i.i.i
  invoke fastcc void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %i.tv, i64 noundef %i.va, i64 noundef %i.uy, i64 noundef %i.uz)
          to label %.noexc201 unwind label %bb.cg

.noexc201:                                        ; preds = %bb.cq
  %.pre47.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !311, !noalias !1188
  %.val35.pre.i.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294, !noalias !1188
  %.pre49.i.i.i.i.i = and i64 %.val35.pre.i.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i: ; preds = %.noexc201, %.thread31.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre-phi51.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre49.i.i.i.i.i, %.noexc201 ] ; 2 uses
  %i.vb = phi ptr [ %.pre.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre47.i.i.i.i.i, %.noexc201 ] ; 3 uses
  %i.vc = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.tu, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.vd = getelementptr inbounds nuw [192 x i8], ptr %i.vb, i64 %i.vc ; 2 uses
  %.val4435.i.i.i.i.i = load <16 x i8>, ptr %i.vd, align 16, !tbaa !94, !noalias !1188
  %i.ve = icmp slt <16 x i8> %.val4435.i.i.i.i.i, zeroinitializer
  %i.vf = bitcast <16 x i1> %i.ve to i16
  %i.vg = and i16 %i.vf, 16383                    ; 2 uses
  %.not36.i.i.i.i.i = icmp eq i16 %i.vg, 16383
  br i1 %.not36.i.i.i.i.i, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %i.vh = shl nuw nsw i64 %i.tt, 1
  %i.vi = or disjoint i64 %i.vh, 1
  br label %bb.cs

bb.cs:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, %bb.cr
  %i.vj = phi i64 [ %i.vc, %bb.cr ], [ %i.vp, %_ZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %.030.i.i.i.i.i = phi i64 [ %i.tu, %bb.cr ], [ %i.vo, %_ZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %i.vk = getelementptr inbounds nuw [192 x i8], ptr %i.vb, i64 %i.vj
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 15 ; 2 uses
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !313, !noalias !1188 ; 2 uses
  %.not.i46.i.i.i.i.i = icmp eq i8 %i.vm, -2
  br i1 %.not.i46.i.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.vn = add i8 %i.vm, 1
  store i8 %i.vn, ptr %i.vl, align 1, !tbaa !313, !noalias !1188
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i

_ZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i: ; preds = %bb.ct, %bb.cs
  %i.vo = add i64 %i.vi, %.030.i.i.i.i.i          ; 2 uses
  %i.vp = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.vo, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.vq = getelementptr inbounds nuw [192 x i8], ptr %i.vb, i64 %i.vp ; 3 uses
  %.val4337.i.i.i.i.i = load <16 x i8>, ptr %i.vq, align 16, !noalias !1188 ; 2 uses
  %i.vr = icmp slt <16 x i8> %.val4337.i.i.i.i.i, zeroinitializer
  %i.vs = bitcast <16 x i1> %i.vr to i16
  %i.vt = and i16 %i.vs, 16383                    ; 2 uses
  %.not38.i.i.i.i.i = icmp eq i16 %i.vt, 16383
  br i1 %.not38.i.i.i.i.i, label %bb.cs, label %bb.cu, !llvm.loop !1165

bb.cu:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i
  %i.vu = extractelement <16 x i8> %.val4337.i.i.i.i.i, i64 14
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vq, i64 14
  %i.vw = add i8 %i.vu, 16
  store i8 %i.vw, ptr %i.vv, align 2, !tbaa !314, !noalias !1188
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %.sroa.02.0.in.in.i.i.i.i.i = phi i16 [ %i.vg, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.vt, %bb.cu ]
  %.1.i.i.i.i.i = phi ptr [ %i.vd, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.vq, %bb.cu ] ; 3 uses
  %.sroa.02.0.in.i.i.i.i.i = xor i16 %.sroa.02.0.in.in.i.i.i.i.i, 16383
  %i.vx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.02.0.in.i.i.i.i.i, i1 true)
  %i.vy = zext nneg i16 %i.vx to i64              ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 %i.vy ; 2 uses
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !94, !noalias !1188
  %i.wb = icmp eq i8 %i.wa, 0
  br i1 %i.wb, label %_ZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.14) #44, !noalias !1188
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i: ; preds = %bb.cv
  %i.wc = trunc nuw i64 %i.tt to i8
  store i8 %i.wc, ptr %i.vz, align 1, !tbaa !94, !noalias !1188
  %i.wd = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 16
  %i.we = getelementptr inbounds nuw [12 x i8], ptr %i.wd, i64 %i.vy ; 4 uses
  %i.wf = icmp ne ptr %.1.i.i.i.i.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.wf)
  store i32 %i.tp, ptr %i.we, align 4, !tbaa !316, !noalias !1188
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 4
  store i64 0, ptr %i.wg, align 4, !noalias !1188
  %i.wh = lshr i64 %i.vy, 2
  %i.wi = ptrtoint ptr %i.we to i64
  %i.wj = or i64 %i.wh, %i.wi                     ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.km, align 8, !tbaa !1187, !noalias !1188
  %i.wk = icmp ult i64 %.val2.i.i.i.i.i.i.i, %i.wj
  %.pre428 = load ptr, ptr %12, align 8, !tbaa !236 ; 2 uses
  br i1 %i.wk, label %bb.cx, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKiS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

bb.cx:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  store i64 %i.wj, ptr %i.km, align 8, !tbaa !80, !noalias !1188
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKiS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKiS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i: ; preds = %bb.cx, %_ZN5folly3f146detail8F14ChunkISt4pairIKiN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294, !noalias !1188 ; 2 uses
  %i.wl = and i64 %.val.i.i.i.i.i.i.i.i, -256
  %i.wm = add i64 %i.wl, 256
  %i.wn = and i64 %.val.i.i.i.i.i.i.i.i, 255
  %i.wo = or disjoint i64 %i.wm, %i.wn
  store i64 %i.wo, ptr %i.kj, align 8, !tbaa !294, !noalias !1188
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cn, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKiS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i
  %.pre429437 = phi ptr [ %.pre428, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKiS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %.pre429436, %bb.cn ] ; 2 uses
  %i.wp = phi ptr [ %.pre428, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKiS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %i.rl, %bb.cn ] ; 2 uses
  %.lcssa59.sink.i.i.i.i.i = phi ptr [ %i.we, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIiN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKiS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %i.ur, %bb.cn ] ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 4
  store i32 %i.tl, ptr %i.wq, align 4, !tbaa !122
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 8
  store i8 %i.rc, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !94
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next403, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge364.loopexit, label %bb.cb, !llvm.loop !1166

_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIiE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE3EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit: ; preds = %.critedge.i.i.i, %._crit_edge367
  %.0 = phi i32 [ 0, %._crit_edge367 ], [ %i.pa, %.critedge.i.i.i ] ; 2 uses
  %i.wr = load ptr, ptr %13, align 8, !tbaa !311  ; 4 uses
  %i.ws = getelementptr i8, ptr %i.wr, i64 15
  %.val24.i.i.i.i = load i8, ptr %i.ws, align 1, !tbaa !305
  %i.wt = icmp eq i8 %.val24.i.i.i.i, -1
  br i1 %i.wt, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIiE5clearEv.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIiE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE3EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit
  %.val23.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294 ; 4 uses
  %i.wu = and i64 %.val23.i.i.i.i, 252
  %.not.i.i.i.i202 = icmp eq i64 %i.wu, 0         ; 2 uses
  %i.wv = getelementptr i8, ptr %i.wr, i64 14
  %.val.i.i.i.i.i203 = load i8, ptr %i.wv, align 1, !tbaa !94
  %i.ww = and i8 %.val.i.i.i.i.i203, 15
  %i.wx = icmp ult i64 %.val23.i.i.i.i, 256
  br i1 %i.wx, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  br i1 %.not.i.i.i.i202, label %.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.cz
  %.pre.i.i.i.i = and i64 %.val23.i.i.i.i, 255
  br label %bb.db

bb.da:                                            ; preds = %.preheader.i.i.i.i
  %i.wy = load ptr, ptr %13, align 8, !tbaa !311  ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 14
  store i8 %i.ww, ptr %i.wz, align 2, !tbaa !314
  br label %bb.db

.preheader.i.i.i.i:                               ; preds = %bb.cz, %.preheader.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %i.xc, %.preheader.i.i.i.i ], [ 0, %bb.cz ] ; 2 uses
  %i.xa = load ptr, ptr %13, align 8, !tbaa !311
  %i.xb = getelementptr inbounds nuw [192 x i8], ptr %i.xa, i64 %.029.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.xb, i8 0, i64 16, i1 false)
  %i.xc = add nuw i64 %.029.i.i.i.i, 1            ; 2 uses
  %.val22.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294
  %i.xd = and i64 %.val22.i.i.i.i, 255            ; 2 uses
  %.0.highbits.i.i.i.i = lshr i64 %i.xc, %i.xd
  %i.xe = icmp eq i64 %.0.highbits.i.i.i.i, 0
  br i1 %i.xe, label %.preheader.i.i.i.i, label %bb.da, !llvm.loop !1167

bb.db:                                            ; preds = %bb.da, %._crit_edge.i.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.xd, %bb.da ] ; 2 uses
  %i.xf = phi ptr [ %i.wr, %._crit_edge.i.i.i.i ], [ %i.wy, %bb.da ]
  store i64 0, ptr %i.km, align 8, !tbaa !80
  store i64 %.pre-phi.i.i.i.i, ptr %i.kj, align 8, !tbaa !294
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cy
  %.val21.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i, %bb.db ], [ %.val23.i.i.i.i, %bb.cy ] ; 2 uses
  %i.xg = phi ptr [ %i.xf, %bb.db ], [ %i.wr, %bb.cy ] ; 2 uses
  br i1 %.not.i.i.i.i202, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIiE5clearEv.exit, label %bb.dd
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE1EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE:bb.a
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit196

_ZNK8facebook5velox13DecodedVector5indexEi.exit196: ; preds = %.lr.ph366, %bb.ca, %bb.bz, %bb.bx
  %i.qq = phi ptr [ %i.qd, %bb.ca ], [ %i.qd, %bb.bx ], [ %i.qd, %bb.bz ], [ %1, %.lr.ph366 ] ; 2 uses
  %i.qr = phi i32 [ %i.qp, %bb.ca ], [ %i.li, %bb.bx ], [ %i.ql, %bb.bz ], [ %i.li, %.lr.ph366 ]
  %i.qs = sext i32 %i.qr to i64                   ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 120
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !200
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.qu, i64 %i.qs
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !122 ; 2 uses
  %i.qx = icmp sgt i32 %i.qw, 0
  br i1 %i.qx, label %.lr.ph363, label %._crit_edge364

.lr.ph363:                                        ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit196
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qq, i64 104
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !201
  %i.ra = getelementptr inbounds [4 x i8], ptr %i.qz, i64 %i.qs
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !122
  %i.rc = trunc i64 %indvars.iv405 to i8
  %i.rd = sext i32 %i.rb to i64
  %wide.trip.count = zext nneg i32 %i.qw to i64
  br label %bb.cb

._crit_edge364.loopexit:                          ; preds = %.loopexit
  %.pre431 = load ptr, ptr %i.is, align 8, !tbaa !237
  br label %._crit_edge364

._crit_edge364:                                   ; preds = %._crit_edge364.loopexit, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196
  %.pre429435 = phi ptr [ %.pre429437, %._crit_edge364.loopexit ], [ %.pre429, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196 ]
  %i.re = phi ptr [ %i.wp, %._crit_edge364.loopexit ], [ %i.px, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196 ] ; 2 uses
  %i.rf = phi ptr [ %.pre431, %._crit_edge364.loopexit ], [ %i.py, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196 ] ; 2 uses
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 1 ; 2 uses
  %i.rg = ptrtoint ptr %i.rf to i64
  %i.rh = ptrtoint ptr %i.re to i64
  %i.ri = sub i64 %i.rg, %i.rh
  %i.rj = sdiv exact i64 %i.ri, 120
  %i.rk = icmp ugt i64 %i.rj, %indvars.iv.next406
  br i1 %i.rk, label %.lr.ph366, label %._crit_edge367, !llvm.loop !1219

bb.cb:                                            ; preds = %.lr.ph363, %.loopexit
  %.pre429436 = phi ptr [ %.pre429, %.lr.ph363 ], [ %.pre429437, %.loopexit ]
  %i.rl = phi ptr [ %.pre429, %.lr.ph363 ], [ %i.wp, %.loopexit ] ; 2 uses
  %indvars.iv402 = phi i64 [ 0, %.lr.ph363 ], [ %indvars.iv.next403, %.loopexit ] ; 2 uses
  %i.rm = add nsw i64 %indvars.iv402, %i.rd       ; 6 uses
  %i.rn = getelementptr inbounds nuw [120 x i8], ptr %i.rl, i64 %indvars.iv405 ; 10 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 24
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !185 ; 4 uses
  %.not.i197 = icmp eq ptr %i.rp, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.rn, i64 58
  %.pre430 = load i8, ptr %.phi.trans.insert, align 2, !tbaa !162, !range !147 ; 2 uses
  br i1 %.not.i197, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.rq = trunc nuw i8 %.pre430 to i1
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rn, i64 57
  %i.rs = load i8, ptr %i.rr, align 1, !range !147
  %i.rt = trunc nuw i8 %i.rs to i1
  %or.cond.i = select i1 %i.rq, i1 true, i1 %i.rt
  br i1 %or.cond.i, label %.split, label %bb.cd

.split:                                           ; preds = %bb.cc
  %i.ru = lshr i64 %i.rm, 6
  %i.rv = and i64 %i.ru, 67108863
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %i.rv
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !80
  %i.ry = and i64 %i.rm, 63
  %i.rz = shl nuw i64 1, %i.ry
  %i.sa = and i64 %i.rx, %i.rz
  %.not.i.i199 = icmp eq i64 %i.sa, 0
  br i1 %.not.i.i199, label %bb.ce, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, !prof !292

bb.cd:                                            ; preds = %bb.cc
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rn, i64 59
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !186, !range !147, !noundef !148
  %i.sd = trunc nuw i8 %i.sc to i1
  br i1 %i.sd, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %.split317

.split317:                                        ; preds = %bb.cd
  %i.se = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !172
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.rm
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !122
  %i.si = zext i32 %i.sh to i64                   ; 2 uses
  %i.sj = lshr i64 %i.si, 6
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %i.sj
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !80
  %i.sm = and i64 %i.si, 63
  %i.sn = shl nuw i64 1, %i.sm
  %i.so = and i64 %i.sn, %i.sl
  %.not.i7.i = icmp eq i64 %i.so, 0
  br i1 %.not.i7.i, label %bb.ce, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !292

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.cd
  %i.sp = load i64, ptr %i.rp, align 8, !tbaa !80
  %i.sq = and i64 %i.sp, 1
  %.not.i6.i = icmp eq i64 %i.sq, 0
  br i1 %.not.i6.i, label %bb.ce, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !292

bb.ce:                                            ; preds = %.split317, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE1EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.142) #38
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  unreachable

bb.cg:                                            ; preds = %bb.cq
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.ch:                                            ; preds = %bb.ce
  %i.ss = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread: ; preds = %.split317, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.st = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !293
  %i.sv = trunc nsw i64 %i.rm to i32
  br label %bb.ci

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.cb, %.split
  %i.sw = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !293 ; 2 uses
  %i.sy = trunc nuw i8 %.pre430 to i1
  %i.sz = trunc nsw i64 %i.rm to i32              ; 3 uses
  br i1 %i.sy, label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i, label %bb.ci

bb.ci:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.ta = phi i32 [ %i.sv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.sz, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.tb = phi ptr [ %i.su, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.sx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.rn, i64 59
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !186, !range !147, !noundef !148
  %i.te = trunc nuw i8 %i.td to i1
  br i1 %i.te, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.tf = getelementptr inbounds nuw i8, ptr %i.rn, i64 64
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !187
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i

bb.ck:                                            ; preds = %bb.ci
  %i.th = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !172
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %i.rm
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !122
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i: ; preds = %bb.ck, %bb.cj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.tl = phi i32 [ %i.ta, %bb.ck ], [ %i.ta, %bb.cj ], [ %i.sz, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.tm = phi ptr [ %i.tb, %bb.ck ], [ %i.tb, %bb.cj ], [ %i.sx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %.0.i.i.i = phi i32 [ %i.tk, %bb.ck ], [ %i.tg, %bb.cj ], [ %i.sz, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.tn = sext i32 %.0.i.i.i to i64
  %i.to = getelementptr inbounds i8, ptr %i.tm, i64 %i.tn
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !94  ; 3 uses
  %i.tq = sext i8 %i.tp to i64                    ; 2 uses
  %i.tr = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.tq) ; 2 uses
  %i.ts = lshr i64 %i.tr, 24
  %i.tt = or i64 %i.ts, 128                       ; 4 uses
  %i.tu = add nsw i64 %i.tr, %i.tq                ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294, !noalias !1251 ; 3 uses
  %i.tv = lshr i64 %.val.i.i.i.i.i, 8             ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.tv, 0
  %.pre.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !321, !noalias !1251 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.thread31.i.i.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i
  %i.tw = shl nuw nsw i64 %i.tt, 1
  %i.tx = or disjoint i64 %i.tw, 1
  %i.ty = trunc nuw i64 %i.tt to i8
  %i.tz = insertelement <16 x i8> poison, i8 %i.ty, i64 0
  %i.ua = shufflevector <16 x i8> %i.tz, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ub = and i64 %.val.i.i.i.i.i, 255            ; 4 uses
  %i.uc = shl nuw i64 1, %i.ub
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cp, %bb.cl
  %.023.i43.i.i.i.i.i = phi i64 [ %i.uc, %bb.cl ], [ %i.uu, %bb.cp ]
  %.025.i42.i.i.i.i.i = phi i64 [ %i.tu, %bb.cl ], [ %i.uv, %bb.cp ] ; 2 uses
  %i.ud = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i42.i.i.i.i.i, i64 range(i64 0, 256) %i.ub)
  %i.ue = getelementptr inbounds nuw [192 x i8], ptr %.pre.i.i.i.i.i, i64 %i.ud ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 112
  call void @llvm.prefetch.p0(ptr nonnull %i.ug, i32 0, i32 3, i32 1), !noalias !1251
  %.val3633.i.i.i.i.i = load <16 x i8>, ptr %i.ue, align 16, !noalias !1251 ; 2 uses
  %i.uh = icmp eq <16 x i8> %.val3633.i.i.i.i.i, %i.ua
  %i.ui = bitcast <16 x i1> %i.uh to i16
  %i.uj = and i16 %i.ui, 16383
  %i.uk = zext nneg i16 %i.uj to i32
  %i.ul = icmp ne ptr %i.ue, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.um = extractelement <16 x i8> %.val3633.i.i.i.i.i, i64 15
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %bb.cn, %bb.cm
  %.sroa.07.0.i.i.i.i.i = phi i32 [ %i.uk, %bb.cm ], [ %i.up, %bb.cn ] ; 4 uses
  %.not34.i.i.i.i.i = icmp eq i32 %.sroa.07.0.i.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.un = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.07.0.i.i.i.i.i, i1 true)
  %i.uo = add nsw i32 %.sroa.07.0.i.i.i.i.i, -1
  %i.up = and i32 %i.uo, %.sroa.07.0.i.i.i.i.i
  %i.uq = zext nneg i32 %i.un to i64
  call void @llvm.assume(i1 %i.ul)
  %i.ur = getelementptr inbounds nuw [12 x i8], ptr %i.uf, i64 %i.uq ; 2 uses
  %.val38.i.i.i.i.i = load i8, ptr %i.ur, align 1, !tbaa !94, !noalias !1251
  %i.us = icmp eq i8 %i.tp, %.val38.i.i.i.i.i
  br i1 %i.us, label %.loopexit, label %.critedge.i.i.i.i.i.i, !prof !63, !llvm.loop !1226

bb.co:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.ut = icmp eq i8 %i.um, 0
  br i1 %i.ut, label %.thread31.i.i.i.i.i, label %bb.cp, !prof !63

bb.cp:                                            ; preds = %bb.co
  %i.uu = add i64 %.023.i43.i.i.i.i.i, -1         ; 2 uses
  %i.uv = add i64 %i.tx, %.025.i42.i.i.i.i.i
  %.not.i.i.i.i.i.i200 = icmp eq i64 %i.uu, 0
  br i1 %.not.i.i.i.i.i.i200, label %.thread31.i.i.i.i.i, label %bb.cm, !llvm.loop !1227

.thread31.i.i.i.i.i:                              ; preds = %bb.cp, %bb.co, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i
  %.pre-phi51.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIaEET_i.exit.i ], [ %i.ub, %bb.co ], [ %i.ub, %bb.cp ] ; 3 uses
  %i.uw = getelementptr i8, ptr %.pre.i.i.i.i.i, i64 14
  %.val.i.i.i.i.i.i = load i8, ptr %i.uw, align 1, !tbaa !94, !noalias !1251
  %i.ux = and i8 %.val.i.i.i.i.i.i, 15
  %i.uy = zext nneg i8 %i.ux to i64               ; 2 uses
  %i.uz = shl i64 %i.uy, %.pre-phi51.i.i.i.i.i    ; 2 uses
  %.not.i45.i.i.i.i.i = icmp ult i64 %i.tv, %i.uz
  br i1 %.not.i45.i.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %.thread31.i.i.i.i.i
  %i.va = shl nuw i64 1, %.pre-phi51.i.i.i.i.i
  invoke fastcc void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %i.tv, i64 noundef %i.va, i64 noundef %i.uy, i64 noundef %i.uz)
          to label %.noexc201 unwind label %bb.cg

.noexc201:                                        ; preds = %bb.cq
  %.pre47.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !321, !noalias !1251
  %.val35.pre.i.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294, !noalias !1251
  %.pre49.i.i.i.i.i = and i64 %.val35.pre.i.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i: ; preds = %.noexc201, %.thread31.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre-phi51.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre49.i.i.i.i.i, %.noexc201 ] ; 2 uses
  %i.vb = phi ptr [ %.pre.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre47.i.i.i.i.i, %.noexc201 ] ; 3 uses
  %i.vc = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.tu, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.vd = getelementptr inbounds nuw [192 x i8], ptr %i.vb, i64 %i.vc ; 2 uses
  %.val4435.i.i.i.i.i = load <16 x i8>, ptr %i.vd, align 16, !tbaa !94, !noalias !1251
  %i.ve = icmp slt <16 x i8> %.val4435.i.i.i.i.i, zeroinitializer
  %i.vf = bitcast <16 x i1> %i.ve to i16
  %i.vg = and i16 %i.vf, 16383                    ; 2 uses
  %.not36.i.i.i.i.i = icmp eq i16 %i.vg, 16383
  br i1 %.not36.i.i.i.i.i, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %i.vh = shl nuw nsw i64 %i.tt, 1
  %i.vi = or disjoint i64 %i.vh, 1
  br label %bb.cs

bb.cs:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, %bb.cr
  %i.vj = phi i64 [ %i.vc, %bb.cr ], [ %i.vp, %_ZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %.030.i.i.i.i.i = phi i64 [ %i.tu, %bb.cr ], [ %i.vo, %_ZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %i.vk = getelementptr inbounds nuw [192 x i8], ptr %i.vb, i64 %i.vj
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 15 ; 2 uses
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !323, !noalias !1251 ; 2 uses
  %.not.i46.i.i.i.i.i = icmp eq i8 %i.vm, -2
  br i1 %.not.i46.i.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.vn = add i8 %i.vm, 1
  store i8 %i.vn, ptr %i.vl, align 1, !tbaa !323, !noalias !1251
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i

_ZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i: ; preds = %bb.ct, %bb.cs
  %i.vo = add i64 %i.vi, %.030.i.i.i.i.i          ; 2 uses
  %i.vp = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.vo, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.vq = getelementptr inbounds nuw [192 x i8], ptr %i.vb, i64 %i.vp ; 3 uses
  %.val4337.i.i.i.i.i = load <16 x i8>, ptr %i.vq, align 16, !noalias !1251 ; 2 uses
  %i.vr = icmp slt <16 x i8> %.val4337.i.i.i.i.i, zeroinitializer
  %i.vs = bitcast <16 x i1> %i.vr to i16
  %i.vt = and i16 %i.vs, 16383                    ; 2 uses
  %.not38.i.i.i.i.i = icmp eq i16 %i.vt, 16383
  br i1 %.not38.i.i.i.i.i, label %bb.cs, label %bb.cu, !llvm.loop !1228

bb.cu:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i
  %i.vu = extractelement <16 x i8> %.val4337.i.i.i.i.i, i64 14
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vq, i64 14
  %i.vw = add i8 %i.vu, 16
  store i8 %i.vw, ptr %i.vv, align 2, !tbaa !324, !noalias !1251
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %.sroa.02.0.in.in.i.i.i.i.i = phi i16 [ %i.vg, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.vt, %bb.cu ]
  %.1.i.i.i.i.i = phi ptr [ %i.vd, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.vq, %bb.cu ] ; 3 uses
  %.sroa.02.0.in.i.i.i.i.i = xor i16 %.sroa.02.0.in.in.i.i.i.i.i, 16383
  %i.vx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.02.0.in.i.i.i.i.i, i1 true)
  %i.vy = zext nneg i16 %i.vx to i64              ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 %i.vy ; 2 uses
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !94, !noalias !1251
  %i.wb = icmp eq i8 %i.wa, 0
  br i1 %i.wb, label %_ZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.14) #44, !noalias !1251
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i: ; preds = %bb.cv
  %i.wc = trunc nuw i64 %i.tt to i8
  store i8 %i.wc, ptr %i.vz, align 1, !tbaa !94, !noalias !1251
  %i.wd = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 16
  %i.we = getelementptr inbounds nuw [12 x i8], ptr %i.wd, i64 %i.vy ; 4 uses
  %i.wf = icmp ne ptr %.1.i.i.i.i.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.wf)
  store i8 %i.tp, ptr %i.we, align 4, !tbaa !326, !noalias !1251
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 4
  store i64 0, ptr %i.wg, align 4, !noalias !1251
  %i.wh = lshr i64 %i.vy, 2
  %i.wi = ptrtoint ptr %i.we to i64
  %i.wj = or i64 %i.wh, %i.wi                     ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.km, align 8, !tbaa !1250, !noalias !1251
  %i.wk = icmp ult i64 %.val2.i.i.i.i.i.i.i, %i.wj
  %.pre428 = load ptr, ptr %12, align 8, !tbaa !236 ; 2 uses
  br i1 %i.wk, label %bb.cx, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOaEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKaS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

bb.cx:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  store i64 %i.wj, ptr %i.km, align 8, !tbaa !80, !noalias !1251
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOaEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKaS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOaEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKaS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i: ; preds = %bb.cx, %_ZN5folly3f146detail8F14ChunkISt4pairIKaN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294, !noalias !1251 ; 2 uses
  %i.wl = and i64 %.val.i.i.i.i.i.i.i.i, -256
  %i.wm = add i64 %i.wl, 256
  %i.wn = and i64 %.val.i.i.i.i.i.i.i.i, 255
  %i.wo = or disjoint i64 %i.wm, %i.wn
  store i64 %i.wo, ptr %i.kj, align 8, !tbaa !294, !noalias !1251
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cn, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOaEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKaS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i
  %.pre429437 = phi ptr [ %.pre428, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOaEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKaS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %.pre429436, %bb.cn ] ; 2 uses
  %i.wp = phi ptr [ %.pre428, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOaEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKaS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %i.rl, %bb.cn ] ; 2 uses
  %.lcssa59.sink.i.i.i.i.i = phi ptr [ %i.we, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIaN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOaEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKaS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %i.ur, %bb.cn ] ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 4
  store i32 %i.tl, ptr %i.wq, align 4, !tbaa !122
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 8
  store i8 %i.rc, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !94
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next403, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge364.loopexit, label %bb.cb, !llvm.loop !1229

_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIaE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE1EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit: ; preds = %.critedge.i.i.i, %._crit_edge367
  %.0 = phi i32 [ 0, %._crit_edge367 ], [ %i.pa, %.critedge.i.i.i ] ; 2 uses
  %i.wr = load ptr, ptr %13, align 8, !tbaa !321  ; 4 uses
  %i.ws = getelementptr i8, ptr %i.wr, i64 15
  %.val24.i.i.i.i = load i8, ptr %i.ws, align 1, !tbaa !305
  %i.wt = icmp eq i8 %.val24.i.i.i.i, -1
  br i1 %i.wt, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIaE5clearEv.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIaE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE1EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit
  %.val23.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294 ; 4 uses
  %i.wu = and i64 %.val23.i.i.i.i, 252
  %.not.i.i.i.i202 = icmp eq i64 %i.wu, 0         ; 2 uses
  %i.wv = getelementptr i8, ptr %i.wr, i64 14
  %.val.i.i.i.i.i203 = load i8, ptr %i.wv, align 1, !tbaa !94
  %i.ww = and i8 %.val.i.i.i.i.i203, 15
  %i.wx = icmp ult i64 %.val23.i.i.i.i, 256
  br i1 %i.wx, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  br i1 %.not.i.i.i.i202, label %.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.cz
  %.pre.i.i.i.i = and i64 %.val23.i.i.i.i, 255
  br label %bb.db

bb.da:                                            ; preds = %.preheader.i.i.i.i
  %i.wy = load ptr, ptr %13, align 8, !tbaa !321  ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 14
  store i8 %i.ww, ptr %i.wz, align 2, !tbaa !324
  br label %bb.db

.preheader.i.i.i.i:                               ; preds = %bb.cz, %.preheader.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %i.xc, %.preheader.i.i.i.i ], [ 0, %bb.cz ] ; 2 uses
  %i.xa = load ptr, ptr %13, align 8, !tbaa !321
  %i.xb = getelementptr inbounds nuw [192 x i8], ptr %i.xa, i64 %.029.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.xb, i8 0, i64 16, i1 false)
  %i.xc = add nuw i64 %.029.i.i.i.i, 1            ; 2 uses
  %.val22.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294
  %i.xd = and i64 %.val22.i.i.i.i, 255            ; 2 uses
  %.0.highbits.i.i.i.i = lshr i64 %i.xc, %i.xd
  %i.xe = icmp eq i64 %.0.highbits.i.i.i.i, 0
  br i1 %i.xe, label %.preheader.i.i.i.i, label %bb.da, !llvm.loop !1230

bb.db:                                            ; preds = %bb.da, %._crit_edge.i.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.xd, %bb.da ] ; 2 uses
  %i.xf = phi ptr [ %i.wr, %._crit_edge.i.i.i.i ], [ %i.wy, %bb.da ]
  store i64 0, ptr %i.km, align 8, !tbaa !80
  store i64 %.pre-phi.i.i.i.i, ptr %i.kj, align 8, !tbaa !294
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cy
  %.val21.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i, %bb.db ], [ %.val23.i.i.i.i, %bb.cy ] ; 2 uses
  %i.xg = phi ptr [ %i.xf, %bb.db ], [ %i.wr, %bb.cy ] ; 2 uses
  br i1 %.not.i.i.i.i202, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIaE5clearEv.exit, label %bb.dd
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE2EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE:bb.a
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit196

_ZNK8facebook5velox13DecodedVector5indexEi.exit196: ; preds = %.lr.ph366, %bb.ca, %bb.bz, %bb.bx
  %i.qq = phi ptr [ %i.qd, %bb.ca ], [ %i.qd, %bb.bx ], [ %i.qd, %bb.bz ], [ %1, %.lr.ph366 ] ; 2 uses
  %i.qr = phi i32 [ %i.qp, %bb.ca ], [ %i.li, %bb.bx ], [ %i.ql, %bb.bz ], [ %i.li, %.lr.ph366 ]
  %i.qs = sext i32 %i.qr to i64                   ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 120
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !200
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.qu, i64 %i.qs
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !122 ; 2 uses
  %i.qx = icmp sgt i32 %i.qw, 0
  br i1 %i.qx, label %.lr.ph363, label %._crit_edge364

.lr.ph363:                                        ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit196
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qq, i64 104
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !201
  %i.ra = getelementptr inbounds [4 x i8], ptr %i.qz, i64 %i.qs
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !122
  %i.rc = trunc i64 %indvars.iv405 to i8
  %i.rd = sext i32 %i.rb to i64
  %wide.trip.count = zext nneg i32 %i.qw to i64
  br label %bb.cb

._crit_edge364.loopexit:                          ; preds = %.loopexit
  %.pre431 = load ptr, ptr %i.is, align 8, !tbaa !237
  br label %._crit_edge364

._crit_edge364:                                   ; preds = %._crit_edge364.loopexit, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196
  %.pre429435 = phi ptr [ %.pre429437, %._crit_edge364.loopexit ], [ %.pre429, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196 ]
  %i.re = phi ptr [ %i.wp, %._crit_edge364.loopexit ], [ %i.px, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196 ] ; 2 uses
  %i.rf = phi ptr [ %.pre431, %._crit_edge364.loopexit ], [ %i.py, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196 ] ; 2 uses
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 1 ; 2 uses
  %i.rg = ptrtoint ptr %i.rf to i64
  %i.rh = ptrtoint ptr %i.re to i64
  %i.ri = sub i64 %i.rg, %i.rh
  %i.rj = sdiv exact i64 %i.ri, 120
  %i.rk = icmp ugt i64 %i.rj, %indvars.iv.next406
  br i1 %i.rk, label %.lr.ph366, label %._crit_edge367, !llvm.loop !1282

bb.cb:                                            ; preds = %.lr.ph363, %.loopexit
  %.pre429436 = phi ptr [ %.pre429, %.lr.ph363 ], [ %.pre429437, %.loopexit ]
  %i.rl = phi ptr [ %.pre429, %.lr.ph363 ], [ %i.wp, %.loopexit ] ; 2 uses
  %indvars.iv402 = phi i64 [ 0, %.lr.ph363 ], [ %indvars.iv.next403, %.loopexit ] ; 2 uses
  %i.rm = add nsw i64 %indvars.iv402, %i.rd       ; 6 uses
  %i.rn = getelementptr inbounds nuw [120 x i8], ptr %i.rl, i64 %indvars.iv405 ; 10 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 24
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !185 ; 4 uses
  %.not.i197 = icmp eq ptr %i.rp, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.rn, i64 58
  %.pre430 = load i8, ptr %.phi.trans.insert, align 2, !tbaa !162, !range !147 ; 2 uses
  br i1 %.not.i197, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.rq = trunc nuw i8 %.pre430 to i1
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rn, i64 57
  %i.rs = load i8, ptr %i.rr, align 1, !range !147
  %i.rt = trunc nuw i8 %i.rs to i1
  %or.cond.i = select i1 %i.rq, i1 true, i1 %i.rt
  br i1 %or.cond.i, label %.split, label %bb.cd

.split:                                           ; preds = %bb.cc
  %i.ru = lshr i64 %i.rm, 6
  %i.rv = and i64 %i.ru, 67108863
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %i.rv
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !80
  %i.ry = and i64 %i.rm, 63
  %i.rz = shl nuw i64 1, %i.ry
  %i.sa = and i64 %i.rx, %i.rz
  %.not.i.i199 = icmp eq i64 %i.sa, 0
  br i1 %.not.i.i199, label %bb.ce, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, !prof !292

bb.cd:                                            ; preds = %bb.cc
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rn, i64 59
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !186, !range !147, !noundef !148
  %i.sd = trunc nuw i8 %i.sc to i1
  br i1 %i.sd, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %.split317

.split317:                                        ; preds = %bb.cd
  %i.se = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !172
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.rm
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !122
  %i.si = zext i32 %i.sh to i64                   ; 2 uses
  %i.sj = lshr i64 %i.si, 6
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %i.sj
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !80
  %i.sm = and i64 %i.si, 63
  %i.sn = shl nuw i64 1, %i.sm
  %i.so = and i64 %i.sn, %i.sl
  %.not.i7.i = icmp eq i64 %i.so, 0
  br i1 %.not.i7.i, label %bb.ce, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !292

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.cd
  %i.sp = load i64, ptr %i.rp, align 8, !tbaa !80
  %i.sq = and i64 %i.sp, 1
  %.not.i6.i = icmp eq i64 %i.sq, 0
  br i1 %.not.i6.i, label %bb.ce, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !292

bb.ce:                                            ; preds = %.split317, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE2EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.142) #38
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  unreachable

bb.cg:                                            ; preds = %bb.cq
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.ch:                                            ; preds = %bb.ce
  %i.ss = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread: ; preds = %.split317, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.st = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !293
  %i.sv = trunc nsw i64 %i.rm to i32
  br label %bb.ci

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.cb, %.split
  %i.sw = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !293 ; 2 uses
  %i.sy = trunc nuw i8 %.pre430 to i1
  %i.sz = trunc nsw i64 %i.rm to i32              ; 3 uses
  br i1 %i.sy, label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i, label %bb.ci

bb.ci:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.ta = phi i32 [ %i.sv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.sz, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.tb = phi ptr [ %i.su, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.sx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.rn, i64 59
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !186, !range !147, !noundef !148
  %i.te = trunc nuw i8 %i.td to i1
  br i1 %i.te, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.tf = getelementptr inbounds nuw i8, ptr %i.rn, i64 64
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !187
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i

bb.ck:                                            ; preds = %bb.ci
  %i.th = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !172
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %i.rm
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !122
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i: ; preds = %bb.ck, %bb.cj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.tl = phi i32 [ %i.ta, %bb.ck ], [ %i.ta, %bb.cj ], [ %i.sz, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.tm = phi ptr [ %i.tb, %bb.ck ], [ %i.tb, %bb.cj ], [ %i.sx, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %.0.i.i.i = phi i32 [ %i.tk, %bb.ck ], [ %i.tg, %bb.cj ], [ %i.sz, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.tn = sext i32 %.0.i.i.i to i64
  %i.to = getelementptr inbounds [2 x i8], ptr %i.tm, i64 %i.tn
  %i.tp = load i16, ptr %i.to, align 2, !tbaa !333 ; 3 uses
  %i.tq = sext i16 %i.tp to i64                   ; 2 uses
  %i.tr = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.tq) ; 2 uses
  %i.ts = lshr i64 %i.tr, 24
  %i.tt = or i64 %i.ts, 128                       ; 4 uses
  %i.tu = add nsw i64 %i.tr, %i.tq                ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294, !noalias !1314 ; 3 uses
  %i.tv = lshr i64 %.val.i.i.i.i.i, 8             ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.tv, 0
  %.pre.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !331, !noalias !1314 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.thread31.i.i.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i
  %i.tw = shl nuw nsw i64 %i.tt, 1
  %i.tx = or disjoint i64 %i.tw, 1
  %i.ty = trunc nuw i64 %i.tt to i8
  %i.tz = insertelement <16 x i8> poison, i8 %i.ty, i64 0
  %i.ua = shufflevector <16 x i8> %i.tz, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ub = and i64 %.val.i.i.i.i.i, 255            ; 4 uses
  %i.uc = shl nuw i64 1, %i.ub
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cp, %bb.cl
  %.023.i43.i.i.i.i.i = phi i64 [ %i.uc, %bb.cl ], [ %i.uu, %bb.cp ]
  %.025.i42.i.i.i.i.i = phi i64 [ %i.tu, %bb.cl ], [ %i.uv, %bb.cp ] ; 2 uses
  %i.ud = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i42.i.i.i.i.i, i64 range(i64 0, 256) %i.ub)
  %i.ue = getelementptr inbounds nuw [192 x i8], ptr %.pre.i.i.i.i.i, i64 %i.ud ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 112
  call void @llvm.prefetch.p0(ptr nonnull %i.ug, i32 0, i32 3, i32 1), !noalias !1314
  %.val3633.i.i.i.i.i = load <16 x i8>, ptr %i.ue, align 16, !noalias !1314 ; 2 uses
  %i.uh = icmp eq <16 x i8> %.val3633.i.i.i.i.i, %i.ua
  %i.ui = bitcast <16 x i1> %i.uh to i16
  %i.uj = and i16 %i.ui, 16383
  %i.uk = zext nneg i16 %i.uj to i32
  %i.ul = icmp ne ptr %i.ue, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.um = extractelement <16 x i8> %.val3633.i.i.i.i.i, i64 15
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %bb.cn, %bb.cm
  %.sroa.07.0.i.i.i.i.i = phi i32 [ %i.uk, %bb.cm ], [ %i.up, %bb.cn ] ; 4 uses
  %.not34.i.i.i.i.i = icmp eq i32 %.sroa.07.0.i.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.un = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.07.0.i.i.i.i.i, i1 true)
  %i.uo = add nsw i32 %.sroa.07.0.i.i.i.i.i, -1
  %i.up = and i32 %i.uo, %.sroa.07.0.i.i.i.i.i
  %i.uq = zext nneg i32 %i.un to i64
  call void @llvm.assume(i1 %i.ul)
  %i.ur = getelementptr inbounds nuw [12 x i8], ptr %i.uf, i64 %i.uq ; 2 uses
  %.val38.i.i.i.i.i = load i16, ptr %i.ur, align 2, !tbaa !333, !noalias !1314
  %i.us = icmp eq i16 %i.tp, %.val38.i.i.i.i.i
  br i1 %i.us, label %.loopexit, label %.critedge.i.i.i.i.i.i, !prof !63, !llvm.loop !1289

bb.co:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.ut = icmp eq i8 %i.um, 0
  br i1 %i.ut, label %.thread31.i.i.i.i.i, label %bb.cp, !prof !63

bb.cp:                                            ; preds = %bb.co
  %i.uu = add i64 %.023.i43.i.i.i.i.i, -1         ; 2 uses
  %i.uv = add i64 %i.tx, %.025.i42.i.i.i.i.i
  %.not.i.i.i.i.i.i200 = icmp eq i64 %i.uu, 0
  br i1 %.not.i.i.i.i.i.i200, label %.thread31.i.i.i.i.i, label %bb.cm, !llvm.loop !1290

.thread31.i.i.i.i.i:                              ; preds = %bb.cp, %bb.co, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i
  %.pre-phi51.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIsEET_i.exit.i ], [ %i.ub, %bb.co ], [ %i.ub, %bb.cp ] ; 3 uses
  %i.uw = getelementptr i8, ptr %.pre.i.i.i.i.i, i64 14
  %.val.i.i.i.i.i.i = load i8, ptr %i.uw, align 1, !tbaa !94, !noalias !1314
  %i.ux = and i8 %.val.i.i.i.i.i.i, 15
  %i.uy = zext nneg i8 %i.ux to i64               ; 2 uses
  %i.uz = shl i64 %i.uy, %.pre-phi51.i.i.i.i.i    ; 2 uses
  %.not.i45.i.i.i.i.i = icmp ult i64 %i.tv, %i.uz
  br i1 %.not.i45.i.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %.thread31.i.i.i.i.i
  %i.va = shl nuw i64 1, %.pre-phi51.i.i.i.i.i
  invoke fastcc void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %i.tv, i64 noundef %i.va, i64 noundef %i.uy, i64 noundef %i.uz)
          to label %.noexc201 unwind label %bb.cg

.noexc201:                                        ; preds = %bb.cq
  %.pre47.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !331, !noalias !1314
  %.val35.pre.i.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294, !noalias !1314
  %.pre49.i.i.i.i.i = and i64 %.val35.pre.i.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i: ; preds = %.noexc201, %.thread31.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre-phi51.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre49.i.i.i.i.i, %.noexc201 ] ; 2 uses
  %i.vb = phi ptr [ %.pre.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre47.i.i.i.i.i, %.noexc201 ] ; 3 uses
  %i.vc = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.tu, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.vd = getelementptr inbounds nuw [192 x i8], ptr %i.vb, i64 %i.vc ; 2 uses
  %.val4435.i.i.i.i.i = load <16 x i8>, ptr %i.vd, align 16, !tbaa !94, !noalias !1314
  %i.ve = icmp slt <16 x i8> %.val4435.i.i.i.i.i, zeroinitializer
  %i.vf = bitcast <16 x i1> %i.ve to i16
  %i.vg = and i16 %i.vf, 16383                    ; 2 uses
  %.not36.i.i.i.i.i = icmp eq i16 %i.vg, 16383
  br i1 %.not36.i.i.i.i.i, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %i.vh = shl nuw nsw i64 %i.tt, 1
  %i.vi = or disjoint i64 %i.vh, 1
  br label %bb.cs

bb.cs:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, %bb.cr
  %i.vj = phi i64 [ %i.vc, %bb.cr ], [ %i.vp, %_ZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %.030.i.i.i.i.i = phi i64 [ %i.tu, %bb.cr ], [ %i.vo, %_ZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %i.vk = getelementptr inbounds nuw [192 x i8], ptr %i.vb, i64 %i.vj
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 15 ; 2 uses
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !335, !noalias !1314 ; 2 uses
  %.not.i46.i.i.i.i.i = icmp eq i8 %i.vm, -2
  br i1 %.not.i46.i.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.vn = add i8 %i.vm, 1
  store i8 %i.vn, ptr %i.vl, align 1, !tbaa !335, !noalias !1314
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i

_ZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i: ; preds = %bb.ct, %bb.cs
  %i.vo = add i64 %i.vi, %.030.i.i.i.i.i          ; 2 uses
  %i.vp = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.vo, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.vq = getelementptr inbounds nuw [192 x i8], ptr %i.vb, i64 %i.vp ; 3 uses
  %.val4337.i.i.i.i.i = load <16 x i8>, ptr %i.vq, align 16, !noalias !1314 ; 2 uses
  %i.vr = icmp slt <16 x i8> %.val4337.i.i.i.i.i, zeroinitializer
  %i.vs = bitcast <16 x i1> %i.vr to i16
  %i.vt = and i16 %i.vs, 16383                    ; 2 uses
  %.not38.i.i.i.i.i = icmp eq i16 %i.vt, 16383
  br i1 %.not38.i.i.i.i.i, label %bb.cs, label %bb.cu, !llvm.loop !1291

bb.cu:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i
  %i.vu = extractelement <16 x i8> %.val4337.i.i.i.i.i, i64 14
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vq, i64 14
  %i.vw = add i8 %i.vu, 16
  store i8 %i.vw, ptr %i.vv, align 2, !tbaa !336, !noalias !1314
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %.sroa.02.0.in.in.i.i.i.i.i = phi i16 [ %i.vg, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.vt, %bb.cu ]
  %.1.i.i.i.i.i = phi ptr [ %i.vd, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.vq, %bb.cu ] ; 3 uses
  %.sroa.02.0.in.i.i.i.i.i = xor i16 %.sroa.02.0.in.in.i.i.i.i.i, 16383
  %i.vx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.02.0.in.i.i.i.i.i, i1 true)
  %i.vy = zext nneg i16 %i.vx to i64              ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 %i.vy ; 2 uses
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !94, !noalias !1314
  %i.wb = icmp eq i8 %i.wa, 0
  br i1 %i.wb, label %_ZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.14) #44, !noalias !1314
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i: ; preds = %bb.cv
  %i.wc = trunc nuw i64 %i.tt to i8
  store i8 %i.wc, ptr %i.vz, align 1, !tbaa !94, !noalias !1314
  %i.wd = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 16
  %i.we = getelementptr inbounds nuw [12 x i8], ptr %i.wd, i64 %i.vy ; 4 uses
  %i.wf = icmp ne ptr %.1.i.i.i.i.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.wf)
  store i16 %i.tp, ptr %i.we, align 4, !tbaa !338, !noalias !1314
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 4
  store i64 0, ptr %i.wg, align 4, !noalias !1314
  %i.wh = lshr i64 %i.vy, 2
  %i.wi = ptrtoint ptr %i.we to i64
  %i.wj = or i64 %i.wh, %i.wi                     ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.km, align 8, !tbaa !1313, !noalias !1314
  %i.wk = icmp ult i64 %.val2.i.i.i.i.i.i.i, %i.wj
  %.pre428 = load ptr, ptr %12, align 8, !tbaa !236 ; 2 uses
  br i1 %i.wk, label %bb.cx, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOsEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

bb.cx:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  store i64 %i.wj, ptr %i.km, align 8, !tbaa !80, !noalias !1314
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOsEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOsEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i: ; preds = %bb.cx, %_ZN5folly3f146detail8F14ChunkISt4pairIKsN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294, !noalias !1314 ; 2 uses
  %i.wl = and i64 %.val.i.i.i.i.i.i.i.i, -256
  %i.wm = add i64 %i.wl, 256
  %i.wn = and i64 %.val.i.i.i.i.i.i.i.i, 255
  %i.wo = or disjoint i64 %i.wm, %i.wn
  store i64 %i.wo, ptr %i.kj, align 8, !tbaa !294, !noalias !1314
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cn, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOsEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i
  %.pre429437 = phi ptr [ %.pre428, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOsEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %.pre429436, %bb.cn ] ; 2 uses
  %i.wp = phi ptr [ %.pre428, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOsEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %i.rl, %bb.cn ] ; 2 uses
  %.lcssa59.sink.i.i.i.i.i = phi ptr [ %i.we, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIsN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOsEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKsS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %i.ur, %bb.cn ] ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 4
  store i32 %i.tl, ptr %i.wq, align 4, !tbaa !122
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 8
  store i8 %i.rc, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !94
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next403, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge364.loopexit, label %bb.cb, !llvm.loop !1292

_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIsE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE2EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit: ; preds = %.critedge.i.i.i, %._crit_edge367
  %.0 = phi i32 [ 0, %._crit_edge367 ], [ %i.pa, %.critedge.i.i.i ] ; 2 uses
  %i.wr = load ptr, ptr %13, align 8, !tbaa !331  ; 4 uses
  %i.ws = getelementptr i8, ptr %i.wr, i64 15
  %.val24.i.i.i.i = load i8, ptr %i.ws, align 1, !tbaa !305
  %i.wt = icmp eq i8 %.val24.i.i.i.i, -1
  br i1 %i.wt, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIsE5clearEv.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIsE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE2EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit
  %.val23.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294 ; 4 uses
  %i.wu = and i64 %.val23.i.i.i.i, 252
  %.not.i.i.i.i202 = icmp eq i64 %i.wu, 0         ; 2 uses
  %i.wv = getelementptr i8, ptr %i.wr, i64 14
  %.val.i.i.i.i.i203 = load i8, ptr %i.wv, align 1, !tbaa !94
  %i.ww = and i8 %.val.i.i.i.i.i203, 15
  %i.wx = icmp ult i64 %.val23.i.i.i.i, 256
  br i1 %i.wx, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  br i1 %.not.i.i.i.i202, label %.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.cz
  %.pre.i.i.i.i = and i64 %.val23.i.i.i.i, 255
  br label %bb.db

bb.da:                                            ; preds = %.preheader.i.i.i.i
  %i.wy = load ptr, ptr %13, align 8, !tbaa !331  ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 14
  store i8 %i.ww, ptr %i.wz, align 2, !tbaa !336
  br label %bb.db

.preheader.i.i.i.i:                               ; preds = %bb.cz, %.preheader.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %i.xc, %.preheader.i.i.i.i ], [ 0, %bb.cz ] ; 2 uses
  %i.xa = load ptr, ptr %13, align 8, !tbaa !331
  %i.xb = getelementptr inbounds nuw [192 x i8], ptr %i.xa, i64 %.029.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.xb, i8 0, i64 16, i1 false)
  %i.xc = add nuw i64 %.029.i.i.i.i, 1            ; 2 uses
  %.val22.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294
  %i.xd = and i64 %.val22.i.i.i.i, 255            ; 2 uses
  %.0.highbits.i.i.i.i = lshr i64 %i.xc, %i.xd
  %i.xe = icmp eq i64 %.0.highbits.i.i.i.i, 0
  br i1 %i.xe, label %.preheader.i.i.i.i, label %bb.da, !llvm.loop !1293

bb.db:                                            ; preds = %bb.da, %._crit_edge.i.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.xd, %bb.da ] ; 2 uses
  %i.xf = phi ptr [ %i.wr, %._crit_edge.i.i.i.i ], [ %i.wy, %bb.da ]
  store i64 0, ptr %i.km, align 8, !tbaa !80
  store i64 %.pre-phi.i.i.i.i, ptr %i.kj, align 8, !tbaa !294
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cy
  %.val21.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i, %bb.db ], [ %.val23.i.i.i.i, %bb.cy ] ; 2 uses
  %i.xg = phi ptr [ %i.xf, %bb.db ], [ %i.wr, %bb.cy ] ; 2 uses
  br i1 %.not.i.i.i.i202, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIsE5clearEv.exit, label %bb.dd
end_hunk_6
begin_hunk_7_@_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE4EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE:bb.a
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !122
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit196

_ZNK8facebook5velox13DecodedVector5indexEi.exit196: ; preds = %.lr.ph365, %bb.ca, %bb.bz, %bb.bx
  %i.ql = phi ptr [ %i.py, %bb.ca ], [ %i.py, %bb.bx ], [ %i.py, %bb.bz ], [ %1, %.lr.ph365 ] ; 2 uses
  %i.qm = phi i32 [ %i.qk, %bb.ca ], [ %i.li, %bb.bx ], [ %i.qg, %bb.bz ], [ %i.li, %.lr.ph365 ]
  %i.qn = sext i32 %i.qm to i64                   ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 120
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !200
  %i.qq = getelementptr inbounds [4 x i8], ptr %i.qp, i64 %i.qn
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !122 ; 2 uses
  %i.qs = icmp sgt i32 %i.qr, 0
  br i1 %i.qs, label %.lr.ph362, label %._crit_edge363

.lr.ph362:                                        ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit196
  %i.qt = getelementptr inbounds nuw i8, ptr %i.ql, i64 104
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !201
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.qu, i64 %i.qn
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !122
  %i.qx = trunc i64 %indvars.iv404 to i8
  %i.qy = sext i32 %i.qw to i64
  %wide.trip.count = zext nneg i32 %i.qr to i64
  br label %bb.cb

._crit_edge363.loopexit:                          ; preds = %.loopexit
  %.pre430 = load ptr, ptr %i.is, align 8, !tbaa !237
  br label %._crit_edge363

._crit_edge363:                                   ; preds = %._crit_edge363.loopexit, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196
  %.pre428434 = phi ptr [ %.pre428436, %._crit_edge363.loopexit ], [ %.pre428, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196 ]
  %i.qz = phi ptr [ %i.wi, %._crit_edge363.loopexit ], [ %i.ps, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196 ] ; 2 uses
  %i.ra = phi ptr [ %.pre430, %._crit_edge363.loopexit ], [ %i.pt, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196 ] ; 2 uses
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404, 1 ; 2 uses
  %i.rb = ptrtoint ptr %i.ra to i64
  %i.rc = ptrtoint ptr %i.qz to i64
  %i.rd = sub i64 %i.rb, %i.rc
  %i.re = sdiv exact i64 %i.rd, 120
  %i.rf = icmp ugt i64 %i.re, %indvars.iv.next405
  br i1 %i.rf, label %.lr.ph365, label %._crit_edge366, !llvm.loop !1345

bb.cb:                                            ; preds = %.lr.ph362, %.loopexit
  %.pre428435 = phi ptr [ %.pre428, %.lr.ph362 ], [ %.pre428436, %.loopexit ]
  %i.rg = phi ptr [ %.pre428, %.lr.ph362 ], [ %i.wi, %.loopexit ] ; 2 uses
  %indvars.iv401 = phi i64 [ 0, %.lr.ph362 ], [ %indvars.iv.next402, %.loopexit ] ; 2 uses
  %i.rh = add nsw i64 %indvars.iv401, %i.qy       ; 6 uses
  %i.ri = getelementptr inbounds nuw [120 x i8], ptr %i.rg, i64 %indvars.iv404 ; 10 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 24
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !185 ; 4 uses
  %.not.i197 = icmp eq ptr %i.rk, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ri, i64 58
  %.pre429 = load i8, ptr %.phi.trans.insert, align 2, !tbaa !162, !range !147 ; 2 uses
  br i1 %.not.i197, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.rl = trunc nuw i8 %.pre429 to i1
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ri, i64 57
  %i.rn = load i8, ptr %i.rm, align 1, !range !147
  %i.ro = trunc nuw i8 %i.rn to i1
  %or.cond.i = select i1 %i.rl, i1 true, i1 %i.ro
  br i1 %or.cond.i, label %.split, label %bb.cd

.split:                                           ; preds = %bb.cc
  %i.rp = lshr i64 %i.rh, 6
  %i.rq = and i64 %i.rp, 67108863
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.rk, i64 %i.rq
  %i.rs = load i64, ptr %i.rr, align 8, !tbaa !80
  %i.rt = and i64 %i.rh, 63
  %i.ru = shl nuw i64 1, %i.rt
  %i.rv = and i64 %i.rs, %i.ru
  %.not.i.i199 = icmp eq i64 %i.rv, 0
  br i1 %.not.i.i199, label %bb.ce, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, !prof !292

bb.cd:                                            ; preds = %bb.cc
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ri, i64 59
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !186, !range !147, !noundef !148
  %i.ry = trunc nuw i8 %i.rx to i1
  br i1 %i.ry, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %.split316

.split316:                                        ; preds = %bb.cd
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !172
  %i.sb = getelementptr inbounds [4 x i8], ptr %i.sa, i64 %i.rh
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !122
  %i.sd = zext i32 %i.sc to i64                   ; 2 uses
  %i.se = lshr i64 %i.sd, 6
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.rk, i64 %i.se
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !80
  %i.sh = and i64 %i.sd, 63
  %i.si = shl nuw i64 1, %i.sh
  %i.sj = and i64 %i.si, %i.sg
  %.not.i7.i = icmp eq i64 %i.sj, 0
  br i1 %.not.i7.i, label %bb.ce, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !292

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.cd
  %i.sk = load i64, ptr %i.rk, align 8, !tbaa !80
  %i.sl = and i64 %i.sk, 1
  %.not.i6.i = icmp eq i64 %i.sl, 0
  br i1 %.not.i6.i, label %bb.ce, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !292

bb.ce:                                            ; preds = %.split316, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE4EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.142) #38
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  unreachable

bb.cg:                                            ; preds = %bb.cq
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.ch:                                            ; preds = %bb.ce
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread: ; preds = %.split316, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.so = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !293
  %i.sq = trunc nsw i64 %i.rh to i32
  br label %bb.ci

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.cb, %.split
  %i.sr = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !293 ; 2 uses
  %i.st = trunc nuw i8 %.pre429 to i1
  %i.su = trunc nsw i64 %i.rh to i32              ; 3 uses
  br i1 %i.st, label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i, label %bb.ci

bb.ci:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.sv = phi i32 [ %i.sq, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.su, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.sw = phi ptr [ %i.sp, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.ss, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ri, i64 59
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !186, !range !147, !noundef !148
  %i.sz = trunc nuw i8 %i.sy to i1
  br i1 %i.sz, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ri, i64 64
  %i.tb = load i32, ptr %i.ta, align 8, !tbaa !187
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i

bb.ck:                                            ; preds = %bb.ci
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !172
  %i.te = getelementptr inbounds [4 x i8], ptr %i.td, i64 %i.rh
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !122
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i: ; preds = %bb.ck, %bb.cj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.tg = phi i32 [ %i.sv, %bb.ck ], [ %i.sv, %bb.cj ], [ %i.su, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.th = phi ptr [ %i.sw, %bb.ck ], [ %i.sw, %bb.cj ], [ %i.ss, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %.0.i.i.i = phi i32 [ %i.tf, %bb.ck ], [ %i.tb, %bb.cj ], [ %i.su, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.ti = sext i32 %.0.i.i.i to i64
  %i.tj = getelementptr inbounds [8 x i8], ptr %i.th, i64 %i.ti
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !80 ; 4 uses
  %i.tl = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.tk) ; 2 uses
  %i.tm = lshr i64 %i.tl, 24
  %i.tn = or i64 %i.tm, 128                       ; 4 uses
  %i.to = add i64 %i.tl, %i.tk                    ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294, !noalias !1377 ; 3 uses
  %i.tp = lshr i64 %.val.i.i.i.i.i, 8             ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.tp, 0
  %.pre.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !343, !noalias !1377 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.thread31.i.i.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i
  %i.tq = shl nuw nsw i64 %i.tn, 1
  %i.tr = or disjoint i64 %i.tq, 1
  %i.ts = trunc nuw i64 %i.tn to i8
  %i.tt = insertelement <16 x i8> poison, i8 %i.ts, i64 0
  %i.tu = shufflevector <16 x i8> %i.tt, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.tv = and i64 %.val.i.i.i.i.i, 255            ; 4 uses
  %i.tw = shl nuw i64 1, %i.tv
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cp, %bb.cl
  %.023.i43.i.i.i.i.i = phi i64 [ %i.tw, %bb.cl ], [ %i.uo, %bb.cp ]
  %.025.i42.i.i.i.i.i = phi i64 [ %i.to, %bb.cl ], [ %i.up, %bb.cp ] ; 2 uses
  %i.tx = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i42.i.i.i.i.i, i64 range(i64 0, 256) %i.tv)
  %i.ty = getelementptr inbounds nuw [256 x i8], ptr %.pre.i.i.i.i.i, i64 %i.tx ; 4 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 16
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ty, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.ua, i32 0, i32 3, i32 1), !noalias !1377
  %.val3633.i.i.i.i.i = load <16 x i8>, ptr %i.ty, align 16, !noalias !1377 ; 2 uses
  %i.ub = icmp eq <16 x i8> %.val3633.i.i.i.i.i, %i.tu
  %i.uc = bitcast <16 x i1> %i.ub to i16
  %i.ud = and i16 %i.uc, 16383
  %i.ue = zext nneg i16 %i.ud to i32
  %i.uf = icmp ne ptr %i.ty, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ug = extractelement <16 x i8> %.val3633.i.i.i.i.i, i64 15
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %bb.cn, %bb.cm
  %.sroa.07.0.i.i.i.i.i = phi i32 [ %i.ue, %bb.cm ], [ %i.uj, %bb.cn ] ; 4 uses
  %.not34.i.i.i.i.i = icmp eq i32 %.sroa.07.0.i.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.uh = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.07.0.i.i.i.i.i, i1 true)
  %i.ui = add nsw i32 %.sroa.07.0.i.i.i.i.i, -1
  %i.uj = and i32 %i.ui, %.sroa.07.0.i.i.i.i.i
  %i.uk = zext nneg i32 %i.uh to i64
  call void @llvm.assume(i1 %i.uf)
  %i.ul = getelementptr inbounds nuw [16 x i8], ptr %i.tz, i64 %i.uk ; 2 uses
  %.val38.i.i.i.i.i = load i64, ptr %i.ul, align 8, !tbaa !80, !noalias !1377
  %i.um = icmp eq i64 %i.tk, %.val38.i.i.i.i.i
  br i1 %i.um, label %.loopexit, label %.critedge.i.i.i.i.i.i, !prof !63, !llvm.loop !1352

bb.co:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.un = icmp eq i8 %i.ug, 0
  br i1 %i.un, label %.thread31.i.i.i.i.i, label %bb.cp, !prof !63

bb.cp:                                            ; preds = %bb.co
  %i.uo = add i64 %.023.i43.i.i.i.i.i, -1         ; 2 uses
  %i.up = add i64 %i.tr, %.025.i42.i.i.i.i.i
  %.not.i.i.i.i.i.i200 = icmp eq i64 %i.uo, 0
  br i1 %.not.i.i.i.i.i.i200, label %.thread31.i.i.i.i.i, label %bb.cm, !llvm.loop !1353

.thread31.i.i.i.i.i:                              ; preds = %bb.cp, %bb.co, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i
  %.pre-phi51.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector7valueAtIlEET_i.exit.i ], [ %i.tv, %bb.co ], [ %i.tv, %bb.cp ] ; 3 uses
  %i.uq = getelementptr i8, ptr %.pre.i.i.i.i.i, i64 14
  %.val.i.i.i.i.i.i = load i8, ptr %i.uq, align 1, !tbaa !94, !noalias !1377
  %i.ur = and i8 %.val.i.i.i.i.i.i, 15
  %i.us = zext nneg i8 %i.ur to i64               ; 2 uses
  %i.ut = shl i64 %i.us, %.pre-phi51.i.i.i.i.i    ; 2 uses
  %.not.i45.i.i.i.i.i = icmp ult i64 %i.tp, %i.ut
  br i1 %.not.i45.i.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %.thread31.i.i.i.i.i
  %i.uu = shl nuw i64 1, %.pre-phi51.i.i.i.i.i
  invoke fastcc void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %i.tp, i64 noundef %i.uu, i64 noundef %i.us, i64 noundef %i.ut)
          to label %.noexc201 unwind label %bb.cg

.noexc201:                                        ; preds = %bb.cq
  %.pre47.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !343, !noalias !1377
  %.val35.pre.i.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294, !noalias !1377
  %.pre49.i.i.i.i.i = and i64 %.val35.pre.i.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i: ; preds = %.noexc201, %.thread31.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre-phi51.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre49.i.i.i.i.i, %.noexc201 ] ; 2 uses
  %i.uv = phi ptr [ %.pre.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre47.i.i.i.i.i, %.noexc201 ] ; 3 uses
  %i.uw = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.to, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.ux = getelementptr inbounds nuw [256 x i8], ptr %i.uv, i64 %i.uw ; 2 uses
  %.val4435.i.i.i.i.i = load <16 x i8>, ptr %i.ux, align 16, !tbaa !94, !noalias !1377
  %i.uy = icmp slt <16 x i8> %.val4435.i.i.i.i.i, zeroinitializer
  %i.uz = bitcast <16 x i1> %i.uy to i16
  %i.va = and i16 %i.uz, 16383                    ; 2 uses
  %.not36.i.i.i.i.i = icmp eq i16 %i.va, 16383
  br i1 %.not36.i.i.i.i.i, label %bb.cr, label %bb.cv

bb.cr:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %i.vb = shl nuw nsw i64 %i.tn, 1
  %i.vc = or disjoint i64 %i.vb, 1
  br label %bb.cs

bb.cs:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, %bb.cr
  %i.vd = phi i64 [ %i.uw, %bb.cr ], [ %i.vj, %_ZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %.030.i.i.i.i.i = phi i64 [ %i.to, %bb.cr ], [ %i.vi, %_ZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %i.ve = getelementptr inbounds nuw [256 x i8], ptr %i.uv, i64 %i.vd
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 15 ; 2 uses
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !346, !noalias !1377 ; 2 uses
  %.not.i46.i.i.i.i.i = icmp eq i8 %i.vg, -2
  br i1 %.not.i46.i.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.vh = add i8 %i.vg, 1
  store i8 %i.vh, ptr %i.vf, align 1, !tbaa !346, !noalias !1377
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i

_ZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i: ; preds = %bb.ct, %bb.cs
  %i.vi = add i64 %i.vc, %.030.i.i.i.i.i          ; 2 uses
  %i.vj = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.vi, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.vk = getelementptr inbounds nuw [256 x i8], ptr %i.uv, i64 %i.vj ; 3 uses
  %.val4337.i.i.i.i.i = load <16 x i8>, ptr %i.vk, align 16, !noalias !1377 ; 2 uses
  %i.vl = icmp slt <16 x i8> %.val4337.i.i.i.i.i, zeroinitializer
  %i.vm = bitcast <16 x i1> %i.vl to i16
  %i.vn = and i16 %i.vm, 16383                    ; 2 uses
  %.not38.i.i.i.i.i = icmp eq i16 %i.vn, 16383
  br i1 %.not38.i.i.i.i.i, label %bb.cs, label %bb.cu, !llvm.loop !1354

bb.cu:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i
  %i.vo = extractelement <16 x i8> %.val4337.i.i.i.i.i, i64 14
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vk, i64 14
  %i.vq = add i8 %i.vo, 16
  store i8 %i.vq, ptr %i.vp, align 2, !tbaa !347, !noalias !1377
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %.sroa.02.0.in.in.i.i.i.i.i = phi i16 [ %i.va, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.vn, %bb.cu ]
  %.1.i.i.i.i.i = phi ptr [ %i.ux, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.vk, %bb.cu ] ; 3 uses
  %.sroa.02.0.in.i.i.i.i.i = xor i16 %.sroa.02.0.in.in.i.i.i.i.i, 16383
  %i.vr = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.02.0.in.i.i.i.i.i, i1 true)
  %i.vs = zext nneg i16 %i.vr to i64              ; 3 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 %i.vs ; 2 uses
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !94, !noalias !1377
  %i.vv = icmp eq i8 %i.vu, 0
  br i1 %i.vv, label %_ZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.14) #44, !noalias !1377
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i: ; preds = %bb.cv
  %i.vw = trunc nuw i64 %i.tn to i8
  store i8 %i.vw, ptr %i.vt, align 1, !tbaa !94, !noalias !1377
  %i.vx = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 16
  %i.vy = getelementptr inbounds nuw [16 x i8], ptr %i.vx, i64 %i.vs ; 4 uses
  %i.vz = icmp ne ptr %.1.i.i.i.i.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.vz)
  store i64 %i.tk, ptr %i.vy, align 8, !tbaa !349, !noalias !1377
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vy, i64 8
  store i64 0, ptr %i.wa, align 8, !noalias !1377
  %i.wb = ptrtoint ptr %i.vy to i64
  %i.wc = or i64 %i.wb, %i.vs                     ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.km, align 8, !tbaa !1376, !noalias !1377
  %i.wd = icmp ult i64 %.val2.i.i.i.i.i.i.i, %i.wc
  %.pre427 = load ptr, ptr %12, align 8, !tbaa !236 ; 2 uses
  br i1 %i.wd, label %bb.cx, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOlEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

bb.cx:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  store i64 %i.wc, ptr %i.km, align 8, !tbaa !80, !noalias !1377
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOlEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOlEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i: ; preds = %bb.cx, %_ZN5folly3f146detail8F14ChunkISt4pairIKlN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294, !noalias !1377 ; 2 uses
  %i.we = and i64 %.val.i.i.i.i.i.i.i.i, -256
  %i.wf = add i64 %i.we, 256
  %i.wg = and i64 %.val.i.i.i.i.i.i.i.i, 255
  %i.wh = or disjoint i64 %i.wf, %i.wg
  store i64 %i.wh, ptr %i.kj, align 8, !tbaa !294, !noalias !1377
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cn, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOlEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i
  %.pre428436 = phi ptr [ %.pre427, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOlEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %.pre428435, %bb.cn ] ; 2 uses
  %i.wi = phi ptr [ %.pre427, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOlEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %i.rg, %bb.cn ] ; 2 uses
  %.lcssa59.sink.i.i.i.i.i = phi ptr [ %i.vy, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIlN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOlEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKlS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %i.ul, %bb.cn ] ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 8
  store i32 %i.tg, ptr %i.wj, align 4, !tbaa !122
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 12
  store i8 %i.qx, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !94
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next402, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge363.loopexit, label %bb.cb, !llvm.loop !1355

_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIlE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE4EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit: ; preds = %.critedge.i.i.i, %._crit_edge366
  %.0 = phi i32 [ 0, %._crit_edge366 ], [ %i.ov, %.critedge.i.i.i ] ; 2 uses
  %i.wk = load ptr, ptr %13, align 8, !tbaa !343  ; 4 uses
  %i.wl = getelementptr i8, ptr %i.wk, i64 15
  %.val24.i.i.i.i = load i8, ptr %i.wl, align 1, !tbaa !305
  %i.wm = icmp eq i8 %.val24.i.i.i.i, -1
  br i1 %i.wm, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIlE5clearEv.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIlE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE4EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit
  %.val23.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294 ; 4 uses
  %i.wn = and i64 %.val23.i.i.i.i, 252
  %.not.i.i.i.i202 = icmp eq i64 %i.wn, 0         ; 2 uses
  %i.wo = getelementptr i8, ptr %i.wk, i64 14
  %.val.i.i.i.i.i203 = load i8, ptr %i.wo, align 1, !tbaa !94
  %i.wp = and i8 %.val.i.i.i.i.i203, 15
  %i.wq = icmp ult i64 %.val23.i.i.i.i, 256
  br i1 %i.wq, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  br i1 %.not.i.i.i.i202, label %.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.cz
  %.pre.i.i.i.i = and i64 %.val23.i.i.i.i, 255
  br label %bb.db

bb.da:                                            ; preds = %.preheader.i.i.i.i
  %i.wr = load ptr, ptr %13, align 8, !tbaa !343  ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 14
  store i8 %i.wp, ptr %i.ws, align 2, !tbaa !347
  br label %bb.db

.preheader.i.i.i.i:                               ; preds = %bb.cz, %.preheader.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %i.wv, %.preheader.i.i.i.i ], [ 0, %bb.cz ] ; 2 uses
  %i.wt = load ptr, ptr %13, align 8, !tbaa !343
  %i.wu = getelementptr inbounds nuw [256 x i8], ptr %i.wt, i64 %.029.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.wu, i8 0, i64 16, i1 false)
  %i.wv = add nuw i64 %.029.i.i.i.i, 1            ; 2 uses
  %.val22.i.i.i.i = load i64, ptr %i.kj, align 8, !tbaa !294
  %i.ww = and i64 %.val22.i.i.i.i, 255            ; 2 uses
  %.0.highbits.i.i.i.i = lshr i64 %i.wv, %i.ww
  %i.wx = icmp eq i64 %.0.highbits.i.i.i.i, 0
  br i1 %i.wx, label %.preheader.i.i.i.i, label %bb.da, !llvm.loop !1356

bb.db:                                            ; preds = %bb.da, %._crit_edge.i.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ww, %bb.da ] ; 2 uses
  %i.wy = phi ptr [ %i.wk, %._crit_edge.i.i.i.i ], [ %i.wr, %bb.da ]
  store i64 0, ptr %i.km, align 8, !tbaa !80
  store i64 %.pre-phi.i.i.i.i, ptr %i.kj, align 8, !tbaa !294
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cy
  %.val21.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i, %bb.db ], [ %.val23.i.i.i.i, %bb.cy ] ; 2 uses
  %i.wz = phi ptr [ %i.wy, %bb.db ], [ %i.wk, %bb.cy ] ; 2 uses
  br i1 %.not.i.i.i.i202, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIlE5clearEv.exit, label %bb.dd

end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE10EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE:bb.a
  %i.pq = phi i32 [ %i.po, %bb.bx ], [ %i.li, %bb.bu ], [ %i.pk, %bb.bw ], [ %i.li, %.lr.ph362 ]
  %i.pr = sext i32 %i.pq to i64                   ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 120
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !200
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.pt, i64 %i.pr
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !122 ; 2 uses
  %i.pw = icmp sgt i32 %i.pv, 0
  br i1 %i.pw, label %.lr.ph359, label %._crit_edge360

.lr.ph359:                                        ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit195
  %i.px = getelementptr inbounds nuw i8, ptr %i.pp, i64 104
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !201
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.py, i64 %i.pr
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !122
  %i.qb = trunc i64 %indvars.iv401 to i8
  %i.qc = sext i32 %i.qa to i64
  %wide.trip.count = zext nneg i32 %i.pv to i64
  br label %bb.by

._crit_edge360.loopexit:                          ; preds = %.loopexit
  %.pre425 = load ptr, ptr %i.is, align 8, !tbaa !237
  %.pre426 = load ptr, ptr %12, align 8, !tbaa !236
  br label %._crit_edge360

._crit_edge360:                                   ; preds = %._crit_edge360.loopexit, %_ZNK8facebook5velox13DecodedVector5indexEi.exit195
  %i.qd = phi ptr [ %.pre426, %._crit_edge360.loopexit ], [ %i.ow, %_ZNK8facebook5velox13DecodedVector5indexEi.exit195 ] ; 2 uses
  %i.qe = phi ptr [ %.pre425, %._crit_edge360.loopexit ], [ %i.ox, %_ZNK8facebook5velox13DecodedVector5indexEi.exit195 ] ; 2 uses
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 1 ; 2 uses
  %i.qf = ptrtoint ptr %i.qe to i64
  %i.qg = ptrtoint ptr %i.qd to i64
  %i.qh = sub i64 %i.qf, %i.qg
  %i.qi = sdiv exact i64 %i.qh, 120
  %i.qj = icmp ugt i64 %i.qi, %indvars.iv.next402
  br i1 %i.qj, label %.lr.ph362, label %._crit_edge363, !llvm.loop !1406

bb.by:                                            ; preds = %.lr.ph359, %.loopexit
  %indvars.iv398 = phi i64 [ 0, %.lr.ph359 ], [ %indvars.iv.next399, %.loopexit ] ; 2 uses
  %i.qk = add nsw i64 %indvars.iv398, %i.qc       ; 6 uses
  %i.ql = load ptr, ptr %12, align 8, !tbaa !236
  %i.qm = getelementptr inbounds nuw [120 x i8], ptr %i.ql, i64 %indvars.iv401 ; 10 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !185 ; 4 uses
  %.not.i196 = icmp eq ptr %i.qo, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.qm, i64 58
  %.pre424 = load i8, ptr %.phi.trans.insert, align 2, !tbaa !162, !range !147 ; 2 uses
  br i1 %.not.i196, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qp = trunc nuw i8 %.pre424 to i1
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qm, i64 57
  %i.qr = load i8, ptr %i.qq, align 1, !range !147
  %i.qs = trunc nuw i8 %i.qr to i1
  %or.cond.i = select i1 %i.qp, i1 true, i1 %i.qs
  br i1 %or.cond.i, label %.split, label %bb.ca

.split:                                           ; preds = %bb.bz
  %i.qt = lshr i64 %i.qk, 6
  %i.qu = and i64 %i.qt, 67108863
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.qu
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !80
  %i.qx = and i64 %i.qk, 63
  %i.qy = shl nuw i64 1, %i.qx
  %i.qz = and i64 %i.qw, %i.qy
  %.not.i.i198 = icmp eq i64 %i.qz, 0
  br i1 %.not.i.i198, label %bb.cb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, !prof !292

bb.ca:                                            ; preds = %bb.bz
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qm, i64 59
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !186, !range !147, !noundef !148
  %i.rc = trunc nuw i8 %i.rb to i1
  br i1 %i.rc, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %.split320

.split320:                                        ; preds = %bb.ca
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !172
  %i.rf = getelementptr inbounds [4 x i8], ptr %i.re, i64 %i.qk
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !122
  %i.rh = zext i32 %i.rg to i64                   ; 2 uses
  %i.ri = lshr i64 %i.rh, 6
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.ri
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !80
  %i.rl = and i64 %i.rh, 63
  %i.rm = shl nuw i64 1, %i.rl
  %i.rn = and i64 %i.rm, %i.rk
  %.not.i7.i = icmp eq i64 %i.rn, 0
  br i1 %.not.i7.i, label %bb.cb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !292

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.ca
  %i.ro = load i64, ptr %i.qo, align 8, !tbaa !80
  %i.rp = and i64 %i.ro, 1
  %.not.i6.i = icmp eq i64 %i.rp, 0
  br i1 %.not.i6.i, label %bb.cb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !292

bb.cb:                                            ; preds = %.split320, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE10EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.142) #38
          to label %bb.cc unwind label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  unreachable

bb.cd:                                            ; preds = %bb.cn
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.ce:                                            ; preds = %bb.cb
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread: ; preds = %.split320, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !293
  %i.ru = trunc nsw i64 %i.qk to i32
  br label %bb.cf

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.by, %.split
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !293 ; 2 uses
  %i.rx = trunc nuw i8 %.pre424 to i1
  %i.ry = trunc nsw i64 %i.qk to i32              ; 3 uses
  br i1 %i.rx, label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i, label %bb.cf

bb.cf:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.rz = phi i32 [ %i.ru, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.ry, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.sa = phi ptr [ %i.rt, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.rw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.qm, i64 59
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !186, !range !147, !noundef !148
  %i.sd = trunc nuw i8 %i.sc to i1
  br i1 %i.sd, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.se = getelementptr inbounds nuw i8, ptr %i.qm, i64 64
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !187
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i

bb.ch:                                            ; preds = %bb.cf
  %i.sg = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !172
  %i.si = getelementptr inbounds [4 x i8], ptr %i.sh, i64 %i.qk
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !122
  br label %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i: ; preds = %bb.ch, %bb.cg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.sk = phi i32 [ %i.rz, %bb.ch ], [ %i.rz, %bb.cg ], [ %i.ry, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.sl = phi ptr [ %i.sa, %bb.ch ], [ %i.sa, %bb.cg ], [ %i.rw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %.0.i.i.i = phi i32 [ %i.sj, %bb.ch ], [ %i.sf, %bb.cg ], [ %i.ry, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.sm = sext i32 %.0.i.i.i to i64
  %i.sn = shl nsw i64 %i.sm, 4
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.sn
  %.0.copyload.i.i.i = load i128, ptr %i.so, align 1 ; 3 uses
  %i.sp = trunc i128 %.0.copyload.i.i.i to i64    ; 2 uses
  %i.sq = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.sp) ; 2 uses
  %i.sr = lshr i64 %i.sq, 24
  %i.ss = or i64 %i.sr, 128                       ; 4 uses
  %i.st = add i64 %i.sq, %i.sp                    ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.kk, align 8, !tbaa !294, !noalias !1437 ; 4 uses
  %i.su = lshr i64 %.val.i.i.i.i.i, 8             ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.su, 0
  br i1 %.not.i.i.i.i.i, label %..thread33_crit_edge.i.i.i.i.i, label %bb.ci

..thread33_crit_edge.i.i.i.i.i:                   ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.kj, align 8, !tbaa !356, !noalias !1437
  %.pre52.i.i.i.i.i = shl nuw i64 1, %.val.i.i.i.i.i
  br label %.thread33.i.i.i.i.i

bb.ci:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtInEET_i.exit.i
  %i.sv = shl nuw nsw i64 %i.ss, 1
  %i.sw = or disjoint i64 %i.sv, 1
  %i.sx = trunc nuw i64 %i.ss to i8
  %i.sy = insertelement <16 x i8> poison, i8 %i.sx, i64 0
  %i.sz = shufflevector <16 x i8> %i.sy, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ta = and i64 %.val.i.i.i.i.i, 255            ; 4 uses
  %i.tb = shl nuw i64 1, %i.ta                    ; 3 uses
  %i.tc = load ptr, ptr %i.kj, align 8, !tbaa !356, !noalias !1437 ; 3 uses
  %.val36.i.i.i.i.i = load ptr, ptr %13, align 8  ; 2 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cm, %bb.ci
  %.022.i44.i.i.i.i.i = phi i64 [ %i.tb, %bb.ci ], [ %i.tx, %bb.cm ]
  %.024.i43.i.i.i.i.i = phi i64 [ %i.st, %bb.ci ], [ %i.ty, %bb.cm ] ; 2 uses
  %i.td = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i43.i.i.i.i.i, i64 range(i64 0, 256) %i.ta)
  %i.te = getelementptr inbounds nuw [64 x i8], ptr %i.tc, i64 %i.td ; 3 uses
  %i.tf = load <16 x i8>, ptr %i.te, align 16, !noalias !1437 ; 2 uses
  %i.tg = icmp eq <16 x i8> %i.tf, %i.sz
  %i.th = bitcast <16 x i1> %i.tg to i16
  %i.ti = and i16 %i.th, 4095
  %i.tj = zext nneg i16 %i.ti to i32
  %i.tk = icmp ne ptr %i.te, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.tl = getelementptr inbounds nuw i8, ptr %i.te, i64 16
  %i.tm = extractelement <16 x i8> %i.tf, i64 15
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %bb.ck, %bb.cj
  %.sroa.09.0.i.i.i.i.i = phi i32 [ %i.tj, %bb.cj ], [ %i.tp, %bb.ck ] ; 4 uses
  %.not35.i.i.i.i.i = icmp eq i32 %.sroa.09.0.i.i.i.i.i, 0
  br i1 %.not35.i.i.i.i.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.tn = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.09.0.i.i.i.i.i, i1 true)
  %i.to = add nsw i32 %.sroa.09.0.i.i.i.i.i, -1
  %i.tp = and i32 %i.to, %.sroa.09.0.i.i.i.i.i
  %i.tq = zext nneg i32 %i.tn to i64
  call void @llvm.assume(i1 %i.tk)
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.tl, i64 %i.tq
  %.val38.i.i.i.i.i = load i32, ptr %i.tr, align 4, !tbaa !122, !noalias !1437
  %i.ts = zext i32 %.val38.i.i.i.i.i to i64       ; 2 uses
  %i.tt = getelementptr inbounds nuw [32 x i8], ptr %.val36.i.i.i.i.i, i64 %i.ts
  %i.tu = load i128, ptr %i.tt, align 16, !tbaa !358, !noalias !1437
  %i.tv = icmp eq i128 %.0.copyload.i.i.i, %i.tu
  br i1 %i.tv, label %.loopexit, label %.critedge.i.i.i.i.i.i, !prof !63, !llvm.loop !1413

bb.cl:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.tw = icmp eq i8 %i.tm, 0
  br i1 %i.tw, label %.thread33.i.i.i.i.i, label %bb.cm, !prof !63

bb.cm:                                            ; preds = %bb.cl
  %i.tx = add i64 %.022.i44.i.i.i.i.i, -1         ; 2 uses
  %i.ty = add i64 %i.sw, %.024.i43.i.i.i.i.i
  %.not.i.i.i.i.i.i199 = icmp eq i64 %i.tx, 0
  br i1 %.not.i.i.i.i.i.i199, label %.thread33.i.i.i.i.i, label %bb.cj, !llvm.loop !1414

.thread33.i.i.i.i.i:                              ; preds = %bb.cm, %bb.cl, %..thread33_crit_edge.i.i.i.i.i
  %.pre-phi53.i.i.i.i.i = phi i64 [ %.pre52.i.i.i.i.i, %..thread33_crit_edge.i.i.i.i.i ], [ %i.tb, %bb.cl ], [ %i.tb, %bb.cm ] ; 2 uses
  %.pre-phi.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %..thread33_crit_edge.i.i.i.i.i ], [ %i.ta, %bb.cl ], [ %i.ta, %bb.cm ]
  %i.tz = phi ptr [ %.pre.i.i.i.i.i, %..thread33_crit_edge.i.i.i.i.i ], [ %i.tc, %bb.cl ], [ %i.tc, %bb.cm ] ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 12
  %.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.ua, align 1, !noalias !1437
  %i.ub = zext i16 %.0.copyload.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.uc = add i64 %.pre-phi53.i.i.i.i.i, -1
  %i.ud = lshr i64 %i.uc, 12
  %i.ue = add nuw nsw i64 %i.ud, 1
  %i.uf = mul i64 %i.ue, %i.ub                    ; 2 uses
  %.not.i39.i.i.i.i.i = icmp ult i64 %i.su, %i.uf
  br i1 %.not.i39.i.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %.thread33.i.i.i.i.i
  invoke fastcc void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %i.su, i64 noundef %.pre-phi53.i.i.i.i.i, i64 noundef %i.ub, i64 noundef %i.uf)
          to label %.noexc200 unwind label %bb.cd

.noexc200:                                        ; preds = %bb.cn
  %.pre49.i.i.i.i.i = load ptr, ptr %i.kj, align 8, !tbaa !356, !noalias !1437
  %.val35.pre.i.i.i.i.i = load i64, ptr %i.kk, align 8, !tbaa !294, !noalias !1437
  %.pre54.i.i.i.i.i = and i64 %.val35.pre.i.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i.i: ; preds = %.noexc200, %.thread33.i.i.i.i.i
  %.pre-phi55.i.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i.i, %.thread33.i.i.i.i.i ], [ %.pre54.i.i.i.i.i, %.noexc200 ] ; 2 uses
  %i.ug = phi ptr [ %i.tz, %.thread33.i.i.i.i.i ], [ %.pre49.i.i.i.i.i, %.noexc200 ] ; 3 uses
  %i.uh = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.st, i64 range(i64 0, 256) %.pre-phi55.i.i.i.i.i) ; 2 uses
  %i.ui = getelementptr inbounds nuw [64 x i8], ptr %i.ug, i64 %i.uh ; 2 uses
  %i.uj = load <16 x i8>, ptr %i.ui, align 16, !tbaa !94, !noalias !1437
  %i.uk = icmp slt <16 x i8> %i.uj, zeroinitializer
  %i.ul = bitcast <16 x i1> %i.uk to i16
  %i.um = and i16 %i.ul, 4095                     ; 2 uses
  %.not36.i.i.i.i.i = icmp eq i16 %i.um, 4095
  br i1 %.not36.i.i.i.i.i, label %bb.co, label %bb.cs

bb.co:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i.i
  %i.un = shl nuw nsw i64 %i.ss, 1
  %i.uo = or disjoint i64 %i.un, 1
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, %bb.co
  %i.up = phi i64 [ %i.uh, %bb.co ], [ %i.uv, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %.030.i.i.i.i.i = phi i64 [ %i.st, %bb.co ], [ %i.uu, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %i.uq = getelementptr inbounds nuw [64 x i8], ptr %i.ug, i64 %i.up
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 15 ; 2 uses
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !361, !noalias !1437 ; 2 uses
  %.not.i40.i.i.i.i.i = icmp eq i8 %i.us, -2
  br i1 %.not.i40.i.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ut = add i8 %i.us, 1
  store i8 %i.ut, ptr %i.ur, align 1, !tbaa !361, !noalias !1437
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i.i

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i.i: ; preds = %bb.cq, %bb.cp
  %i.uu = add i64 %i.uo, %.030.i.i.i.i.i          ; 2 uses
  %i.uv = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.uu, i64 range(i64 0, 256) %.pre-phi55.i.i.i.i.i) ; 2 uses
  %i.uw = getelementptr inbounds nuw [64 x i8], ptr %i.ug, i64 %i.uv ; 3 uses
  %i.ux = load <16 x i8>, ptr %i.uw, align 16, !noalias !1437 ; 2 uses
  %i.uy = icmp slt <16 x i8> %i.ux, zeroinitializer
  %i.uz = bitcast <16 x i1> %i.uy to i16
  %i.va = and i16 %i.uz, 4095                     ; 2 uses
  %.not37.i.i.i.i.i = icmp eq i16 %i.va, 4095
  br i1 %.not37.i.i.i.i.i, label %bb.cp, label %bb.cr, !llvm.loop !1415

bb.cr:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i.i
  %i.vb = extractelement <16 x i8> %i.ux, i64 14
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uw, i64 14
  %i.vd = add i8 %i.vb, 16
  store i8 %i.vd, ptr %i.vc, align 2, !tbaa !362, !noalias !1437
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i.i
  %.sroa.03.0.in.in.i.i.i.i.i = phi i16 [ %i.um, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.va, %bb.cr ]
  %.1.i.i.i.i.i = phi ptr [ %i.ui, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyInN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.uw, %bb.cr ] ; 3 uses
  %.sroa.03.0.in.i.i.i.i.i = xor i16 %.sroa.03.0.in.in.i.i.i.i.i, 4095
  %i.ve = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.03.0.in.i.i.i.i.i, i1 true)
  %i.vf = zext nneg i16 %i.ve to i64              ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 %i.vf ; 2 uses
  %i.vh = load i8, ptr %i.vg, align 1, !tbaa !94, !noalias !1437
  %i.vi = icmp eq i8 %i.vh, 0
  br i1 %i.vi, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.14) #44, !noalias !1437
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i.i.i.i.i: ; preds = %bb.cs
  %i.vj = trunc nuw i64 %i.ss to i8
  store i8 %i.vj, ptr %i.vg, align 1, !tbaa !94, !noalias !1437
  %i.vk = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 16
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %i.vf ; 2 uses
  %i.vm = icmp ne ptr %.1.i.i.i.i.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.vm)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !352, !noalias !1437, !nonnull !148, !noundef !148
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.kk, align 8, !tbaa !294, !noalias !1437
  %i.vn = lshr i64 %.val1.i.i.i.i.i.i.i, 8        ; 2 uses
  %i.vo = trunc i64 %i.vn to i32
  store i32 %i.vo, ptr %i.vl, align 4, !tbaa !122, !noalias !1437
  %i.vp = and i64 %i.vn, 4294967295
  %i.vq = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i.i.i.i, i64 %i.vp ; 2 uses
  store i128 %.0.copyload.i.i.i, ptr %i.vq, align 16, !tbaa !1439, !noalias !1437
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 16
  store i64 0, ptr %i.vr, align 16, !noalias !1437
  %i.vs = load i64, ptr %i.kk, align 8, !tbaa !294, !noalias !1437 ; 2 uses
  %i.vt = and i64 %i.vs, -256
  %i.vu = add i64 %i.vt, 256
  %i.vv = and i64 %i.vs, 255
  %i.vw = or disjoint i64 %i.vu, %i.vv
  store i64 %i.vw, ptr %i.kk, align 8, !tbaa !294, !noalias !1437
  %.val3.pre.i.i.i = load ptr, ptr %13, align 8, !noalias !1440
  %.pre.i.i.i = load i32, ptr %i.vl, align 4, !tbaa !122, !noalias !1440
  %.pre21.i.i.i = zext i32 %.pre.i.i.i to i64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ck, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre21.i.i.i, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i.i.i.i.i ], [ %i.ts, %bb.ck ]
  %.val3.i.i.i = phi ptr [ %.val3.pre.i.i.i, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i.i.i.i.i ], [ %.val36.i.i.i.i.i, %bb.ck ]
  %i.vx = getelementptr inbounds nuw [32 x i8], ptr %.val3.i.i.i, i64 %.pre-phi.i.i.i ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  store i32 %i.sk, ptr %i.vy, align 4, !tbaa !122
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vx, i64 20
  store i8 %i.qb, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !94
  %indvars.iv.next399 = add nuw nsw i64 %indvars.iv398, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next399, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge360.loopexit, label %bb.by, !llvm.loop !1416

_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowInE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE10EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit: ; preds = %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE10EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i, %._crit_edge363
  %.0 = phi i32 [ 0, %._crit_edge363 ], [ %i.ou, %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE10EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i ] ; 2 uses
  %i.vz = load ptr, ptr %i.kj, align 8, !tbaa !356 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 15
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !305
  %i.wc = icmp eq i8 %i.wb, -1
  br i1 %i.wc, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowInE5clearEv.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowInE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE10EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit
  %.val19.i.i.i.i = load i64, ptr %i.kk, align 8, !tbaa !294 ; 3 uses
  %i.wd = and i64 %.val19.i.i.i.i, 255            ; 3 uses
  %i.we = icmp samesign ugt i64 %i.wd, 3          ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vz, i64 12
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.wf, align 1 ; 2 uses
  %i.wg = zext i16 %.0.copyload.i.i.i.i.i.i to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.wd
  %i.wh = xor i64 %notmask.i.i.i.i.i, -1
  %i.wi = lshr i64 %i.wh, 12
  %i.wj = add nuw nsw i64 %i.wi, 1
  %i.wk = icmp ult i64 %.val19.i.i.i.i, 256
  br i1 %i.wk, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  br i1 %i.we, label %bb.cx, label %.preheader.i.i.i.i

bb.cw:                                            ; preds = %.preheader.i.i.i.i
  %i.wl = load ptr, ptr %i.kj, align 8, !tbaa !356
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 12
  store i16 %.0.copyload.i.i.i.i.i.i, ptr %i.wm, align 1
  %.pre.i.i.i.i = load i64, ptr %i.kk, align 8, !tbaa !294
  %.pre29.i.i.i.i = and i64 %.pre.i.i.i.i, 255
  br label %bb.cx

.preheader.i.i.i.i:                               ; preds = %bb.cv, %.preheader.i.i.i.i
  %.027.i.i.i.i = phi i64 [ %i.wp, %.preheader.i.i.i.i ], [ 0, %bb.cv ] ; 2 uses
  %i.wn = load ptr, ptr %i.kj, align 8, !tbaa !356
  %i.wo = getelementptr inbounds nuw [64 x i8], ptr %i.wn, i64 %.027.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.wo, i8 0, i64 16, i1 false)
  %i.wp = add nuw i64 %.027.i.i.i.i, 1            ; 2 uses
  %.val18.i.i.i.i = load i64, ptr %i.kk, align 8, !tbaa !294
  %i.wq = and i64 %.val18.i.i.i.i, 255
  %.0.highbits.i.i.i.i = lshr i64 %i.wp, %i.wq
  %i.wr = icmp eq i64 %.0.highbits.i.i.i.i, 0
  br i1 %i.wr, label %.preheader.i.i.i.i, label %bb.cw, !llvm.loop !1417

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.pre-phi.i.i.i.i = phi i64 [ %.pre29.i.i.i.i, %bb.cw ], [ %i.wd, %bb.cv ] ; 2 uses
  store i64 %.pre-phi.i.i.i.i, ptr %i.kk, align 8, !tbaa !294
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cu
end_hunk_8
begin_hunk_9_@_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE5EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE:bb.a
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !122
  %i.rd = trunc i64 %indvars.iv406 to i8
  %i.re = sext i32 %i.rc to i64
  %wide.trip.count = zext nneg i32 %i.qx to i64
  br label %bb.cb

._crit_edge365.loopexit:                          ; preds = %.loopexit
  %.pre430 = load ptr, ptr %i.it, align 8, !tbaa !237
  %.pre431 = load ptr, ptr %12, align 8, !tbaa !236
  br label %._crit_edge365

._crit_edge365:                                   ; preds = %._crit_edge365.loopexit, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196
  %i.rf = phi ptr [ %.pre431, %._crit_edge365.loopexit ], [ %i.py, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196 ] ; 2 uses
  %i.rg = phi ptr [ %.pre430, %._crit_edge365.loopexit ], [ %i.pz, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196 ] ; 2 uses
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 1 ; 2 uses
  %i.rh = ptrtoint ptr %i.rg to i64
  %i.ri = ptrtoint ptr %i.rf to i64
  %i.rj = sub i64 %i.rh, %i.ri
  %i.rk = sdiv exact i64 %i.rj, 120
  %i.rl = icmp ugt i64 %i.rk, %indvars.iv.next407
  br i1 %i.rl, label %.lr.ph367, label %._crit_edge368, !llvm.loop !1471

bb.cb:                                            ; preds = %.lr.ph364, %.loopexit
  %indvars.iv403 = phi i64 [ 0, %.lr.ph364 ], [ %indvars.iv.next404, %.loopexit ] ; 2 uses
  %i.rm = add nsw i64 %indvars.iv403, %i.re       ; 6 uses
  %i.rn = load ptr, ptr %12, align 8, !tbaa !236
  %i.ro = getelementptr inbounds nuw [120 x i8], ptr %i.rn, i64 %indvars.iv406 ; 10 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !185 ; 4 uses
  %.not.i197 = icmp eq ptr %i.rq, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ro, i64 58
  %.pre429 = load i8, ptr %.phi.trans.insert, align 2, !tbaa !162, !range !147 ; 2 uses
  br i1 %.not.i197, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.rr = trunc nuw i8 %.pre429 to i1
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ro, i64 57
  %i.rt = load i8, ptr %i.rs, align 1, !range !147
  %i.ru = trunc nuw i8 %i.rt to i1
  %or.cond.i = select i1 %i.rr, i1 true, i1 %i.ru
  br i1 %or.cond.i, label %.split, label %bb.cd

.split:                                           ; preds = %bb.cc
  %i.rv = lshr i64 %i.rm, 6
  %i.rw = and i64 %i.rv, 67108863
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %i.rw
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !80
  %i.rz = and i64 %i.rm, 63
  %i.sa = shl nuw i64 1, %i.rz
  %i.sb = and i64 %i.ry, %i.sa
  %.not.i.i199 = icmp eq i64 %i.sb, 0
  br i1 %.not.i.i199, label %bb.ce, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, !prof !292

bb.cd:                                            ; preds = %bb.cc
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ro, i64 59
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !186, !range !147, !noundef !148
  %i.se = trunc nuw i8 %i.sd to i1
  br i1 %i.se, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %.split317

.split317:                                        ; preds = %bb.cd
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !172
  %i.sh = getelementptr inbounds [4 x i8], ptr %i.sg, i64 %i.rm
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !122
  %i.sj = zext i32 %i.si to i64                   ; 2 uses
  %i.sk = lshr i64 %i.sj, 6
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %i.sk
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !80
  %i.sn = and i64 %i.sj, 63
  %i.so = shl nuw i64 1, %i.sn
  %i.sp = and i64 %i.so, %i.sm
  %.not.i7.i = icmp eq i64 %i.sp, 0
  br i1 %.not.i7.i, label %bb.ce, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !292

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.cd
  %i.sq = load i64, ptr %i.rq, align 8, !tbaa !80
  %i.sr = and i64 %i.sq, 1
  %.not.i6.i = icmp eq i64 %i.sr, 0
  br i1 %.not.i6.i, label %bb.ce, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !292

bb.ce:                                            ; preds = %.split317, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE5EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.142) #38
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  unreachable

bb.cg:                                            ; preds = %bb.cs
  %i.ss = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.ch:                                            ; preds = %bb.ce
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread: ; preds = %.split317, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.su = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !293
  %i.sw = trunc nsw i64 %i.rm to i32
  br label %bb.ci

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.cb, %.split
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !293 ; 2 uses
  %i.sz = trunc nuw i8 %.pre429 to i1
  %i.ta = trunc nsw i64 %i.rm to i32              ; 3 uses
  br i1 %i.sz, label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i, label %bb.ci

bb.ci:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.tb = phi i32 [ %i.sw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.ta, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.tc = phi ptr [ %i.sv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.sy, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.ro, i64 59
  %i.te = load i8, ptr %i.td, align 1, !tbaa !186, !range !147, !noundef !148
  %i.tf = trunc nuw i8 %i.te to i1
  br i1 %i.tf, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ro, i64 64
  %i.th = load i32, ptr %i.tg, align 8, !tbaa !187
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i

bb.ck:                                            ; preds = %bb.ci
  %i.ti = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !172
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.tj, i64 %i.rm
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !122
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i: ; preds = %bb.ck, %bb.cj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.tm = phi i32 [ %i.tb, %bb.ck ], [ %i.tb, %bb.cj ], [ %i.ta, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.tn = phi ptr [ %i.tc, %bb.ck ], [ %i.tc, %bb.cj ], [ %i.sy, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %.0.i.i.i = phi i32 [ %i.tl, %bb.ck ], [ %i.th, %bb.cj ], [ %i.ta, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.to = sext i32 %.0.i.i.i to i64
  %i.tp = getelementptr inbounds [4 x i8], ptr %i.tn, i64 %i.to
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !369 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1503
  store float %i.tq, ptr %i.a, align 4, !tbaa !369, !noalias !1503
  %i.tr = fcmp une float %i.tq, 0.000000e+00
  br i1 %i.tr, label %bb.cl, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE11computeHashIfEESt4pairImmERKT_.exit.i.i.i.i

bb.cl:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i
  %i.ts = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef 4, i64 noundef 3339675911)
          to label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE11computeHashIfEESt4pairImmERKT_.exit.i.i.i.i unwind label %bb.cm, !noalias !1503

bb.cm:                                            ; preds = %bb.cl
  %i.tt = landingpad { ptr, i32 }
          catch ptr null
  %i.tu = extractvalue { ptr, i32 } %i.tt, 0
  call void @__clang_call_terminate(ptr %i.tu) #41, !noalias !1503
  unreachable

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE11computeHashIfEESt4pairImmERKT_.exit.i.i.i.i: ; preds = %bb.cl, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i
  %i.tv = phi i64 [ 0, %_ZNK8facebook5velox13DecodedVector7valueAtIfEET_i.exit.i ], [ %i.ts, %bb.cl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1503
  %i.tw = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.tv) ; 2 uses
  %i.tx = lshr i64 %i.tw, 24
  %i.ty = or i64 %i.tx, 128                       ; 4 uses
  %i.tz = add i64 %i.tw, %i.tv                    ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.kk, align 8, !tbaa !294, !noalias !1504 ; 3 uses
  %i.ua = lshr i64 %.val.i.i.i.i.i, 8             ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ua, 0
  %.pre.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !367, !noalias !1504 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.thread31.i.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE11computeHashIfEESt4pairImmERKT_.exit.i.i.i.i
  %i.ub = shl nuw nsw i64 %i.ty, 1
  %i.uc = or disjoint i64 %i.ub, 1
  %i.ud = trunc nuw i64 %i.ty to i8
  %i.ue = insertelement <16 x i8> poison, i8 %i.ud, i64 0
  %i.uf = shufflevector <16 x i8> %i.ue, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ug = and i64 %.val.i.i.i.i.i, 255            ; 4 uses
  %i.uh = shl nuw i64 1, %i.ug
  br label %bb.co

bb.co:                                            ; preds = %bb.cr, %bb.cn
  %.023.i43.i.i.i.i.i = phi i64 [ %i.uh, %bb.cn ], [ %i.uz, %bb.cr ]
  %.025.i42.i.i.i.i.i = phi i64 [ %i.tz, %bb.cn ], [ %i.va, %bb.cr ] ; 2 uses
  %i.ui = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i42.i.i.i.i.i, i64 range(i64 0, 256) %i.ug)
  %i.uj = getelementptr inbounds nuw [192 x i8], ptr %.pre.i.i.i.i.i, i64 %i.ui ; 4 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 112
  call void @llvm.prefetch.p0(ptr nonnull %i.ul, i32 0, i32 3, i32 1), !noalias !1504
  %.val3633.i.i.i.i.i = load <16 x i8>, ptr %i.uj, align 16, !noalias !1504 ; 2 uses
  %i.um = icmp eq <16 x i8> %.val3633.i.i.i.i.i, %i.uf
  %i.un = bitcast <16 x i1> %i.um to i16
  %i.uo = and i16 %i.un, 16383
  %i.up = zext nneg i16 %i.uo to i32
  %i.uq = icmp ne ptr %i.uj, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ur = extractelement <16 x i8> %.val3633.i.i.i.i.i, i64 15
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %bb.cp, %bb.co
  %.sroa.07.0.i.i.i.i.i = phi i32 [ %i.up, %bb.co ], [ %i.uu, %bb.cp ] ; 4 uses
  %.not34.i.i.i.i.i = icmp eq i32 %.sroa.07.0.i.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.us = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.07.0.i.i.i.i.i, i1 true)
  %i.ut = add nsw i32 %.sroa.07.0.i.i.i.i.i, -1
  %i.uu = and i32 %i.ut, %.sroa.07.0.i.i.i.i.i
  %i.uv = zext nneg i32 %i.us to i64
  call void @llvm.assume(i1 %i.uq)
  %i.uw = getelementptr inbounds nuw [12 x i8], ptr %i.uk, i64 %i.uv ; 2 uses
  %.val38.i.i.i.i.i = load float, ptr %i.uw, align 4, !tbaa !369, !noalias !1504
  %i.ux = fcmp oeq float %i.tq, %.val38.i.i.i.i.i
  br i1 %i.ux, label %.loopexit, label %.critedge.i.i.i.i.i.i, !prof !63, !llvm.loop !1478

bb.cq:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.uy = icmp eq i8 %i.ur, 0
  br i1 %i.uy, label %.thread31.i.i.i.i.i, label %bb.cr, !prof !63

bb.cr:                                            ; preds = %bb.cq
  %i.uz = add i64 %.023.i43.i.i.i.i.i, -1         ; 2 uses
  %i.va = add i64 %i.uc, %.025.i42.i.i.i.i.i
  %.not.i.i.i.i.i.i200 = icmp eq i64 %i.uz, 0
  br i1 %.not.i.i.i.i.i.i200, label %.thread31.i.i.i.i.i, label %bb.co, !llvm.loop !1479

.thread31.i.i.i.i.i:                              ; preds = %bb.cr, %bb.cq, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE11computeHashIfEESt4pairImmERKT_.exit.i.i.i.i
  %.pre-phi51.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE11computeHashIfEESt4pairImmERKT_.exit.i.i.i.i ], [ %i.ug, %bb.cq ], [ %i.ug, %bb.cr ] ; 3 uses
  %i.vb = getelementptr i8, ptr %.pre.i.i.i.i.i, i64 14
  %.val.i.i.i.i.i.i = load i8, ptr %i.vb, align 1, !tbaa !94, !noalias !1504
  %i.vc = and i8 %.val.i.i.i.i.i.i, 15
  %i.vd = zext nneg i8 %i.vc to i64               ; 2 uses
  %i.ve = shl i64 %i.vd, %.pre-phi51.i.i.i.i.i    ; 2 uses
  %.not.i45.i.i.i.i.i = icmp ult i64 %i.ua, %i.ve
  br i1 %.not.i45.i.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %.thread31.i.i.i.i.i
  %i.vf = shl nuw i64 1, %.pre-phi51.i.i.i.i.i
  invoke fastcc void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %i.ua, i64 noundef %i.vf, i64 noundef %i.vd, i64 noundef %i.ve)
          to label %.noexc201 unwind label %bb.cg

.noexc201:                                        ; preds = %bb.cs
  %.pre47.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !367, !noalias !1504
  %.val35.pre.i.i.i.i.i = load i64, ptr %i.kk, align 8, !tbaa !294, !noalias !1504
  %.pre49.i.i.i.i.i = and i64 %.val35.pre.i.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i: ; preds = %.noexc201, %.thread31.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre-phi51.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre49.i.i.i.i.i, %.noexc201 ] ; 2 uses
  %i.vg = phi ptr [ %.pre.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre47.i.i.i.i.i, %.noexc201 ] ; 3 uses
  %i.vh = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.tz, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.vi = getelementptr inbounds nuw [192 x i8], ptr %i.vg, i64 %i.vh ; 2 uses
  %.val4435.i.i.i.i.i = load <16 x i8>, ptr %i.vi, align 16, !tbaa !94, !noalias !1504
  %i.vj = icmp slt <16 x i8> %.val4435.i.i.i.i.i, zeroinitializer
  %i.vk = bitcast <16 x i1> %i.vj to i16
  %i.vl = and i16 %i.vk, 16383                    ; 2 uses
  %.not36.i.i.i.i.i = icmp eq i16 %i.vl, 16383
  br i1 %.not36.i.i.i.i.i, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %i.vm = shl nuw nsw i64 %i.ty, 1
  %i.vn = or disjoint i64 %i.vm, 1
  br label %bb.cu

bb.cu:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKfN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, %bb.ct
  %i.vo = phi i64 [ %i.vh, %bb.ct ], [ %i.vu, %_ZN5folly3f146detail8F14ChunkISt4pairIKfN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %.030.i.i.i.i.i = phi i64 [ %i.tz, %bb.ct ], [ %i.vt, %_ZN5folly3f146detail8F14ChunkISt4pairIKfN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %i.vp = getelementptr inbounds nuw [192 x i8], ptr %i.vg, i64 %i.vo
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 15 ; 2 uses
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !371, !noalias !1504 ; 2 uses
  %.not.i46.i.i.i.i.i = icmp eq i8 %i.vr, -2
  br i1 %.not.i46.i.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkISt4pairIKfN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.vs = add i8 %i.vr, 1
  store i8 %i.vs, ptr %i.vq, align 1, !tbaa !371, !noalias !1504
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKfN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i

_ZN5folly3f146detail8F14ChunkISt4pairIKfN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i: ; preds = %bb.cv, %bb.cu
  %i.vt = add i64 %i.vn, %.030.i.i.i.i.i          ; 2 uses
  %i.vu = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.vt, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.vv = getelementptr inbounds nuw [192 x i8], ptr %i.vg, i64 %i.vu ; 3 uses
  %.val4337.i.i.i.i.i = load <16 x i8>, ptr %i.vv, align 16, !noalias !1504 ; 2 uses
  %i.vw = icmp slt <16 x i8> %.val4337.i.i.i.i.i, zeroinitializer
  %i.vx = bitcast <16 x i1> %i.vw to i16
  %i.vy = and i16 %i.vx, 16383                    ; 2 uses
  %.not38.i.i.i.i.i = icmp eq i16 %i.vy, 16383
  br i1 %.not38.i.i.i.i.i, label %bb.cu, label %bb.cw, !llvm.loop !1480

bb.cw:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKfN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i
  %i.vz = extractelement <16 x i8> %.val4337.i.i.i.i.i, i64 14
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vv, i64 14
  %i.wb = add i8 %i.vz, 16
  store i8 %i.wb, ptr %i.wa, align 2, !tbaa !372, !noalias !1504
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %.sroa.02.0.in.in.i.i.i.i.i = phi i16 [ %i.vl, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.vy, %bb.cw ]
  %.1.i.i.i.i.i = phi ptr [ %i.vi, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.vv, %bb.cw ] ; 3 uses
  %.sroa.02.0.in.i.i.i.i.i = xor i16 %.sroa.02.0.in.in.i.i.i.i.i, 16383
  %i.wc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.02.0.in.i.i.i.i.i, i1 true)
  %i.wd = zext nneg i16 %i.wc to i64              ; 3 uses
  %i.we = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 %i.wd ; 2 uses
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !94, !noalias !1504
  %i.wg = icmp eq i8 %i.wf, 0
  br i1 %i.wg, label %_ZN5folly3f146detail8F14ChunkISt4pairIKfN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKfN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.14) #44, !noalias !1504
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKfN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i: ; preds = %bb.cx
  %i.wh = trunc nuw i64 %i.ty to i8
  store i8 %i.wh, ptr %i.we, align 1, !tbaa !94, !noalias !1504
  %i.wi = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 16
  %i.wj = getelementptr inbounds nuw [12 x i8], ptr %i.wi, i64 %i.wd ; 4 uses
  %i.wk = icmp ne ptr %.1.i.i.i.i.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.wk)
  store float %i.tq, ptr %i.wj, align 4, !tbaa !374, !noalias !1504
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wj, i64 4
  store i64 0, ptr %i.wl, align 4, !noalias !1504
  %i.wm = lshr i64 %i.wd, 2
  %i.wn = ptrtoint ptr %i.wj to i64
  %i.wo = or i64 %i.wm, %i.wn                     ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.kn, align 8, !tbaa !1502, !noalias !1504
  %i.wp = icmp ult i64 %.val2.i.i.i.i.i.i.i, %i.wo
  br i1 %i.wp, label %bb.cz, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOfEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

bb.cz:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKfN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  store i64 %i.wo, ptr %i.kn, align 8, !tbaa !80, !noalias !1504
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOfEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOfEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i: ; preds = %bb.cz, %_ZN5folly3f146detail8F14ChunkISt4pairIKfN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.kk, align 8, !tbaa !294, !noalias !1504 ; 2 uses
  %i.wq = and i64 %.val.i.i.i.i.i.i.i.i, -256
  %i.wr = add i64 %i.wq, 256
  %i.ws = and i64 %.val.i.i.i.i.i.i.i.i, 255
  %i.wt = or disjoint i64 %i.wr, %i.ws
  store i64 %i.wt, ptr %i.kk, align 8, !tbaa !294, !noalias !1504
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cp, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOfEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i
  %.lcssa59.sink.i.i.i.i.i = phi ptr [ %i.wj, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIfN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOfEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKfS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %i.uw, %bb.cp ] ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 4
  store i32 %i.tm, ptr %i.wu, align 4, !tbaa !122
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 8
  store i8 %i.rd, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !94
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next404, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge365.loopexit, label %bb.cb, !llvm.loop !1481

_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIfE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE5EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit: ; preds = %.critedge.i.i.i, %._crit_edge368
  %.0 = phi i32 [ 0, %._crit_edge368 ], [ %i.pb, %.critedge.i.i.i ] ; 2 uses
  %i.wv = load ptr, ptr %13, align 8, !tbaa !367  ; 4 uses
  %i.ww = getelementptr i8, ptr %i.wv, i64 15
  %.val24.i.i.i.i = load i8, ptr %i.ww, align 1, !tbaa !305
  %i.wx = icmp eq i8 %.val24.i.i.i.i, -1
  br i1 %i.wx, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIfE5clearEv.exit, label %bb.da

bb.da:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIfE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE5EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit
  %.val23.i.i.i.i = load i64, ptr %i.kk, align 8, !tbaa !294 ; 4 uses
  %i.wy = and i64 %.val23.i.i.i.i, 252
  %.not.i.i.i.i202 = icmp eq i64 %i.wy, 0         ; 2 uses
  %i.wz = getelementptr i8, ptr %i.wv, i64 14
  %.val.i.i.i.i.i203 = load i8, ptr %i.wz, align 1, !tbaa !94
  %i.xa = and i8 %.val.i.i.i.i.i203, 15
  %i.xb = icmp ult i64 %.val23.i.i.i.i, 256
  br i1 %i.xb, label %bb.de, label %bb.db

bb.db:                                            ; preds = %bb.da
  br i1 %.not.i.i.i.i202, label %.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.db
  %.pre.i.i.i.i = and i64 %.val23.i.i.i.i, 255
  br label %bb.dd

bb.dc:                                            ; preds = %.preheader.i.i.i.i
  %i.xc = load ptr, ptr %13, align 8, !tbaa !367  ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 14
  store i8 %i.xa, ptr %i.xd, align 2, !tbaa !372
  br label %bb.dd

.preheader.i.i.i.i:                               ; preds = %bb.db, %.preheader.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %i.xg, %.preheader.i.i.i.i ], [ 0, %bb.db ] ; 2 uses
  %i.xe = load ptr, ptr %13, align 8, !tbaa !367
  %i.xf = getelementptr inbounds nuw [192 x i8], ptr %i.xe, i64 %.029.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.xf, i8 0, i64 16, i1 false)
  %i.xg = add nuw i64 %.029.i.i.i.i, 1            ; 2 uses
  %.val22.i.i.i.i = load i64, ptr %i.kk, align 8, !tbaa !294
  %i.xh = and i64 %.val22.i.i.i.i, 255            ; 2 uses
  %.0.highbits.i.i.i.i = lshr i64 %i.xg, %i.xh
  %i.xi = icmp eq i64 %.0.highbits.i.i.i.i, 0
  br i1 %i.xi, label %.preheader.i.i.i.i, label %bb.dc, !llvm.loop !1482

bb.dd:                                            ; preds = %bb.dc, %._crit_edge.i.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.xh, %bb.dc ] ; 2 uses
  %i.xj = phi ptr [ %i.wv, %._crit_edge.i.i.i.i ], [ %i.xc, %bb.dc ]
  store i64 0, ptr %i.kn, align 8, !tbaa !80
  store i64 %.pre-phi.i.i.i.i, ptr %i.kk, align 8, !tbaa !294
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.da
  %.val21.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i, %bb.dd ], [ %.val23.i.i.i.i, %bb.da ] ; 2 uses
  %i.xk = phi ptr [ %i.xj, %bb.dd ], [ %i.wv, %bb.da ] ; 2 uses
  br i1 %.not.i.i.i.i202, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIfE5clearEv.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.xl = icmp eq i64 %.val21.i.i.i.i, 0
end_hunk_9
begin_hunk_10_@_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE6EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE:bb.a
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !122
  %i.qy = trunc i64 %indvars.iv405 to i8
  %i.qz = sext i32 %i.qx to i64
  %wide.trip.count = zext nneg i32 %i.qs to i64
  br label %bb.cb

._crit_edge364.loopexit:                          ; preds = %.loopexit
  %.pre429 = load ptr, ptr %i.it, align 8, !tbaa !237
  %.pre430 = load ptr, ptr %12, align 8, !tbaa !236
  br label %._crit_edge364

._crit_edge364:                                   ; preds = %._crit_edge364.loopexit, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196
  %i.ra = phi ptr [ %.pre430, %._crit_edge364.loopexit ], [ %i.pt, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196 ] ; 2 uses
  %i.rb = phi ptr [ %.pre429, %._crit_edge364.loopexit ], [ %i.pu, %_ZNK8facebook5velox13DecodedVector5indexEi.exit196 ] ; 2 uses
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 1 ; 2 uses
  %i.rc = ptrtoint ptr %i.rb to i64
  %i.rd = ptrtoint ptr %i.ra to i64
  %i.re = sub i64 %i.rc, %i.rd
  %i.rf = sdiv exact i64 %i.re, 120
  %i.rg = icmp ugt i64 %i.rf, %indvars.iv.next406
  br i1 %i.rg, label %.lr.ph366, label %._crit_edge367, !llvm.loop !1535

bb.cb:                                            ; preds = %.lr.ph363, %.loopexit
  %indvars.iv402 = phi i64 [ 0, %.lr.ph363 ], [ %indvars.iv.next403, %.loopexit ] ; 2 uses
  %i.rh = add nsw i64 %indvars.iv402, %i.qz       ; 6 uses
  %i.ri = load ptr, ptr %12, align 8, !tbaa !236
  %i.rj = getelementptr inbounds nuw [120 x i8], ptr %i.ri, i64 %indvars.iv405 ; 10 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 24
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !185 ; 4 uses
  %.not.i197 = icmp eq ptr %i.rl, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.rj, i64 58
  %.pre428 = load i8, ptr %.phi.trans.insert, align 2, !tbaa !162, !range !147 ; 2 uses
  br i1 %.not.i197, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.rm = trunc nuw i8 %.pre428 to i1
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rj, i64 57
  %i.ro = load i8, ptr %i.rn, align 1, !range !147
  %i.rp = trunc nuw i8 %i.ro to i1
  %or.cond.i = select i1 %i.rm, i1 true, i1 %i.rp
  br i1 %or.cond.i, label %.split, label %bb.cd

.split:                                           ; preds = %bb.cc
  %i.rq = lshr i64 %i.rh, 6
  %i.rr = and i64 %i.rq, 67108863
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %i.rr
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !80
  %i.ru = and i64 %i.rh, 63
  %i.rv = shl nuw i64 1, %i.ru
  %i.rw = and i64 %i.rt, %i.rv
  %.not.i.i199 = icmp eq i64 %i.rw, 0
  br i1 %.not.i.i199, label %bb.ce, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, !prof !292

bb.cd:                                            ; preds = %bb.cc
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rj, i64 59
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !186, !range !147, !noundef !148
  %i.rz = trunc nuw i8 %i.ry to i1
  br i1 %i.rz, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %.split316

.split316:                                        ; preds = %bb.cd
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !172
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.sb, i64 %i.rh
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !122
  %i.se = zext i32 %i.sd to i64                   ; 2 uses
  %i.sf = lshr i64 %i.se, 6
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %i.sf
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !80
  %i.si = and i64 %i.se, 63
  %i.sj = shl nuw i64 1, %i.si
  %i.sk = and i64 %i.sj, %i.sh
  %.not.i7.i = icmp eq i64 %i.sk, 0
  br i1 %.not.i7.i, label %bb.ce, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !292

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.cd
  %i.sl = load i64, ptr %i.rl, align 8, !tbaa !80
  %i.sm = and i64 %i.sl, 1
  %.not.i6.i = icmp eq i64 %i.sm, 0
  br i1 %.not.i6.i, label %bb.ce, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !292

bb.ce:                                            ; preds = %.split316, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE6EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.142) #38
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  unreachable

bb.cg:                                            ; preds = %bb.cs
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ch:                                            ; preds = %bb.ce
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread: ; preds = %.split316, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !293
  %i.sr = trunc nsw i64 %i.rh to i32
  br label %bb.ci

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.cb, %.split
  %i.ss = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !293 ; 2 uses
  %i.su = trunc nuw i8 %.pre428 to i1
  %i.sv = trunc nsw i64 %i.rh to i32              ; 3 uses
  br i1 %i.su, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i, label %bb.ci

bb.ci:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.sw = phi i32 [ %i.sr, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.sv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.sx = phi ptr [ %i.sq, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.st, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.rj, i64 59
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !186, !range !147, !noundef !148
  %i.ta = trunc nuw i8 %i.sz to i1
  br i1 %i.ta, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.tb = getelementptr inbounds nuw i8, ptr %i.rj, i64 64
  %i.tc = load i32, ptr %i.tb, align 8, !tbaa !187
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i

bb.ck:                                            ; preds = %bb.ci
  %i.td = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !172
  %i.tf = getelementptr inbounds [4 x i8], ptr %i.te, i64 %i.rh
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !122
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i: ; preds = %bb.ck, %bb.cj, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.th = phi i32 [ %i.sw, %bb.ck ], [ %i.sw, %bb.cj ], [ %i.sv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.ti = phi ptr [ %i.sx, %bb.ck ], [ %i.sx, %bb.cj ], [ %i.st, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %.0.i.i.i = phi i32 [ %i.tg, %bb.ck ], [ %i.tc, %bb.cj ], [ %i.sv, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.tj = sext i32 %.0.i.i.i to i64
  %i.tk = getelementptr inbounds [8 x i8], ptr %i.ti, i64 %i.tj
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !381 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1567
  store double %i.tl, ptr %i.a, align 8, !tbaa !381, !noalias !1567
  %i.tm = fcmp une double %i.tl, 0.000000e+00
  br i1 %i.tm, label %bb.cl, label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE11computeHashIdEESt4pairImmERKT_.exit.i.i.i.i

bb.cl:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i
  %i.tn = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE11computeHashIdEESt4pairImmERKT_.exit.i.i.i.i unwind label %bb.cm, !noalias !1567

bb.cm:                                            ; preds = %bb.cl
  %i.to = landingpad { ptr, i32 }
          catch ptr null
  %i.tp = extractvalue { ptr, i32 } %i.to, 0
  call void @__clang_call_terminate(ptr %i.tp) #41, !noalias !1567
  unreachable

_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE11computeHashIdEESt4pairImmERKT_.exit.i.i.i.i: ; preds = %bb.cl, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i
  %i.tq = phi i64 [ 0, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i ], [ %i.tn, %bb.cl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1567
  %i.tr = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.tq) ; 2 uses
  %i.ts = lshr i64 %i.tr, 24
  %i.tt = or i64 %i.ts, 128                       ; 4 uses
  %i.tu = add i64 %i.tr, %i.tq                    ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.kk, align 8, !tbaa !294, !noalias !1568 ; 3 uses
  %i.tv = lshr i64 %.val.i.i.i.i.i, 8             ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.tv, 0
  %.pre.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !379, !noalias !1568 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %.thread31.i.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE11computeHashIdEESt4pairImmERKT_.exit.i.i.i.i
  %i.tw = shl nuw nsw i64 %i.tt, 1
  %i.tx = or disjoint i64 %i.tw, 1
  %i.ty = trunc nuw i64 %i.tt to i8
  %i.tz = insertelement <16 x i8> poison, i8 %i.ty, i64 0
  %i.ua = shufflevector <16 x i8> %i.tz, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ub = and i64 %.val.i.i.i.i.i, 255            ; 4 uses
  %i.uc = shl nuw i64 1, %i.ub
  br label %bb.co

bb.co:                                            ; preds = %bb.cr, %bb.cn
  %.023.i43.i.i.i.i.i = phi i64 [ %i.uc, %bb.cn ], [ %i.uu, %bb.cr ]
  %.025.i42.i.i.i.i.i = phi i64 [ %i.tu, %bb.cn ], [ %i.uv, %bb.cr ] ; 2 uses
  %i.ud = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i42.i.i.i.i.i, i64 range(i64 0, 256) %i.ub)
  %i.ue = getelementptr inbounds nuw [256 x i8], ptr %.pre.i.i.i.i.i, i64 %i.ud ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 144
  call void @llvm.prefetch.p0(ptr nonnull %i.ug, i32 0, i32 3, i32 1), !noalias !1568
  %.val3633.i.i.i.i.i = load <16 x i8>, ptr %i.ue, align 16, !noalias !1568 ; 2 uses
  %i.uh = icmp eq <16 x i8> %.val3633.i.i.i.i.i, %i.ua
  %i.ui = bitcast <16 x i1> %i.uh to i16
  %i.uj = and i16 %i.ui, 16383
  %i.uk = zext nneg i16 %i.uj to i32
  %i.ul = icmp ne ptr %i.ue, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.um = extractelement <16 x i8> %.val3633.i.i.i.i.i, i64 15
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %bb.cp, %bb.co
  %.sroa.07.0.i.i.i.i.i = phi i32 [ %i.uk, %bb.co ], [ %i.up, %bb.cp ] ; 4 uses
  %.not34.i.i.i.i.i = icmp eq i32 %.sroa.07.0.i.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.un = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.07.0.i.i.i.i.i, i1 true)
  %i.uo = add nsw i32 %.sroa.07.0.i.i.i.i.i, -1
  %i.up = and i32 %i.uo, %.sroa.07.0.i.i.i.i.i
  %i.uq = zext nneg i32 %i.un to i64
  call void @llvm.assume(i1 %i.ul)
  %i.ur = getelementptr inbounds nuw [16 x i8], ptr %i.uf, i64 %i.uq ; 2 uses
  %.val38.i.i.i.i.i = load double, ptr %i.ur, align 8, !tbaa !381, !noalias !1568
  %i.us = fcmp oeq double %i.tl, %.val38.i.i.i.i.i
  br i1 %i.us, label %.loopexit, label %.critedge.i.i.i.i.i.i, !prof !63, !llvm.loop !1542

bb.cq:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.ut = icmp eq i8 %i.um, 0
  br i1 %i.ut, label %.thread31.i.i.i.i.i, label %bb.cr, !prof !63

bb.cr:                                            ; preds = %bb.cq
  %i.uu = add i64 %.023.i43.i.i.i.i.i, -1         ; 2 uses
  %i.uv = add i64 %i.tx, %.025.i42.i.i.i.i.i
  %.not.i.i.i.i.i.i200 = icmp eq i64 %i.uu, 0
  br i1 %.not.i.i.i.i.i.i200, label %.thread31.i.i.i.i.i, label %bb.co, !llvm.loop !1543

.thread31.i.i.i.i.i:                              ; preds = %bb.cr, %bb.cq, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE11computeHashIdEESt4pairImmERKT_.exit.i.i.i.i
  %.pre-phi51.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %_ZNK5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE11computeHashIdEESt4pairImmERKT_.exit.i.i.i.i ], [ %i.ub, %bb.cq ], [ %i.ub, %bb.cr ] ; 3 uses
  %i.uw = getelementptr i8, ptr %.pre.i.i.i.i.i, i64 14
  %.val.i.i.i.i.i.i = load i8, ptr %i.uw, align 1, !tbaa !94, !noalias !1568
  %i.ux = and i8 %.val.i.i.i.i.i.i, 15
  %i.uy = zext nneg i8 %i.ux to i64               ; 2 uses
  %i.uz = shl i64 %i.uy, %.pre-phi51.i.i.i.i.i    ; 2 uses
  %.not.i45.i.i.i.i.i = icmp ult i64 %i.tv, %i.uz
  br i1 %.not.i45.i.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %.thread31.i.i.i.i.i
  %i.va = shl nuw i64 1, %.pre-phi51.i.i.i.i.i
  invoke fastcc void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %i.tv, i64 noundef %i.va, i64 noundef %i.uy, i64 noundef %i.uz)
          to label %.noexc201 unwind label %bb.cg

.noexc201:                                        ; preds = %bb.cs
  %.pre47.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !379, !noalias !1568
  %.val35.pre.i.i.i.i.i = load i64, ptr %i.kk, align 8, !tbaa !294, !noalias !1568
  %.pre49.i.i.i.i.i = and i64 %.val35.pre.i.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i: ; preds = %.noexc201, %.thread31.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i64 [ %.pre-phi51.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre49.i.i.i.i.i, %.noexc201 ] ; 2 uses
  %i.vb = phi ptr [ %.pre.i.i.i.i.i, %.thread31.i.i.i.i.i ], [ %.pre47.i.i.i.i.i, %.noexc201 ] ; 3 uses
  %i.vc = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.tu, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.vd = getelementptr inbounds nuw [256 x i8], ptr %i.vb, i64 %i.vc ; 2 uses
  %.val4435.i.i.i.i.i = load <16 x i8>, ptr %i.vd, align 16, !tbaa !94, !noalias !1568
  %i.ve = icmp slt <16 x i8> %.val4435.i.i.i.i.i, zeroinitializer
  %i.vf = bitcast <16 x i1> %i.ve to i16
  %i.vg = and i16 %i.vf, 16383                    ; 2 uses
  %.not36.i.i.i.i.i = icmp eq i16 %i.vg, 16383
  br i1 %.not36.i.i.i.i.i, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %i.vh = shl nuw nsw i64 %i.tt, 1
  %i.vi = or disjoint i64 %i.vh, 1
  br label %bb.cu

bb.cu:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKdN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, %bb.ct
  %i.vj = phi i64 [ %i.vc, %bb.ct ], [ %i.vp, %_ZN5folly3f146detail8F14ChunkISt4pairIKdN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %.030.i.i.i.i.i = phi i64 [ %i.tu, %bb.ct ], [ %i.vo, %_ZN5folly3f146detail8F14ChunkISt4pairIKdN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %i.vk = getelementptr inbounds nuw [256 x i8], ptr %i.vb, i64 %i.vj
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 15 ; 2 uses
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !383, !noalias !1568 ; 2 uses
  %.not.i46.i.i.i.i.i = icmp eq i8 %i.vm, -2
  br i1 %.not.i46.i.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkISt4pairIKdN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.vn = add i8 %i.vm, 1
  store i8 %i.vn, ptr %i.vl, align 1, !tbaa !383, !noalias !1568
  br label %_ZN5folly3f146detail8F14ChunkISt4pairIKdN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i

_ZN5folly3f146detail8F14ChunkISt4pairIKdN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i: ; preds = %bb.cv, %bb.cu
  %i.vo = add i64 %i.vi, %.030.i.i.i.i.i          ; 2 uses
  %i.vp = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.vo, i64 range(i64 0, 256) %.pre-phi.i.i.i.i.i) ; 2 uses
  %i.vq = getelementptr inbounds nuw [256 x i8], ptr %i.vb, i64 %i.vp ; 3 uses
  %.val4337.i.i.i.i.i = load <16 x i8>, ptr %i.vq, align 16, !noalias !1568 ; 2 uses
  %i.vr = icmp slt <16 x i8> %.val4337.i.i.i.i.i, zeroinitializer
  %i.vs = bitcast <16 x i1> %i.vr to i16
  %i.vt = and i16 %i.vs, 16383                    ; 2 uses
  %.not38.i.i.i.i.i = icmp eq i16 %i.vt, 16383
  br i1 %.not38.i.i.i.i.i, label %bb.cu, label %bb.cw, !llvm.loop !1544

bb.cw:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKdN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE25incrOutboundOverflowCountEv.exit.i.i.i.i.i
  %i.vu = extractelement <16 x i8> %.val4337.i.i.i.i.i, i64 14
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vq, i64 14
  %i.vw = add i8 %i.vu, 16
  store i8 %i.vw, ptr %i.vv, align 2, !tbaa !384, !noalias !1568
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i
  %.sroa.02.0.in.in.i.i.i.i.i = phi i16 [ %i.vg, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.vt, %bb.cw ]
  %.1.i.i.i.i.i = phi ptr [ %i.vd, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.vq, %bb.cw ] ; 3 uses
  %.sroa.02.0.in.i.i.i.i.i = xor i16 %.sroa.02.0.in.in.i.i.i.i.i, 16383
  %i.vx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.02.0.in.i.i.i.i.i, i1 true)
  %i.vy = zext nneg i16 %i.vx to i64              ; 3 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 %i.vy ; 2 uses
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !94, !noalias !1568
  %i.wb = icmp eq i8 %i.wa, 0
  br i1 %i.wb, label %_ZN5folly3f146detail8F14ChunkISt4pairIKdN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkISt4pairIKdN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.14) #44, !noalias !1568
  unreachable

_ZN5folly3f146detail8F14ChunkISt4pairIKdN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i: ; preds = %bb.cx
  %i.wc = trunc nuw i64 %i.tt to i8
  store i8 %i.wc, ptr %i.vz, align 1, !tbaa !94, !noalias !1568
  %i.wd = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 16
  %i.we = getelementptr inbounds nuw [16 x i8], ptr %i.wd, i64 %i.vy ; 4 uses
  %i.wf = icmp ne ptr %.1.i.i.i.i.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.wf)
  store double %i.tl, ptr %i.we, align 8, !tbaa !386, !noalias !1568
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  store i64 0, ptr %i.wg, align 8, !noalias !1568
  %i.wh = ptrtoint ptr %i.we to i64
  %i.wi = or i64 %i.wh, %i.vy                     ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.kn, align 8, !tbaa !1566, !noalias !1568
  %i.wj = icmp ult i64 %.val2.i.i.i.i.i.i.i, %i.wi
  br i1 %i.wj, label %bb.cz, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOdEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

bb.cz:                                            ; preds = %_ZN5folly3f146detail8F14ChunkISt4pairIKdN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  store i64 %i.wi, ptr %i.kn, align 8, !tbaa !80, !noalias !1568
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOdEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOdEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i: ; preds = %bb.cz, %_ZN5folly3f146detail8F14ChunkISt4pairIKdN8facebook5velox12_GLOBAL__N_112UpdateSourceEEE6setTagEmm.exit.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.kk, align 8, !tbaa !294, !noalias !1568 ; 2 uses
  %i.wk = and i64 %.val.i.i.i.i.i.i.i.i, -256
  %i.wl = add i64 %i.wk, 256
  %i.wm = and i64 %.val.i.i.i.i.i.i.i.i, 255
  %i.wn = or disjoint i64 %i.wl, %i.wm
  store i64 %i.wn, ptr %i.kk, align 8, !tbaa !294, !noalias !1568
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cp, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOdEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i
  %.lcssa59.sink.i.i.i.i.i = phi ptr [ %i.we, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE13insertAtBlankIJRKSt21piecewise_construct_tSt5tupleIJOdEESE_IJEEEEEvNS1_11F14ItemIterIPNS1_8F14ChunkISt4pairIKdS7_EEEEESK_ImmEDpOT_.exit.i.i.i.i.i ], [ %i.ur, %bb.cp ] ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 8
  store i32 %i.th, ptr %i.wo, align 4, !tbaa !122
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa59.sink.i.i.i.i.i, i64 12
  store i8 %i.qy, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !94
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next403, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge364.loopexit, label %bb.cb, !llvm.loop !1545

_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIdE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE6EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit: ; preds = %.critedge.i.i.i, %._crit_edge367
  %.0 = phi i32 [ 0, %._crit_edge367 ], [ %i.ow, %.critedge.i.i.i ] ; 2 uses
  %i.wp = load ptr, ptr %13, align 8, !tbaa !379  ; 4 uses
  %i.wq = getelementptr i8, ptr %i.wp, i64 15
  %.val24.i.i.i.i = load i8, ptr %i.wq, align 1, !tbaa !305
  %i.wr = icmp eq i8 %.val24.i.i.i.i, -1
  br i1 %i.wr, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIdE5clearEv.exit, label %bb.da

bb.da:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIdE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE6EEESt10shared_ptrIS5_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit
  %.val23.i.i.i.i = load i64, ptr %i.kk, align 8, !tbaa !294 ; 4 uses
  %i.ws = and i64 %.val23.i.i.i.i, 252
  %.not.i.i.i.i202 = icmp eq i64 %i.ws, 0         ; 2 uses
  %i.wt = getelementptr i8, ptr %i.wp, i64 14
  %.val.i.i.i.i.i203 = load i8, ptr %i.wt, align 1, !tbaa !94
  %i.wu = and i8 %.val.i.i.i.i.i203, 15
  %i.wv = icmp ult i64 %.val23.i.i.i.i, 256
  br i1 %i.wv, label %bb.de, label %bb.db

bb.db:                                            ; preds = %bb.da
  br i1 %.not.i.i.i.i202, label %.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.db
  %.pre.i.i.i.i = and i64 %.val23.i.i.i.i, 255
  br label %bb.dd

bb.dc:                                            ; preds = %.preheader.i.i.i.i
  %i.ww = load ptr, ptr %13, align 8, !tbaa !379  ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 14
  store i8 %i.wu, ptr %i.wx, align 2, !tbaa !384
  br label %bb.dd

.preheader.i.i.i.i:                               ; preds = %bb.db, %.preheader.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %i.xa, %.preheader.i.i.i.i ], [ 0, %bb.db ] ; 2 uses
  %i.wy = load ptr, ptr %13, align 8, !tbaa !379
  %i.wz = getelementptr inbounds nuw [256 x i8], ptr %i.wy, i64 %.029.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.wz, i8 0, i64 16, i1 false)
  %i.xa = add nuw i64 %.029.i.i.i.i, 1            ; 2 uses
  %.val22.i.i.i.i = load i64, ptr %i.kk, align 8, !tbaa !294
  %i.xb = and i64 %.val22.i.i.i.i, 255            ; 2 uses
  %.0.highbits.i.i.i.i = lshr i64 %i.xa, %i.xb
  %i.xc = icmp eq i64 %.0.highbits.i.i.i.i, 0
  br i1 %i.xc, label %.preheader.i.i.i.i, label %bb.dc, !llvm.loop !1546

bb.dd:                                            ; preds = %bb.dc, %._crit_edge.i.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.xb, %bb.dc ] ; 2 uses
  %i.xd = phi ptr [ %i.wp, %._crit_edge.i.i.i.i ], [ %i.ww, %bb.dc ]
  store i64 0, ptr %i.kn, align 8, !tbaa !80
  store i64 %.pre-phi.i.i.i.i, ptr %i.kk, align 8, !tbaa !294
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.da
  %.val21.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i, %bb.dd ], [ %.val23.i.i.i.i, %bb.da ] ; 2 uses
  %i.xe = phi ptr [ %i.xd, %bb.dd ], [ %i.wp, %bb.da ] ; 2 uses
  br i1 %.not.i.i.i.i202, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIdE5clearEv.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.xf = getelementptr i8, ptr %i.xe, i64 14
  %.val18.i.i.i.i = load i8, ptr %i.xf, align 1, !tbaa !94
end_hunk_10
begin_hunk_11_@_ZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE9EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEE:bb.a
.lr.ph358:                                        ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit195
  %i.px = getelementptr inbounds nuw i8, ptr %i.pp, i64 104
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !201
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.py, i64 %i.pr
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !122
  %i.qb = trunc i64 %indvars.iv400 to i8
  %i.qc = sext i32 %i.qa to i64
  %wide.trip.count = zext nneg i32 %i.pv to i64
  br label %bb.by

._crit_edge359.loopexit:                          ; preds = %.loopexit
  %.pre424 = load ptr, ptr %i.is, align 8, !tbaa !237
  %.pre425 = load ptr, ptr %12, align 8, !tbaa !236
  br label %._crit_edge359

._crit_edge359:                                   ; preds = %._crit_edge359.loopexit, %_ZNK8facebook5velox13DecodedVector5indexEi.exit195
  %i.qd = phi ptr [ %.pre425, %._crit_edge359.loopexit ], [ %i.ow, %_ZNK8facebook5velox13DecodedVector5indexEi.exit195 ] ; 2 uses
  %i.qe = phi ptr [ %.pre424, %._crit_edge359.loopexit ], [ %i.ox, %_ZNK8facebook5velox13DecodedVector5indexEi.exit195 ] ; 2 uses
  %indvars.iv.next401 = add nuw nsw i64 %indvars.iv400, 1 ; 2 uses
  %i.qf = ptrtoint ptr %i.qe to i64
  %i.qg = ptrtoint ptr %i.qd to i64
  %i.qh = sub i64 %i.qf, %i.qg
  %i.qi = sdiv exact i64 %i.qh, 120
  %i.qj = icmp ugt i64 %i.qi, %indvars.iv.next401
  br i1 %i.qj, label %.lr.ph361, label %._crit_edge362, !llvm.loop !1695

bb.by:                                            ; preds = %.lr.ph358, %.loopexit
  %indvars.iv397 = phi i64 [ 0, %.lr.ph358 ], [ %indvars.iv.next398, %.loopexit ] ; 2 uses
  %i.qk = add nsw i64 %indvars.iv397, %i.qc       ; 6 uses
  %i.ql = load ptr, ptr %12, align 8, !tbaa !236
  %i.qm = getelementptr inbounds nuw [120 x i8], ptr %i.ql, i64 %indvars.iv400 ; 10 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !185 ; 4 uses
  %.not.i196 = icmp eq ptr %i.qo, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.qm, i64 58
  %.pre423 = load i8, ptr %.phi.trans.insert, align 2, !tbaa !162, !range !147 ; 2 uses
  br i1 %.not.i196, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qp = trunc nuw i8 %.pre423 to i1
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qm, i64 57
  %i.qr = load i8, ptr %i.qq, align 1, !range !147
  %i.qs = trunc nuw i8 %i.qr to i1
  %or.cond.i = select i1 %i.qp, i1 true, i1 %i.qs
  br i1 %or.cond.i, label %.split, label %bb.ca

.split:                                           ; preds = %bb.bz
  %i.qt = lshr i64 %i.qk, 6
  %i.qu = and i64 %i.qt, 67108863
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.qu
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !80
  %i.qx = and i64 %i.qk, 63
  %i.qy = shl nuw i64 1, %i.qx
  %i.qz = and i64 %i.qw, %i.qy
  %.not.i.i198 = icmp eq i64 %i.qz, 0
  br i1 %.not.i.i198, label %bb.cb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, !prof !292

bb.ca:                                            ; preds = %bb.bz
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qm, i64 59
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !186, !range !147, !noundef !148
  %i.rc = trunc nuw i8 %i.rb to i1
  br i1 %i.rc, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %.split319

.split319:                                        ; preds = %bb.ca
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !172
  %i.rf = getelementptr inbounds [4 x i8], ptr %i.re, i64 %i.qk
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !122
  %i.rh = zext i32 %i.rg to i64                   ; 2 uses
  %i.ri = lshr i64 %i.rh, 6
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.qo, i64 %i.ri
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !80
  %i.rl = and i64 %i.rh, 63
  %i.rm = shl nuw i64 1, %i.rl
  %i.rn = and i64 %i.rm, %i.rk
  %.not.i7.i = icmp eq i64 %i.rn, 0
  br i1 %.not.i7.i, label %bb.cb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !292

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.ca
  %i.ro = load i64, ptr %i.qo, align 8, !tbaa !80
  %i.rp = and i64 %i.ro, 1
  %.not.i6.i = icmp eq i64 %i.rp, 0
  br i1 %.not.i6.i, label %bb.cb, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, !prof !292

bb.cb:                                            ; preds = %.split319, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE9EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.142) #38
          to label %bb.cc unwind label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  unreachable

bb.cd:                                            ; preds = %bb.cn
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.ce:                                            ; preds = %bb.cb
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread: ; preds = %.split319, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !293
  %i.ru = trunc nsw i64 %i.qk to i32
  br label %bb.cf

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %bb.by, %.split
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !293 ; 2 uses
  %i.rx = trunc nuw i8 %.pre423 to i1
  %i.ry = trunc nsw i64 %i.qk to i32              ; 3 uses
  br i1 %i.rx, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i, label %bb.cf

bb.cf:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.rz = phi i32 [ %i.ru, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.ry, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.sa = phi ptr [ %i.rt, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.thread ], [ %i.rw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ] ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.qm, i64 59
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !186, !range !147, !noundef !148
  %i.sd = trunc nuw i8 %i.sc to i1
  br i1 %i.sd, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.se = getelementptr inbounds nuw i8, ptr %i.qm, i64 64
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !187
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i

bb.ch:                                            ; preds = %bb.cf
  %i.sg = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !172
  %i.si = getelementptr inbounds [4 x i8], ptr %i.sh, i64 %i.qk
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !122
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i: ; preds = %bb.ch, %bb.cg, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.sk = phi i32 [ %i.rz, %bb.ch ], [ %i.rz, %bb.cg ], [ %i.ry, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.sl = phi ptr [ %i.sa, %bb.ch ], [ %i.sa, %bb.cg ], [ %i.rw, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %.0.i.i.i = phi i32 [ %i.sj, %bb.ch ], [ %i.sf, %bb.cg ], [ %i.ry, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ]
  %i.sm = sext i32 %.0.i.i.i to i64
  %i.sn = getelementptr inbounds [16 x i8], ptr %i.sl, i64 %i.sm ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.sn, align 8, !tbaa !80 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !80 ; 3 uses
  %i.so = xor i64 %.sroa.2.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  %i.sp = mul i64 %i.so, -7070675565921424023     ; 2 uses
  %i.sq = lshr i64 %i.sp, 47
  %i.sr = xor i64 %.sroa.0.0.copyload.i.i, %i.sq
  %i.ss = xor i64 %i.sr, %i.sp
  %i.st = mul i64 %i.ss, -7070675565921424023     ; 2 uses
  %i.su = lshr i64 %i.st, 47
  %i.sv = xor i64 %i.su, %i.st
  %i.sw = mul i64 %i.sv, -7070675565921424023     ; 2 uses
  %i.sx = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.sw) ; 2 uses
  %i.sy = lshr i64 %i.sx, 24
  %i.sz = or i64 %i.sy, 128                       ; 4 uses
  %i.ta = add i64 %i.sw, %i.sx                    ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %i.kk, align 8, !tbaa !294, !noalias !1726 ; 4 uses
  %i.tb = lshr i64 %.val.i.i.i.i.i, 8             ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.tb, 0
  br i1 %.not.i.i.i.i.i, label %..thread33_crit_edge.i.i.i.i.i, label %bb.ci

..thread33_crit_edge.i.i.i.i.i:                   ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.kj, align 8, !tbaa !396, !noalias !1726
  %.pre52.i.i.i.i.i = shl nuw i64 1, %.val.i.i.i.i.i
  br label %.thread33.i.i.i.i.i

bb.ci:                                            ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_9TimestampEEET_i.exit.i
  %i.tc = shl nuw nsw i64 %i.sz, 1
  %i.td = or disjoint i64 %i.tc, 1
  %i.te = trunc nuw i64 %i.sz to i8
  %i.tf = insertelement <16 x i8> poison, i8 %i.te, i64 0
  %i.tg = shufflevector <16 x i8> %i.tf, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.th = and i64 %.val.i.i.i.i.i, 255            ; 4 uses
  %i.ti = shl nuw i64 1, %i.th                    ; 3 uses
  %i.tj = load ptr, ptr %i.kj, align 8, !tbaa !396, !noalias !1726 ; 3 uses
  %.val36.i.i.i.i.i = load ptr, ptr %13, align 8  ; 2 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cm, %bb.ci
  %.022.i44.i.i.i.i.i = phi i64 [ %i.ti, %bb.ci ], [ %i.ui, %bb.cm ]
  %.024.i43.i.i.i.i.i = phi i64 [ %i.ta, %bb.ci ], [ %i.uj, %bb.cm ] ; 2 uses
  %i.tk = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i43.i.i.i.i.i, i64 range(i64 0, 256) %i.th)
  %i.tl = getelementptr inbounds nuw [64 x i8], ptr %i.tj, i64 %i.tk ; 3 uses
  %i.tm = load <16 x i8>, ptr %i.tl, align 16, !noalias !1726 ; 2 uses
  %i.tn = icmp eq <16 x i8> %i.tm, %i.tg
  %i.to = bitcast <16 x i1> %i.tn to i16
  %i.tp = and i16 %i.to, 4095
  %i.tq = zext nneg i16 %i.tp to i32
  %i.tr = icmp ne ptr %i.tl, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %i.tt = extractelement <16 x i8> %i.tm, i64 15
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %bb.ck, %bb.cj
  %.sroa.09.0.i.i.i.i.i = phi i32 [ %i.tq, %bb.cj ], [ %i.tw, %bb.ck ] ; 4 uses
  %.not35.i.i.i.i.i = icmp eq i32 %.sroa.09.0.i.i.i.i.i, 0
  br i1 %.not35.i.i.i.i.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.tu = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.09.0.i.i.i.i.i, i1 true)
  %i.tv = add nsw i32 %.sroa.09.0.i.i.i.i.i, -1
  %i.tw = and i32 %i.tv, %.sroa.09.0.i.i.i.i.i
  %i.tx = zext nneg i32 %i.tu to i64
  call void @llvm.assume(i1 %i.tr)
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %i.tx
  %.val39.i.i.i.i.i = load i32, ptr %i.ty, align 4, !tbaa !122, !noalias !1726
  %i.tz = zext i32 %.val39.i.i.i.i.i to i64       ; 2 uses
  %i.ua = getelementptr inbounds nuw [24 x i8], ptr %.val36.i.i.i.i.i, i64 %i.tz ; 2 uses
  %i.ub = load i64, ptr %i.ua, align 8, !tbaa !1728, !noalias !1726
  %i.uc = icmp eq i64 %.sroa.0.0.copyload.i.i, %i.ub
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.ue = load i64, ptr %i.ud, align 8, !noalias !1726
  %i.uf = icmp eq i64 %.sroa.2.0.copyload.i.i, %i.ue
  %i.ug = select i1 %i.uc, i1 %i.uf, i1 false
  br i1 %i.ug, label %.loopexit, label %.critedge.i.i.i.i.i.i, !prof !63, !llvm.loop !1702

bb.cl:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.uh = icmp eq i8 %i.tt, 0
  br i1 %i.uh, label %.thread33.i.i.i.i.i, label %bb.cm, !prof !63

bb.cm:                                            ; preds = %bb.cl
  %i.ui = add i64 %.022.i44.i.i.i.i.i, -1         ; 2 uses
  %i.uj = add i64 %i.td, %.024.i43.i.i.i.i.i
  %.not.i.i.i.i.i.i199 = icmp eq i64 %i.ui, 0
  br i1 %.not.i.i.i.i.i.i199, label %.thread33.i.i.i.i.i, label %bb.cj, !llvm.loop !1703

.thread33.i.i.i.i.i:                              ; preds = %bb.cm, %bb.cl, %..thread33_crit_edge.i.i.i.i.i
  %.pre-phi53.i.i.i.i.i = phi i64 [ %.pre52.i.i.i.i.i, %..thread33_crit_edge.i.i.i.i.i ], [ %i.ti, %bb.cl ], [ %i.ti, %bb.cm ] ; 2 uses
  %.pre-phi.i.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %..thread33_crit_edge.i.i.i.i.i ], [ %i.th, %bb.cl ], [ %i.th, %bb.cm ]
  %i.uk = phi ptr [ %.pre.i.i.i.i.i, %..thread33_crit_edge.i.i.i.i.i ], [ %i.tj, %bb.cl ], [ %i.tj, %bb.cm ] ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 12
  %.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.ul, align 1, !noalias !1726
  %i.um = zext i16 %.0.copyload.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.un = add i64 %.pre-phi53.i.i.i.i.i, -1
  %i.uo = lshr i64 %i.un, 12
  %i.up = add nuw nsw i64 %i.uo, 1
  %i.uq = mul i64 %i.up, %i.um                    ; 2 uses
  %.not.i40.i.i.i.i.i = icmp ult i64 %i.tb, %i.uq
  br i1 %.not.i40.i.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %.thread33.i.i.i.i.i
  invoke fastcc void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %13, i64 noundef %i.tb, i64 noundef %.pre-phi53.i.i.i.i.i, i64 noundef %i.um, i64 noundef %i.uq)
          to label %.noexc200 unwind label %bb.cd

.noexc200:                                        ; preds = %bb.cn
  %.pre49.i.i.i.i.i = load ptr, ptr %i.kj, align 8, !tbaa !396, !noalias !1726
  %.val35.pre.i.i.i.i.i = load i64, ptr %i.kk, align 8, !tbaa !294, !noalias !1726
  %.pre54.i.i.i.i.i = and i64 %.val35.pre.i.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i.i: ; preds = %.noexc200, %.thread33.i.i.i.i.i
  %.pre-phi55.i.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i.i, %.thread33.i.i.i.i.i ], [ %.pre54.i.i.i.i.i, %.noexc200 ] ; 2 uses
  %i.ur = phi ptr [ %i.uk, %.thread33.i.i.i.i.i ], [ %.pre49.i.i.i.i.i, %.noexc200 ] ; 3 uses
  %i.us = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ta, i64 range(i64 0, 256) %.pre-phi55.i.i.i.i.i) ; 2 uses
  %i.ut = getelementptr inbounds nuw [64 x i8], ptr %i.ur, i64 %i.us ; 2 uses
  %i.uu = load <16 x i8>, ptr %i.ut, align 16, !tbaa !94, !noalias !1726
  %i.uv = icmp slt <16 x i8> %i.uu, zeroinitializer
  %i.uw = bitcast <16 x i1> %i.uv to i16
  %i.ux = and i16 %i.uw, 4095                     ; 2 uses
  %.not36.i.i.i.i.i = icmp eq i16 %i.ux, 4095
  br i1 %.not36.i.i.i.i.i, label %bb.co, label %bb.cs

bb.co:                                            ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i.i
  %i.uy = shl nuw nsw i64 %i.sz, 1
  %i.uz = or disjoint i64 %i.uy, 1
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, %bb.co
  %i.va = phi i64 [ %i.us, %bb.co ], [ %i.vg, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %.030.i.i.i.i.i = phi i64 [ %i.ta, %bb.co ], [ %i.vf, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i.i ]
  %i.vb = getelementptr inbounds nuw [64 x i8], ptr %i.ur, i64 %i.va
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 15 ; 2 uses
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !361, !noalias !1726 ; 2 uses
  %.not.i41.i.i.i.i.i = icmp eq i8 %i.vd, -2
  br i1 %.not.i41.i.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ve = add i8 %i.vd, 1
  store i8 %i.ve, ptr %i.vc, align 1, !tbaa !361, !noalias !1726
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i.i

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i.i: ; preds = %bb.cq, %bb.cp
  %i.vf = add i64 %i.uz, %.030.i.i.i.i.i          ; 2 uses
  %i.vg = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.vf, i64 range(i64 0, 256) %.pre-phi55.i.i.i.i.i) ; 2 uses
  %i.vh = getelementptr inbounds nuw [64 x i8], ptr %i.ur, i64 %i.vg ; 3 uses
  %i.vi = load <16 x i8>, ptr %i.vh, align 16, !noalias !1726 ; 2 uses
  %i.vj = icmp slt <16 x i8> %i.vi, zeroinitializer
  %i.vk = bitcast <16 x i1> %i.vj to i16
  %i.vl = and i16 %i.vk, 4095                     ; 2 uses
  %.not37.i.i.i.i.i = icmp eq i16 %i.vl, 4095
  br i1 %.not37.i.i.i.i.i, label %bb.cp, label %bb.cr, !llvm.loop !1704

bb.cr:                                            ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i.i
  %i.vm = extractelement <16 x i8> %i.vi, i64 14
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vh, i64 14
  %i.vo = add i8 %i.vm, 16
  store i8 %i.vo, ptr %i.vn, align 2, !tbaa !362, !noalias !1726
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i.i
  %.sroa.03.0.in.in.i.i.i.i.i = phi i16 [ %i.ux, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.vl, %bb.cr ]
  %.1.i.i.i.i.i = phi ptr [ %i.ut, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i.i ], [ %i.vh, %bb.cr ] ; 3 uses
  %.sroa.03.0.in.i.i.i.i.i = xor i16 %.sroa.03.0.in.in.i.i.i.i.i, 4095
  %i.vp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.03.0.in.i.i.i.i.i, i1 true)
  %i.vq = zext nneg i16 %i.vp to i64              ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 %i.vq ; 2 uses
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !94, !noalias !1726
  %i.vt = icmp eq i8 %i.vs, 0
  br i1 %i.vt, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.14) #44, !noalias !1726
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i.i.i.i.i: ; preds = %bb.cs
  %i.vu = trunc nuw i64 %i.sz to i8
  store i8 %i.vu, ptr %i.vr, align 1, !tbaa !94, !noalias !1726
  %i.vv = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 16
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %i.vq ; 2 uses
  %i.vx = icmp ne ptr %.1.i.i.i.i.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.vx)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %13, align 8, !tbaa !394, !noalias !1726, !nonnull !148, !noundef !148
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.kk, align 8, !tbaa !294, !noalias !1726
  %i.vy = lshr i64 %.val1.i.i.i.i.i.i.i, 8        ; 2 uses
  %i.vz = trunc i64 %i.vy to i32
  store i32 %i.vz, ptr %i.vw, align 4, !tbaa !122, !noalias !1726
  %i.wa = and i64 %i.vy, 4294967295
  %i.wb = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i.i, i64 %i.wa ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.wb, align 8, !tbaa !80, !noalias !1726
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  store i64 %.sroa.2.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !80, !noalias !1726
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 16
  store i64 0, ptr %i.wc, align 8, !noalias !1726
  %i.wd = load i64, ptr %i.kk, align 8, !tbaa !294, !noalias !1726 ; 2 uses
  %i.we = and i64 %i.wd, -256
  %i.wf = add i64 %i.we, 256
  %i.wg = and i64 %i.wd, 255
  %i.wh = or disjoint i64 %i.wf, %i.wg
  store i64 %i.wh, ptr %i.kk, align 8, !tbaa !294, !noalias !1726
  %.val4.pre.i.i.i = load ptr, ptr %13, align 8, !noalias !1729
  %.pre.i.i.i = load i32, ptr %i.vw, align 4, !tbaa !122, !noalias !1729
  %.pre22.i.i.i = zext i32 %.pre.i.i.i to i64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ck, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i.i.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre22.i.i.i, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i.i.i.i.i ], [ %i.tz, %bb.ck ]
  %.val4.i.i.i = phi ptr [ %.val4.pre.i.i.i, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i.i.i.i.i ], [ %.val36.i.i.i.i.i, %bb.ck ]
  %i.wi = getelementptr inbounds nuw [24 x i8], ptr %.val4.i.i.i, i64 %.pre-phi.i.i.i ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  store i32 %i.sk, ptr %i.wj, align 4, !tbaa !122
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wi, i64 20
  store i8 %i.qb, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !94
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next398, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge359.loopexit, label %bb.by, !llvm.loop !1705

_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowINS0_9TimestampEE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE9EEESt10shared_ptrIS6_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit: ; preds = %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE9EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i, %._crit_edge362
  %.0 = phi i32 [ 0, %._crit_edge362 ], [ %i.ou, %_ZZNK8facebook5velox9MapVector10updateImplILNS0_8TypeKindE9EEESt10shared_ptrIS1_ERKN5folly5RangeIPNS0_13DecodedVectorEEEENKUlNS0_12_GLOBAL__N_112UpdateSourceEE_clESE_.exit.i ] ; 2 uses
  %i.wk = load ptr, ptr %i.kj, align 8, !tbaa !396 ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 15
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !305
  %i.wn = icmp eq i8 %i.wm, -1
  br i1 %i.wn, label %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowINS0_9TimestampEE5clearEv.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowINS0_9TimestampEE12forEachEntryIZNKS0_9MapVector10updateImplILNS0_8TypeKindE9EEESt10shared_ptrIS6_ERKN5folly5RangeIPNS0_13DecodedVectorEEEEUlNS1_12UpdateSourceEE_EEvOT_.exit
  %.val19.i.i.i.i = load i64, ptr %i.kk, align 8, !tbaa !294 ; 3 uses
  %i.wo = and i64 %.val19.i.i.i.i, 255            ; 3 uses
  %i.wp = icmp samesign ugt i64 %i.wo, 3          ; 2 uses
  %i.wq = getelementptr i8, ptr %i.wk, i64 12
  %.val20.val.i.i.i.i = load i16, ptr %i.wq, align 1 ; 2 uses
  %i.wr = zext i16 %.val20.val.i.i.i.i to i64
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.wo
  %i.ws = xor i64 %notmask.i.i.i.i.i, -1
  %i.wt = lshr i64 %i.ws, 12
  %i.wu = add nuw nsw i64 %i.wt, 1
  %i.wv = icmp ult i64 %.val19.i.i.i.i, 256
  br i1 %i.wv, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  br i1 %i.wp, label %bb.cx, label %.preheader.i.i.i.i

bb.cw:                                            ; preds = %.preheader.i.i.i.i
  %i.ww = load ptr, ptr %i.kj, align 8, !tbaa !396
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 12
  store i16 %.val20.val.i.i.i.i, ptr %i.wx, align 1
  %.pre.i.i.i.i = load i64, ptr %i.kk, align 8, !tbaa !294
  %.pre29.i.i.i.i = and i64 %.pre.i.i.i.i, 255
  br label %bb.cx

.preheader.i.i.i.i:                               ; preds = %bb.cv, %.preheader.i.i.i.i
  %.027.i.i.i.i = phi i64 [ %i.xa, %.preheader.i.i.i.i ], [ 0, %bb.cv ] ; 2 uses
  %i.wy = load ptr, ptr %i.kj, align 8, !tbaa !396
  %i.wz = getelementptr inbounds nuw [64 x i8], ptr %i.wy, i64 %.027.i.i.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.wz, i8 0, i64 16, i1 false)
  %i.xa = add nuw i64 %.027.i.i.i.i, 1            ; 2 uses
  %.val18.i.i.i.i = load i64, ptr %i.kk, align 8, !tbaa !294
  %i.xb = and i64 %.val18.i.i.i.i, 255
  %.0.highbits.i.i.i.i = lshr i64 %i.xa, %i.xb
  %i.xc = icmp eq i64 %.0.highbits.i.i.i.i, 0
  br i1 %i.xc, label %.preheader.i.i.i.i, label %bb.cw, !llvm.loop !1706

end_hunk_11
begin_hunk_12_@_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE20reserveForInsertImplEmmmm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(96) dereferenceable(96) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !404, !range !147, !noundef !148
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2109, !nonnull !148
  %i.e = load i8, ptr %i.d, align 1, !tbaa !149, !range !147, !noundef !148
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.e, !prof !63

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2110, !nonnull !148, !align !208
  %i.i = load i64, ptr %i.h, align 8, !tbaa !80
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2111, !nonnull !148, !align !208
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !435
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2112, !nonnull !148, !align !208
  %i.o = load i64, ptr %i.n, align 8, !tbaa !80
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2113 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2114, !nonnull !148, !align !208
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !271
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2115, !nonnull !148, !align !208
  %i.w = load i64, ptr %i.v, align 8, !tbaa !80
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2111, !nonnull !148, !align !208
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !435
  store ptr %i.z, ptr %i.q, align 8, !tbaa !379
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !2116, !nonnull !148, !align !208
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !80 ; 2 uses
  %i.ae = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ad, i1 true)
  %i.af = icmp eq i64 %i.ad, 0
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !294
  %i.ah = and i64 %i.ag, -256
  %i.ai = select i1 %i.af, i64 4294967295, i64 %i.ae
  %i.aj = or i64 %i.ah, %i.ai
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !294
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.02.i.i = phi ptr [ %i.l, %bb.d ], [ %i.t, %bb.e ] ; 2 uses
  %.0.i.i = phi i64 [ %i.o, %bb.d ], [ %i.w, %bb.e ]
  %.not.i.i.i = icmp eq ptr %.02.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i, i64 noundef %.0.i.i) #39
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_20ValueContainerPolicyIdN8facebook5velox12_GLOBAL__N_112UpdateSourceEvvvEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowINS0_10StringViewEE6insertEPKNS0_13DecodedVectorEia(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i8 noundef signext %3) unnamed_addr #25 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.d = load i8, ptr %i.c, align 2, !tbaa !162, !range !147, !noundef !148
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 59
  %i.g = load i8, ptr %i.f, align 1, !tbaa !186, !range !147, !noundef !148
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !187
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !172
  %i.m = sext i32 %2 to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !122
  br label %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit

_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.0.i.i = phi i32 [ %i.o, %bb.d ], [ %i.j, %bb.c ], [ %2, %bb.a ]
  %i.p = sext i32 %.0.i.i to i64
  %i.q = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 8
  %.fr.i.i.i.i = freeze i64 %.sroa.0.0.copyload.i ; 7 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !94 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !2126
  store i64 %.fr.i.i.i.i, ptr %4, align 8, !noalias !2126
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.r, align 8, !noalias !2126
  %i.s = trunc i64 %.fr.i.i.i.i to i32            ; 2 uses
  %i.t = icmp ult i32 %i.s, 13                    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.v = select i1 %i.t, ptr %i.u, ptr %.sroa.2.0.copyload.i
  %i.w = and i64 %.fr.i.i.i.i, 4294967295         ; 2 uses
  %i.x = call noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef 1, ptr noundef %i.v, i64 noundef %i.w), !noalias !2126 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !2126
  %i.y = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.x) ; 2 uses
  %i.z = lshr i64 %i.y, 24
  %i.aa = or i64 %i.z, 128                        ; 4 uses
  %i.ab = add i64 %i.y, %i.x                      ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.val.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !294, !noalias !2127 ; 4 uses
  %i.ad = lshr i64 %.val.i.i.i.i, 8               ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i, label %..thread36_crit_edge.i.i.i.i, label %bb.e

..thread36_crit_edge.i.i.i.i:                     ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !391, !noalias !2127
  %.pre103.i.i.i.i = shl nuw i64 1, %.val.i.i.i.i
  br label %.thread36.i.i.i.i

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtINS0_10StringViewEEET_i.exit
  %i.ae = shl nuw nsw i64 %i.aa, 1
  %i.af = or disjoint i64 %i.ae, 1                ; 3 uses
  %i.ag = trunc nuw i64 %i.aa to i8
  %i.ah = insertelement <16 x i8> poison, i8 %i.ag, i64 0
  %i.ai = shufflevector <16 x i8> %i.ah, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.aj = and i64 %.val.i.i.i.i, 255              ; 10 uses
  %i.ak = shl nuw i64 1, %i.aj                    ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !391, !noalias !2127 ; 9 uses
  %.val36.i.i.i.i = load ptr, ptr %0, align 8, !noalias !2127 ; 6 uses
  %i.an = add nsw i64 %i.w, -4
  br i1 %i.t, label %.split65.us.i.i.i.i, label %.split65.i.i.i.i.preheader

.split65.i.i.i.i.preheader:                       ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 4
  br label %.split65.i.i.i.i

.split65.us.i.i.i.i:                              ; preds = %bb.e
  %i.ap = icmp samesign ult i32 %i.s, 5
  br i1 %i.ap, label %.split65.us.split.us.i.i.i.i, label %.split65.us.split.i.i.i.i.preheader, !llvm.loop !2123

.split65.us.split.i.i.i.i.preheader:              ; preds = %.split65.us.i.i.i.i
  %i.aq = ptrtoint ptr %.sroa.2.0.copyload.i to i64
  br label %.split65.us.split.i.i.i.i

.split65.us.split.us.i.i.i.i:                     ; preds = %.split65.us.i.i.i.i, %bb.g
  %.022.i64.us.us.i.i.i.i = phi i64 [ %i.bk, %bb.g ], [ %i.ak, %.split65.us.i.i.i.i ]
  %.024.i63.us.us.i.i.i.i = phi i64 [ %i.bl, %bb.g ], [ %i.ab, %.split65.us.i.i.i.i ] ; 2 uses
  %i.ar = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i63.us.us.i.i.i.i, i64 range(i64 0, 256) %i.aj)
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %i.am, i64 %i.ar ; 3 uses
  %i.at = load <16 x i8>, ptr %i.as, align 16, !noalias !2127 ; 2 uses
  %i.au = icmp eq <16 x i8> %i.at, %i.ai
  %i.av = bitcast <16 x i1> %i.au to i16
  %i.aw = and i16 %i.av, 4095                     ; 2 uses
  %.not3846.us.us.i.i.i.i = icmp eq i16 %i.aw, 0
  %i.ax = extractelement <16 x i8> %i.at, i64 15
  br i1 %.not3846.us.us.i.i.i.i, label %.critedge.i._crit_edge.split.us.split.us.us.us.i.i.i.i, label %.lr.ph.us.us.i.i.i.i

.lr.ph.us.us.i.i.i.i:                             ; preds = %.split65.us.split.us.i.i.i.i
  %i.ay = zext nneg i16 %i.aw to i32
  %i.az = icmp ne ptr %i.as, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i.backedge.us.us.us.us.i.i.i.i, %.lr.ph.us.us.i.i.i.i
  %.sroa.09.047.us.us.us.us.i.i.i.i = phi i32 [ %i.ay, %.lr.ph.us.us.i.i.i.i ], [ %i.bi, %.critedge.i.backedge.us.us.us.us.i.i.i.i ] ; 3 uses
  %i.bb = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.09.047.us.us.us.us.i.i.i.i, i1 true)
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bc
  %.val37.us.us.us.us.i.i.i.i = load i32, ptr %i.bd, align 4, !tbaa !122, !noalias !2127
  %i.be = zext i32 %.val37.us.us.us.us.i.i.i.i to i64 ; 2 uses
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %.val36.i.i.i.i, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !80, !noalias !2127
  %.not.i.i.i.us.us.us.us.i.i.i.i = icmp eq i64 %.fr.i.i.i.i, %i.bg
  br i1 %.not.i.i.i.us.us.us.us.i.i.i.i, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox10StringViewENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEEixEOS6_.exit, label %.critedge.i.backedge.us.us.us.us.i.i.i.i, !prof !2128

.critedge.i.backedge.us.us.us.us.i.i.i.i:         ; preds = %bb.f
  %i.bh = add nsw i32 %.sroa.09.047.us.us.us.us.i.i.i.i, -1
  %i.bi = and i32 %i.bh, %.sroa.09.047.us.us.us.us.i.i.i.i ; 2 uses
  %.not38.us.us.us.us.i.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not38.us.us.us.us.i.i.i.i, label %.critedge.i._crit_edge.split.us.split.us.us.us.i.i.i.i, label %bb.f, !llvm.loop !2123

.critedge.i._crit_edge.split.us.split.us.us.us.i.i.i.i: ; preds = %.critedge.i.backedge.us.us.us.us.i.i.i.i, %.split65.us.split.us.i.i.i.i
  %i.bj = icmp eq i8 %i.ax, 0
  br i1 %i.bj, label %.thread36.i.i.i.i, label %bb.g, !prof !63

bb.g:                                             ; preds = %.critedge.i._crit_edge.split.us.split.us.us.us.i.i.i.i
  %i.bk = add i64 %.022.i64.us.us.i.i.i.i, -1     ; 2 uses
  %i.bl = add i64 %.024.i63.us.us.i.i.i.i, %i.af
  %.not.i.us.us.i.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.us.us.i.i.i.i, label %.thread36.i.i.i.i, label %.split65.us.split.us.i.i.i.i, !llvm.loop !2124

.split65.us.split.i.i.i.i:                        ; preds = %.split65.us.split.i.i.i.i.preheader, %bb.i
  %.022.i64.us.i.i.i.i = phi i64 [ %i.ci, %bb.i ], [ %i.ak, %.split65.us.split.i.i.i.i.preheader ]
  %.024.i63.us.i.i.i.i = phi i64 [ %i.cj, %bb.i ], [ %i.ab, %.split65.us.split.i.i.i.i.preheader ] ; 2 uses
  %i.bm = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i63.us.i.i.i.i, i64 range(i64 0, 256) %i.aj)
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.am, i64 %i.bm ; 3 uses
  %i.bo = load <16 x i8>, ptr %i.bn, align 16, !noalias !2127 ; 2 uses
  %i.bp = icmp eq <16 x i8> %i.bo, %i.ai
  %i.bq = bitcast <16 x i1> %i.bp to i16
  %i.br = and i16 %i.bq, 4095                     ; 2 uses
  %.not3846.us.i.i.i.i = icmp eq i16 %i.br, 0
  %i.bs = extractelement <16 x i8> %i.bo, i64 15
  br i1 %.not3846.us.i.i.i.i, label %.critedge.i._crit_edge.split.us.split.us72.i.i.i.i, label %.lr.ph.us.i.i.i.i

.lr.ph.us.i.i.i.i:                                ; preds = %.split65.us.split.i.i.i.i
  %i.bt = zext nneg i16 %i.br to i32
  %i.bu = icmp ne ptr %i.bn, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i.backedge.us.us70.i.i.i.i, %.lr.ph.us.i.i.i.i
  %.sroa.09.047.us.us67.i.i.i.i = phi i32 [ %i.bt, %.lr.ph.us.i.i.i.i ], [ %i.by, %.critedge.i.backedge.us.us70.i.i.i.i ] ; 3 uses
  %i.bw = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.09.047.us.us67.i.i.i.i, i1 true)
  %i.bx = add nsw i32 %.sroa.09.047.us.us67.i.i.i.i, -1
  %i.by = and i32 %i.bx, %.sroa.09.047.us.us67.i.i.i.i ; 2 uses
  %i.bz = zext nneg i32 %i.bw to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bz
  %.val37.us.us68.i.i.i.i = load i32, ptr %i.ca, align 4, !tbaa !122, !noalias !2127
  %i.cb = zext i32 %.val37.us.us68.i.i.i.i to i64 ; 2 uses
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %.val36.i.i.i.i, i64 %i.cb ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !80, !noalias !2127
  %.not.i.i.i.us.us69.i.i.i.i = icmp eq i64 %.fr.i.i.i.i, %i.cd
  br i1 %.not.i.i.i.us.us69.i.i.i.i, label %.split14.us.us.i.i.i.i, label %.critedge.i.backedge.us.us70.i.i.i.i, !prof !2128

.split14.us.us.i.i.i.i:                           ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !80, !noalias !2127
  %i.cg = icmp eq i64 %i.cf, %i.aq
  br i1 %i.cg, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox10StringViewENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEEixEOS6_.exit, label %.critedge.i.backedge.us.us70.i.i.i.i, !prof !2129

.critedge.i.backedge.us.us70.i.i.i.i:             ; preds = %.split14.us.us.i.i.i.i, %bb.h
  %.not38.us.us71.i.i.i.i = icmp eq i32 %i.by, 0
  br i1 %.not38.us.us71.i.i.i.i, label %.critedge.i._crit_edge.split.us.split.us72.i.i.i.i, label %bb.h, !llvm.loop !2123

.critedge.i._crit_edge.split.us.split.us72.i.i.i.i: ; preds = %.critedge.i.backedge.us.us70.i.i.i.i, %.split65.us.split.i.i.i.i
  %i.ch = icmp eq i8 %i.bs, 0
  br i1 %i.ch, label %.thread36.i.i.i.i, label %bb.i, !prof !63

bb.i:                                             ; preds = %.critedge.i._crit_edge.split.us.split.us72.i.i.i.i
  %i.ci = add i64 %.022.i64.us.i.i.i.i, -1        ; 2 uses
  %i.cj = add i64 %.024.i63.us.i.i.i.i, %i.af
  %.not.i.us.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.us.i.i.i.i, label %.thread36.i.i.i.i, label %.split65.us.split.i.i.i.i, !llvm.loop !2124

.split65.i.i.i.i:                                 ; preds = %.split65.i.i.i.i.preheader, %bb.k
  %.022.i64.i.i.i.i = phi i64 [ %i.dh, %bb.k ], [ %i.ak, %.split65.i.i.i.i.preheader ]
  %.024.i63.i.i.i.i = phi i64 [ %i.di, %bb.k ], [ %i.ab, %.split65.i.i.i.i.preheader ] ; 2 uses
  %i.ck = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i63.i.i.i.i, i64 range(i64 0, 256) %i.aj)
  %i.cl = getelementptr inbounds nuw [64 x i8], ptr %i.am, i64 %i.ck ; 3 uses
  %i.cm = load <16 x i8>, ptr %i.cl, align 16, !noalias !2127 ; 2 uses
  %i.cn = icmp eq <16 x i8> %i.cm, %i.ai
  %i.co = bitcast <16 x i1> %i.cn to i16
  %i.cp = and i16 %i.co, 4095                     ; 2 uses
  %.not3846.i.i.i.i = icmp eq i16 %i.cp, 0
  %i.cq = extractelement <16 x i8> %i.cm, i64 15
  br i1 %.not3846.i.i.i.i, label %.critedge.i._crit_edge.split.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split65.i.i.i.i
  %i.cr = zext nneg i16 %i.cp to i32
  %i.cs = icmp ne ptr %i.cl, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.critedge.i.backedge.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.09.047.i.i.i.i = phi i32 [ %i.cr, %.lr.ph.i.i.i.i ], [ %i.cw, %.critedge.i.backedge.i.i.i.i ] ; 3 uses
  %i.cu = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.09.047.i.i.i.i, i1 true)
  %i.cv = add nsw i32 %.sroa.09.047.i.i.i.i, -1
  %i.cw = and i32 %i.cv, %.sroa.09.047.i.i.i.i    ; 2 uses
  %i.cx = zext nneg i32 %i.cu to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cx
  %.val37.i.i.i.i = load i32, ptr %i.cy, align 4, !tbaa !122, !noalias !2127
  %i.cz = zext i32 %.val37.i.i.i.i to i64         ; 2 uses
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %.val36.i.i.i.i, i64 %i.cz ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !80, !noalias !2127
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.fr.i.i.i.i, %i.db
  br i1 %.not.i.i.i.i.i.i.i, label %.split.i.i.i.i, label %.critedge.i.backedge.i.i.i.i, !prof !2128

.split.i.i.i.i:                                   ; preds = %bb.j
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !94, !noalias !2127
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ao, ptr nonnull %i.de, i64 %i.an), !noalias !2127
  %i.df = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.df, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox10StringViewENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEEixEOS6_.exit, label %.critedge.i.backedge.i.i.i.i, !prof !2129

.critedge.i.backedge.i.i.i.i:                     ; preds = %.split.i.i.i.i, %bb.j
  %.not38.i.i.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not38.i.i.i.i, label %.critedge.i._crit_edge.split.i.i.i.i, label %bb.j, !llvm.loop !2123

.critedge.i._crit_edge.split.i.i.i.i:             ; preds = %.critedge.i.backedge.i.i.i.i, %.split65.i.i.i.i
  %i.dg = icmp eq i8 %i.cq, 0
  br i1 %i.dg, label %.thread36.i.i.i.i, label %bb.k, !prof !63

bb.k:                                             ; preds = %.critedge.i._crit_edge.split.i.i.i.i
  %i.dh = add i64 %.022.i64.i.i.i.i, -1           ; 2 uses
  %i.di = add i64 %.024.i63.i.i.i.i, %i.af
  %.not.i.i.i.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i.i.i.i, label %.thread36.i.i.i.i, label %.split65.i.i.i.i, !llvm.loop !2124

.thread36.i.i.i.i:                                ; preds = %bb.k, %.critedge.i._crit_edge.split.i.i.i.i, %bb.i, %.critedge.i._crit_edge.split.us.split.us72.i.i.i.i, %bb.g, %.critedge.i._crit_edge.split.us.split.us.us.us.i.i.i.i, %..thread36_crit_edge.i.i.i.i
  %.pre-phi104.i.i.i.i = phi i64 [ %.pre103.i.i.i.i, %..thread36_crit_edge.i.i.i.i ], [ %i.ak, %bb.i ], [ %i.ak, %bb.g ], [ %i.ak, %.critedge.i._crit_edge.split.us.split.us.us.us.i.i.i.i ], [ %i.ak, %.critedge.i._crit_edge.split.us.split.us72.i.i.i.i ], [ %i.ak, %.critedge.i._crit_edge.split.i.i.i.i ], [ %i.ak, %bb.k ] ; 2 uses
  %.pre-phi.i.i.i.i = phi i64 [ %.val.i.i.i.i, %..thread36_crit_edge.i.i.i.i ], [ %i.aj, %bb.i ], [ %i.aj, %bb.g ], [ %i.aj, %.critedge.i._crit_edge.split.us.split.us.us.us.i.i.i.i ], [ %i.aj, %.critedge.i._crit_edge.split.us.split.us72.i.i.i.i ], [ %i.aj, %.critedge.i._crit_edge.split.i.i.i.i ], [ %i.aj, %bb.k ]
  %i.dj = phi ptr [ %.pre.i.i.i.i, %..thread36_crit_edge.i.i.i.i ], [ %i.am, %bb.i ], [ %i.am, %bb.g ], [ %i.am, %.critedge.i._crit_edge.split.us.split.us.us.us.i.i.i.i ], [ %i.am, %.critedge.i._crit_edge.split.us.split.us72.i.i.i.i ], [ %i.am, %.critedge.i._crit_edge.split.i.i.i.i ], [ %i.am, %bb.k ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.dk, align 1, !noalias !2127
  %i.dl = zext i16 %.0.copyload.i.i.i.i.i.i to i64 ; 2 uses
  %i.dm = add i64 %.pre-phi104.i.i.i.i, -1
  %i.dn = lshr i64 %i.dm, 12
  %i.do = add nuw nsw i64 %i.dn, 1
  %i.dp = mul i64 %i.do, %i.dl                    ; 2 uses
  %.not.i38.i.i.i.i = icmp ult i64 %i.ad, %i.dp
  br i1 %.not.i38.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.thread36.i.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ad, i64 noundef %.pre-phi104.i.i.i.i, i64 noundef %i.dl, i64 noundef %i.dp), !noalias !2127
  %.pre100.i.i.i.i = load ptr, ptr %i.dq, align 8, !tbaa !391, !noalias !2127
  %.val35.pre.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !294, !noalias !2127
  %.pre105.i.i.i.i = and i64 %.val35.pre.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i: ; preds = %bb.l, %.thread36.i.i.i.i
  %.pre-phi106.i.i.i.i = phi i64 [ %.pre-phi.i.i.i.i, %.thread36.i.i.i.i ], [ %.pre105.i.i.i.i, %bb.l ] ; 2 uses
  %i.dr = phi ptr [ %i.dj, %.thread36.i.i.i.i ], [ %.pre100.i.i.i.i, %bb.l ] ; 3 uses
  %i.ds = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ab, i64 range(i64 0, 256) %.pre-phi106.i.i.i.i) ; 2 uses
  %i.dt = getelementptr inbounds nuw [64 x i8], ptr %i.dr, i64 %i.ds ; 2 uses
  %i.du = load <16 x i8>, ptr %i.dt, align 16, !tbaa !94, !noalias !2127
  %i.dv = icmp slt <16 x i8> %i.du, zeroinitializer
  %i.dw = bitcast <16 x i1> %i.dv to i16
  %i.dx = and i16 %i.dw, 4095                     ; 2 uses
  %.not39.i.i.i.i = icmp eq i16 %i.dx, 4095
  br i1 %.not39.i.i.i.i, label %bb.m, label %bb.q

bb.m:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i
  %i.dy = shl nuw nsw i64 %i.aa, 1
  %i.dz = or disjoint i64 %i.dy, 1
  br label %bb.n

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i, %bb.m
  %i.ea = phi i64 [ %i.ds, %bb.m ], [ %i.eg, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i ]
  %.030.i.i.i.i = phi i64 [ %i.ab, %bb.m ], [ %i.ef, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i ]
  %i.eb = getelementptr inbounds nuw [64 x i8], ptr %i.dr, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 15 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !361, !noalias !2127 ; 2 uses
  %.not.i39.i.i.i.i = icmp eq i8 %i.ed, -2
  br i1 %.not.i39.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ee = add i8 %i.ed, 1
  store i8 %i.ee, ptr %i.ec, align 1, !tbaa !361, !noalias !2127
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %i.ef = add i64 %i.dz, %.030.i.i.i.i            ; 2 uses
  %i.eg = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ef, i64 range(i64 0, 256) %.pre-phi106.i.i.i.i) ; 2 uses
  %i.eh = getelementptr inbounds nuw [64 x i8], ptr %i.dr, i64 %i.eg ; 3 uses
  %i.ei = load <16 x i8>, ptr %i.eh, align 16, !noalias !2127 ; 2 uses
  %i.ej = icmp slt <16 x i8> %i.ei, zeroinitializer
  %i.ek = bitcast <16 x i1> %i.ej to i16
  %i.el = and i16 %i.ek, 4095                     ; 2 uses
  %.not40.i.i.i.i = icmp eq i16 %i.el, 4095
  br i1 %.not40.i.i.i.i, label %bb.n, label %bb.p, !llvm.loop !2125

bb.p:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i
  %i.em = extractelement <16 x i8> %i.ei, i64 14
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 14
  %i.eo = add i8 %i.em, 16
  store i8 %i.eo, ptr %i.en, align 2, !tbaa !362, !noalias !2127
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i
  %.sroa.03.0.in.in.i.i.i.i = phi i16 [ %i.dx, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i ], [ %i.el, %bb.p ]
  %.1.i.i.i.i = phi ptr [ %i.dt, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i ], [ %i.eh, %bb.p ] ; 3 uses
  %.sroa.03.0.in.i.i.i.i = xor i16 %.sroa.03.0.in.in.i.i.i.i, 4095
  %i.ep = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.03.0.in.i.i.i.i, i1 true)
  %i.eq = zext nneg i16 %i.ep to i64              ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %i.eq ; 2 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !94, !noalias !2127
  %i.et = icmp eq i8 %i.es, 0
  br i1 %i.et, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.14) #44, !noalias !2127
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i.i.i.i: ; preds = %bb.q
  %i.eu = trunc nuw i64 %i.aa to i8
  store i8 %i.eu, ptr %i.er, align 1, !tbaa !94, !noalias !2127
  %i.ev = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 16
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.eq ; 2 uses
  %i.ex = icmp ne ptr %.1.i.i.i.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ex)
  %.val.i.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !389, !noalias !2127, !nonnull !148, !noundef !148
  %.val1.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !294, !noalias !2127
  %i.ey = lshr i64 %.val1.i.i.i.i.i.i, 8          ; 2 uses
  %i.ez = trunc i64 %i.ey to i32
  store i32 %i.ez, ptr %i.ew, align 4, !tbaa !122, !noalias !2127
  %i.fa = and i64 %i.ey, 4294967295
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.fa ; 3 uses
  store i64 %.fr.i.i.i.i, ptr %i.fb, align 8, !noalias !2127
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !94, !noalias !2127
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i64 0, ptr %i.fc, align 8, !noalias !2127
  %i.fd = load i64, ptr %i.ac, align 8, !tbaa !294, !noalias !2127 ; 2 uses
  %i.fe = and i64 %i.fd, -256
  %i.ff = add i64 %i.fe, 256
  %i.fg = and i64 %i.fd, 255
  %i.fh = or disjoint i64 %i.ff, %i.fg
  store i64 %i.fh, ptr %i.ac, align 8, !tbaa !294, !noalias !2127
  %.val.pre.i.i = load ptr, ptr %0, align 8, !noalias !2130
  %.pre.i.i = load i32, ptr %i.ew, align 4, !tbaa !122, !noalias !2130
  %.pre.i = zext i32 %.pre.i.i to i64
  br label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox10StringViewENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEEixEOS6_.exit

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox10StringViewENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEEixEOS6_.exit: ; preds = %.split.i.i.i.i, %.split14.us.us.i.i.i.i, %bb.f, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i.i.i.i
  %.pre-phi.i = phi i64 [ %i.cb, %.split14.us.us.i.i.i.i ], [ %i.be, %bb.f ], [ %.pre.i, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i.i.i.i ], [ %i.cz, %.split.i.i.i.i ]
  %.val.i.i = phi ptr [ %.val36.i.i.i.i, %.split14.us.us.i.i.i.i ], [ %.val36.i.i.i.i, %bb.f ], [ %.val.pre.i.i, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i.i.i.i ], [ %.val36.i.i.i.i, %.split.i.i.i.i ]
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.pre-phi.i ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store i32 %2, ptr %i.fj, align 4, !tbaa !122
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 20
  store i8 %3, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !94
  ret void
}

declare noundef i64 @_ZN8facebook5velox4bits9hashBytesEmPKcm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #29 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl.714", align 8 ; 16 uses
  %7 = alloca %"struct.std::array.341", align 1   ; 5 uses
  %i.k = add i64 %1, 1
  %i.l = lshr i64 %4, 2
  %i.m = add i64 %i.l, %4
  %i.n = lshr i64 %4, 3
  %i.o = add i64 %i.m, %i.n
  %i.p = lshr i64 %4, 5
  %i.q = add i64 %i.o, %i.p
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.q) ; 4 uses
  %i.r = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.r, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  %.inv6.i = icmp samesign ugt i64 %.sroa.speculated, 2
  %.0.i = select i1 %.inv6.i, i64 %spec.select.i, i64 2
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox10StringViewENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.s = add i64 %.sroa.speculated, -1
  %i.t = udiv i64 %i.s, 10
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.t, i1 true)
  %i.v = trunc nuw nsw i64 %i.u to i32
end_hunk_12
begin_hunk_13_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox9TimestampENS5_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox9TimestampENS7_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(96) dereferenceable(96) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !404, !range !147, !noundef !148
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox9TimestampENS7_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2166 ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !2167, !nonnull !148
  %i.g = load i8, ptr %i.f, align 1, !tbaa !149, !range !147, !noundef !148
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.e, !prof !63

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !2168, !nonnull !148, !align !208
  %i.k = load i64, ptr %i.j, align 8, !tbaa !80   ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox9TimestampENS7_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2169, !nonnull !148, !align !208
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !426
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2170, !nonnull !148, !align !208
  %i.q = load i64, ptr %i.p, align 8, !tbaa !80
  br label %.thread.i.i

bb.e:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2171, !nonnull !148, !align !208
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !271  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2172, !nonnull !148, !align !208
  %i.w = load i64, ptr %i.v, align 8, !tbaa !80   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2169, !nonnull !148, !align !208
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !426
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !396
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2173, !nonnull !148, !align !208
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !80 ; 2 uses
  %i.af = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ae, i1 true)
  %i.ag = icmp eq i64 %i.ae, 0
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !294
  %i.ai = and i64 %i.ah, -256
  %i.aj = select i1 %i.ag, i64 4294967295, i64 %i.af
  %i.ak = or i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.ab, align 8, !tbaa !294
  tail call void @_ZN5folly3f146detail12F14LinkCheckILNS1_17F14IntrinsicsModeE2EE5checkEv() #39
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !2167
  %.pre3.i.i = load i8, ptr %.pre.i.i, align 1, !tbaa !149, !range !147
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre4.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !2168
  %.pre5.i.i = load i64, ptr %.pre4.i.i, align 8, !tbaa !80
  %i.al = trunc nuw i8 %.pre3.i.i to i1
  br i1 %i.al, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !2174, !nonnull !148, !align !208
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !80
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2175, !nonnull !148, !align !208
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !80
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2176, !nonnull !148, !align !208
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !441
  tail call fastcc void @_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampENS4_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS5_S7_Em(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.au, i64 noundef %i.ar)
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.f, %bb.e, %bb.d
  %.010.i.i = phi i64 [ %i.w, %bb.e ], [ %i.w, %bb.f ], [ %i.q, %bb.d ]
  %.029.i.i = phi ptr [ %i.t, %bb.e ], [ %i.t, %bb.f ], [ %i.n, %bb.d ] ; 2 uses
  %i.av = phi i64 [ %.pre5.i.i, %bb.e ], [ %i.ao, %bb.f ], [ %i.k, %bb.d ]
  %.not.i.i.i = icmp eq ptr %.029.i.i, null
  br i1 %.not.i.i.i, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox9TimestampENS7_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit, label %bb.g

bb.g:                                             ; preds = %.thread.i.i
  %i.aw = sub i64 0, %.010.i.i
  %i.ax = and i64 %i.aw, -8
  %i.ay = mul i64 %i.av, 24
  %i.az = sub i64 %i.ay, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %.029.i.i, i64 noundef %i.az) #39
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox9TimestampENS7_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIN8facebook5velox9TimestampENS7_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_Lb1EE7executeEv.exit: ; preds = %bb.g, %.thread.i.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox9TimestampENS4_12_GLOBAL__N_112UpdateSourceEvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKS5_S7_Em(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #32 align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !394
  %i.b = mul i64 %2, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr readonly align 1 %i.a, i64 %i.b, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !394
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox12_GLOBAL__N_112UpdateMapRowIvE6insertEPKNS0_13DecodedVectorEia(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i8 noundef signext %3) unnamed_addr #25 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !174  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.d = load i8, ptr %i.c, align 2, !tbaa !162, !range !147, !noundef !148
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 59
  %i.g = load i8, ptr %i.f, align 1, !tbaa !186, !range !147, !noundef !148
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !187
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !172
  %i.m = sext i32 %2 to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !122
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.o, %bb.d ], [ %i.j, %bb.c ], [ %2, %bb.a ] ; 3 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !87, !noalias !2188
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !noalias !2188
  %i.s = tail call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(94) %i.b, i32 noundef %.0.i), !noalias !2188, !inline_history !2181 ; 2 uses
  %i.t = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.s) ; 2 uses
  %i.u = lshr i64 %i.t, 24
  %i.v = or i64 %i.u, 128                         ; 4 uses
  %i.w = add i64 %i.t, %i.s                       ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %.val.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !294, !noalias !2189 ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %.val.i.i.i.i, 256
  br i1 %.not.i.i.i.i, label %.thread33.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.y = shl nuw nsw i64 %i.v, 1
  %i.z = or disjoint i64 %i.y, 1
  %i.aa = trunc nuw i64 %i.v to i8
  %i.ab = insertelement <16 x i8> poison, i8 %i.aa, i64 0
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ad = and i64 %.val.i.i.i.i, 255
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.022.i44.i.i.i.i = phi i64 [ %i.ae, %bb.e ], [ %i.bg, %bb.i ]
  %.024.i43.i.i.i.i = phi i64 [ %i.w, %bb.e ], [ %i.bh, %bb.i ] ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !401, !noalias !2189
  %.val33.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !294, !noalias !2189
  %i.ah = and i64 %.val33.i.i.i.i, 255
  %i.ai = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i43.i.i.i.i, i64 range(i64 0, 256) %i.ah)
  %i.aj = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %i.ai ; 4 uses
  %i.ak = load <16 x i8>, ptr %i.aj, align 16, !tbaa !94, !noalias !2189
  %i.al = icmp eq <16 x i8> %i.ak, %i.ac
  %i.am = bitcast <16 x i1> %i.al to i16
  %i.an = and i16 %i.am, 4095
  %i.ao = zext nneg i16 %i.an to i32
  %i.ap = icmp ne ptr %i.aj, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  br label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %bb.g, %bb.f
  %.sroa.09.0.i.i.i.i = phi i32 [ %i.ao, %bb.f ], [ %i.at, %bb.g ] ; 4 uses
  %.not35.i.i.i.i = icmp eq i32 %.sroa.09.0.i.i.i.i, 0
  br i1 %.not35.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i.i.i
  %i.ar = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.09.0.i.i.i.i, i1 true)
  %i.as = add nsw i32 %.sroa.09.0.i.i.i.i, -1
  %i.at = and i32 %i.as, %.sroa.09.0.i.i.i.i
  %i.au = zext nneg i32 %i.ar to i64              ; 2 uses
  tail call void @llvm.assume(i1 %i.ap)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.au
  %.val36.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !399, !noalias !2189
  %.val39.i.i.i.i = load i32, ptr %i.av, align 4, !tbaa !122, !noalias !2189
  %i.aw = zext i32 %.val39.i.i.i.i to i64
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %.val36.i.i.i.i, i64 %i.aw ; 2 uses
  %.val4.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !tbaa !445, !noalias !2189
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %.val5.i.i.i.i.i = load i32, ptr %i.ay, align 8, !tbaa !446, !noalias !2189
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !87, !noalias !2189
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !2189
  %i.bc = tail call noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(94) %i.b, ptr noundef %.val4.i.i.i.i.i, i32 noundef %.0.i, i32 noundef %.val5.i.i.i.i.i), !noalias !2189, !inline_history !2184
  br i1 %i.bc, label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox12_GLOBAL__N_112UpdateMapRowIvE9ReferenceENS6_12UpdateSourceENS8_15ReferenceHasherEvvSt17integral_constantIbLb1EEEEEixEOS9_.exit.loopexit, label %.critedge.i.i.i.i.i, !prof !63, !llvm.loop !2185

bb.h:                                             ; preds = %.critedge.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aj, i64 15
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !361, !noalias !2189
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %.thread33.loopexit.i.i.i.i, label %bb.i, !prof !63

bb.i:                                             ; preds = %bb.h
  %i.bg = add i64 %.022.i44.i.i.i.i, -1           ; 2 uses
  %i.bh = add i64 %i.z, %.024.i43.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i, label %.thread33.loopexit.i.i.i.i, label %bb.f, !llvm.loop !2186

.thread33.loopexit.i.i.i.i:                       ; preds = %bb.i, %bb.h
  %.val.i.pre.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !294, !noalias !2189
  br label %.thread33.i.i.i.i

.thread33.i.i.i.i:                                ; preds = %.thread33.loopexit.i.i.i.i, %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %.val.i.i.i.i.i = phi i64 [ %.val.i.pre.i.i.i.i, %.thread33.loopexit.i.i.i.i ], [ %.val.i.i.i.i, %_ZNK8facebook5velox13DecodedVector5indexEi.exit ] ; 2 uses
  %i.bi = lshr i64 %.val.i.i.i.i.i, 8             ; 2 uses
  %i.bj = and i64 %.val.i.i.i.i.i, 255            ; 2 uses
  %i.bk = shl nuw i64 1, %i.bj                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !401, !noalias !2189 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.bn, align 1, !noalias !2189
  %i.bo = zext i16 %.0.copyload.i.i.i.i.i.i to i64 ; 2 uses
  %i.bp = add i64 %i.bk, -1
  %i.bq = lshr i64 %i.bp, 12
  %i.br = add nuw nsw i64 %i.bq, 1
  %i.bs = mul i64 %i.br, %i.bo                    ; 2 uses
  %.not.i40.i.i.i.i = icmp ult i64 %i.bi, %i.bs
  br i1 %.not.i40.i.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox12_GLOBAL__N_112UpdateMapRowIvE9ReferenceENS6_12UpdateSourceENS8_15ReferenceHasherEvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.thread33.i.i.i.i
  tail call fastcc void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox12_GLOBAL__N_112UpdateMapRowIvE9ReferenceENS6_12UpdateSourceENS8_15ReferenceHasherEvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bi, i64 noundef %i.bk, i64 noundef %i.bo, i64 noundef %i.bs), !noalias !2189
  %.pre.i.i.i.i = load ptr, ptr %i.bl, align 8, !tbaa !401, !noalias !2189
  %.val35.pre.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !294, !noalias !2189
  %.pre51.i.i.i.i = and i64 %.val35.pre.i.i.i.i, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox12_GLOBAL__N_112UpdateMapRowIvE9ReferenceENS6_12UpdateSourceENS8_15ReferenceHasherEvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox12_GLOBAL__N_112UpdateMapRowIvE9ReferenceENS6_12UpdateSourceENS8_15ReferenceHasherEvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i: ; preds = %bb.j, %.thread33.i.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %i.bj, %.thread33.i.i.i.i ], [ %.pre51.i.i.i.i, %bb.j ] ; 2 uses
  %i.bt = phi ptr [ %i.bm, %.thread33.i.i.i.i ], [ %.pre.i.i.i.i, %bb.j ] ; 3 uses
  %i.bu = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.w, i64 range(i64 0, 256) %.pre-phi.i.i.i.i) ; 2 uses
  %i.bv = getelementptr inbounds nuw [64 x i8], ptr %i.bt, i64 %i.bu ; 2 uses
  %i.bw = load <16 x i8>, ptr %i.bv, align 16, !tbaa !94, !noalias !2189
  %i.bx = icmp slt <16 x i8> %i.bw, zeroinitializer
  %i.by = bitcast <16 x i1> %i.bx to i16
  %i.bz = and i16 %i.by, 4095                     ; 2 uses
  %.not36.i.i.i.i = icmp eq i16 %i.bz, 4095
  br i1 %.not36.i.i.i.i, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox12_GLOBAL__N_112UpdateMapRowIvE9ReferenceENS6_12UpdateSourceENS8_15ReferenceHasherEvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i
  %i.ca = shl nuw nsw i64 %i.v, 1
  %i.cb = or disjoint i64 %i.ca, 1
  br label %bb.l

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i, %bb.k
  %i.cc = phi i64 [ %i.bu, %bb.k ], [ %i.ci, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i ]
  %.030.i.i.i.i = phi i64 [ %i.w, %bb.k ], [ %i.ch, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i ]
  %i.cd = getelementptr inbounds nuw [64 x i8], ptr %i.bt, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 15 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !361, !noalias !2189 ; 2 uses
  %.not.i41.i.i.i.i = icmp eq i8 %i.cf, -2
  br i1 %.not.i41.i.i.i.i, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = add i8 %i.cf, 1
  store i8 %i.cg, ptr %i.ce, align 1, !tbaa !361, !noalias !2189
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.ch = add i64 %i.cb, %.030.i.i.i.i            ; 2 uses
  %i.ci = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.ch, i64 range(i64 0, 256) %.pre-phi.i.i.i.i) ; 2 uses
  %i.cj = getelementptr inbounds nuw [64 x i8], ptr %i.bt, i64 %i.ci ; 3 uses
  %i.ck = load <16 x i8>, ptr %i.cj, align 16, !noalias !2189 ; 2 uses
  %i.cl = icmp slt <16 x i8> %i.ck, zeroinitializer
  %i.cm = bitcast <16 x i1> %i.cl to i16
  %i.cn = and i16 %i.cm, 4095                     ; 2 uses
  %.not37.i.i.i.i = icmp eq i16 %i.cn, 4095
  br i1 %.not37.i.i.i.i, label %bb.l, label %bb.n, !llvm.loop !2187

bb.n:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit.i.i.i.i
  %i.co = extractelement <16 x i8> %i.ck, i64 14
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 14
  %i.cq = add i8 %i.co, 16
  store i8 %i.cq, ptr %i.cp, align 2, !tbaa !362, !noalias !2189
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox12_GLOBAL__N_112UpdateMapRowIvE9ReferenceENS6_12UpdateSourceENS8_15ReferenceHasherEvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i
  %.sroa.03.0.in.in.i.i.i.i = phi i16 [ %i.bz, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox12_GLOBAL__N_112UpdateMapRowIvE9ReferenceENS6_12UpdateSourceENS8_15ReferenceHasherEvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i ], [ %i.cn, %bb.n ]
  %.1.i.i.i.i = phi ptr [ %i.bv, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox12_GLOBAL__N_112UpdateMapRowIvE9ReferenceENS6_12UpdateSourceENS8_15ReferenceHasherEvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit.i.i.i.i ], [ %i.cj, %bb.n ] ; 3 uses
  %.sroa.03.0.in.i.i.i.i = xor i16 %.sroa.03.0.in.in.i.i.i.i, 4095
  %i.cr = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.03.0.in.i.i.i.i, i1 true)
  %i.cs = zext nneg i16 %i.cr to i64              ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 %i.cs ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !94, !noalias !2189
  %i.cv = icmp eq i8 %i.cu, 0
  br i1 %i.cv, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.14) #44, !noalias !2189
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i.i.i.i: ; preds = %bb.o
  %i.cw = trunc nuw i64 %i.v to i8
  store i8 %i.cw, ptr %i.ct, align 1, !tbaa !94, !noalias !2189
  %i.cx = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 16
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cs ; 2 uses
  %i.cz = icmp ne ptr %.1.i.i.i.i, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cz)
  %.val.i.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !399, !noalias !2189, !nonnull !148, !noundef !148
  %.val1.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !294, !noalias !2189
  %i.da = lshr i64 %.val1.i.i.i.i.i.i, 8          ; 2 uses
  %i.db = trunc i64 %i.da to i32
  store i32 %i.db, ptr %i.cy, align 4, !tbaa !122, !noalias !2189
  %i.dc = and i64 %i.da, 4294967295
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.dc ; 3 uses
  store ptr %i.b, ptr %i.dd, align 8, !tbaa !167, !noalias !2189
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i32 %.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !122, !noalias !2189
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i64 0, ptr %i.de, align 8, !noalias !2189
  %i.df = load i64, ptr %i.x, align 8, !tbaa !294, !noalias !2189 ; 2 uses
  %i.dg = and i64 %i.df, -256
  %i.dh = add i64 %i.dg, 256
  %i.di = and i64 %i.df, 255
  %i.dj = or disjoint i64 %i.dh, %i.di
  store i64 %i.dj, ptr %i.x, align 8, !tbaa !294, !noalias !2189
  br label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox12_GLOBAL__N_112UpdateMapRowIvE9ReferenceENS6_12UpdateSourceENS8_15ReferenceHasherEvvSt17integral_constantIbLb1EEEEEixEOS9_.exit

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox12_GLOBAL__N_112UpdateMapRowIvE9ReferenceENS6_12UpdateSourceENS8_15ReferenceHasherEvvSt17integral_constantIbLb1EEEEEixEOS9_.exit.loopexit: ; preds = %bb.g
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.au
  br label %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox12_GLOBAL__N_112UpdateMapRowIvE9ReferenceENS6_12UpdateSourceENS8_15ReferenceHasherEvvSt17integral_constantIbLb1EEEEEixEOS9_.exit

_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox12_GLOBAL__N_112UpdateMapRowIvE9ReferenceENS6_12UpdateSourceENS8_15ReferenceHasherEvvSt17integral_constantIbLb1EEEEEixEOS9_.exit: ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox12_GLOBAL__N_112UpdateMapRowIvE9ReferenceENS6_12UpdateSourceENS8_15ReferenceHasherEvvSt17integral_constantIbLb1EEEEEixEOS9_.exit.loopexit, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i.i.i.i
  %.sink64.i.i.i.i = phi ptr [ %i.cy, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit.i.i.i.i ], [ %i.dk, %_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIN8facebook5velox12_GLOBAL__N_112UpdateMapRowIvE9ReferenceENS6_12UpdateSourceENS8_15ReferenceHasherEvvSt17integral_constantIbLb1EEEEEixEOS9_.exit.loopexit ]
  %.val3.i.i = load ptr, ptr %0, align 8, !noalias !2190, !nonnull !148, !noundef !148
  %i.dl = load i32, ptr %.sink64.i.i.i.i, align 4, !tbaa !122, !noalias !2190
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %.val3.i.i, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i32 %2, ptr %i.do, align 4, !tbaa !122
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 20
  store i8 %3, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !94
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox12_GLOBAL__N_112UpdateMapRowIvE9ReferenceENS6_12UpdateSourceENS8_15ReferenceHasherEvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #29 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %5 = alloca %"class.folly::detail::ScopeGuardImpl.785", align 8 ; 16 uses
  %6 = alloca %"struct.std::array.341", align 1   ; 5 uses
  %i.k = add i64 %1, 1
  %i.l = lshr i64 %4, 2
  %i.m = add i64 %i.l, %4
  %i.n = lshr i64 %4, 3
  %i.o = add i64 %i.m, %i.n
  %i.p = lshr i64 %4, 5
  %i.q = add i64 %i.o, %i.p
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.q) ; 4 uses
  %i.r = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.r, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  %.inv6.i = icmp samesign ugt i64 %.sroa.speculated, 2
  %.0.i = select i1 %.inv6.i, i64 %spec.select.i, i64 2
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox12_GLOBAL__N_112UpdateMapRowIvE9ReferenceENS6_12UpdateSourceENS8_15ReferenceHasherEvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.s = add i64 %.sroa.speculated, -1
end_hunk_13
