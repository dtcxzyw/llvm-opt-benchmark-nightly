Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/KnownFPClass?download=true
begin_hunk_0_@_ZN4llvm12KnownFPClass12canonicalizeERKS0_NS_12DenormalModeE:_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit
  %spec.select.i = icmp ult i8 %i.v, 2
  %i.w = add i8 %.sroa.038.0.extract.trunc, -1
  %spec.select.i21 = icmp ult i8 %i.w, 2
  %or.cond101 = or i1 %spec.select.i, %spec.select.i21
  br i1 %or.cond101, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit24, label %_ZNK4llvm12DenormalModeeqES0_.exit25.thread

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit24: ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit.thread
  %i.x = and i32 %.sroa.045.0, 878                ; 2 uses
  %i.y = icmp eq i8 %.sroa.038.0.extract.trunc, 1
  %i.z = icmp eq i16 %.sroa.5.0.extract.shift, 1
  %or.cond103 = and i1 %i.y, %i.z
  br i1 %or.cond103, label %bb.h, label %_ZNK4llvm12DenormalModeeqES0_.exit25.thread

bb.h:                                             ; preds = %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit24
  %i.aa = and i32 %i.a, 192
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit28

bb.i:                                             ; preds = %bb.h
  %i.ac = and i32 %.sroa.045.0, 814               ; 3 uses
  %i.ad = and i32 %.sroa.045.0.v, 2
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit28

bb.j:                                             ; preds = %bb.i
  %i.af = icmp samesign ult i32 %i.ac, 64
  %spec.select109 = zext i1 %i.af to i8
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit28

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit28: ; preds = %bb.j, %bb.i, %bb.h
  %.sroa.045.3 = phi i32 [ %i.x, %bb.h ], [ %i.ac, %bb.i ], [ %i.ac, %bb.j ] ; 5 uses
  %.sroa.21.sroa.11.3 = phi i8 [ 0, %bb.h ], [ 0, %bb.i ], [ %spec.select109, %bb.j ] ; 7 uses
  %i.ag = and i32 %i.a, 48
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20

bb.k:                                             ; preds = %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit28
  %i.ai = and i32 %.sroa.045.3, 846               ; 4 uses
  %i.aj = and i32 %.sroa.045.3, 2
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20

bb.l:                                             ; preds = %bb.k
  %i.al = trunc nuw i8 %.sroa.21.sroa.11.3 to i1
  br i1 %i.al, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = and i32 %.sroa.045.3, 12
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = icmp samesign ult i32 %.sroa.045.3, 64  ; 2 uses
  %spec.select111 = select i1 %i.ao, i8 1, i8 %.sroa.21.sroa.11.3
  %spec.select112 = zext i1 %i.ao to i8
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20

_ZNK4llvm12DenormalModeeqES0_.exit25.thread:      ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit.thread, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit24
  %.sroa.045.2119 = phi i32 [ %i.x, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit24 ], [ %.sroa.045.0, %_ZNK4llvm12DenormalModeeqES0_.exit.thread ] ; 5 uses
  %i.ap = icmp eq i16 %.sroa.5.0.extract.shift, 2
  %i.aq = icmp eq i8 %.sroa.038.0.extract.trunc, 2
  %or.cond = and i1 %i.aq, %i.f
  %or.cond120 = or i1 %i.ap, %or.cond
  br i1 %or.cond120, label %bb.o, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20

bb.o:                                             ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit25.thread
  %i.ar = and i32 %i.a, 32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.p, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit34

bb.p:                                             ; preds = %bb.o
  %i.at = and i32 %.sroa.045.2119, 991            ; 4 uses
  %i.au = and i32 %.sroa.045.2119, 3
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.q, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit34

bb.q:                                             ; preds = %bb.p
  %i.aw = and i32 %.sroa.045.2119, 28
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit34, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = icmp samesign ult i32 %i.at, 64
  %spec.select113 = zext i1 %i.ay to i8           ; 2 uses
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit34

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit34: ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.sroa.045.4 = phi i32 [ %.sroa.045.2119, %bb.o ], [ %i.at, %bb.p ], [ %i.at, %bb.q ], [ %i.at, %bb.r ] ; 4 uses
  %.sroa.21.sroa.0.4 = phi i8 [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ %spec.select113, %bb.r ] ; 4 uses
  %.sroa.21.sroa.11.4 = phi i8 [ 0, %bb.o ], [ 0, %bb.p ], [ 1, %bb.q ], [ %spec.select113, %bb.r ] ; 3 uses
  %i.az = and i32 %i.a, 208
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.s, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20

bb.s:                                             ; preds = %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit34
  %i.bb = and i32 %.sroa.045.4, 959               ; 5 uses
  %i.bc = and i32 %.sroa.045.4, 3
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.t, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20

bb.t:                                             ; preds = %bb.s
  %i.be = trunc nuw i8 %.sroa.21.sroa.11.4 to i1
  br i1 %i.be, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = and i32 %.sroa.045.4, 60
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = icmp samesign ult i32 %i.bb, 64         ; 2 uses
  %spec.select115 = select i1 %i.bh, i8 1, i8 %.sroa.21.sroa.0.4
  %spec.select116 = zext i1 %i.bh to i8
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20: ; preds = %_ZNK4llvm12DenormalModeeqES0_.exit25.thread, %bb.v, %bb.n, %bb.g, %bb.u, %bb.m, %bb.f, %bb.t, %bb.s, %bb.l, %bb.k, %bb.e, %bb.d, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit34, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit28, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit17
  %.sroa.045.5 = phi i32 [ %.sroa.045.2119, %_ZNK4llvm12DenormalModeeqES0_.exit25.thread ], [ %.sroa.045.1, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit17 ], [ %i.ai, %bb.m ], [ %.sroa.045.3, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit28 ], [ %i.bb, %bb.u ], [ %.sroa.045.4, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit34 ], [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %i.o, %bb.g ], [ %i.ai, %bb.k ], [ %i.ai, %bb.l ], [ %i.ai, %bb.n ], [ %i.bb, %bb.s ], [ %i.bb, %bb.t ], [ %i.bb, %bb.v ], [ %i.o, %bb.f ]
  %.sroa.21.sroa.0.5 = phi i8 [ 0, %_ZNK4llvm12DenormalModeeqES0_.exit25.thread ], [ %.sroa.21.sroa.0.1, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit17 ], [ 0, %bb.m ], [ %.sroa.21.sroa.11.3, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit28 ], [ 0, %bb.u ], [ %.sroa.21.sroa.0.4, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit34 ], [ %.sroa.21.sroa.0.1, %bb.d ], [ 1, %bb.e ], [ %spec.select105, %bb.g ], [ %.sroa.21.sroa.11.3, %bb.k ], [ %.sroa.21.sroa.11.3, %bb.l ], [ %spec.select111, %bb.n ], [ %.sroa.21.sroa.0.4, %bb.s ], [ %.sroa.21.sroa.0.4, %bb.t ], [ %spec.select115, %bb.v ], [ 0, %bb.f ]
  %.sroa.21.sroa.11.5 = phi i8 [ 0, %_ZNK4llvm12DenormalModeeqES0_.exit25.thread ], [ %.sroa.21.sroa.0.1, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit17 ], [ 1, %bb.m ], [ %.sroa.21.sroa.11.3, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit28 ], [ 1, %bb.u ], [ %.sroa.21.sroa.11.4, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit34 ], [ %.sroa.21.sroa.0.1, %bb.d ], [ 1, %bb.e ], [ %spec.select106, %bb.g ], [ %.sroa.21.sroa.11.3, %bb.k ], [ 1, %bb.l ], [ %spec.select112, %bb.n ], [ %.sroa.21.sroa.11.4, %bb.s ], [ 1, %bb.t ], [ %spec.select116, %bb.v ], [ 1, %bb.f ]
  %.sroa.21.sroa.11.0.insert.ext = zext nneg i8 %.sroa.21.sroa.11.5 to i64
  %.sroa.21.sroa.0.0.insert.ext = zext nneg i8 %.sroa.21.sroa.0.5 to i64
  %i.bi = shl nuw nsw i64 %.sroa.21.sroa.11.0.insert.ext, 40
  %i.bj = shl nuw nsw i64 %.sroa.21.sroa.0.0.insert.ext, 32
  %.sroa.21.0.insert.shift = or disjoint i64 %i.bi, %i.bj
  %.sroa.045.0.insert.ext = zext nneg i32 %.sroa.045.5 to i64
  %.sroa.045.0.insert.insert = or disjoint i64 %.sroa.21.0.insert.shift, %.sroa.045.0.insert.ext
  ret i64 %.sroa.045.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, 1103806596096) i64 @_ZN4llvm12KnownFPClass7bitcastERKNS_12fltSemanticsERKNS_9KnownBitsE(ptr noundef nonnull align 4 dereferenceable(29) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::APFloat", align 8     ; 8 uses
  %3 = alloca %"class.llvm::APFloat", align 8     ; 8 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %6 = alloca %"struct.llvm::KnownBits", align 8  ; 14 uses
  %7 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %8 = alloca %"class.llvm::APFloat", align 8     ; 11 uses
  %9 = alloca %"struct.llvm::KnownBits", align 8  ; 14 uses
  %10 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %11 = alloca %"class.llvm::APFloat", align 8    ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = add i32 %i.b, -1                         ; 2 uses
  %i.d = and i32 %i.c, 63
  %i.e = zext nneg i32 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = icmp ult i32 %i.b, 65
  %i.h = load ptr, ptr %1, align 8
  %i.i = lshr i32 %i.c, 6
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  %.in.i.i.i.i = select i1 %i.g, ptr %1, ptr %i.k
  %i.l = load i64, ptr %.in.i.i.i.i, align 8, !tbaa !16
  %i.m = and i64 %i.f, %i.l
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !19   ; 2 uses
  %i.q = add i32 %i.p, -1                         ; 2 uses
  %i.r = and i32 %i.q, 63
  %i.s = zext nneg i32 %i.r to i64
  %i.t = shl nuw i64 1, %i.s
  %i.u = icmp ult i32 %i.p, 65
  %i.v = load ptr, ptr %i.n, align 8
  %i.w = lshr i32 %i.q, 6
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x
  %.in.i.i.i.i13 = select i1 %i.u, ptr %i.n, ptr %i.y
  %i.z = load i64, ptr %.in.i.i.i.i13, align 8, !tbaa !16
  %i.aa = and i64 %i.t, %i.z
  %.not66 = icmp eq i64 %i.aa, 0
  br i1 %.not66, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.ab = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.a ]
  %.sroa.046.0 = phi i32 [ 1023, %bb.b ], [ 63, %bb.c ], [ 963, %bb.a ] ; 4 uses
  %.sroa.15.sroa.0.0 = phi i8 [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %bb.a ] ; 5 uses
  %.sroa.15.sroa.7.0 = phi i8 [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %bb.a ] ; 4 uses
  %i.ac = tail call noundef zeroext i1 @_ZN4llvm11APFloatBase12isIEEELikeFPERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %0) #10
  br i1 %i.ac, label %bb.e, label %bb.bh

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %.not.i.i = icmp eq ptr %0, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE ; 4 uses
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(29) %0, ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #10
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit

bb.g:                                             ; preds = %bb.e
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #10
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit: ; preds = %bb.f, %bb.g
  %i.ae = load ptr, ptr %2, align 8, !tbaa !16
  %.not.i.i.i = icmp eq ptr %i.ae, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %.0.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i.i, ptr %i.ag, ptr %2
  %.0.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.0.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 20
  %i.ah = load i8, ptr %.0.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.ai = and i8 %i.ah, 7
  %i.aj = icmp eq i8 %i.ai, 1
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br i1 %i.aj, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.al = load i32, ptr %i.a, align 8, !tbaa !19  ; 3 uses
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !19
  %i.am = icmp ult i32 %i.al, 65
  br i1 %i.am, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i, label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.h
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %1) #10
  %.pr = load i32, ptr %i.ak, align 8, !tbaa !19, !noalias !21 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.an = icmp ult i32 %.pr, 65
  br i1 %i.an, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i, label %bb.i

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i:       ; preds = %_ZN4llvm5APIntC2ERKS0_.exit, %bb.h
  %.sink = phi ptr [ %1, %bb.h ], [ %5, %_ZN4llvm5APIntC2ERKS0_.exit ]
  %i.ao = phi i32 [ %i.al, %bb.h ], [ %.pr, %_ZN4llvm5APIntC2ERKS0_.exit ] ; 3 uses
  %.pre = load i64, ptr %.sink, align 8, !tbaa !16
  %i.ap = xor i64 %.pre, -1
  %i.aq = sub nsw i32 0, %i.ao
  %i.ar = and i32 %i.aq, 63
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = lshr i64 -1, %i.as
  %i.au = icmp eq i32 %i.ao, 0
  %spec.select.i.i = select i1 %i.au, i64 0, i64 %i.at, !prof !24
  %i.av = and i64 %spec.select.i.i, %i.ap         ; 2 uses
  store i64 %i.av, ptr %5, align 8, !tbaa !16, !noalias !21
  br label %_ZN4llvmcoENS_5APIntE.exit

bb.i:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  call void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #10, !noalias !21
  %.pre.i = load i32, ptr %i.ak, align 8, !tbaa !19, !noalias !21
  %.pre1.i = load i64, ptr %5, align 8, !noalias !21
  br label %_ZN4llvmcoENS_5APIntE.exit

_ZN4llvmcoENS_5APIntE.exit:                       ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i, %bb.i
  %i.aw = phi i64 [ %i.av, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i ], [ %.pre1.i, %bb.i ]
  %i.ax = phi i32 [ %i.ao, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i ], [ %.pre.i, %bb.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !19, !alias.scope !21
  store i64 %i.aw, ptr %4, align 8, !alias.scope !21
  store i32 0, ptr %i.ak, align 8, !tbaa !19, !noalias !21
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4llvmcoENS_5APIntE.exit
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(29) %0, ptr noundef nonnull align 8 dereferenceable(12) %4) #10
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit15

bb.k:                                             ; preds = %_ZN4llvmcoENS_5APIntE.exit
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %4) #10
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit15

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit15: ; preds = %bb.j, %bb.k
  %i.az = load ptr, ptr %3, align 8, !tbaa !16
  %.not.i.i.i16 = icmp eq ptr %i.az, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %.0.i.i.i17.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i.i16, ptr %i.bb, ptr %3
  %.0.i.i.i17.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.0.i.i.i17.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 20
  %i.bc = load i8, ptr %.0.i.i.i17.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.bd = and i8 %i.bc, 7
  %i.be = icmp eq i8 %i.bd, 1
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #10
  %i.bf = load i32, ptr %i.ay, align 8, !tbaa !19
  %i.bg = icmp ugt i32 %i.bf, 64
  br i1 %i.bg, label %bb.l, label %_ZN4llvm5APIntD2Ev.exit

bb.l:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit15
  %i.bh = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN4llvm5APIntD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.bh) #11
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit15, %bb.l, %bb.m
  %i.bj = load i32, ptr %i.ak, align 8, !tbaa !19
  %i.bk = icmp ugt i32 %i.bj, 64
  br i1 %i.bk, label %bb.n, label %_ZN4llvm5APIntD2Ev.exit18

bb.n:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.bl = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN4llvm5APIntD2Ev.exit18, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.bl) #11
  br label %_ZN4llvm5APIntD2Ev.exit18

_ZN4llvm5APIntD2Ev.exit18:                        ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br i1 %i.be, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit18
  %i.bn = and i32 %.sroa.046.0, 1020              ; 2 uses
  %i.bo = trunc nuw i8 %.sroa.15.sroa.7.0 to i1
  br i1 %i.bo, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = and i32 %.sroa.046.0, 60
  %i.bq = icmp eq i32 %i.bp, 0                    ; 2 uses
  %brmerge = or i1 %i.ab, %i.bq                   ; 2 uses
  %not. = xor i1 %i.bq, true
  %.mux = zext i1 %not. to i8
  %spec.select = select i1 %brmerge, i8 %.mux, i8 %.sroa.15.sroa.0.0
  %spec.select69 = zext i1 %brmerge to i8
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit: ; preds = %bb.q, %bb.p, %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit, %_ZN4llvm5APIntD2Ev.exit18
  %.sroa.046.1 = phi i32 [ 3, %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit ], [ %.sroa.046.0, %_ZN4llvm5APIntD2Ev.exit18 ], [ %i.bn, %bb.p ], [ %i.bn, %bb.q ] ; 7 uses
  %.sroa.15.sroa.0.1 = phi i8 [ %.sroa.15.sroa.0.0, %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit ], [ %.sroa.15.sroa.0.0, %_ZN4llvm5APIntD2Ev.exit18 ], [ %.sroa.15.sroa.0.0, %bb.p ], [ %spec.select, %bb.q ] ; 8 uses
  %.sroa.15.sroa.7.1 = phi i8 [ %.sroa.15.sroa.7.0, %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit ], [ %.sroa.15.sroa.7.0, %_ZN4llvm5APIntD2Ev.exit18 ], [ 1, %bb.p ], [ %spec.select69, %bb.q ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 4 dereferenceable(29) %0, i32 noundef 0) #10
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i

