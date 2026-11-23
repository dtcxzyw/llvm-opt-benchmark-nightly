Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/APFloat?download=true
inline.NumInlined: 1816
inline.NumDeleted: 298
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc:bb.a
  store i32 %i.l, ptr %i.a, align 8, !tbaa !77
  ret void
}

declare void @_ZNK4llvh5APInt4zextEj(ptr dead_on_unwind writable sret(%"class.llvh::APInt") align 8, ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvh5APIntmLERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #7

declare void @_ZN4llvh5APInt7udivremERKS0_S2_RS0_S3_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK4llvh6detail9IEEEFloat15getExactInverseEPNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !guid !299 {
bb.a:
  %2 = alloca %"class.llvh::detail::IEEEFloat", align 8 ; 16 uses
  %3 = alloca %"class.llvh::APFloat", align 8     ; 8 uses
  %4 = alloca %"class.llvh::detail::IEEEFloat", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2               ; 2 uses
  %i.c = and i8 %i.b, 6
  %spec.select.i.not.i = icmp ne i8 %i.c, 0
  %i.d = and i8 %i.b, 7
  %i.e = icmp ne i8 %i.d, 3
  %i.f = and i1 %spec.select.i.not.i, %i.e
  br i1 %i.f, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46   ; 2 uses
  %i.j = add i32 %i.i, -64
  %i.k = icmp ult i32 %i.j, -128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.0.i.i.i = select i1 %i.k, ptr %i.m, ptr %i.l
  %i.n = add i32 %i.i, 64
  %i.o = lshr i32 %i.n, 6
  %i.p = tail call noundef i32 @_ZN4llvh5APInt5tcLSBEPKmj(ptr noundef %.0.i.i.i, i32 noundef %i.o) #25
  %i.q = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !46   ; 3 uses
  %i.t = add i32 %i.s, -1
  %.not = icmp eq i32 %i.p, %i.t
  br i1 %.not, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.q, ptr %2, align 8, !tbaa !54
  %i.u = add i32 %i.s, 64                         ; 3 uses
  %i.v = icmp ugt i32 %i.u, 127
  br i1 %i.v, label %bb.d, label %._ZN4llvh6detail9IEEEFloat10initializeEPKNS_12fltSemanticsE.exit_crit_edge.i

._ZN4llvh6detail9IEEEFloat10initializeEPKNS_12fltSemanticsE.exit_crit_edge.i: ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre3.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsEm.exit

bb.d:                                             ; preds = %bb.c
  %i.w = lshr i32 %i.u, 3
  %i.x = and i32 %i.w, 536870904
  %i.y = zext nneg i32 %i.x to i64
  %i.z = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #23 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !55
  %.pre = load i32, ptr %i.r, align 4, !tbaa !46  ; 2 uses
  %.pre14 = add i32 %.pre, 64
  br label %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsEm.exit

_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsEm.exit: ; preds = %._ZN4llvh6detail9IEEEFloat10initializeEPKNS_12fltSemanticsE.exit_crit_edge.i, %bb.d
  %.pre-phi = phi i32 [ %i.u, %._ZN4llvh6detail9IEEEFloat10initializeEPKNS_12fltSemanticsE.exit_crit_edge.i ], [ %.pre14, %bb.d ]
  %i.ab = phi i32 [ %i.s, %._ZN4llvh6detail9IEEEFloat10initializeEPKNS_12fltSemanticsE.exit_crit_edge.i ], [ %.pre, %bb.d ]
  %i.ac = phi ptr [ %.pre3.i, %._ZN4llvh6detail9IEEEFloat10initializeEPKNS_12fltSemanticsE.exit_crit_edge.i ], [ %i.z, %bb.d ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 6 uses
  %i.ae = load i8, ptr %i.ad, align 2
  %i.af = and i8 %i.ae, -16
  %i.ag = or disjoint i8 %i.af, 2
  store i8 %i.ag, ptr %i.ad, align 2
  %i.ah = add i32 %i.ab, -64
  %i.ai = icmp ult i32 %i.ah, -128
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %.0.i.i.i7 = select i1 %i.ai, ptr %i.ac, ptr %i.aj
  %i.ak = lshr i32 %.pre-phi, 6
  call void @_ZN4llvh5APInt5tcSetEPmmj(ptr noundef %.0.i.i.i7, i64 noundef 0, i32 noundef %i.ak) #25
  %i.al = load i32, ptr %i.r, align 4, !tbaa !46
  %i.am = trunc i32 %i.al to i16
  %i.an = add i16 %i.am, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i16 %i.an, ptr %i.ao, align 8, !tbaa !56
  %i.ap = load ptr, ptr %2, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !46
  %i.as = add i32 %i.ar, -64
  %i.at = icmp ult i32 %i.as, -128
  %i.au = load ptr, ptr %i.aj, align 8
  %.0.i.i = select i1 %i.at, ptr %i.au, ptr %i.aj
  store i64 1, ptr %.0.i.i, align 8, !tbaa !60
  %i.av = call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.aw = load i8, ptr %i.a, align 2
  %i.ax = load i8, ptr %i.ad, align 2
  %i.ay = and i8 %i.aw, 8
  %i.az = xor i8 %i.ay, %i.ax
  store i8 %i.az, ptr %i.ad, align 2
  %i.ba = call noundef i32 @_ZN4llvh6detail9IEEEFloat14divideSpecialsERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.bb = load i8, ptr %i.ad, align 2             ; 2 uses
  %i.bc = and i8 %i.bb, 6
  %spec.select.i.not.i.i = icmp ne i8 %i.bc, 0
  %i.bd = and i8 %i.bb, 7
  %i.be = icmp ne i8 %i.bd, 3
  %i.bf = and i1 %spec.select.i.not.i.i, %i.be
  br i1 %i.bf, label %bb.e, label %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit

bb.e:                                             ; preds = %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsEm.exit
  %i.bg = call noundef i32 @_ZN4llvh6detail9IEEEFloat17divideSignificandERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0) ; 2 uses
  %i.bh = call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0, i32 noundef %i.bg)
  %.not.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i, label %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit, label %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit.thread

_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit: ; preds = %bb.e, %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsEm.exit
  %.1.i = phi i32 [ %i.ba, %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsEm.exit ], [ %i.bh, %bb.e ]
  %.not5 = icmp eq i32 %.1.i, 0
  br i1 %.not5, label %bb.f, label %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit.thread

bb.f:                                             ; preds = %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit
  %i.bi = load i8, ptr %i.ad, align 2             ; 2 uses
  %i.bj = and i8 %i.bi, 6
  %spec.select.i.not.i.i8 = icmp ne i8 %i.bj, 0
  %i.bk = and i8 %i.bi, 7
  %i.bl = icmp ne i8 %i.bk, 3
  %i.bm = and i1 %spec.select.i.not.i.i8, %i.bl
  br i1 %i.bm, label %bb.g, label %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.bn = load i16, ptr %i.ao, align 8, !tbaa !56
  %i.bo = load ptr, ptr %2, align 8, !tbaa !54    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !48
  %i.br = icmp eq i16 %i.bn, %i.bq
  br i1 %i.br, label %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit, label %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit.thread

_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit:    ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !46 ; 2 uses
  %i.bu = add i32 %i.bt, -64
  %i.bv = icmp ult i32 %i.bu, -128
  %i.bw = load ptr, ptr %i.aj, align 8
  %.0.i.i.i9 = select i1 %i.bv, ptr %i.bw, ptr %i.aj
  %i.bx = add i32 %i.bt, -1
  %i.by = call noundef i32 @_ZN4llvh5APInt12tcExtractBitEPKmj(ptr noundef %.0.i.i.i9, i32 noundef %i.bx) #25
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit.thread, label %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit.thread

_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit.thread: ; preds = %bb.f, %bb.g, %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN4llvh6detail9IEEEFloatC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ca = load ptr, ptr %0, align 8, !tbaa !54
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.cc = load ptr, ptr %4, align 8, !tbaa !54    ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !55 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cg = load i16, ptr %i.cf, align 8, !tbaa !56 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 18
  %i.ci = load i8, ptr %i.ch, align 2
  %i.cj = and i8 %i.ci, 15                        ; 2 uses
  store ptr @_ZN4llvhL8semBogusE, ptr %4, align 8, !tbaa !54
  %.not.i.i = icmp eq ptr %i.ca, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i.i, label %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !54
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.ce, ptr %i.ck, align 8, !tbaa !55
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i16 %i.cg, ptr %i.cl, align 8, !tbaa !56
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 26 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 2
  %i.co = and i8 %i.cn, -16
  %i.cp = or disjoint i8 %i.co, %i.cj
  store i8 %i.cp, ptr %i.cm, align 2
  br label %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit

_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit.i.i: ; preds = %bb.h
  store ptr @_ZN4llvhL18semPPCDoubleDoubleE, ptr %i.cb, align 8, !tbaa !89
  %i.cq = call noalias noundef nonnull dereferenceable(72) ptr @_Znam(i64 noundef 72) #23, !inline_history !4 ; 8 uses
  store i64 2, ptr %i.cq, align 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.cc, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i.i.i.i.i, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  store i16 %i.cg, ptr %i.cs, align 16, !tbaa !56
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 34
  store i8 %i.cj, ptr %i.ct, align 2
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit.i.i

_ZN4llvh6detail9IEEEFloatD2Ev.exit.i.i:           ; preds = %bb.j, %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit.i.i
  %.sink6.i.i.i = phi ptr [ %i.cc, %bb.j ], [ @_ZN4llvhL18semPPCDoubleDoubleE, %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit.i.i ]
  store ptr %.sink6.i.i.i, ptr %i.cr, align 16, !tbaa !90
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  store i64 %i.ce, ptr %i.cu, align 8, !tbaa !55
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 66
  store i8 3, ptr %i.cv, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.cw, align 16, !tbaa !90
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !91
  br label %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit

_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit: ; preds = %bb.i, %_ZN4llvh6detail9IEEEFloatD2Ev.exit.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.da = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.cb) ; 0 uses
  %i.db = load ptr, ptr %i.cb, align 8, !tbaa !55 ; 2 uses
  %.not.i10 = icmp eq ptr %i.db, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i10, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !46
  %i.de = add i32 %i.dd, -64
  %i.df = icmp ult i32 %i.de, -128
  br i1 %i.df, label %bb.l, label %_ZN4llvh7APFloatD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !55 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.dh) #24, !inline_history !92
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.n:                                             ; preds = %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.cb) #25, !inline_history !5
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %i.dj = load ptr, ptr %4, align 8, !tbaa !54
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !46
  %i.dm = add i32 %i.dl, -64
  %i.dn = icmp ult i32 %i.dm, -128
  br i1 %i.dn, label %bb.o, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

