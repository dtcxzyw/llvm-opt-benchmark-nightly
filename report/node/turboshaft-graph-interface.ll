inline.NumInlined: 30203
inline.NumDeleted: 8013
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface14FinishFunctionEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEE:bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre35 = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  %.phi.trans.insert36 = getelementptr inbounds nuw i8, ptr %.pre35, i64 16
  %.pre37 = load ptr, ptr %.phi.trans.insert36, align 8, !noalias !52
  %.phi.trans.insert38 = getelementptr inbounds nuw i8, ptr %.pre35, i64 8
  %.pre39 = load ptr, ptr %.phi.trans.insert38, align 8, !noalias !52
  %.pre43 = ptrtoint ptr %.pre37 to i64
  %.pre44 = ptrtoint ptr %.pre39 to i64
  %.pre46 = sub i64 %.pre43, %.pre44
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEEixENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEEixENS2_7OpIndexE.exit: ; preds = %bb.b, %bb.c
  %.pre-phi47 = phi i64 [ %i.n, %bb.b ], [ %.pre46, %bb.c ]
  %i.aj = phi ptr [ %i.g, %bb.b ], [ %.pre35, %bb.c ]
  %i.ak = trunc i64 %.pre-phi47 to i32            ; 2 uses
  %.not3033 = icmp eq i32 %i.ak, 0
  br i1 %.not3033, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEEixENS2_7OpIndexE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEEixENS2_7OpIndexE.exit22, %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEEixENS2_7OpIndexE.exit
  %i.am = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 897), align 1, !range !10, !noundef !11
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEEixENS2_7OpIndexE.exit22
  %.sroa.0.034 = phi i32 [ 0, %.lr.ph ], [ %i.da, %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEEixENS2_7OpIndexE.exit22 ] ; 2 uses
  %i.ao = load ptr, ptr %i.d, align 8, !nonnull !11, !align !19
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !11, !align !19 ; 5 uses
  %i.ar = lshr i32 %.sroa.0.034, 4
  %i.as = zext nneg i32 %i.ar to i64              ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 216
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 208 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 2
  %.not.i.i18 = icmp ugt i64 %i.ba, %i.as
  br i1 %.not.i.i18, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.e, !prof !8

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 200 ; 2 uses
  %i.bc = lshr i64 %i.as, 1
  %i.bd = add nuw nsw i64 %i.as, 32
  %i.be = add nuw nsw i64 %i.bd, %i.bc
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 noundef %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 224
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = load ptr, ptr %i.av, align 8
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 noundef %i.bl)
  %.pre.i.i19 = load ptr, ptr %i.av, align 8
  %.pre40 = load ptr, ptr %i.d, align 8
  %.phi.trans.insert41 = getelementptr inbounds nuw i8, ptr %.pre40, i64 24
  %.pre42 = load ptr, ptr %.phi.trans.insert41, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %bb.d, %bb.e
  %i.bm = phi ptr [ %.pre42, %bb.e ], [ %i.aq, %bb.d ] ; 4 uses
  %i.bn = phi ptr [ %.pre.i.i19, %bb.e ], [ %i.aw, %bb.d ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.as
  %.sroa.02.0.copyload = load i32, ptr %i.bo, align 4 ; 2 uses
  %i.bp = lshr i32 %.sroa.02.0.copyload, 26       ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 63
  %i.br = lshr i32 %.sroa.02.0.copyload, 2
  %i.bs = and i32 %i.br, 16777214
  %i.bt = add nuw nsw i32 %i.bs, 2
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = add nuw nsw i32 %i.bp, 1
  %i.bw = select i1 %i.bq, i32 0, i32 %i.bv
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = shl nuw nsw i64 %i.bx, 31
  %i.bz = or disjoint i64 %i.by, %i.bu
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 184
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 176 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3
  %.not.i.i20 = icmp ugt i64 %i.ch, %i.as
  br i1 %.not.i.i20, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEEixENS2_7OpIndexE.exit22, label %bb.f, !prof !8

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bm, i64 168 ; 2 uses
  %i.cj = lshr i64 %i.as, 1
  %i.ck = add nuw nsw i64 %i.as, 32
  %i.cl = add nuw nsw i64 %i.ck, %i.cj
  tail call void @_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i64 noundef %i.cl)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bm, i64 192
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = load ptr, ptr %i.cc, align 8
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 3
  tail call void @_ZN2v88internal10ZoneVectorINS0_14SourcePositionEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, i64 noundef %i.cs)
  %.pre.i.i21 = load ptr, ptr %i.cc, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEEixENS2_7OpIndexE.exit22

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS0_14SourcePositionEEixENS2_7OpIndexE.exit22: ; preds = %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, %bb.f
  %i.ct = phi ptr [ %.pre.i.i21, %bb.f ], [ %i.cd, %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.as
  store i64 %i.bz, ptr %i.cu, align 8
  %i.cv = load ptr, ptr %i.al, align 8
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.as
  %i.cx = load i16, ptr %i.cw, align 2
  %i.cy = zext i16 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 3
  %i.da = add i32 %i.cz, %.sroa.0.034             ; 2 uses
  %.not30 = icmp eq i32 %i.da, %i.ak
  br i1 %.not30, label %._crit_edge, label %bb.d

bb.g:                                             ; preds = %._crit_edge
  %i.db = load ptr, ptr %i.d, align 8, !nonnull !11, !align !19
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !11, !align !19 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !noalias !55
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !55
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.dg, %i.dj
  %i.dl = trunc i64 %i.dk to i32                  ; 2 uses
  %.not20.i = icmp eq i32 %i.dl, 0
  br i1 %.not20.i, label %_ZNK2v88internal8compiler10turboshaft5Graph30NumberOfOperationsForDebuggingEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.022.i = phi i32 [ 0, %.lr.ph.i ], [ %i.do, %bb.h ]
  %.sroa.0.021.i = phi i32 [ 0, %.lr.ph.i ], [ %i.dv, %bb.h ] ; 2 uses
  %i.do = add i32 %.022.i, 1                      ; 2 uses
  %i.dp = lshr i32 %.sroa.0.021.i, 4
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 2
  %i.dt = zext i16 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 3
  %i.dv = add i32 %i.du, %.sroa.0.021.i           ; 2 uses
  %.not.i = icmp eq i32 %i.dv, %i.dl
  br i1 %.not.i, label %_ZNK2v88internal8compiler10turboshaft5Graph30NumberOfOperationsForDebuggingEv.exit, label %bb.h

_ZNK2v88internal8compiler10turboshaft5Graph30NumberOfOperationsForDebuggingEv.exit: ; preds = %bb.h, %bb.g
  %.0.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.do, %bb.h ]
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.dx = load i32, ptr %i.dw, align 4
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.985, i32 noundef %i.dx, i32 noundef %.0.lcssa.i) #22
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %_ZNK2v88internal8compiler10turboshaft5Graph30NumberOfOperationsForDebuggingEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal4wasm17value_type_reader15read_value_typeINS1_7Decoder15NoValidationTagEEESt4pairINS1_9ValueTypeEjEPS4_PKhNS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %.0.copyload.i.i.i.i = load i8, ptr %1, align 1 ; 6 uses
  switch i8 %.0.copyload.i.i.i.i, label %bb.i [
    i8 109, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 108, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 107, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 106, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 110, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 113, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 114, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 115, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 111, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 112, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 116, label %bb.b
    i8 105, label %bb.b
    i8 123, label %bb.h
    i8 99, label %bb.g
    i8 100, label %bb.g
    i8 124, label %bb.f
    i8 104, label %bb.c
    i8 117, label %bb.c
    i8 127, label %bb.j
    i8 126, label %bb.d
    i8 125, label %bb.e
    i8 103, label %.fold.split
    i8 96, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit24
    i8 97, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit24
    i8 102, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit24
  ]

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit:  ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %4 = and i8 %.0.copyload.i.i.i.i, 31
  %5 = zext nneg i8 %4 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %5
  %i.a = load i32, ptr %6, align 4
  %i.b = or i32 %i.a, 4
  br label %bb.j

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = load i64, ptr %3, align 8
  %i.d = or i64 %i.c, 65536
  store i64 %i.d, ptr %3, align 8
  %i.e = icmp eq i8 %.0.copyload.i.i.i.i, 105
  %.sroa.0.0.copyload.i.i = select i1 %i.e, i32 4101, i32 1285
  br label %bb.j

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit24: ; preds = %bb.a, %bb.a, %bb.a
  %7 = and i8 %.0.copyload.i.i.i.i, 31
  %8 = zext nneg i8 %7 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %8
  %i.f = load i32, ptr %9, align 4
  %i.g = and i32 %i.f, -5
  br label %bb.j

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.h = icmp eq i8 %.0.copyload.i.i.i.i, 104
  %.sroa.0.0.copyload.i.i25 = select i1 %i.h, i32 4485, i32 1157
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  br label %bb.j

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = tail call i64 @_ZN2v88internal4wasm17value_type_reader14read_heap_typeINS1_7Decoder15NoValidationTagEEESt4pairINS1_8HeapTypeEjEPS4_PKhNS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i32 %2, ptr noundef %3) ; 2 uses
  %.sroa.027.0.extract.trunc = trunc i64 %i.j to i32 ; 2 uses
  %i.k = and i32 %.sroa.027.0.extract.trunc, 268435427
  %i.l = icmp eq i32 %i.k, 514
  %i.m = icmp eq i8 %.0.copyload.i.i.i.i, 99
  %i.n = and i32 %.sroa.027.0.extract.trunc, -5
  %i.o = select i1 %i.m, i32 4, i32 0
  %i.p = or disjoint i32 %i.n, %i.o
  %storemerge = select i1 %i.l, i32 514, i32 %i.p
  %i.q = and i64 %i.j, -4294967296
  %i.r = add i64 %i.q, 4294967296
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #21
  unreachable