bb.s:                                             ; preds = %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE, i32 noundef 0) #10
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i: ; preds = %bb.s, %bb.r
  %i.br = load ptr, ptr %8, align 8, !tbaa !16, !alias.scope !25
  %.not.i.i20 = icmp eq ptr %i.br, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i20, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i
  call void @_ZN4llvm6detail9IEEEFloat7makeInfEb(ptr noundef nonnull align 8 dereferenceable(24) %8, i1 noundef zeroext false) #10
  br label %_ZN4llvm7APFloat6getInfERKNS_12fltSemanticsEb.exit

bb.u:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i
  call void @_ZN4llvm6detail13DoubleAPFloat7makeInfEb(ptr noundef nonnull align 8 dereferenceable(24) %8, i1 noundef zeroext false) #10
  br label %_ZN4llvm7APFloat6getInfERKNS_12fltSemanticsEb.exit

_ZN4llvm7APFloat6getInfERKNS_12fltSemanticsEb.exit: ; preds = %bb.t, %bb.u
  %i.bs = load ptr, ptr %8, align 8, !tbaa !16, !noalias !28
  %.not.i = icmp eq ptr %i.bs, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN4llvm7APFloat6getInfERKNS_12fltSemanticsEb.exit
  call void @_ZNK4llvm6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %8) #10
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit

bb.w:                                             ; preds = %_ZN4llvm7APFloat6getInfERKNS_12fltSemanticsEb.exit
  call void @_ZNK4llvm6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %8) #10
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit

_ZNK4llvm7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.v, %bb.w
  call void @_ZN4llvm9KnownBits12makeConstantERKNS_5APIntE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %6, ptr noundef nonnull align 8 dereferenceable(12) %7)
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !19
  %i.bv = icmp ugt i32 %i.bu, 64
  br i1 %i.bv, label %bb.x, label %_ZN4llvm5APIntD2Ev.exit21

bb.x:                                             ; preds = %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit
  %i.bw = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZN4llvm5APIntD2Ev.exit21, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.bw) #11
  br label %_ZN4llvm5APIntD2Ev.exit21

_ZN4llvm5APIntD2Ev.exit21:                        ; preds = %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit, %bb.x, %bb.y
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !19 ; 2 uses
  %i.ca = add i32 %i.bz, -1                       ; 2 uses
  %i.cb = and i32 %i.ca, 63
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = shl nuw i64 1, %i.cc
  %i.ce = xor i64 %i.cd, -1                       ; 2 uses
  %i.cf = icmp ult i32 %i.bz, 65
  br i1 %i.cf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit21
  %i.cg = load i64, ptr %6, align 8, !tbaa !16
  %i.ch = and i64 %i.cg, %i.ce
  store i64 %i.ch, ptr %6, align 8, !tbaa !16
  br label %_ZN4llvm5APInt12clearSignBitEv.exit

bb.aa:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit21
  %i.ci = load ptr, ptr %6, align 8, !tbaa !16
  %i.cj = lshr i32 %i.ca, 6
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ck ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !31
  %i.cn = and i64 %i.cm, %i.ce
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !31
  br label %_ZN4llvm5APInt12clearSignBitEv.exit

_ZN4llvm5APInt12clearSignBitEv.exit:              ; preds = %bb.z, %bb.aa
  %i.co = call i16 @_ZN4llvm9KnownBits2eqERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  %i.cp = and i16 %i.co, 256
  %.not67 = icmp eq i16 %i.cp, 0
  br i1 %.not67, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm5APInt12clearSignBitEv.exit
  %i.cq = and i32 %.sroa.046.1, 507               ; 5 uses
  %i.cr = and i32 %.sroa.046.1, 3
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.ac, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit24

bb.ac:                                            ; preds = %bb.ab
  %i.ct = trunc nuw i8 %.sroa.15.sroa.7.1 to i1
  br i1 %i.ct, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit24, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cu = and i32 %.sroa.046.1, 56
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit24, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cw = icmp samesign ult i32 %i.cq, 64         ; 2 uses
  %spec.select70 = select i1 %i.cw, i8 1, i8 %.sroa.15.sroa.0.1
  %spec.select71 = zext i1 %i.cw to i8
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit24

bb.af:                                            ; preds = %_ZN4llvm5APInt12clearSignBitEv.exit
  %i.cx = load i32, ptr %i.a, align 8, !tbaa !19
  %i.cy = icmp ult i32 %i.cx, 65
  br i1 %i.cy, label %.split.i, label %_ZNK4llvm5APInteqERKS0_.exit.i

.split.i:                                         ; preds = %bb.af
  %i.cz = load i64, ptr %1, align 8, !tbaa !16
  %i.da = load i64, ptr %6, align 8, !tbaa !16
  %i.db = icmp eq i64 %i.cz, %i.da
  br i1 %i.db, label %bb.ag, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit24

_ZNK4llvm5APInteqERKS0_.exit.i:                   ; preds = %bb.af
  %i.dc = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %6) #12
  br i1 %i.dc, label %bb.ag, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit24

bb.ag:                                            ; preds = %_ZNK4llvm5APInteqERKS0_.exit.i, %.split.i
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.df = load i32, ptr %i.de, align 8, !tbaa !19
  %i.dg = icmp ult i32 %i.df, 65
  br i1 %i.dg, label %.split, label %_ZNK4llvm9KnownBitseqERKS0_.exit

.split:                                           ; preds = %bb.ag
  %i.dh = load i64, ptr %i.ad, align 8, !tbaa !16
  %i.di = load i64, ptr %i.dd, align 8, !tbaa !16
  %i.dj = icmp eq i64 %i.dh, %i.di
  br i1 %i.dj, label %bb.ah, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit24

_ZNK4llvm9KnownBitseqERKS0_.exit:                 ; preds = %bb.ag
  %i.dk = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.ad, ptr noundef nonnull align 8 dereferenceable(12) %i.dd) #12
  br i1 %i.dk, label %bb.ah, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit24

bb.ah:                                            ; preds = %.split, %_ZNK4llvm9KnownBitseqERKS0_.exit
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit24

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit24: ; preds = %bb.ae, %bb.ad, %.split.i, %_ZNK4llvm5APInteqERKS0_.exit.i, %.split, %bb.ac, %bb.ab, %_ZNK4llvm9KnownBitseqERKS0_.exit, %bb.ah
  %.sroa.046.2 = phi i32 [ %.sroa.046.1, %_ZNK4llvm9KnownBitseqERKS0_.exit ], [ 516, %bb.ah ], [ %i.cq, %bb.ab ], [ %i.cq, %bb.ac ], [ %i.cq, %bb.ae ], [ %.sroa.046.1, %.split.i ], [ %.sroa.046.1, %.split ], [ %.sroa.046.1, %_ZNK4llvm5APInteqERKS0_.exit.i ], [ %i.cq, %bb.ad ] ; 7 uses
  %.sroa.15.sroa.0.2 = phi i8 [ %.sroa.15.sroa.0.1, %_ZNK4llvm9KnownBitseqERKS0_.exit ], [ %.sroa.15.sroa.0.1, %bb.ah ], [ %.sroa.15.sroa.0.1, %bb.ab ], [ %.sroa.15.sroa.0.1, %bb.ac ], [ %spec.select70, %bb.ae ], [ %.sroa.15.sroa.0.1, %.split.i ], [ %.sroa.15.sroa.0.1, %.split ], [ %.sroa.15.sroa.0.1, %_ZNK4llvm5APInteqERKS0_.exit.i ], [ 0, %bb.ad ] ; 8 uses
  %.sroa.15.sroa.7.2 = phi i8 [ %.sroa.15.sroa.7.1, %_ZNK4llvm9KnownBitseqERKS0_.exit ], [ %.sroa.15.sroa.7.1, %bb.ah ], [ %.sroa.15.sroa.7.1, %bb.ab ], [ 1, %bb.ac ], [ %spec.select71, %bb.ae ], [ %.sroa.15.sroa.7.1, %.split.i ], [ %.sroa.15.sroa.7.1, %.split ], [ %.sroa.15.sroa.7.1, %_ZNK4llvm5APInteqERKS0_.exit.i ], [ 1, %bb.ad ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  br i1 %.not.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit24
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 4 dereferenceable(29) %0, i32 noundef 0) #10
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i26

bb.aj:                                            ; preds = %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit24
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE, i32 noundef 0) #10
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i26

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i26: ; preds = %bb.aj, %bb.ai
  %i.dl = load ptr, ptr %11, align 8, !tbaa !16, !alias.scope !33
  %.not.i.i27 = icmp eq ptr %i.dl, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i27, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i26
  call void @_ZN4llvm6detail9IEEEFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24) %11, i1 noundef zeroext false) #10
  br label %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit

bb.al:                                            ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsENS_11APFloatBase16uninitializedTagE.exit.i26
  call void @_ZN4llvm6detail13DoubleAPFloat8makeZeroEb(ptr noundef nonnull align 8 dereferenceable(24) %11, i1 noundef zeroext false) #10
  br label %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit

_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit: ; preds = %bb.ak, %bb.al
  %i.dm = load ptr, ptr %11, align 8, !tbaa !16, !noalias !36
  %.not.i28 = icmp eq ptr %i.dm, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i28, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit
  call void @_ZNK4llvm6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %11) #10
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit29

bb.an:                                            ; preds = %_ZN4llvm7APFloat7getZeroERKNS_12fltSemanticsEb.exit
  call void @_ZNK4llvm6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %11) #10
  br label %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit29

_ZNK4llvm7APFloat14bitcastToAPIntEv.exit29:       ; preds = %bb.am, %bb.an
  call void @_ZN4llvm9KnownBits12makeConstantERKNS_5APIntE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %9, ptr noundef nonnull align 8 dereferenceable(12) %10)
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !19
  %i.dp = icmp ugt i32 %i.do, 64
  br i1 %i.dp, label %bb.ao, label %_ZN4llvm5APIntD2Ev.exit30

bb.ao:                                            ; preds = %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit29
  %i.dq = load ptr, ptr %10, align 8, !tbaa !16   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %_ZN4llvm5APIntD2Ev.exit30, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZdaPv(ptr noundef nonnull %i.dq) #11
  br label %_ZN4llvm5APIntD2Ev.exit30

_ZN4llvm5APIntD2Ev.exit30:                        ; preds = %_ZNK4llvm7APFloat14bitcastToAPIntEv.exit29, %bb.ao, %bb.ap
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !19 ; 2 uses
  %i.du = add i32 %i.dt, -1                       ; 2 uses
  %i.dv = and i32 %i.du, 63
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = shl nuw i64 1, %i.dw
  %i.dy = xor i64 %i.dx, -1                       ; 2 uses
  %i.dz = icmp ult i32 %i.dt, 65
  br i1 %i.dz, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit30
  %i.ea = load i64, ptr %9, align 8, !tbaa !16
  %i.eb = and i64 %i.ea, %i.dy
  store i64 %i.eb, ptr %9, align 8, !tbaa !16
  br label %_ZN4llvm5APInt12clearSignBitEv.exit31

bb.ar:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit30
  %i.ec = load ptr, ptr %9, align 8, !tbaa !16
  %i.ed = lshr i32 %i.du, 6
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ee ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !31
  %i.eh = and i64 %i.eg, %i.dy
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !31
  br label %_ZN4llvm5APInt12clearSignBitEv.exit31

_ZN4llvm5APInt12clearSignBitEv.exit31:            ; preds = %bb.aq, %bb.ar
  %i.ei = call i16 @_ZN4llvm9KnownBits2eqERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %9) #10
  %i.ej = and i16 %i.ei, 256
  %.not68 = icmp eq i16 %i.ej, 0
  br i1 %.not68, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %_ZN4llvm5APInt12clearSignBitEv.exit31
  %i.ek = and i32 %.sroa.046.2, 927               ; 5 uses
  %i.el = and i32 %.sroa.046.2, 3
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.at, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit34

bb.at:                                            ; preds = %bb.as
  %i.en = trunc nuw i8 %.sroa.15.sroa.7.2 to i1
  br i1 %i.en, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit34, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eo = and i32 %.sroa.046.2, 28
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit34, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eq = icmp samesign ult i32 %i.ek, 64         ; 2 uses
  %spec.select72 = select i1 %i.eq, i8 1, i8 %.sroa.15.sroa.0.2
  %spec.select73 = zext i1 %i.eq to i8
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit34

bb.aw:                                            ; preds = %_ZN4llvm5APInt12clearSignBitEv.exit31
  %i.er = load i32, ptr %i.a, align 8, !tbaa !19
  %i.es = icmp ult i32 %i.er, 65
  br i1 %i.es, label %.split.i36, label %_ZNK4llvm5APInteqERKS0_.exit.i35

.split.i36:                                       ; preds = %bb.aw
  %i.et = load i64, ptr %1, align 8, !tbaa !16
  %i.eu = load i64, ptr %9, align 8, !tbaa !16
  %i.ev = icmp eq i64 %i.et, %i.eu
  br i1 %i.ev, label %bb.ax, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit34

_ZNK4llvm5APInteqERKS0_.exit.i35:                 ; preds = %bb.aw
  %i.ew = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %9) #12
  br i1 %i.ew, label %bb.ax, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit34

bb.ax:                                            ; preds = %_ZNK4llvm5APInteqERKS0_.exit.i35, %.split.i36
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !19
  %i.fa = icmp ult i32 %i.ez, 65
  br i1 %i.fa, label %.split65, label %_ZNK4llvm9KnownBitseqERKS0_.exit37

.split65:                                         ; preds = %bb.ax
  %i.fb = load i64, ptr %i.ad, align 8, !tbaa !16
  %i.fc = load i64, ptr %i.ex, align 8, !tbaa !16
  %i.fd = icmp eq i64 %i.fb, %i.fc
  br i1 %i.fd, label %bb.ay, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit34

_ZNK4llvm9KnownBitseqERKS0_.exit37:               ; preds = %bb.ax
  %i.fe = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.ad, ptr noundef nonnull align 8 dereferenceable(12) %i.ex) #12
  br i1 %i.fe, label %bb.ay, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit34

bb.ay:                                            ; preds = %.split65, %_ZNK4llvm9KnownBitseqERKS0_.exit37
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit34

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit34: ; preds = %bb.av, %bb.au, %.split.i36, %_ZNK4llvm5APInteqERKS0_.exit.i35, %.split65, %bb.at, %bb.as, %_ZNK4llvm9KnownBitseqERKS0_.exit37, %bb.ay
  %.sroa.046.3 = phi i32 [ %.sroa.046.2, %_ZNK4llvm9KnownBitseqERKS0_.exit37 ], [ 96, %bb.ay ], [ %i.ek, %bb.as ], [ %i.ek, %bb.at ], [ %i.ek, %bb.av ], [ %.sroa.046.2, %.split.i36 ], [ %.sroa.046.2, %.split65 ], [ %.sroa.046.2, %_ZNK4llvm5APInteqERKS0_.exit.i35 ], [ %i.ek, %bb.au ]
  %.sroa.15.sroa.0.3 = phi i8 [ %.sroa.15.sroa.0.2, %_ZNK4llvm9KnownBitseqERKS0_.exit37 ], [ %.sroa.15.sroa.0.2, %bb.ay ], [ %.sroa.15.sroa.0.2, %bb.as ], [ %.sroa.15.sroa.0.2, %bb.at ], [ %spec.select72, %bb.av ], [ %.sroa.15.sroa.0.2, %.split.i36 ], [ %.sroa.15.sroa.0.2, %.split65 ], [ %.sroa.15.sroa.0.2, %_ZNK4llvm5APInteqERKS0_.exit.i35 ], [ 0, %bb.au ]
  %.sroa.15.sroa.7.3 = phi i8 [ %.sroa.15.sroa.7.2, %_ZNK4llvm9KnownBitseqERKS0_.exit37 ], [ %.sroa.15.sroa.7.2, %bb.ay ], [ %.sroa.15.sroa.7.2, %bb.as ], [ 1, %bb.at ], [ %spec.select73, %bb.av ], [ %.sroa.15.sroa.7.2, %.split.i36 ], [ %.sroa.15.sroa.7.2, %.split65 ], [ %.sroa.15.sroa.7.2, %_ZNK4llvm5APInteqERKS0_.exit.i35 ], [ 1, %bb.au ]
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !19
  %i.fh = icmp ugt i32 %i.fg, 64
  br i1 %i.fh, label %bb.az, label %_ZN4llvm5APIntD2Ev.exit.i

bb.az:                                            ; preds = %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit34
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !16 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZdaPv(ptr noundef nonnull %i.fj) #11
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.ba, %bb.az, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit34
  %i.fl = load i32, ptr %i.ds, align 8, !tbaa !19
  %i.fm = icmp ugt i32 %i.fl, 64
  br i1 %i.fm, label %bb.bb, label %_ZN4llvm9KnownBitsD2Ev.exit