bb.o:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit
  %i.do = load ptr, ptr %i.cd, align 8, !tbaa !55 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.do) #24
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

_ZN4llvh6detail9IEEEFloatD2Ev.exit:               ; preds = %_ZN4llvh7APFloatD2Ev.exit, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit.thread

_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit.thread: ; preds = %bb.e, %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit.thread, %_ZN4llvh6detail9IEEEFloatD2Ev.exit, %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit, %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit
  %.0 = phi i1 [ false, %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit ], [ false, %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit ], [ true, %_ZN4llvh6detail9IEEEFloatD2Ev.exit ], [ true, %_ZNK4llvh6detail9IEEEFloat10isDenormalEv.exit.thread ], [ false, %bb.e ]
  %i.dq = load ptr, ptr %2, align 8, !tbaa !54
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !46
  %i.dt = add i32 %i.ds, -64
  %i.du = icmp ult i32 %i.dt, -128
  br i1 %i.du, label %bb.q, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit11

bb.q:                                             ; preds = %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit.thread
  %i.dv = load ptr, ptr %i.aj, align 8, !tbaa !55 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit11, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.dv) #24
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit11

_ZN4llvh6detail9IEEEFloatD2Ev.exit11:             ; preds = %_ZN4llvh6detail9IEEEFloat6divideERKS1_NS_11APFloatBase12roundingModeE.exit.thread, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.a, %_ZN4llvh6detail9IEEEFloatD2Ev.exit11
  %.1 = phi i1 [ false, %bb.a ], [ %.0, %_ZN4llvh6detail9IEEEFloatD2Ev.exit11 ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh7APFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 !guid !300 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %.not = icmp eq ptr %i.b, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !46
  %i.e = add i32 %i.d, -64
  %i.f = icmp ult i32 %i.e, -128
  br i1 %i.f, label %bb.c, label %_ZN4llvh7APFloat7StorageD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN4llvh7APFloat7StorageD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #24
  br label %_ZN4llvh7APFloat7StorageD2Ev.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !6
  br label %_ZN4llvh7APFloat7StorageD2Ev.exit

_ZN4llvh7APFloat7StorageD2Ev.exit:                ; preds = %bb.d, %bb.c, %bb.b, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK4llvh6detail9IEEEFloat11isSignalingEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 align 2 !guid !301 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.b = load i8, ptr %i.a, align 2
  %i.c = and i8 %i.b, 7
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !46   ; 2 uses
  %i.h = add i32 %i.g, -64
  %i.i = icmp ult i32 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %.0.i.i = select i1 %i.i, ptr %i.k, ptr %i.j
  %i.l = add i32 %i.g, -2
  %i.m = tail call noundef i32 @_ZN4llvh5APInt12tcExtractBitEPKmj(ptr noundef %.0.i.i, i32 noundef %i.l) #25
  %.not = icmp eq i32 %i.m, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %.not, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN4llvh6detail9IEEEFloat4nextEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 !guid !302 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2               ; 2 uses
  br i1 %1, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.c = xor i8 %i.b, 8                           ; 2 uses
  store i8 %i.c, ptr %i.a, align 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.d = phi i8 [ %i.c, %bb.b ], [ %i.b, %bb.a ]  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 11 uses
  %i.f = and i8 %i.d, 7
  switch i8 %i.f, label %_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit [
    i8 0, label %bb.c
    i8 1, label %_ZNK4llvh6detail9IEEEFloat11isSignalingEv.exit
    i8 3, label %bb.g
    i8 2, label %bb.h
  ]

bb.c:                                             ; preds = %._crit_edge
  %i.g = and i8 %i.d, 8
  %.not47 = icmp eq i8 %i.g, 0
  br i1 %.not47, label %_ZN4llvh6detail9IEEEFloat7makeNaNEbbPKNS_5APIntE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i8 %i.d, -16
  %i.i = or disjoint i8 %i.h, 10
  store i8 %i.i, ptr %i.e, align 2
  %i.j = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.k = load i16, ptr %i.j, align 4, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.k, ptr %i.l, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !46   ; 2 uses
  %i.o = add i32 %i.n, -64
  %i.p = icmp ult i32 %i.o, -128
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  %.0.i.i = select i1 %i.p, ptr %i.r, ptr %i.q    ; 2 uses
  %i.s = add i32 %i.n, 64                         ; 2 uses
  %i.t = lshr i32 %i.s, 6
  %i.u = add nsw i32 %i.t, -1
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %.0.i.i, i8 -1, i64 %i.w, i1 false)
  %i.x = and i32 %i.s, -64
  %i.y = load ptr, ptr %0, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
end_hunk_0
begin_hunk_1_@_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsEm:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 34
  store i8 2, ptr %i.e, align 2
  tail call void @_ZN4llvh5APInt5tcSetEPmmj(ptr noundef nonnull %.phi.trans.insert.i.i, i64 noundef 0, i32 noundef 1) #25, !inline_history !310
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i16 52, ptr %i.f, align 16, !tbaa !56
  %i.g = load ptr, ptr %i.d, align 16, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46
  %i.j = add i32 %i.i, -64
  %i.k = icmp ult i32 %i.j, -128
  %i.l = load ptr, ptr %.phi.trans.insert.i.i, align 8
  %.0.i.i.i = select i1 %i.k, ptr %i.l, ptr %.phi.trans.insert.i.i
  store i64 %2, ptr %.0.i.i.i, align 8, !tbaa !60
  %i.m = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i32 noundef 0, i32 noundef 0), !inline_history !310 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.n, align 16, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 66 ; 2 uses
  %i.p = load i8, ptr %i.o, align 2
  %i.q = and i8 %i.p, -16
  %i.r = or disjoint i8 %i.q, 3
  store i8 %i.r, ptr %i.o, align 2
  store ptr %i.c, ptr %i.a, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2) unnamed_addr #2 align 2 !guid !312 {