.fold.split:                                      ; preds = %bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %.fold.split, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit24, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
  %.sroa.038.0 = phi i32 [ %i.b, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit ], [ %.sroa.0.0.copyload.i.i, %bb.b ], [ 6672, %bb.h ], [ %.sroa.0.0.copyload.i.i25, %bb.c ], [ 5648, %bb.a ], [ 5904, %bb.d ], [ 6160, %bb.e ], [ 6416, %bb.f ], [ %storemerge, %bb.g ], [ %i.g, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit24 ], [ 4613, %.fold.split ]
  %.sroa.11.0 = phi i64 [ 4294967296, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit ], [ 4294967296, %bb.b ], [ 4294967296, %bb.h ], [ 4294967296, %bb.c ], [ 4294967296, %bb.a ], [ 4294967296, %bb.d ], [ 4294967296, %bb.e ], [ 4294967296, %bb.f ], [ %i.r, %bb.g ], [ 4294967296, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit24 ], [ 4294967296, %.fold.split ]
  %.sroa.038.0.insert.ext = zext i32 %.sroa.038.0 to i64
  %.sroa.038.0.insert.insert = or i64 %.sroa.11.0, %.sroa.038.0.insert.ext
  ret i64 %.sroa.038.0.insert.insert
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %i.b = and i8 %i.a, 127
  %i.c = zext nneg i8 %i.b to i32                 ; 2 uses
  %.not.i = icmp sgt i8 %i.a, -1
  br i1 %.not.i, label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 7
  %i.h = and i32 %i.g, 16256
  %i.i = or disjoint i32 %i.h, %i.c               ; 2 uses
  %.not.i2 = icmp sgt i8 %i.e, -1
  br i1 %.not.i2, label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 14
  %i.n = and i32 %i.m, 2080768
  %i.o = or disjoint i32 %i.n, %i.i               ; 2 uses
  %.not.i3 = icmp sgt i8 %i.k, -1
  br i1 %.not.i3, label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 21
  %i.t = and i32 %i.s, 266338304
  %i.u = or disjoint i32 %i.t, %i.o               ; 2 uses
  %.not.i4 = icmp sgt i8 %i.q, -1
  br i1 %.not.i4, label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = shl i32 %i.x, 28
  %i.z = or disjoint i32 %i.y, %i.u
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %bb.a
  %.sroa.5.0 = phi i64 [ 4294967296, %bb.a ], [ 8589934592, %bb.b ], [ 12884901888, %bb.c ], [ 21474836480, %bb.e ], [ 17179869184, %bb.d ]
  %.sroa.0.0 = phi i32 [ %i.c, %bb.a ], [ %i.i, %bb.b ], [ %i.o, %bb.c ], [ %i.z, %bb.e ], [ %i.u, %bb.d ]
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = add i32 %i.h, %i.f
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.i, ptr noundef nonnull @.str.27, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::base::EmbeddedVector", align 8 ; 7 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %5 = alloca %"class.v8::internal::wasm::WasmError", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not.i = icmp eq i32 %i.b, -1
  br i1 %.not.i, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.c, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 256, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.va_start.p0(ptr nonnull %4)
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8
  %.sroa.2.0.copyload = load i64, ptr %i.d, align 8
  %i.e = call noundef i32 @_ZN2v84base9VSNPrintFENS0_6VectorIcEEPKcP13__va_list_tag(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef %2, ptr noundef nonnull %4) #22 ; 4 uses
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.28) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.g = load ptr, ptr %3, align 8                ; 3 uses
  %i.h = zext nneg i32 %i.e to i64                ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  store ptr %i.i, ptr %6, align 8
  %i.j = icmp eq ptr %i.g, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.29) #21
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i32 %i.e, 15
  br i1 %i.k, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %bb.f
  %i.l = add nuw nsw i64 %i.h, 1
  %i.m = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #23 ; 2 uses
  store ptr %i.m, ptr %6, align 8
  store i64 %i.h, ptr %i.i, align 8
  br label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.f
  %cond = icmp eq i32 %i.e, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1
  store i8 %i.n, ptr %i.i, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