bb.bb:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.fn = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %_ZN4llvm9KnownBitsD2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZdaPv(ptr noundef nonnull %i.fn) #11
  br label %_ZN4llvm9KnownBitsD2Ev.exit

_ZN4llvm9KnownBitsD2Ev.exit:                      ; preds = %_ZN4llvm5APIntD2Ev.exit.i, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !19
  %i.fr = icmp ugt i32 %i.fq, 64
  br i1 %i.fr, label %bb.bd, label %_ZN4llvm5APIntD2Ev.exit.i38

bb.bd:                                            ; preds = %_ZN4llvm9KnownBitsD2Ev.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !16 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %_ZN4llvm5APIntD2Ev.exit.i38, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZdaPv(ptr noundef nonnull %i.ft) #11
  br label %_ZN4llvm5APIntD2Ev.exit.i38

_ZN4llvm5APIntD2Ev.exit.i38:                      ; preds = %bb.be, %bb.bd, %_ZN4llvm9KnownBitsD2Ev.exit
  %i.fv = load i32, ptr %i.by, align 8, !tbaa !19
  %i.fw = icmp ugt i32 %i.fv, 64
  br i1 %i.fw, label %bb.bf, label %_ZN4llvm9KnownBitsD2Ev.exit39

bb.bf:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i38
  %i.fx = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %_ZN4llvm9KnownBitsD2Ev.exit39, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZdaPv(ptr noundef nonnull %i.fx) #11
  br label %_ZN4llvm9KnownBitsD2Ev.exit39

end_hunk_0
begin_hunk_1_@_ZN4llvm12KnownFPClass4fsubERKS0_S2_NS_12DenormalModeE:bb.a
  %i.n = and i16 %2, -768
  %i.o = icmp eq i16 %i.n, 0
  %i.p = select i1 %i.m, i1 true, i1 %i.o
  %i.q = and i16 %2, 253
  %or.cond.i = icmp eq i16 %i.q, 0
  %or.cond25.i = select i1 %i.p, i1 %or.cond.i, i1 false
  br i1 %or.cond25.i, label %bb.c, label %_ZN4llvm12KnownFPClass4faddERKS0_S2_NS_12DenormalModeE.exit

_ZNK4llvm12KnownFPClass26isKnownNeverLogicalNegZeroENS_12DenormalModeE.exit.thread.i: ; preds = %bb.b
  %.old.i = and i16 %2, 253
  %or.cond.old.i = icmp eq i16 %.old.i, 0
  br i1 %or.cond.old.i, label %bb.c, label %_ZN4llvm12KnownFPClass4faddERKS0_S2_NS_12DenormalModeE.exit

bb.c:                                             ; preds = %_ZNK4llvm12KnownFPClass26isKnownNeverLogicalNegZeroENS_12DenormalModeE.exit.thread.i, %_ZNK4llvm12KnownFPClass26isKnownNeverLogicalNegZeroENS_12DenormalModeE.exit27.i
  %i.r = and i32 %.sroa.0.sroa.0.0.extract.trunc.i, 991 ; 5 uses
  %i.s = and i32 %.sroa.0.sroa.0.0.extract.trunc.i, 3
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.d, label %_ZN4llvm12KnownFPClass4faddERKS0_S2_NS_12DenormalModeE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = trunc nuw i64 %.sroa.0.sroa.4.sroa.3.0.extract.shift39.i to i1
  br i1 %i.u, label %_ZN4llvm12KnownFPClass4faddERKS0_S2_NS_12DenormalModeE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = and i32 %.sroa.0.sroa.0.0.extract.trunc.i, 28
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZN4llvm12KnownFPClass4faddERKS0_S2_NS_12DenormalModeE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp samesign ult i32 %i.r, 64           ; 2 uses
  %spec.select.i = select i1 %i.x, i64 1, i64 %.sroa.0.sroa.4.0.extract.shift38.i
  %spec.select40.i = zext i1 %i.x to i64
  br label %_ZN4llvm12KnownFPClass4faddERKS0_S2_NS_12DenormalModeE.exit

_ZN4llvm12KnownFPClass4faddERKS0_S2_NS_12DenormalModeE.exit: ; preds = %_ZNK4llvm12KnownFPClass26isKnownNeverLogicalNegZeroENS_12DenormalModeE.exit.thread32.i, %_ZNK4llvm12KnownFPClass26isKnownNeverLogicalNegZeroENS_12DenormalModeE.exit27.i, %_ZNK4llvm12KnownFPClass26isKnownNeverLogicalNegZeroENS_12DenormalModeE.exit.thread.i, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.sroa.4.sroa.0.0.i = phi i64 [ %.sroa.0.sroa.4.0.extract.shift38.i, %bb.c ], [ %.sroa.0.sroa.4.0.extract.shift38.i, %_ZNK4llvm12KnownFPClass26isKnownNeverLogicalNegZeroENS_12DenormalModeE.exit.thread.i ], [ %.sroa.0.sroa.4.0.extract.shift38.i, %_ZNK4llvm12KnownFPClass26isKnownNeverLogicalNegZeroENS_12DenormalModeE.exit27.i ], [ %.sroa.0.sroa.4.0.extract.shift38.i, %bb.d ], [ %.sroa.0.sroa.4.0.extract.shift38.i, %_ZNK4llvm12KnownFPClass26isKnownNeverLogicalNegZeroENS_12DenormalModeE.exit.thread32.i ], [ %spec.select.i, %bb.f ], [ 0, %bb.e ]
  %.sroa.0.sroa.0.0.i = phi i32 [ %i.r, %bb.c ], [ %.sroa.0.sroa.0.0.extract.trunc.i, %_ZNK4llvm12KnownFPClass26isKnownNeverLogicalNegZeroENS_12DenormalModeE.exit.thread.i ], [ %.sroa.0.sroa.0.0.extract.trunc.i, %_ZNK4llvm12KnownFPClass26isKnownNeverLogicalNegZeroENS_12DenormalModeE.exit27.i ], [ %i.r, %bb.d ], [ %.sroa.0.sroa.0.0.extract.trunc.i, %_ZNK4llvm12KnownFPClass26isKnownNeverLogicalNegZeroENS_12DenormalModeE.exit.thread32.i ], [ %i.r, %bb.f ], [ %i.r, %bb.e ]
  %.sroa.0.sroa.4.sroa.3.0.i = phi i64 [ %.sroa.0.sroa.4.sroa.3.0.extract.shift39.i, %bb.c ], [ %.sroa.0.sroa.4.sroa.3.0.extract.shift39.i, %_ZNK4llvm12KnownFPClass26isKnownNeverLogicalNegZeroENS_12DenormalModeE.exit.thread.i ], [ %.sroa.0.sroa.4.sroa.3.0.extract.shift39.i, %_ZNK4llvm12KnownFPClass26isKnownNeverLogicalNegZeroENS_12DenormalModeE.exit27.i ], [ 1, %bb.d ], [ %.sroa.0.sroa.4.sroa.3.0.extract.shift39.i, %_ZNK4llvm12KnownFPClass26isKnownNeverLogicalNegZeroENS_12DenormalModeE.exit.thread32.i ], [ %spec.select40.i, %bb.f ], [ 1, %bb.e ]
  %i.y = shl nuw nsw i64 %.sroa.0.sroa.4.sroa.3.0.i, 40
  %.sroa.0.sroa.4.sroa.0.0.insert.ext.i = shl nuw nsw i64 %.sroa.0.sroa.4.sroa.0.0.i, 32
  %i.z = and i64 %.sroa.0.sroa.4.sroa.0.0.insert.ext.i, 1095216660480
  %.sroa.0.sroa.4.0.insert.shift.i = or disjoint i64 %i.y, %i.z
  %.sroa.0.sroa.0.0.insert.ext.i = zext i32 %.sroa.0.sroa.0.0.i to i64
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.4.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  ret i64 %.sroa.0.sroa.0.0.insert.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 1103806596096) i64 @_ZN4llvm12KnownFPClass4fmulERKS0_S2_NS_12DenormalModeE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(6) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(6) %1, i16 %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !8      ; 8 uses
  %i.b = and i32 %i.a, 60
  %i.c = icmp eq i32 %i.b, 0                      ; 2 uses
  %.pre.pre.pre.pre.pre.pre = load i32, ptr %1, align 4, !tbaa !8 ; 10 uses
  %i.d = and i32 %.pre.pre.pre.pre.pre.pre, 60
  %i.e = icmp eq i32 %i.d, 0
  %or.cond71 = select i1 %i.c, i1 %i.e, i1 false
  %.pre59 = and i32 %i.a, 960
  %i.f = icmp eq i32 %.pre59, 0                   ; 2 uses
  br i1 %or.cond71, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.c, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread65

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %.pre.pre.pre.pre.pre.pre, 960
  %i.h = icmp eq i32 %i.g, 0
  %spec.select72 = select i1 %i.h, i32 963, i32 1023
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i: ; preds = %bb.a
  br i1 %i.f, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread, label %.thread

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread: ; preds = %bb.c, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i
  %.sroa.023.364 = phi i32 [ 963, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i ], [ %spec.select72, %bb.c ] ; 2 uses
  %i.i = and i32 %.pre.pre.pre.pre.pre.pre, 60
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread65

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread65: ; preds = %bb.b, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread
  %.sroa.023.362 = phi i32 [ %.sroa.023.364, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread ], [ 1023, %bb.b ] ; 2 uses
  br i1 %i.c, label %.thread, label %_ZN4llvm12KnownFPClass16propagateXorSignERKS0_S2_.exit