.cont:
  store ptr %1, ptr %0, align 8, !tbaa !89
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znam(i64 noundef 72) #23 ; 12 uses
  store i64 2, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !58
  %i.d = icmp ult i32 %i.c, 65
  %i.e = load ptr, ptr %2, align 8
  %spec.select.i = select i1 %i.d, ptr %2, ptr %i.e ; 2 uses
  %i.f = load i64, ptr %spec.select.i, align 8, !tbaa !60 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = lshr i64 %i.f, 52
  %i.i = and i64 %i.h, 2047                       ; 4 uses
  %i.j = and i64 %i.f, 4503599627370495           ; 5 uses
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.g, align 16, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 34 ; 4 uses
  %sh.diff.i21.i = lshr i64 %i.f, 60
  %tr.sh.diff.i22.i = trunc nuw nsw i64 %sh.diff.i21.i to i8
  %i.l = and i8 %tr.sh.diff.i22.i, 8              ; 4 uses
  %i.m = icmp eq i64 %i.i, 0
  %i.n = or i64 %i.i, %i.j
  %or.cond.i23.i = icmp eq i64 %i.n, 0
  br i1 %or.cond.i23.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.cont
  %i.o = or disjoint i8 %i.l, 3
  store i8 %i.o, ptr %i.k, align 2
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit.cont

bb.b:                                             ; preds = %.cont
  %i.p = icmp eq i64 %i.j, 0                      ; 2 uses
  %i.q = icmp eq i64 %i.i, 2047                   ; 2 uses
  %or.cond3.i24.i = and i1 %i.p, %i.q
  br i1 %or.cond3.i24.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 %i.l, ptr %i.k, align 2
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit.cont

bb.d:                                             ; preds = %bb.b
  %.not.i25.i = xor i1 %i.p, true
  %or.cond5.i26.i = and i1 %i.q, %.not.i25.i
  br i1 %or.cond5.i26.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = or disjoint i8 %i.l, 1
  store i8 %i.r, ptr %i.k, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.j, ptr %i.s, align 8, !tbaa !60
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit.cont

bb.f:                                             ; preds = %bb.d
  %i.t = or disjoint i8 %i.l, 2
  store i8 %i.t, ptr %i.k, align 2
  %i.u = trunc nuw nsw i64 %i.i to i16
  %i.v = add nsw i16 %i.u, -1023
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i16 %i.v, ptr %i.w, align 16, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i64 %i.j, ptr %i.x, align 8, !tbaa !60
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i16 -1022, ptr %i.w, align 16, !tbaa !56
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit.cont

bb.h:                                             ; preds = %bb.f
  %i.y = or disjoint i64 %i.j, 4503599627370496
  store i64 %i.y, ptr %i.x, align 8, !tbaa !60
  br label %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit.cont

_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit.cont: ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !60  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ac = lshr i64 %i.aa, 52
  %i.ad = and i64 %i.ac, 2047                     ; 4 uses
  %i.ae = and i64 %i.aa, 4503599627370495         ; 5 uses
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.ab, align 16, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 66 ; 4 uses
  %sh.diff.i21.i7 = lshr i64 %i.aa, 60
  %tr.sh.diff.i22.i8 = trunc nuw nsw i64 %sh.diff.i21.i7 to i8
  %i.ag = and i8 %tr.sh.diff.i22.i8, 8            ; 4 uses
  %i.ah = icmp eq i64 %i.ad, 0
  %i.ai = or i64 %i.ad, %i.ae
  %or.cond.i23.i9 = icmp eq i64 %i.ai, 0
  br i1 %or.cond.i23.i9, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit.cont
  %i.aj = or disjoint i8 %i.ag, 3
  store i8 %i.aj, ptr %i.af, align 2
  br label %_ZN4llvh5APIntD2Ev.exit5

bb.j:                                             ; preds = %_ZN4llvh6detail9IEEEFloat13initFromAPIntEPKNS_12fltSemanticsERKNS_5APIntE.exit.cont
  %i.ak = icmp eq i64 %i.ae, 0                    ; 2 uses
  %i.al = icmp eq i64 %i.ad, 2047                 ; 2 uses
  %or.cond3.i24.i10 = and i1 %i.ak, %i.al
  br i1 %or.cond3.i24.i10, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 %i.ag, ptr %i.af, align 2
  br label %_ZN4llvh5APIntD2Ev.exit5

bb.l:                                             ; preds = %bb.j
  %.not.i25.i11 = xor i1 %i.ak, true
  %or.cond5.i26.i12 = and i1 %i.al, %.not.i25.i11
  br i1 %or.cond5.i26.i12, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = or disjoint i8 %i.ag, 1
  store i8 %i.am, ptr %i.af, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.ae, ptr %i.an, align 8, !tbaa !60
  br label %_ZN4llvh5APIntD2Ev.exit5

bb.n:                                             ; preds = %bb.l
  %i.ao = or disjoint i8 %i.ag, 2
  store i8 %i.ao, ptr %i.af, align 2
  %i.ap = trunc nuw nsw i64 %i.ad to i16
  %i.aq = add nsw i16 %i.ap, -1023
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  store i16 %i.aq, ptr %i.ar, align 16, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  store i64 %i.ae, ptr %i.as, align 8, !tbaa !60
  br i1 %i.ah, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i16 -1022, ptr %i.ar, align 16, !tbaa !56
  br label %_ZN4llvh5APIntD2Ev.exit5

bb.p:                                             ; preds = %bb.n
  %i.at = or disjoint i64 %i.ae, 4503599627370496
  store i64 %i.at, ptr %i.as, align 8, !tbaa !60
  br label %_ZN4llvh5APIntD2Ev.exit5

_ZN4llvh5APIntD2Ev.exit5:                         ; preds = %bb.i, %bb.k, %bb.m, %bb.o, %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsEONS_7APFloatES6_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %3) unnamed_addr #2 align 2 !guid !313 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !89
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znam(i64 noundef 72) #23 ; 10 uses
  store i64 2, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !55
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load i16, ptr %i.g, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i16 %i.h, ptr %i.i, align 16, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.k = load i8, ptr %i.j, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  %i.m = and i8 %i.k, 15
  store i8 %i.m, ptr %i.l, align 2
  br label %_ZN4llvh7APFloatC2EOS0_.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %i.e, align 8, !tbaa !91
  br label %_ZN4llvh7APFloatC2EOS0_.exit

_ZN4llvh7APFloatC2EOS0_.exit:                     ; preds = %bb.b, %bb.c
  %.sink6 = phi ptr [ @_ZN4llvhL18semPPCDoubleDoubleE, %bb.c ], [ %i.d, %bb.b ]
  store ptr %.sink6, ptr %i.b, align 16, !tbaa !90
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.f, ptr %i.n, align 8, !tbaa !55
  store ptr @_ZN4llvhL8semBogusE, ptr %i.c, align 8, !tbaa !90
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !55   ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.p, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !55
  br i1 %.not.i.i4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh7APFloatC2EOS0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = load i16, ptr %i.s, align 8, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i16 %i.t, ptr %i.u, align 16, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.w = load i8, ptr %i.v, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 66
  %i.y = and i8 %i.w, 15
  store i8 %i.y, ptr %i.x, align 2
  br label %_ZN4llvh7APFloatC2EOS0_.exit5

bb.e:                                             ; preds = %_ZN4llvh7APFloatC2EOS0_.exit
  store ptr null, ptr %i.q, align 8, !tbaa !91
  br label %_ZN4llvh7APFloatC2EOS0_.exit5

_ZN4llvh7APFloatC2EOS0_.exit5:                    ; preds = %bb.d, %bb.e
  %.sink8 = phi ptr [ @_ZN4llvhL18semPPCDoubleDoubleE, %bb.e ], [ %i.p, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sink8, ptr %i.z, align 16, !tbaa !90
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.r, ptr %i.aa, align 8, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN4llvhL8semBogusE, ptr %i.o, align 8, !tbaa !90
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail13DoubleAPFloatC2ERKS1_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 align 2 !guid !314 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !89
  store ptr %i.a, ptr %0, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znam(i64 noundef 72) #23 ; 4 uses
  store i64 2, ptr %i.d, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  tail call void @_ZN4llvh7APFloat7StorageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h), !inline_history !7
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !91
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  tail call void @_ZN4llvh7APFloat7StorageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k), !inline_history !7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4llvh6detail13DoubleAPFloatC2EOS1_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #8 align 2 !guid !315 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !89
  store ptr %i.a, ptr %0, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !91
  store i64 %i.d, ptr %i.b, align 8, !tbaa !91
  store ptr null, ptr %i.c, align 8, !tbaa !91
  store ptr @_ZN4llvhL8semBogusE, ptr %1, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh6detail13DoubleAPFloataSERKS1_(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) local_unnamed_addr #2 align 2 !guid !318 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !89
  %i.b = load ptr, ptr %1, align 8, !tbaa !89
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91   ; 4 uses
  %.not8.peel.not = icmp eq ptr %i.e, null
  br i1 %.not8.peel.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !91   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !55   ; 2 uses
  %.not11.i.peel = icmp eq ptr %i.j, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.l = icmp eq ptr %i.k, @_ZN4llvhL18semPPCDoubleDoubleE ; 2 uses
  br i1 %.not11.i.peel, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.l, label %.thread8.i.peel, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh6detail9IEEEFloataSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i), !inline_history !316 ; 0 uses
  br label %_ZN4llvh7APFloat7StorageaSERKS1_.exit.peel