bb.h:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.o = phi ptr [ %i.m, %._crit_edge.i.i.thread ], [ %i.i, %._crit_edge.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.g, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit: ; preds = %bb.g, %bb.h
  %i.p = phi ptr [ %i.i, %bb.g ], [ %i.o, %bb.h ]
end_hunk_0
begin_hunk_1_@_ZSt19__throw_logic_errorPKc

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIZNS_8internal4wasm11WasmDecoderINS3_7Decoder15NoValidationTagELNS3_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntryLm8ESaISB_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.l, label %bb.b, label %bb.e, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 8, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #23 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrySB_ET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %i.s = sub i64 %i.r, %i.g
  %i.t = add i64 %i.s, -8                         ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 72
  %i.w = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr i8, ptr %i.c, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 4
  %wide.load13 = load <2 x i64>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrySB_ET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i64, ptr %.sroa.04.07.i.i.i.i, align 4
  store i64 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrySB_ET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !59

_ZSt18uninitialized_moveIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrySB_ET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.k
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIZNS_8internal4wasm11WasmDecoderINS3_7Decoder15NoValidationTagELNS3_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntryLm8ESaISB_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ai
  store ptr %i.am, ptr %i.d, align 8
  ret void
}

; Function Attrs: noreturn
declare void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIZNS_8internal4wasm11WasmDecoderINS3_7Decoder15NoValidationTagELNS3_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntryLm8ESaISB_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #7 comdat align 2 {
_ZSt9destroy_nIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrylET_SC_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrylET_SC_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #24
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrylET_SC_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal4wasm17value_type_reader14read_heap_typeINS1_7Decoder15NoValidationTagEEESt4pairINS1_8HeapTypeEjEPS4_PKhNS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.a, -1
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i8 %i.a to i64
  %i.c = shl nuw i64 %i.b, 57
  %i.d = ashr exact i64 %i.c, 57
  br label %_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call preserve_mostcc { i64, i32 } @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIlNS2_15NoValidationTagELNS2_9TraceFlagE0ELm33EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1) ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i32 } %i.e, 1 ; 3 uses
  %i.f = icmp ult i32 %.fca.1.extract.i.i, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp ne i32 %.fca.1.extract.i.i, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = extractvalue { i64, i32 } %i.e, 0
  br label %_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit: ; preds = %bb.b, %bb.c
  %.fca.1.extract.pre-phi = phi i32 [ 1, %bb.b ], [ %.fca.1.extract.i.i, %bb.c ] ; 4 uses
  %.fca.1.insert.i.merged.i = phi i64 [ %i.d, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %i.i = icmp slt i64 %.fca.1.insert.i.merged.i, 0 ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.k

bb.d:                                             ; preds = %_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit
  %i.j = trunc i64 %.fca.1.insert.i.merged.i to i8
  %i.k = and i8 %i.j, 127                         ; 2 uses
  %i.l = icmp eq i8 %i.k, 101                     ; 5 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = zext nneg i32 %.fca.1.extract.pre-phi to i64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %.0.copyload.i.i.i.i = load i8, ptr %i.n, align 1
  %i.o = add nuw nsw i32 %.fca.1.extract.pre-phi, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.464.0 = phi i32 [ %i.o, %bb.e ], [ %.fca.1.extract.pre-phi, %bb.d ] ; 5 uses
  %.043 = phi i8 [ %.0.copyload.i.i.i.i, %bb.e ], [ %i.k, %bb.d ] ; 5 uses
  switch i8 %.043, label %bb.j [
    i8 115, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 112, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 109, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 108, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 107, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 106, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 110, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 113, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 114, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 111, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
    i8 116, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit50
    i8 105, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit50
    i8 103, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53
    i8 102, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53
    i8 96, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53
    i8 97, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53
    i8 117, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit56
    i8 104, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit56
    i8 98, label %bb.g
  ]

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit:  ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %4 = and i8 %.043, 31
  %5 = zext nneg i8 %4 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %5
  %i.p = load i32, ptr %6, align 4
  %i.q = select i1 %i.l, i32 20, i32 4
  %i.r = or i32 %i.p, %i.q
  br label %.critedge

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit50: ; preds = %bb.f, %bb.f
  %i.s = load i64, ptr %3, align 8
  %i.t = or i64 %i.s, 65536
  store i64 %i.t, ptr %3, align 8
  %7 = and i8 %.043, 31
  %8 = zext nneg i8 %7 to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %8
  %i.u = load i32, ptr %9, align 4
  %i.v = select i1 %i.l, i32 20, i32 4
  %i.w = or i32 %i.u, %i.v
  br label %.critedge

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53: ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %10 = and i8 %.043, 31
  %11 = zext nneg i8 %10 to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %11
  %i.x = load i32, ptr %12, align 4
  %i.y = select i1 %i.l, i32 20, i32 4
  %i.z = or i32 %i.x, %i.y
  br label %.critedge

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit56: ; preds = %bb.f, %bb.f
  %13 = and i8 %.043, 31
  %14 = zext nneg i8 %13 to i64
  %15 = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %14
  %i.aa = load i32, ptr %15, align 4
  %i.ab = select i1 %i.l, i32 20, i32 4
  %i.ac = or i32 %i.aa, %i.ab
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  %.not.i.i57 = icmp sgt i8 %i.ae, -1
  br i1 %.not.i.i57, label %bb.h, label %bb.i, !prof !8

bb.h:                                             ; preds = %bb.g
  %i.af = zext nneg i8 %i.ae to i64
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_15NoValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

bb.i:                                             ; preds = %bb.g
  %i.ag = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.ad) ; 4 uses
  %i.ah = icmp ult i64 %i.ag, 25769803776
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp samesign ugt i64 %i.ag, 4294967295
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = lshr i64 %i.ag, 32
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_15NoValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