.thread:                                          ; preds = %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread65
  %.sroa.023.36269 = phi i32 [ %.sroa.023.362, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread65 ], [ 963, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i ] ; 2 uses
  %i.k = and i32 %.pre.pre.pre.pre.pre.pre, 960
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZN4llvm12KnownFPClass16propagateXorSignERKS0_S2_.exit

bb.d:                                             ; preds = %.thread, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread
  %.sroa.023.363 = phi i32 [ %.sroa.023.36269, %.thread ], [ %.sroa.023.364, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread ]
  %i.m = and i32 %.sroa.023.363, 63
  br label %_ZN4llvm12KnownFPClass16propagateXorSignERKS0_S2_.exit

_ZN4llvm12KnownFPClass16propagateXorSignERKS0_S2_.exit: ; preds = %bb.d, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread65, %.thread
  %.sroa.023.4 = phi i32 [ %.sroa.023.362, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread65 ], [ %.sroa.023.36269, %.thread ], [ %i.m, %bb.d ] ; 2 uses
  %i.n = and i32 %i.a, 504
  %i.o = icmp eq i32 %i.n, 0
  %i.p = and i32 %.pre.pre.pre.pre.pre.pre, 504
  %i.q = icmp eq i32 %i.p, 0
  %or.cond74 = select i1 %i.o, i1 true, i1 %i.q
  %i.r = and i32 %.sroa.023.4, 519
  %.sroa.023.0 = select i1 %or.cond74, i32 %i.r, i32 %.sroa.023.4 ; 4 uses
  %i.s = and i32 %.pre.pre.pre.pre.pre.pre, 924
  %i.t = icmp eq i32 %i.s, 0
  %i.u = and i32 %i.a, 924
  %i.v = icmp eq i32 %i.u, 0
  %or.cond = or i1 %i.v, %i.t
  br i1 %or.cond, label %bb.e, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit17

bb.e:                                             ; preds = %_ZN4llvm12KnownFPClass16propagateXorSignERKS0_S2_.exit
  %i.w = and i32 %.sroa.023.0, 99                 ; 4 uses
  %i.x = and i32 %.sroa.023.0, 3
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.f, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit17

bb.f:                                             ; preds = %bb.e
  %i.z = and i32 %.sroa.023.0, 32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit17, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp samesign ult i32 %i.w, 64
  %spec.select = zext i1 %i.ab to i8              ; 2 uses
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit17

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit17: ; preds = %bb.g, %bb.f, %_ZN4llvm12KnownFPClass16propagateXorSignERKS0_S2_.exit, %bb.e
  %.sroa.023.1 = phi i32 [ %.sroa.023.0, %_ZN4llvm12KnownFPClass16propagateXorSignERKS0_S2_.exit ], [ %i.w, %bb.e ], [ %i.w, %bb.g ], [ %i.w, %bb.f ] ; 5 uses
  %.sroa.12.sroa.0.1 = phi i8 [ 0, %_ZN4llvm12KnownFPClass16propagateXorSignERKS0_S2_.exit ], [ 0, %bb.e ], [ %spec.select, %bb.g ], [ 0, %bb.f ] ; 5 uses
  %.sroa.12.sroa.7.1 = phi i8 [ 0, %_ZN4llvm12KnownFPClass16propagateXorSignERKS0_S2_.exit ], [ 0, %bb.e ], [ %spec.select, %bb.g ], [ 1, %bb.f ] ; 4 uses
  %i.ac = or i32 %.pre.pre.pre.pre.pre.pre, %i.a
  %i.ad = and i32 %i.ac, 3
  %or.cond51 = icmp eq i32 %i.ad, 0
  br i1 %or.cond51, label %bb.h, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit22