.thread8.i.peel:                                  ; preds = %bb.c
  %.not9.i.peel = icmp eq ptr %i.g, %i.e
  br i1 %.not9.i.peel, label %_ZN4llvh7APFloat7StorageaSERKS1_.exit.peel, label %bb.e

bb.e:                                             ; preds = %.thread8.i.peel
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !46
  %i.p = add i32 %i.o, -64
  %i.q = icmp ult i32 %i.p, -128
  br i1 %i.q, label %bb.f, label %_ZN4llvh7APFloat7StorageD2Ev.exit.i.peel

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !55   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN4llvh7APFloat7StorageD2Ev.exit.i.peel, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #24, !inline_history !317
  br label %_ZN4llvh7APFloat7StorageD2Ev.exit.i.peel

bb.h:                                             ; preds = %bb.b
  br i1 %i.l, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.peel = icmp eq ptr %i.g, %i.e
  br i1 %.not.i11.peel, label %_ZN4llvh7APFloat7StorageaSERKS1_.exit.peel, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.h) #25, !inline_history !317
  br label %_ZN4llvh7APFloat7StorageD2Ev.exit.i.peel

_ZN4llvh7APFloat7StorageD2Ev.exit.i.peel:         ; preds = %bb.j, %bb.g, %bb.f, %bb.e
  tail call void @_ZN4llvh7APFloat7StorageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i), !inline_history !316
  br label %_ZN4llvh7APFloat7StorageaSERKS1_.exit.peel

bb.k:                                             ; preds = %bb.h
  %i.u = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh6detail13DoubleAPFloataSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i), !inline_history !316 ; 0 uses
  br label %_ZN4llvh7APFloat7StorageaSERKS1_.exit.peel

_ZN4llvh7APFloat7StorageaSERKS1_.exit.peel:       ; preds = %bb.k, %_ZN4llvh7APFloat7StorageD2Ev.exit.i.peel, %bb.i, %.thread8.i.peel, %bb.d
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !91   ; 3 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !91   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 4 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !55   ; 2 uses
  %.not11.i12.peel = icmp eq ptr %i.z, @_ZN4llvhL18semPPCDoubleDoubleE ; 6 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !55
  %i.ab = icmp eq ptr %i.aa, @_ZN4llvhL18semPPCDoubleDoubleE ; 4 uses
  br i1 %.not11.i12.peel, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %_ZN4llvh7APFloat7StorageaSERKS1_.exit.peel
  br i1 %i.ab, label %.lr.ph, label %.loopexit77

.lr.ph:                                           ; preds = %bb.l, %bb.x
  %.tr1846 = phi ptr [ %i.ax, %bb.x ], [ %i.y, %bb.l ] ; 2 uses
  %.tr45 = phi ptr [ %i.aw, %bb.x ], [ %i.x, %bb.l ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr1846, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !91 ; 4 uses
  %.not8 = icmp eq ptr %i.ad, null
  br i1 %.not8, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr45, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !91 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !55 ; 2 uses
  %.not11.i = icmp eq ptr %i.ai, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !55
  %i.ak = icmp eq ptr %i.aj, @_ZN4llvhL18semPPCDoubleDoubleE ; 2 uses
  br i1 %.not11.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.ak, label %.thread8.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh6detail9IEEEFloataSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ah), !inline_history !316 ; 0 uses
  br label %_ZN4llvh7APFloat7StorageaSERKS1_.exit

bb.p:                                             ; preds = %bb.m
  br i1 %i.ak, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.am = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh6detail13DoubleAPFloataSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ah), !inline_history !316 ; 0 uses
  br label %_ZN4llvh7APFloat7StorageaSERKS1_.exit

bb.r:                                             ; preds = %bb.p
  %.not.i11 = icmp eq ptr %i.af, %i.ad
  br i1 %.not.i11, label %_ZN4llvh7APFloat7StorageaSERKS1_.exit, label %bb.v

.thread8.i:                                       ; preds = %bb.n
  %.not9.i = icmp eq ptr %i.af, %i.ad
  br i1 %.not9.i, label %_ZN4llvh7APFloat7StorageaSERKS1_.exit, label %bb.s

bb.s:                                             ; preds = %.thread8.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !46
  %i.ap = add i32 %i.ao, -64
  %i.aq = icmp ult i32 %i.ap, -128
  br i1 %i.aq, label %bb.t, label %_ZN4llvh7APFloat7StorageD2Ev.exit.i

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !55 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN4llvh7APFloat7StorageD2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZdaPv(ptr noundef nonnull %i.as) #24, !inline_history !317
  br label %_ZN4llvh7APFloat7StorageD2Ev.exit.i

bb.v:                                             ; preds = %bb.r
  tail call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ag) #25, !inline_history !317
end_hunk_1
begin_hunk_2_@_ZNK4llvh6detail13DoubleAPFloat15getExactInverseEPNS_7APFloatE:bb.a
bb.f:                                             ; preds = %bb.d
  %i.i = call noundef zeroext i1 @_ZNK4llvh6detail13DoubleAPFloat15getExactInverseEPNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef null), !inline_history !436
  br label %_ZNK4llvh7APFloat15getExactInverseEPS0_.exit

bb.g:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store ptr @_ZN4llvhL24semPPCDoubleDoubleLegacyE, ptr %i.j, align 8, !tbaa !54
  %i.k = call noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #23, !inline_history !14
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 26 ; 2 uses
  %i.n = load i8, ptr %i.m, align 2
  %i.o = and i8 %i.n, -16
  %i.p = or disjoint i8 %i.o, 3
  store i8 %i.p, ptr %i.m, align 2
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !55
  %.not13 = icmp eq ptr %i.q, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = call noundef zeroext i1 @_ZNK4llvh6detail9IEEEFloat15getExactInverseEPNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %4), !inline_history !436
  br label %_ZNK4llvh7APFloat15getExactInverseEPS0_.exit6

bb.i:                                             ; preds = %bb.g
  %i.s = call noundef zeroext i1 @_ZNK4llvh6detail13DoubleAPFloat15getExactInverseEPNS_7APFloatE(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %4), !inline_history !436
  br label %_ZNK4llvh7APFloat15getExactInverseEPS0_.exit6

_ZNK4llvh7APFloat15getExactInverseEPS0_.exit6:    ; preds = %bb.h, %bb.i
  %.0.i5 = phi i1 [ %i.r, %bb.h ], [ %i.s, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !55, !noalias !440
  %.not.i = icmp eq ptr %i.t, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvh7APFloat15getExactInverseEPS0_.exit6
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.j), !inline_history !12
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

bb.k:                                             ; preds = %_ZNK4llvh7APFloat15getExactInverseEPS0_.exit6
  call void @_ZNK4llvh6detail13DoubleAPFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.j), !inline_history !12
  br label %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit

_ZNK4llvh7APFloat14bitcastToAPIntEv.exit:         ; preds = %bb.j, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  call void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %6), !inline_history !16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u) ; 0 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !55   ; 2 uses
  %.not.i7 = icmp eq ptr %i.x, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i7, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !46
  %i.aa = add i32 %i.z, -64
  %i.ab = icmp ult i32 %i.aa, -128
  br i1 %i.ab, label %bb.m, label %_ZN4llvh7APFloatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !55 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #24, !inline_history !92
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.o:                                             ; preds = %_ZNK4llvh7APFloat14bitcastToAPIntEv.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.u) #25, !inline_history !5
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !58
  %i.ah = icmp ugt i32 %i.ag, 64
  br i1 %i.ah, label %bb.p, label %_ZN4llvh5APIntD2Ev.exit8