_ZN2v88internal4wasm7Decoder9read_u32vINS2_15NoValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit: ; preds = %bb.h, %bb.i
  %.sroa.04.0.i = phi i64 [ %i.af, %bb.h ], [ %i.ag, %bb.i ]
  %.sroa.5.0.i = phi i32 [ 1, %bb.h ], [ %i.ak, %bb.i ]
  %i.al = add nuw nsw i32 %.sroa.5.0.i, %.sroa.464.0
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  unreachable

bb.k:                                             ; preds = %_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit, %_ZN2v88internal4wasm7Decoder9read_u32vINS2_15NoValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit
  %.sroa.464.1 = phi i32 [ %i.al, %_ZN2v88internal4wasm7Decoder9read_u32vINS2_15NoValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ], [ %.fca.1.extract.pre-phi, %_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ]
  %.142.in = phi i64 [ %.sroa.04.0.i, %_ZN2v88internal4wasm7Decoder9read_u32vINS2_15NoValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ], [ %.fca.1.insert.i.merged.i, %_ZN2v88internal4wasm7Decoder9read_i33vINS2_15NoValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ]
  %.142 = trunc i64 %.142.in to i32               ; 2 uses
  %i.am = icmp ult i32 %.142, 1048576
  br i1 %i.am, label %_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.46) #21
  unreachable