bb.h:                                             ; preds = %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit17
  %i.ae = and i32 %.pre.pre.pre.pre.pre.pre, 516
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = and i32 %i.a, 96
  %i.ah = icmp eq i32 %i.ag, 0
  %i.ai = and i32 %i.a, 144
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = icmp ult i16 %2, 256
  %spec.select.i18 = select i1 %i.aj, i1 true, i1 %i.ak
  %i.al = select i1 %i.ah, i1 %spec.select.i18, i1 false
  br i1 %i.al, label %bb.j, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit22

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.am = and i32 %i.a, 516
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = and i32 %.pre.pre.pre.pre.pre.pre, 96
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = and i32 %.pre.pre.pre.pre.pre.pre, 144
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = icmp ult i16 %2, 256
  %spec.select.i19 = select i1 %i.ar, i1 true, i1 %i.as
  %i.at = select i1 %i.ap, i1 %spec.select.i19, i1 false
  br i1 %i.at, label %bb.l, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit22

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.au = and i32 %.sroa.023.1, 1020              ; 4 uses
  %i.av = trunc nuw i8 %.sroa.12.sroa.7.1 to i1
  br i1 %i.av, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit22, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = and i32 %.sroa.023.1, 60
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit22, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = icmp samesign ult i32 %i.au, 64         ; 2 uses
  %spec.select53 = select i1 %i.ay, i8 1, i8 %.sroa.12.sroa.0.1
  %spec.select54 = zext i1 %i.ay to i8
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit22

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit22: ; preds = %bb.n, %bb.m, %bb.l, %bb.i, %bb.k, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit17
  %.sroa.023.2 = phi i32 [ %.sroa.023.1, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit17 ], [ %.sroa.023.1, %bb.k ], [ %.sroa.023.1, %bb.i ], [ %i.au, %bb.n ], [ %i.au, %bb.l ], [ %i.au, %bb.m ]
  %.sroa.12.sroa.0.2 = phi i8 [ %.sroa.12.sroa.0.1, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit17 ], [ %.sroa.12.sroa.0.1, %bb.k ], [ %.sroa.12.sroa.0.1, %bb.i ], [ %spec.select53, %bb.n ], [ %.sroa.12.sroa.0.1, %bb.l ], [ 0, %bb.m ]
  %.sroa.12.sroa.7.2 = phi i8 [ %.sroa.12.sroa.7.1, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit17 ], [ %.sroa.12.sroa.7.1, %bb.k ], [ %.sroa.12.sroa.7.1, %bb.i ], [ %spec.select54, %bb.n ], [ 1, %bb.l ], [ 1, %bb.m ]
  %.sroa.12.sroa.7.0.insert.ext = zext nneg i8 %.sroa.12.sroa.7.2 to i64
  %.sroa.12.sroa.0.0.insert.ext = zext nneg i8 %.sroa.12.sroa.0.2 to i64
  %i.az = shl nuw nsw i64 %.sroa.12.sroa.7.0.insert.ext, 40
  %i.ba = shl nuw nsw i64 %.sroa.12.sroa.0.0.insert.ext, 32
  %.sroa.12.0.insert.shift = or disjoint i64 %i.az, %i.ba
  %.sroa.023.0.insert.ext = zext nneg i32 %.sroa.023.2 to i64
  %.sroa.023.0.insert.insert = or disjoint i64 %.sroa.12.0.insert.shift, %.sroa.023.0.insert.ext
  ret i64 %.sroa.023.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, 2199023255552) i64 @_ZN4llvm12KnownFPClass4fmulERKS0_RKNS_7APFloatENS_12DenormalModeE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(6) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i16 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::KnownFPClass", align 4 ; 4 uses
  %4 = alloca %"class.llvm::APFloat", align 8     ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !16     ; 3 uses
  %i.b = tail call noundef i32 @_ZN4llvm11APFloatBase18semanticsPrecisionERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29) %i.a) #10
  %i.c = add i32 %i.b, -1
  %i.d = load ptr, ptr %1, align 8, !tbaa !16
  %.not.i = icmp eq ptr %i.d, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN4llvm6detail5ilogbERKNS0_9IEEEFloatE(ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  br label %_ZN4llvm5ilogbERKNS_7APFloatE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN4llvm6detail5ilogbERKNS0_13DoubleAPFloatE(ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  br label %_ZN4llvm5ilogbERKNS_7APFloatE.exit

_ZN4llvm5ilogbERKNS_7APFloatE.exit:               ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 3 uses
  %.not = icmp slt i32 %.0.i, %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @_ZN4llvm12KnownFPClassC1ERKNS_7APFloatE(ptr noundef nonnull align 4 dereferenceable(6) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #10
  %i.g = call i64 @_ZN4llvm12KnownFPClass4fmulERKS0_S2_NS_12DenormalModeE(ptr noundef nonnull align 4 dereferenceable(6) %0, ptr noundef nonnull align 4 dereferenceable(6) %3, i16 %2) ; 3 uses
  %.sroa.0.sroa.0.0.extract.trunc = trunc i64 %i.g to i32 ; 4 uses
  %.sroa.0.sroa.8.0.extract.shift46 = lshr i64 %i.g, 32
  %.sroa.0.sroa.8.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.sroa.8.0.extract.shift46 to i8 ; 4 uses
  %.sroa.0.sroa.8.sroa.5.0.extract.shift47 = lshr i64 %i.g, 40 ; 2 uses
  %.sroa.0.sroa.8.sroa.5.0.extract.trunc = trunc nuw nsw i64 %.sroa.0.sroa.8.sroa.5.0.extract.shift47 to i8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br i1 %.not, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm5ilogbERKNS_7APFloatE.exit
  %i.h = and i32 %.sroa.0.sroa.0.0.extract.trunc, 879 ; 5 uses
  %i.i = and i32 %.sroa.0.sroa.0.0.extract.trunc, 3
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit

bb.e:                                             ; preds = %bb.d
  %i.k = trunc nuw i64 %.sroa.0.sroa.8.sroa.5.0.extract.shift47 to i1
  br i1 %i.k, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = and i32 %.sroa.0.sroa.0.0.extract.trunc, 44
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = icmp samesign ult i32 %i.h, 64           ; 2 uses
  %spec.select = select i1 %i.n, i8 1, i8 %.sroa.0.sroa.8.sroa.0.0.extract.trunc
  %spec.select48 = zext i1 %i.n to i8
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %_ZN4llvm5ilogbERKNS_7APFloatE.exit
  %.sroa.0.sroa.8.sroa.0.0 = phi i8 [ %.sroa.0.sroa.8.sroa.0.0.extract.trunc, %_ZN4llvm5ilogbERKNS_7APFloatE.exit ], [ %.sroa.0.sroa.8.sroa.0.0.extract.trunc, %bb.e ], [ %.sroa.0.sroa.8.sroa.0.0.extract.trunc, %bb.d ], [ %spec.select, %bb.g ], [ 0, %bb.f ] ; 9 uses
  %.sroa.0.sroa.0.0 = phi i32 [ %.sroa.0.sroa.0.0.extract.trunc, %_ZN4llvm5ilogbERKNS_7APFloatE.exit ], [ %i.h, %bb.e ], [ %i.h, %bb.d ], [ %i.h, %bb.g ], [ %i.h, %bb.f ] ; 9 uses
  %.sroa.0.sroa.8.sroa.5.0 = phi i8 [ %.sroa.0.sroa.8.sroa.5.0.extract.trunc, %_ZN4llvm5ilogbERKNS_7APFloatE.exit ], [ 1, %bb.e ], [ %.sroa.0.sroa.8.sroa.5.0.extract.trunc, %bb.d ], [ %spec.select48, %bb.g ], [ 1, %bb.f ] ; 7 uses
  %i.o = load i32, ptr %0, align 4, !tbaa !8
  %i.p = and i32 %i.o, 516
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.h, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20

bb.h:                                             ; preds = %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit
  %i.r = icmp slt i32 %.0.i, 0
  br i1 %i.r, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.s = and i32 %.sroa.0.sroa.0.0, 507           ; 5 uses
  %i.t = and i32 %.sroa.0.sroa.0.0, 3
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.j, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20

bb.j:                                             ; preds = %bb.i
  %i.v = trunc nuw i8 %.sroa.0.sroa.8.sroa.5.0 to i1
  br i1 %i.v, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = and i32 %.sroa.0.sroa.0.0, 56
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = icmp samesign ult i32 %i.s, 64           ; 2 uses
  %spec.select49 = select i1 %i.y, i8 1, i8 %.sroa.0.sroa.8.sroa.0.0
  %spec.select50 = zext i1 %i.y to i8
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20

bb.m:                                             ; preds = %bb.h
  %i.z = icmp eq i32 %.0.i, 0
  br i1 %i.z, label %bb.n, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %.not.i.i.i = icmp eq ptr %i.a, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsEm(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(29) %i.a, i64 noundef 1) #10
  br label %_ZN4llvm7APFloat6getOneERKNS_12fltSemanticsEb.exit

bb.p:                                             ; preds = %bb.n
  call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsEm(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE, i64 noundef 1) #10
  br label %_ZN4llvm7APFloat6getOneERKNS_12fltSemanticsEb.exit

_ZN4llvm7APFloat6getOneERKNS_12fltSemanticsEb.exit: ; preds = %bb.o, %bb.p
  %i.aa = load ptr, ptr %1, align 8, !tbaa !16
  %.not.i21 = icmp eq ptr %i.aa, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i21, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm7APFloat6getOneERKNS_12fltSemanticsEb.exit
  %i.ab = call noundef i32 @_ZNK4llvm6detail9IEEEFloat20compareAbsoluteValueERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4) #10
  br label %.critedge

bb.r:                                             ; preds = %_ZN4llvm7APFloat6getOneERKNS_12fltSemanticsEb.exit
  %i.ac = call noundef i32 @_ZNK4llvm6detail13DoubleAPFloat20compareAbsoluteValueERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4) #10
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.r
  %.0.i22 = phi i32 [ %i.ab, %bb.q ], [ %i.ac, %bb.r ]
  %i.ad = icmp eq i32 %.0.i22, 1
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br i1 %i.ad, label %bb.s, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20

bb.s:                                             ; preds = %.critedge
  %i.ae = and i32 %.sroa.0.sroa.0.0, 507          ; 5 uses
  %i.af = and i32 %.sroa.0.sroa.0.0, 3
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.t, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20

bb.t:                                             ; preds = %bb.s
  %i.ah = trunc nuw i8 %.sroa.0.sroa.8.sroa.5.0 to i1
  br i1 %i.ah, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ai = and i32 %.sroa.0.sroa.0.0, 56
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = icmp samesign ult i32 %i.ae, 64         ; 2 uses
  %spec.select51 = select i1 %i.ak, i8 1, i8 %.sroa.0.sroa.8.sroa.0.0
  %spec.select52 = zext i1 %i.ak to i8
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit20: ; preds = %bb.v, %bb.l, %bb.u, %bb.k, %bb.m, %bb.t, %bb.s, %bb.j, %bb.i, %.critedge, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit
  %.sroa.0.sroa.8.sroa.0.1 = phi i8 [ %.sroa.0.sroa.8.sroa.0.0, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit ], [ %.sroa.0.sroa.8.sroa.0.0, %bb.s ], [ %.sroa.0.sroa.8.sroa.0.0, %.critedge ], [ %.sroa.0.sroa.8.sroa.0.0, %bb.j ], [ %.sroa.0.sroa.8.sroa.0.0, %bb.m ], [ 0, %bb.u ], [ %.sroa.0.sroa.8.sroa.0.0, %bb.i ], [ %.sroa.0.sroa.8.sroa.0.0, %bb.t ], [ %spec.select49, %bb.l ], [ %spec.select51, %bb.v ], [ 0, %bb.k ]
  %.sroa.0.sroa.0.1 = phi i32 [ %.sroa.0.sroa.0.0, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit ], [ %i.ae, %bb.s ], [ %.sroa.0.sroa.0.0, %.critedge ], [ %i.s, %bb.j ], [ %.sroa.0.sroa.0.0, %bb.m ], [ %i.ae, %bb.u ], [ %i.s, %bb.i ], [ %i.ae, %bb.t ], [ %i.s, %bb.l ], [ %i.ae, %bb.v ], [ %i.s, %bb.k ]
  %.sroa.0.sroa.8.sroa.5.1 = phi i8 [ %.sroa.0.sroa.8.sroa.5.0, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit ], [ %.sroa.0.sroa.8.sroa.5.0, %bb.s ], [ %.sroa.0.sroa.8.sroa.5.0, %.critedge ], [ 1, %bb.j ], [ %.sroa.0.sroa.8.sroa.5.0, %bb.m ], [ 1, %bb.u ], [ %.sroa.0.sroa.8.sroa.5.0, %bb.i ], [ 1, %bb.t ], [ %spec.select50, %bb.l ], [ %spec.select52, %bb.v ], [ 1, %bb.k ]
  %.sroa.0.sroa.8.sroa.5.0.insert.ext = zext nneg i8 %.sroa.0.sroa.8.sroa.5.1 to i64
  %.sroa.0.sroa.8.sroa.0.0.insert.ext = zext i8 %.sroa.0.sroa.8.sroa.0.1 to i64
  %i.al = shl nuw nsw i64 %.sroa.0.sroa.8.sroa.5.0.insert.ext, 40
  %i.am = shl nuw nsw i64 %.sroa.0.sroa.8.sroa.0.0.insert.ext, 32
  %.sroa.0.sroa.8.0.insert.shift = or disjoint i64 %i.al, %i.am
  %.sroa.0.sroa.0.0.insert.ext = zext i32 %.sroa.0.sroa.0.1 to i64
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.8.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext
  ret i64 %.sroa.0.sroa.0.0.insert.insert
}