bb.p:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit
  %i.ai = load ptr, ptr %6, align 8, !tbaa !55    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN4llvh5APIntD2Ev.exit8, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #24
  br label %_ZN4llvh5APIntD2Ev.exit8

_ZN4llvh5APIntD2Ev.exit8:                         ; preds = %_ZN4llvh7APFloatD2Ev.exit, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !55  ; 2 uses
  %.not.i9 = icmp eq ptr %i.ak, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i9, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !46
  %i.an = add i32 %i.am, -64
  %i.ao = icmp ult i32 %i.an, -128
  br i1 %i.ao, label %bb.s, label %_ZN4llvh7APFloatD2Ev.exit10

bb.s:                                             ; preds = %bb.r
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !55  ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN4llvh7APFloatD2Ev.exit10, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.ap) #24, !inline_history !92
  br label %_ZN4llvh7APFloatD2Ev.exit10

bb.u:                                             ; preds = %_ZN4llvh5APIntD2Ev.exit8
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #25, !inline_history !5
  br label %_ZN4llvh7APFloatD2Ev.exit10

_ZN4llvh7APFloatD2Ev.exit10:                      ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNK4llvh7APFloat15getExactInverseEPS0_.exit

_ZNK4llvh7APFloat15getExactInverseEPS0_.exit:     ; preds = %bb.f, %bb.e, %_ZN4llvh7APFloatD2Ev.exit10
  %.0 = phi i1 [ %.0.i5, %_ZN4llvh7APFloatD2Ev.exit10 ], [ %i.h, %bb.e ], [ %i.i, %bb.f ]
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  %.not.i11 = icmp eq ptr %i.ar, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i11, label %bb.y, label %bb.v

bb.v:                                             ; preds = %_ZNK4llvh7APFloat15getExactInverseEPS0_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !46
  %i.au = add i32 %i.at, -64
  %i.av = icmp ult i32 %i.au, -128
  br i1 %i.av, label %bb.w, label %_ZN4llvh7APFloatD2Ev.exit12

bb.w:                                             ; preds = %bb.v
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !55 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZN4llvh7APFloatD2Ev.exit12, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #24, !inline_history !92
  br label %_ZN4llvh7APFloatD2Ev.exit12

bb.y:                                             ; preds = %_ZNK4llvh7APFloat15getExactInverseEPS0_.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #25, !inline_history !5
  br label %_ZN4llvh7APFloatD2Ev.exit12