_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit: ; preds = %bb.k
  %i.an = select i1 %i.i, i32 15, i32 7
  %i.ao = shl nuw nsw i32 %.142, 8
  %i.ap = or disjoint i32 %i.ao, %i.an
  br label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit50, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit56, %_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit
  %.sroa.073.0 = phi i32 [ %i.r, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit ], [ %i.w, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit50 ], [ %i.z, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53 ], [ %i.ac, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit56 ], [ %i.ap, %_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit ]
  %.sroa.7.0 = phi i32 [ %.sroa.464.0, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit ], [ %.sroa.464.0, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit50 ], [ %.sroa.464.0, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53 ], [ %.sroa.464.0, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit56 ], [ %.sroa.464.1, %_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit ]
  %.sroa.7.0.insert.ext = zext nneg i32 %.sroa.7.0 to i64
  %.sroa.7.0.insert.shift = shl nuw nsw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.073.0.insert.ext = zext i32 %.sroa.073.0 to i64
  %.sroa.073.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %.sroa.073.0.insert.ext
  ret i64 %.sroa.073.0.insert.insert
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc { i64, i32 } @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIlNS2_15NoValidationTagELNS2_9TraceFlagE0ELm33EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %i.b = and i8 %i.a, 127
  %i.c = zext nneg i8 %i.b to i64                 ; 2 uses
  %.not.i = icmp sgt i8 %i.a, -1
  br i1 %.not.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = and i8 %i.e, 127
  %i.g = zext nneg i8 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 7
  %i.i = or disjoint i64 %i.h, %i.c               ; 2 uses
  %.not.i4 = icmp sgt i8 %i.e, -1
  br i1 %.not.i4, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %i.l = and i8 %i.k, 127
  %i.m = zext nneg i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 14
  %i.o = or disjoint i64 %i.n, %i.i               ; 2 uses
  %.not.i13 = icmp sgt i8 %i.k, -1
  br i1 %.not.i13, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %i.r = and i8 %i.q, 127
  %i.s = zext nneg i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 21
  %i.u = or disjoint i64 %i.t, %i.o               ; 2 uses
  %.not.i22 = icmp sgt i8 %i.q, -1
  br i1 %.not.i22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = shl i64 %i.x, 57
  %i.z = shl nuw nsw i64 %i.u, 29
  %i.aa = or disjoint i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 29
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_15NoValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = shl nuw i64 %i.u, 36
  %i.ad = ashr exact i64 %i.ac, 36
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_15NoValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