declare noundef i32 @_ZN4llvm11APFloatBase18semanticsPrecisionERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(29)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 1103806596096) i64 @_ZN4llvm12KnownFPClass4fdivERKS0_S2_NS_12DenormalModeE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(6) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(6) %1, i16 %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !8      ; 8 uses
  %i.b = and i32 %i.a, 3
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !8      ; 4 uses
  %i.e = and i32 %i.d, 3
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %i.a, 516
  %i.h = icmp eq i32 %i.g, 0
  %i.i = and i32 %i.d, 516
  %i.j = icmp eq i32 %i.i, 0
  %or.cond = or i1 %i.h, %i.j
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %i.a, 96
  %i.l = icmp eq i32 %i.k, 0
  %i.m = and i32 %i.a, 144
  %i.n = icmp eq i32 %i.m, 0
  %i.o = icmp ult i16 %2, 256                     ; 2 uses
  %spec.select.i = select i1 %i.n, i1 true, i1 %i.o
  %i.p = select i1 %i.l, i1 %spec.select.i, i1 false
  br i1 %i.p, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = and i32 %i.d, 96
  %i.r = icmp eq i32 %i.q, 0
  %i.s = and i32 %i.d, 144
  %i.t = icmp eq i32 %i.s, 0
  %spec.select.i13 = select i1 %i.t, i1 true, i1 %i.o
  %i.u = select i1 %i.r, i1 %spec.select.i13, i1 false
  br i1 %i.u, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit, label %bb.f

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit: ; preds = %bb.d, %bb.e
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit, %bb.e, %bb.b, %bb.a
  %.sroa.021.0 = phi i32 [ 1020, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit ], [ 1023, %bb.e ], [ 1023, %bb.c ], [ 1023, %bb.b ], [ 1023, %bb.a ] ; 6 uses
  %i.v = and i32 %i.a, 60
  %i.w = icmp eq i32 %i.v, 0                      ; 2 uses
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = load i32, ptr %1, align 4, !tbaa !8
  %i.y = and i32 %i.x, 60
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = and i32 %i.a, 960
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread62

bb.i:                                             ; preds = %bb.h
  %i.ac = load i32, ptr %1, align 4, !tbaa !8
  %i.ad = and i32 %i.ac, 960
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread66, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread66: ; preds = %bb.i
  %i.af = and i32 %.sroa.021.0, 963
  %i.ag = and i32 %.sroa.021.0, 3
  %i.ah = icmp eq i32 %i.ag, 0
  %spec.select68 = zext i1 %i.ah to i8
  br label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i: ; preds = %bb.g
  %.pre52 = and i32 %i.a, 960
  %i.ai = icmp eq i32 %.pre52, 0
  %i.aj = and i32 %.sroa.021.0, 963               ; 2 uses
  %i.ak = and i32 %.sroa.021.0, 3
  %i.al = icmp eq i32 %i.ak, 0
  %spec.select = zext i1 %i.al to i8              ; 2 uses
  br i1 %i.ai, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread, label %.thread

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread: ; preds = %bb.i, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread66, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i
  %.sroa.12.sroa.7.461 = phi i8 [ %spec.select68, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread66 ], [ %spec.select, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i ], [ 0, %bb.i ] ; 2 uses
  %.sroa.021.358 = phi i32 [ %i.af, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread66 ], [ %i.aj, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i ], [ %.sroa.021.0, %bb.i ] ; 2 uses
  %i.am = load i32, ptr %1, align 4, !tbaa !8
  %i.an = and i32 %i.am, 60
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.j, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread62

_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread62: ; preds = %bb.h, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread
  %.sroa.12.sroa.7.459 = phi i8 [ %.sroa.12.sroa.7.461, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread ], [ 0, %bb.h ] ; 2 uses
  %.sroa.021.356 = phi i32 [ %.sroa.021.358, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread ], [ %.sroa.021.0, %bb.h ] ; 2 uses
  br i1 %i.w, label %.thread, label %_ZN4llvm12KnownFPClass16propagateXorSignERKS0_S2_.exit

.thread:                                          ; preds = %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread62
  %.sroa.021.35672 = phi i32 [ %.sroa.021.356, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread62 ], [ %i.aj, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i ] ; 2 uses
  %.sroa.12.sroa.7.45971 = phi i8 [ %.sroa.12.sroa.7.459, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread62 ], [ %spec.select, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i ] ; 2 uses
  %i.ap = load i32, ptr %1, align 4, !tbaa !8
  %i.aq = and i32 %i.ap, 960
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %_ZN4llvm12KnownFPClass16propagateXorSignERKS0_S2_.exit

bb.j:                                             ; preds = %.thread, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread
  %.sroa.12.sroa.7.460 = phi i8 [ %.sroa.12.sroa.7.45971, %.thread ], [ %.sroa.12.sroa.7.461, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread ] ; 2 uses
  %.sroa.021.357 = phi i32 [ %.sroa.021.35672, %.thread ], [ %.sroa.021.358, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread ] ; 3 uses
  %i.as = and i32 %.sroa.021.357, 63              ; 3 uses
  %i.at = and i32 %.sroa.021.357, 3
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.k, label %_ZN4llvm12KnownFPClass16propagateXorSignERKS0_S2_.exit

bb.k:                                             ; preds = %bb.j
  %i.av = trunc nuw i8 %.sroa.12.sroa.7.460 to i1
  br i1 %i.av, label %_ZN4llvm12KnownFPClass16propagateXorSignERKS0_S2_.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.k
  %i.aw = and i32 %.sroa.021.357, 60
  %i.ax = icmp ne i32 %i.aw, 0
  %.sroa.12.sroa.0.0.extract.trunc36 = zext i1 %i.ax to i8
  br label %_ZN4llvm12KnownFPClass16propagateXorSignERKS0_S2_.exit

_ZN4llvm12KnownFPClass16propagateXorSignERKS0_S2_.exit: ; preds = %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread62, %.thread, %bb.j, %bb.k, %.sink.split.i.i
  %.sroa.021.4 = phi i32 [ %i.as, %bb.k ], [ %i.as, %.sink.split.i.i ], [ %i.as, %bb.j ], [ %.sroa.021.35672, %.thread ], [ %.sroa.021.356, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread62 ] ; 4 uses
  %.sroa.12.sroa.0.5 = phi i8 [ 0, %bb.k ], [ %.sroa.12.sroa.0.0.extract.trunc36, %.sink.split.i.i ], [ 0, %bb.j ], [ 0, %.thread ], [ 0, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread62 ] ; 4 uses
  %.sroa.12.sroa.7.5 = phi i8 [ 1, %bb.k ], [ 1, %.sink.split.i.i ], [ %.sroa.12.sroa.7.460, %bb.j ], [ %.sroa.12.sroa.7.45971, %.thread ], [ %.sroa.12.sroa.7.459, %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit.i.thread62 ] ; 3 uses
  %i.ay = and i32 %i.a, 927
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.l, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit17

bb.l:                                             ; preds = %_ZN4llvm12KnownFPClass16propagateXorSignERKS0_S2_.exit
  %i.ba = and i32 %.sroa.021.4, 99                ; 5 uses
  %i.bb = and i32 %.sroa.021.4, 3
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.m, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit17

bb.m:                                             ; preds = %bb.l
  %i.bd = trunc nuw i8 %.sroa.12.sroa.7.5 to i1
  br i1 %i.bd, label %_ZN4llvm12KnownFPClass8knownNotENS_11FPClassTestE.exit17, label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_1