_ZN4llvh7APFloatD2Ev.exit12:                      ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail6scalbnENS0_13DoubleAPFloatEiNS_11APFloatBase12roundingModeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::detail::DoubleAPFloat") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 !guid !441 {
bb.a:
  %4 = alloca %"class.llvh::APFloat", align 8     ; 7 uses
  %5 = alloca %"class.llvh::APFloat", align 8     ; 3 uses
  %6 = alloca %"class.llvh::APFloat", align 8     ; 7 uses
  %7 = alloca %"class.llvh::APFloat", align 8     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_ZN4llvh7APFloat7StorageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d), !inline_history !7
  call void @_ZN4llvh6scalbnENS_7APFloatEiNS_11APFloatBase12roundingModeE(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APFloat") align 8 %4, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @_ZN4llvh7APFloat7StorageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.g), !inline_history !7
  call void @_ZN4llvh6scalbnENS_7APFloatEiNS_11APFloatBase12roundingModeE(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APFloat") align 8 %6, ptr noundef nonnull %7, i32 noundef %2, i32 noundef %3)
  store ptr @_ZN4llvhL18semPPCDoubleDoubleE, ptr %0, align 8, !tbaa !89
  %i.h = call noalias noundef nonnull dereferenceable(72) ptr @_Znam(i64 noundef 72) #23 ; 10 uses
  store i64 2, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !55   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !55
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.o = load i16, ptr %i.n, align 8, !tbaa !56
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i16 %i.o, ptr %i.p, align 16, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.r = load i8, ptr %i.q, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 34
  %i.t = and i8 %i.r, 15
  store i8 %i.t, ptr %i.s, align 2
  br label %_ZN4llvh7APFloatC2EOS0_.exit.i

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %i.l, align 8, !tbaa !91
  br label %_ZN4llvh7APFloatC2EOS0_.exit.i

_ZN4llvh7APFloatC2EOS0_.exit.i:                   ; preds = %bb.c, %bb.b
  %.sink6.i = phi ptr [ @_ZN4llvhL18semPPCDoubleDoubleE, %bb.c ], [ %i.k, %bb.b ]
  store ptr %.sink6.i, ptr %i.i, align 16, !tbaa !90
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %i.m, ptr %i.u, align 8, !tbaa !55
  store ptr @_ZN4llvhL8semBogusE, ptr %i.j, align 8, !tbaa !90
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !55   ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.w, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !55
  br i1 %.not.i.i4.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh7APFloatC2EOS0_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !56
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i16 %i.aa, ptr %i.ab, align 16, !tbaa !56
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 26
  %i.ad = load i8, ptr %i.ac, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 66
  %i.af = and i8 %i.ad, 15
  store i8 %i.af, ptr %i.ae, align 2
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.e:                                             ; preds = %_ZN4llvh7APFloatC2EOS0_.exit.i
  store ptr null, ptr %i.x, align 8, !tbaa !91
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.d, %bb.e
  %.sink8.i = phi ptr [ @_ZN4llvhL18semPPCDoubleDoubleE, %bb.e ], [ %i.w, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %.sink8.i, ptr %i.ag, align 16, !tbaa !90
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 %i.y, ptr %i.ah, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN4llvhL8semBogusE, ptr %i.v, align 8, !tbaa !90
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !91
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !55  ; 2 uses
  %.not.i4 = icmp eq ptr %i.ak, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i4, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !46
  %i.an = add i32 %i.am, -64
  %i.ao = icmp ult i32 %i.an, -128
  br i1 %i.ao, label %bb.g, label %_ZN4llvh7APFloatD2Ev.exit5

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !55 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN4llvh7APFloatD2Ev.exit5, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.aq) #24, !inline_history !92
  br label %_ZN4llvh7APFloatD2Ev.exit5

bb.i:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25, !inline_history !5
  br label %_ZN4llvh7APFloatD2Ev.exit5

_ZN4llvh7APFloatD2Ev.exit5:                       ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !55  ; 2 uses
  %.not.i6 = icmp eq ptr %i.as, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i6, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit5
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !46
  %i.av = add i32 %i.au, -64
  %i.aw = icmp ult i32 %i.av, -128
  br i1 %i.aw, label %bb.k, label %_ZN4llvh7APFloatD2Ev.exit7

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !55  ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZN4llvh7APFloatD2Ev.exit7, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #24, !inline_history !92
  br label %_ZN4llvh7APFloatD2Ev.exit7

bb.m:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit5
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #25, !inline_history !5
  br label %_ZN4llvh7APFloatD2Ev.exit7

_ZN4llvh7APFloatD2Ev.exit7:                       ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %.not.i8 = icmp eq ptr %i.az, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i8, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !46
  %i.bc = add i32 %i.bb, -64
  %i.bd = icmp ult i32 %i.bc, -128
  br i1 %i.bd, label %bb.o, label %_ZN4llvh7APFloatD2Ev.exit9

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !55 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZN4llvh7APFloatD2Ev.exit9, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.bf) #24, !inline_history !92
  br label %_ZN4llvh7APFloatD2Ev.exit9

bb.q:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit7
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #25, !inline_history !5
  br label %_ZN4llvh7APFloatD2Ev.exit9

_ZN4llvh7APFloatD2Ev.exit9:                       ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh6scalbnENS_7APFloatEiNS_11APFloatBase12roundingModeE(ptr dead_on_unwind noalias writable sret(%"class.llvh::APFloat") align 8 %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #12 comdat !guid !444 {
bb.a:
  %4 = alloca %"class.llvh::detail::DoubleAPFloat", align 8 ; 5 uses
  %5 = alloca %"class.llvh::detail::IEEEFloat", align 8 ; 11 uses
  %6 = alloca %"class.llvh::detail::DoubleAPFloat", align 8 ; 5 uses
  %7 = alloca %"class.llvh::detail::DoubleAPFloat", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %.not = icmp eq ptr %i.b, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvh6detail9IEEEFloatC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.c = load ptr, ptr %5, align 8, !tbaa !54, !noalias !445 ; 3 uses
  %i.d = load i16, ptr %i.c, align 4, !tbaa !47, !noalias !445
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !48, !noalias !445
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !46, !noalias !445
  %i.i = sext i16 %i.d to i32
  %i.j = xor i16 %i.f, -1
  %i.k = sext i16 %i.j to i32
  %.neg.i = add nsw i32 %i.k, %i.i
  %i.l = add i32 %.neg.i, %i.h                    ; 2 uses
  %i.m = add nsw i32 %i.l, 1
  %i.n = sub nsw i32 -2, %i.l
  %.sroa.speculated8.i = call i32 @llvm.smax.i32(i32 %2, i32 %i.n)
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.m, i32 %.sroa.speculated8.i)
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.p = load i16, ptr %i.o, align 8, !tbaa !56, !noalias !445
  %i.q = trunc i32 %.sroa.speculated.i to i16
  %i.r = add i16 %i.p, %i.q
  store i16 %i.r, ptr %i.o, align 8, !tbaa !56, !noalias !445
  %i.s = call noundef i32 @_ZN4llvh6detail9IEEEFloat9normalizeENS_11APFloatBase12roundingModeENS_12lostFractionE(ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %3, i32 noundef 0), !noalias !445 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 18 ; 2 uses
  %i.u = load i8, ptr %i.t, align 2, !noalias !445 ; 2 uses
  %i.v = and i8 %i.u, 7
  %i.w = icmp eq i8 %i.v, 1
  br i1 %i.w, label %bb.c, label %_ZN4llvh6detail6scalbnENS0_9IEEEFloatEiNS_11APFloatBase12roundingModeE.exit

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %5, align 8, !tbaa !54, !noalias !445
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !46, !noalias !445 ; 2 uses
  %i.aa = add i32 %i.z, -64
  %i.ab = icmp ult i32 %i.aa, -128
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !445
  %.0.i.i.i = select i1 %i.ab, ptr %i.ad, ptr %i.ac
  %i.ae = add i32 %i.z, -2
  call void @_ZN4llvh5APInt8tcSetBitEPmj(ptr noundef %.0.i.i.i, i32 noundef %i.ae) #25, !noalias !445
  %.pre.i = load i8, ptr %i.t, align 2, !noalias !445
  br label %_ZN4llvh6detail6scalbnENS0_9IEEEFloatEiNS_11APFloatBase12roundingModeE.exit

_ZN4llvh6detail6scalbnENS0_9IEEEFloatEiNS_11APFloatBase12roundingModeE.exit: ; preds = %bb.b, %bb.c
  %i.af = phi i8 [ %.pre.i, %bb.c ], [ %i.u, %bb.b ]
  %i.ag = load ptr, ptr %5, align 8, !tbaa !54, !noalias !445 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !55, !noalias !445 ; 2 uses
  %i.aj = load i16, ptr %i.o, align 8, !tbaa !56, !noalias !445 ; 2 uses
  %i.ak = and i8 %i.af, 15                        ; 2 uses
  store ptr @_ZN4llvhL8semBogusE, ptr %5, align 8, !tbaa !54, !noalias !445
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i.i, label %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh6detail6scalbnENS0_9IEEEFloatEiNS_11APFloatBase12roundingModeE.exit
  store ptr %i.ag, ptr %i.am, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %i.an, align 8, !tbaa !55
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.aj, ptr %i.ao, align 8, !tbaa !56
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 2
  %i.ar = and i8 %i.aq, -16
  %i.as = or disjoint i8 %i.ar, %i.ak
  store i8 %i.as, ptr %i.ap, align 2
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit.i.i: ; preds = %_ZN4llvh6detail6scalbnENS0_9IEEEFloatEiNS_11APFloatBase12roundingModeE.exit
  store ptr @_ZN4llvhL18semPPCDoubleDoubleE, ptr %i.am, align 8, !tbaa !89
  %i.at = call noalias noundef nonnull dereferenceable(72) ptr @_Znam(i64 noundef 72) #23, !inline_history !4 ; 8 uses
  store i64 2, ptr %i.at, align 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i.i.i.i.i, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store i16 %i.aj, ptr %i.av, align 16, !tbaa !56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 34
  store i8 %i.ak, ptr %i.aw, align 2
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit.i.i

_ZN4llvh6detail9IEEEFloatD2Ev.exit.i.i:           ; preds = %bb.e, %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit.i.i
  %.sink6.i.i.i = phi ptr [ %i.ag, %bb.e ], [ @_ZN4llvhL18semPPCDoubleDoubleE, %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit.i.i ]
  store ptr %.sink6.i.i.i, ptr %i.au, align 16, !tbaa !90
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %i.ai, ptr %i.ax, align 8, !tbaa !55
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 66
  store i8 3, ptr %i.ay, align 2
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.az, align 16, !tbaa !90
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !91
  %.pre = load ptr, ptr %5, align 8, !tbaa !54
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

_ZN4llvh6detail9IEEEFloatD2Ev.exit:               ; preds = %_ZN4llvh6detail9IEEEFloatD2Ev.exit.i.i, %bb.d
  %i.bc = phi ptr [ %.pre, %_ZN4llvh6detail9IEEEFloatD2Ev.exit.i.i ], [ @_ZN4llvhL8semBogusE, %bb.d ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !46
  %i.bf = add i32 %i.be, -64
  %i.bg = icmp ult i32 %i.bf, -128
  br i1 %i.bg, label %bb.f, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit4

bb.f:                                             ; preds = %_ZN4llvh6detail9IEEEFloatD2Ev.exit
  %i.bh = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit4, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.bh) #24
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit4

bb.h:                                             ; preds = %bb.a
  store ptr @_ZN4llvhL18semPPCDoubleDoubleE, ptr %7, align 8, !tbaa !89
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !91
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %_ZN4llvh6detail13DoubleAPFloatC2ERKS1_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znam(i64 noundef 72) #23, !inline_history !93 ; 4 uses
  store i64 2, ptr %i.bl, align 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !91
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  tail call void @_ZN4llvh7APFloat7StorageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.bp), !inline_history !8
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !91
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  tail call void @_ZN4llvh7APFloat7StorageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.bs), !inline_history !8
  br label %_ZN4llvh6detail13DoubleAPFloatC2ERKS1_.exit

_ZN4llvh6detail13DoubleAPFloatC2ERKS1_.exit:      ; preds = %bb.h, %bb.i
  %i.bt = phi ptr [ %i.bm, %bb.i ], [ null, %bb.h ]
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !91
  call void @_ZN4llvh6detail6scalbnENS0_13DoubleAPFloatEiNS_11APFloatBase12roundingModeE(ptr dead_on_unwind nonnull writable sret(%"class.llvh::detail::DoubleAPFloat") align 8 %6, ptr noundef nonnull %7, i32 noundef %2, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load ptr, ptr %6, align 8, !tbaa !89
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !91
  store ptr null, ptr %i.by, align 8, !tbaa !91
  store ptr @_ZN4llvhL8semBogusE, ptr %6, align 8, !tbaa !89
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !89
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !91
  store ptr null, ptr %i.bx, align 8, !tbaa !91
  store ptr @_ZN4llvhL8semBogusE, ptr %4, align 8, !tbaa !89
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit4

_ZN4llvh6detail9IEEEFloatD2Ev.exit4:              ; preds = %bb.g, %bb.f, %_ZN4llvh6detail9IEEEFloatD2Ev.exit, %_ZN4llvh6detail13DoubleAPFloatC2ERKS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh6detail5frexpERKNS0_13DoubleAPFloatERiNS_11APFloatBase12roundingModeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvh::detail::DoubleAPFloat") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3) local_unnamed_addr #2 !guid !446 {
bb.a:
  %4 = alloca %"class.llvh::APFloat", align 8     ; 7 uses
  %5 = alloca %"class.llvh::APFloat", align 8     ; 6 uses
  %6 = alloca %"class.llvh::APFloat", align 8     ; 5 uses
  %7 = alloca %"class.llvh::APFloat", align 8     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  call void @_ZN4llvh5frexpERKNS_7APFloatERiNS_11APFloatBase12roundingModeE(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APFloat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @_ZN4llvh7APFloat7StorageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e), !inline_history !7
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.k, ptr %i.g
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 18
  %i.m = load i8, ptr %i.l, align 2
  %i.n = and i8 %i.m, 7
  %i.o = icmp eq i8 %i.n, 2
  br i1 %i.o, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  call void @_ZN4llvh7APFloat7StorageC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.d), !inline_history !7
  %i.q = load i32, ptr %2, align 4, !tbaa !23
  %i.r = sub nsw i32 0, %i.q
  call void @_ZN4llvh6scalbnENS_7APFloatEiNS_11APFloatBase12roundingModeE(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APFloat") align 8 %6, ptr noundef nonnull %7, i32 noundef %i.r, i32 noundef %3)
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.t = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.s) ; 0 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !55   ; 2 uses
  %.not.i = icmp eq ptr %i.u, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !46
  %i.x = add i32 %i.w, -64
  %i.y = icmp ult i32 %i.x, -128
  br i1 %i.y, label %bb.d, label %_ZN4llvh7APFloatD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !55  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.aa) #24, !inline_history !92
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.f:                                             ; preds = %bb.b
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.s) #25, !inline_history !5
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !55  ; 2 uses
  %.not.i6 = icmp eq ptr %i.ac, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i6, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !46
  %i.af = add i32 %i.ae, -64
  %i.ag = icmp ult i32 %i.af, -128
  br i1 %i.ag, label %bb.h, label %_ZN4llvh7APFloatD2Ev.exit7

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !55 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_ZN4llvh7APFloatD2Ev.exit7, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #24, !inline_history !92
  br label %_ZN4llvh7APFloatD2Ev.exit7