bb.g:                                             ; preds = %bb.c
  %i.ae = shl nuw i64 %i.o, 43
  %i.af = ashr exact i64 %i.ae, 43
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_15NoValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

bb.h:                                             ; preds = %bb.b
  %i.ag = shl nuw i64 %i.i, 50
  %i.ah = ashr exact i64 %i.ag, 50
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_15NoValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

bb.i:                                             ; preds = %bb.a
  %i.ai = shl nuw i64 %i.c, 57
  %i.aj = ashr exact i64 %i.ai, 57
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_15NoValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

_ZN2v88internal4wasm7Decoder13read_leb_tailIlNS2_15NoValidationTagELNS2_9TraceFlagE0ELm33ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit: ; preds = %bb.h, %bb.f, %bb.e, %bb.g, %bb.i
  %.sroa.5.0 = phi i32 [ 1, %bb.i ], [ 2, %bb.h ], [ 3, %bb.g ], [ 4, %bb.f ], [ 5, %bb.e ]
  %.sroa.0.0 = phi i64 [ %i.aj, %bb.i ], [ %i.ah, %bb.h ], [ %i.af, %bb.g ], [ %i.ad, %bb.f ], [ %i.ab, %bb.e ]
  %.fca.0.insert.i = insertvalue { i64, i32 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert.i = insertvalue { i64, i32 } %.fca.0.insert.i, i32 %.sroa.5.0, 1
  ret { i64, i32 } %.fca.1.insert.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = add i32 %i.h, %i.f
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvjPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.i, ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvjPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorIjE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32
  %i.i = add i32 %1, %i.h
  %i.j = zext i32 %i.i to i64
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 1) ; 2 uses
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k
  %i.m = shl nuw nsw i64 1, %i.l
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.m, i64 8) ; 2 uses
  %i.n = icmp samesign ult i64 %spec.select.i.i, 2147483648
  br i1 %i.n, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.51) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = shl nuw nsw i64 %.sroa.speculated, 2
  %i.p = add nuw nsw i64 %i.o, 4
  %i.q = and i64 %i.p, 9223372036854775800        ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = sub i64 %i.s, %i.u
  %i.w = icmp ugt i64 %i.q, %i.v
  br i1 %i.w, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit, !prof !9

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.q) #22
end_hunk_1