bb.j:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.p) #25, !inline_history !5
  br label %_ZN4llvh7APFloatD2Ev.exit7

_ZN4llvh7APFloatD2Ev.exit7:                       ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit7, %bb.a
  store ptr @_ZN4llvhL18semPPCDoubleDoubleE, ptr %0, align 8, !tbaa !89
  %i.ak = call noalias noundef nonnull dereferenceable(72) ptr @_Znam(i64 noundef 72) #23 ; 10 uses
  store i64 2, ptr %i.ak, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.an, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !55
  br i1 %.not.i.i.i8, label %_ZN4llvh7APFloatC2EOS0_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !56
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store i16 %i.ar, ptr %i.as, align 16, !tbaa !56
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.au = load i8, ptr %i.at, align 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 34
  %i.aw = and i8 %i.au, 15
  store i8 %i.aw, ptr %i.av, align 2
  br label %_ZN4llvh7APFloatC2EOS0_.exit.i

_ZN4llvh7APFloatC2EOS0_.exit.i:                   ; preds = %bb.k, %bb.l
  %.sink6.i = phi ptr [ %i.an, %bb.l ], [ @_ZN4llvhL18semPPCDoubleDoubleE, %bb.k ]
  store ptr %.sink6.i, ptr %i.al, align 16, !tbaa !90
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 %i.ap, ptr %i.ax, align 8, !tbaa !55
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !55  ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.ay, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !55
  br i1 %.not.i.i4.i, label %_ZN4llvh7APFloatD2Ev.exit12, label %bb.m

bb.m:                                             ; preds = %_ZN4llvh7APFloatC2EOS0_.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !56
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store i16 %i.bc, ptr %i.bd, align 16, !tbaa !56
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.bf = load i8, ptr %i.be, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 66
  %i.bh = and i8 %i.bf, 15
  store i8 %i.bh, ptr %i.bg, align 2
  br label %_ZN4llvh7APFloatD2Ev.exit12

_ZN4llvh7APFloatD2Ev.exit12:                      ; preds = %_ZN4llvh7APFloatC2EOS0_.exit.i, %bb.m
  %.sink8.i = phi ptr [ %i.ay, %bb.m ], [ @_ZN4llvhL18semPPCDoubleDoubleE, %_ZN4llvh7APFloatC2EOS0_.exit.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store ptr %.sink8.i, ptr %i.bi, align 16, !tbaa !90
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store i64 %i.ba, ptr %i.bj, align 8, !tbaa !55
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh5frexpERKNS_7APFloatERiNS_11APFloatBase12roundingModeE(ptr dead_on_unwind noalias writable sret(%"class.llvh::APFloat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3) local_unnamed_addr #12 comdat !guid !447 {
bb.a:
  %4 = alloca %"class.llvh::detail::DoubleAPFloat", align 8 ; 5 uses
  %5 = alloca %"class.llvh::detail::IEEEFloat", align 8 ; 7 uses
  %6 = alloca %"class.llvh::detail::DoubleAPFloat", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %.not = icmp eq ptr %i.b, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvh6detail5frexpERKNS0_9IEEEFloatERiNS_11APFloatBase12roundingModeE(ptr dead_on_unwind nonnull writable sret(%"class.llvh::detail::IEEEFloat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.e = load ptr, ptr %5, align 8, !tbaa !54     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !55   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = load i16, ptr %i.h, align 8, !tbaa !56   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.k = load i8, ptr %i.j, align 2
  %i.l = and i8 %i.k, 15                          ; 2 uses
  store ptr @_ZN4llvhL8semBogusE, ptr %5, align 8, !tbaa !54
  %.not.i.i = icmp eq ptr %i.d, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i.i, label %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.e, ptr %i.c, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.m, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.i, ptr %i.n, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.p = load i8, ptr %i.o, align 2
  %i.q = and i8 %i.p, -16
  %i.r = or disjoint i8 %i.q, %i.l
  store i8 %i.r, ptr %i.o, align 2
  br label %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit

_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit.i.i: ; preds = %bb.b
  store ptr @_ZN4llvhL18semPPCDoubleDoubleE, ptr %i.c, align 8, !tbaa !89
  %i.s = call noalias noundef nonnull dereferenceable(72) ptr @_Znam(i64 noundef 72) #23, !inline_history !4 ; 8 uses
  store i64 2, ptr %i.s, align 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.e, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i.i.i.i.i, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i16 %i.i, ptr %i.u, align 16, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 34
  store i8 %i.l, ptr %i.v, align 2
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit.i.i

_ZN4llvh6detail9IEEEFloatD2Ev.exit.i.i:           ; preds = %bb.d, %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit.i.i
  %.sink6.i.i.i = phi ptr [ %i.e, %bb.d ], [ @_ZN4llvhL18semPPCDoubleDoubleE, %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit.i.i ]
  store ptr %.sink6.i.i.i, ptr %i.t, align 16, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %i.g, ptr %i.w, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 66
  store i8 3, ptr %i.x, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.y, align 16, !tbaa !90
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !91
  %.pre = load ptr, ptr %5, align 8, !tbaa !54
  br label %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit

_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit: ; preds = %bb.c, %_ZN4llvh6detail9IEEEFloatD2Ev.exit.i.i
  %i.ab = phi ptr [ @_ZN4llvhL8semBogusE, %bb.c ], [ %.pre, %_ZN4llvh6detail9IEEEFloatD2Ev.exit.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !46
  %i.ae = add i32 %i.ad, -64
  %i.af = icmp ult i32 %i.ae, -128
  br i1 %i.af, label %bb.e, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

bb.e:                                             ; preds = %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !55  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.ag) #24
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

bb.g:                                             ; preds = %bb.a
  call void @_ZN4llvh6detail5frexpERKNS0_13DoubleAPFloatERiNS_11APFloatBase12roundingModeE(ptr dead_on_unwind nonnull writable sret(%"class.llvh::detail::DoubleAPFloat") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ai = load ptr, ptr %6, align 8, !tbaa !89
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !91
  store ptr null, ptr %i.ak, align 8, !tbaa !91
  store ptr @_ZN4llvhL8semBogusE, ptr %6, align 8, !tbaa !89
  store ptr %i.ai, ptr %i.c, align 8, !tbaa !89
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %i.am, align 8, !tbaa !91
  store ptr null, ptr %i.aj, align 8, !tbaa !91
  store ptr @_ZN4llvhL8semBogusE, ptr %4, align 8, !tbaa !89
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

_ZN4llvh6detail9IEEEFloatD2Ev.exit:               ; preds = %bb.f, %bb.e, %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh7APFloat7StorageC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readnone align 4 captures(address) dereferenceable(12) %2) unnamed_addr #2 align 2 !guid !448 {
bb.a:
  %.not = icmp eq ptr %2, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr @_ZN4llvhL8semBogusE, ptr %0, align 8, !tbaa !54
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  store ptr %i.a, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.b, align 8, !tbaa !55
  store i64 %i.d, ptr %i.c, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i16, ptr %i.e, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.f, ptr %i.g, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  %i.i = load i8, ptr %i.h, align 2
  %i.j = and i8 %i.i, 7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  %i.l = load i8, ptr %i.k, align 2
  %i.m = and i8 %i.l, -8
  %i.n = or disjoint i8 %i.m, %i.j                ; 2 uses
  store i8 %i.n, ptr %i.k, align 2
  %i.o = load i8, ptr %i.h, align 2
  %i.p = and i8 %i.o, 8
  %i.q = and i8 %i.n, -9
  %i.r = or disjoint i8 %i.q, %i.p
  store i8 %i.r, ptr %i.k, align 2
  store ptr @_ZN4llvhL8semBogusE, ptr %1, align 8, !tbaa !54
  br label %bb.d

_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit: ; preds = %bb.a
  %i.s = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i16, ptr %i.v, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.y = load i8, ptr %i.x, align 2
  store ptr @_ZN4llvhL8semBogusE, ptr %1, align 8, !tbaa !54
  store ptr @_ZN4llvhL18semPPCDoubleDoubleE, ptr %0, align 8, !tbaa !89
  %i.z = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znam(i64 noundef 72) #23 ; 8 uses
  store i64 2, ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.not.i.i.i = icmp eq ptr %i.s, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i.i.i, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit
  %i.ab = and i8 %i.y, 15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i16 %i.w, ptr %i.ac, align 16, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 34
  store i8 %i.ab, ptr %i.ad, align 2
  br label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

_ZN4llvh6detail9IEEEFloatD2Ev.exit:               ; preds = %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit, %bb.c
  %.sink6.i = phi ptr [ %i.s, %bb.c ], [ @_ZN4llvhL18semPPCDoubleDoubleE, %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit ]
  store ptr %.sink6.i, ptr %i.aa, align 16, !tbaa !90
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 %i.u, ptr %i.ae, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 66
  store i8 3, ptr %i.af, align 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.ag, align 16, !tbaa !90
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !91
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvh6detail9IEEEFloatD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh7APFloatC2ERKNS_12fltSemanticsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) initializes((8, 16)) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr %2, i64 %3) unnamed_addr #2 align 2 !guid !450 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %1, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !46
  %i.d = add i32 %i.c, 64                         ; 2 uses
  %i.e = icmp ugt i32 %i.d, 127
  br i1 %i.e, label %bb.c, label %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsE.exit.i

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i32 %i.d, 3
  %i.g = and i32 %i.f, 536870904
  %i.h = zext nneg i32 %i.g to i64
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #23, !inline_history !14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !55
  br label %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsE.exit.i

_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsE.exit.i: ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.l = load i8, ptr %i.k, align 2
  %i.m = and i8 %i.l, -16
  %i.n = or disjoint i8 %i.m, 3
  store i8 %i.n, ptr %i.k, align 2
  br label %_ZN4llvh7APFloatC2ERKNS_12fltSemanticsE.exit

bb.d:                                             ; preds = %bb.a
  store ptr @_ZN4llvhL18semPPCDoubleDoubleE, ptr %i.a, align 8, !tbaa !89
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znam(i64 noundef 72) #23, !inline_history !449 ; 6 uses
  store i64 2, ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.r, align 16, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 34
  store i8 3, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr @_ZN4llvhL13semIEEEdoubleE, ptr %i.t, align 16, !tbaa !54
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 66
  store i8 3, ptr %i.u, align 2
  store ptr %i.q, ptr %i.o, align 8, !tbaa !91
  br label %_ZN4llvh7APFloatC2ERKNS_12fltSemanticsE.exit

_ZN4llvh7APFloatC2ERKNS_12fltSemanticsE.exit:     ; preds = %_ZN4llvh6detail9IEEEFloatC2ERKNS_12fltSemanticsE.exit.i, %bb.d
  %i.v = tail call noundef i32 @_ZN4llvh7APFloat17convertFromStringENS_9StringRefENS_11APFloatBase12roundingModeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %2, i64 %3, i32 noundef 0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 25) i32 @_ZN4llvh7APFloat7convertERKNS_12fltSemanticsENS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3) local_unnamed_addr #2 align 2 !guid !451 {
bb.a:
  %4 = alloca %"class.llvh::APFloat", align 8     ; 4 uses
  %5 = alloca %"class.llvh::APInt", align 8       ; 6 uses
  %6 = alloca %"class.llvh::APFloat", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1, !tbaa !68
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not, label %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not27 = icmp eq ptr %1, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not27, label %_ZN4llvh7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat7convertERKNS_12fltSemanticsENS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1, i32 noundef %2, ptr noundef %3)
  br label %bb.p

_ZN4llvh7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit: ; preds = %bb.d
  %i.e = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat7convertERKNS_12fltSemanticsENS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL24semPPCDoubleDoubleLegacyE, i32 noundef %2, ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNK4llvh6detail9IEEEFloat14bitcastToAPIntEv(ptr dead_on_unwind nonnull writable sret(%"class.llvh::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  call void @_ZN4llvh6detail13DoubleAPFloatC2ERKNS_12fltSemanticsERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 4 dereferenceable(12) @_ZN4llvhL18semPPCDoubleDoubleE, ptr noundef nonnull align 8 dereferenceable(12) %5), !inline_history !16
  %i.g = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f) ; 0 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !55   ; 2 uses
  %.not.i = icmp eq ptr %i.h, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !46
  %i.k = add i32 %i.j, -64
  %i.l = icmp ult i32 %i.k, -128
  br i1 %i.l, label %bb.g, label %_ZN4llvh7APFloatD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN4llvh7APFloatD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.n) #24, !inline_history !92
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.i:                                             ; preds = %_ZN4llvh7APFloatC2ERKNS_12fltSemanticsERKNS_5APIntE.exit
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #25, !inline_history !5
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !58
  %i.r = icmp ugt i32 %i.q, 64
  br i1 %i.r, label %bb.j, label %_ZN4llvh5APIntD2Ev.exit

bb.j:                                             ; preds = %_ZN4llvh7APFloatD2Ev.exit
  %i.s = load ptr, ptr %5, align 8, !tbaa !55     ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN4llvh5APIntD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.s) #24
  br label %_ZN4llvh5APIntD2Ev.exit

_ZN4llvh5APIntD2Ev.exit:                          ; preds = %_ZN4llvh7APFloatD2Ev.exit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.p

_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit: ; preds = %bb.c
  %i.u = icmp ne ptr %1, @_ZN4llvhL18semPPCDoubleDoubleE
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = tail call noundef i32 @_ZN4llvh6detail9IEEEFloat7convertERKNS_12fltSemanticsENS_11APFloatBase12roundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 4 dereferenceable(12) %1, i32 noundef %2, ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !55
  %.not.i20 = icmp eq ptr %i.z, @_ZN4llvhL18semPPCDoubleDoubleE
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.0.i21 = select i1 %.not.i20, ptr %i.ab, ptr %i.a ; 5 uses
  %i.ac = load ptr, ptr %.0.i21, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i21, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i21, i64 16
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i21, i64 18
  %i.ai = load i8, ptr %i.ah, align 2
  store ptr @_ZN4llvhL8semBogusE, ptr %.0.i21, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.ak = and i8 %i.ai, 15
  store ptr %i.ac, ptr %i.aj, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 %i.ae, ptr %i.al, align 8, !tbaa !55
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i16 %i.ag, ptr %i.am, align 8, !tbaa !56
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 26 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 2
  %i.ap = and i8 %i.ao, -16
  %i.aq = or disjoint i8 %i.ap, %i.ak
  store i8 %i.aq, ptr %i.an, align 2
  %i.ar = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvh7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.aj) ; 0 uses
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !55 ; 2 uses
  %.not.i23 = icmp eq ptr %i.as, @_ZN4llvhL18semPPCDoubleDoubleE
  br i1 %.not.i23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN4llvh7APFloatC2ENS_6detail9IEEEFloatERKNS_12fltSemanticsE.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !46
  %i.av = add i32 %i.au, -64
  %i.aw = icmp ult i32 %i.av, -128
  br i1 %i.aw, label %bb.m, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.al, align 8, !tbaa !55 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZN4llvh6detail9IEEEFloatD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_2
