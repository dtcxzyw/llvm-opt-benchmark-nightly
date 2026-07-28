inline.NumInlined: 6125
inline.NumDeleted: 1092
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder15NoValidationTagELNS1_12DecodingModeE0EE12DecodeLocalsEPKh:bb.a
  %i.bk = icmp ugt i64 %i.bj, %i.bb
  call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %i.bb ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 22
  %i.bn = load i8, ptr %i.bm, align 2, !range !8, !noundef !9
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.bp = load i8, ptr %i.bo, align 4
  %i.bq = and i32 %.sroa.061.0.extract.trunc, -241
  %i.br = shl nuw nsw i8 %i.bn, 4
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = zext i8 %i.bp to i32
  %i.bu = shl nuw nsw i32 %i.bt, 5
  %i.bv = or disjoint i32 %i.bq, %i.bs
  %i.bw = or i32 %i.bv, %i.bu
  br label %_ZN2v88internal4wasm17value_type_readerL8PopulateEPNS1_9ValueTypeEPKNS1_10WasmModuleE.exit

_ZN2v88internal4wasm17value_type_readerL8PopulateEPNS1_9ValueTypeEPKNS1_10WasmModuleE.exit: ; preds = %bb.i, %_ZN2v88internal4wasm7Decoder9read_u32vINS2_15NoValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit56
  %.sroa.061.0 = phi i32 [ %.sroa.061.0.extract.trunc, %_ZN2v88internal4wasm7Decoder9read_u32vINS2_15NoValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit56 ], [ %i.bw, %bb.i ]
  %i.bx = add i32 %i.as, %.sroa.7.0.extract.trunc ; 2 uses
  %i.by = load i32, ptr %i.f, align 8
  %i.bz = add i32 %i.by, %.sroa.062.0.extract.trunc
  store i32 %i.bz, ptr %i.f, align 8
  %i.ca = load ptr, ptr %2, align 8
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv ; 2 uses
  store i32 %.sroa.062.0.extract.trunc, ptr %i.cb, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %.sroa.061.0, ptr %.sroa.4.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !27

bb.j:                                             ; preds = %._crit_edge
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8            ; 3 uses
  %i.ce = zext i32 %i.ai to i64
  %i.cf = shl nuw nsw i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 4
  %i.ch = and i64 %i.cg, 34359738360              ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8            ; 2 uses
  %i.cm = sub i64 %i.cj, %i.cl
  %i.cn = icmp ugt i64 %i.ch, %i.cm
  br i1 %i.cn, label %bb.k, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit, !prof !12

bb.k:                                             ; preds = %bb.j
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cd, i64 noundef %i.ch) #17
  %.pre.i.i = load i64, ptr %i.ck, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit: ; preds = %bb.j, %bb.k
  %i.co = phi i64 [ %.pre.i.i, %bb.k ], [ %i.cl, %bb.j ] ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 5 uses
  %i.cq = add i64 %i.co, %i.ch
  store i64 %i.cq, ptr %i.ck, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cp, ptr %i.cr, align 8
  %i.cs = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i64, ptr %i.ct, align 8            ; 3 uses
  %.not48 = icmp eq i64 %i.cu, 0
  br i1 %.not48, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = load i64, ptr %i.cs, align 8
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cx ; 2 uses
  %.not71 = icmp eq i64 %i.cu, 1
  br i1 %.not71, label %bb.n, label %bb.m, !prof !12

bb.m:                                             ; preds = %bb.l
  %.idx = shl nuw nsw i64 %i.cu, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cp, ptr align 4 %i.cy, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKN2v88internal4wasm9ValueTypeEPS3_ET0_T_S8_S7_.exit

bb.n:                                             ; preds = %bb.l
  %i.cz = load i32, ptr %i.cy, align 4
  store i32 %i.cz, ptr %i.cp, align 4
  br label %_ZSt4copyIPKN2v88internal4wasm9ValueTypeEPS3_ET0_T_S8_S7_.exit

_ZSt4copyIPKN2v88internal4wasm9ValueTypeEPS3_ET0_T_S8_S7_.exit: ; preds = %bb.m, %bb.n
  %i.da = load ptr, ptr %i.a, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.dc
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIPKN2v88internal4wasm9ValueTypeEPS3_ET0_T_S8_S7_.exit, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit
  %.044 = phi ptr [ %i.dd, %_ZSt4copyIPKN2v88internal4wasm9ValueTypeEPS3_ET0_T_S8_S7_.exit ], [ %i.cp, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit ]
  %i.de = load ptr, ptr %2, align 8               ; 2 uses
  %i.df = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not4974 = icmp eq ptr %i.de, %i.df
  br i1 %.not4974, label %.loopexit, label %.lr.ph78

.lr.ph78:                                         ; preds = %bb.o, %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit
  %.04276 = phi ptr [ %i.dx, %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit ], [ %i.de, %bb.o ] ; 4 uses
  %.175 = phi ptr [ %i.dw, %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit ], [ %.044, %bb.o ] ; 5 uses
  %i.dg = load i32, ptr %.04276, align 4          ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.lr.ph78
  %i.di = getelementptr inbounds nuw i8, ptr %.04276, i64 4
  %i.dj = zext i32 %i.dg to i64
  %.idx.i.i = shl nuw nsw i64 %i.dj, 2            ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.175, i64 %.idx.i.i
  %.pre.i.i.i.i = load i32, ptr %i.di, align 4    ; 2 uses
  %i.dl = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.dm = lshr exact i64 %i.dl, 2
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dl, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec = and i64 %i.dn, 9223372036854775800     ; 3 uses
  %i.do = shl i64 %n.vec, 2
  %i.dp = getelementptr i8, ptr %.175, i64 %i.do
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.175, i64 %i.dq ; 2 uses
  %i.dr = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.dr, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dn, %n.vec
  br i1 %cmp.n, label %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit.loopexit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.preheader.i.i.i.i, %middle.block
  %.06.i.i.i.i.ph = phi ptr [ %.175, %.lr.ph.preheader.i.i.i.i ], [ %i.dp, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %.06.i.i.i.i, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dt, %i.dk
  br i1 %.not.i.i.i.i, label %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !31

_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre = load i32, ptr %.04276, align 4
  %i.du = zext i32 %.pre to i64
  br label %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit

_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit: ; preds = %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit.loopexit, %.lr.ph78
  %i.dv = phi i64 [ %i.du, %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit.loopexit ], [ 0, %.lr.ph78 ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.175, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %.04276, i64 8 ; 2 uses
  %.not49 = icmp eq ptr %i.dx, %i.df
  br i1 %.not49, label %.loopexit, label %.lr.ph78

.loopexit:                                        ; preds = %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit, %bb.o, %._crit_edge
  call preserve_mostcc void @_ZN2v84base11SmallVectorIZNS_8internal4wasm11WasmDecoderINS3_7Decoder15NoValidationTagELNS3_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntryLm8ESaISB_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %.043.lcssa
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
  %4 = zext nneg i8 %.0.copyload.i.i.i.i to i64
  %5 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %4
  %6 = getelementptr i8, ptr %5, i64 -384
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
  %7 = zext nneg i8 %.0.copyload.i.i.i.i to i64
  %8 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %7
  %9 = getelementptr i8, ptr %8, i64 -384
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
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7) #19
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #9

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
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.i, ptr noundef nonnull @.str.8, ptr noundef %2)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.c, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 256, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.va_start.p0(ptr nonnull %4)
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8
  %.sroa.2.0.copyload = load i64, ptr %i.d, align 8
  %i.e = call noundef i32 @_ZN2v84base9VSNPrintFENS0_6VectorIcEEPKcP13__va_list_tag(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef %2, ptr noundef nonnull %4) #17 ; 4 uses
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.g = load ptr, ptr %3, align 8                ; 3 uses
  %i.h = zext nneg i32 %i.e to i64                ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  store ptr %i.i, ptr %6, align 8
  %i.j = icmp eq ptr %i.g, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.11) #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i32 %i.e, 15
  br i1 %i.k, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %bb.f
  %i.l = add nuw nsw i64 %i.h, 1
  %i.m = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #20 ; 2 uses
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
end_hunk_0
begin_hunk_1_@_Znwm

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
  br i1 %i.l, label %bb.b, label %bb.e, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 8, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #20 ; 7 uses
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
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !32

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
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrySB_ET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !33

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
declare void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef, ptr noundef) local_unnamed_addr #9

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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #18
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrylET_SC_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal4wasm17value_type_reader14read_heap_typeINS1_7Decoder15NoValidationTagEEESt4pairINS1_8HeapTypeEjEPS4_PKhNS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.a, -1
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !6

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
  %4 = zext nneg i8 %.043 to i64
  %5 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %4
  %6 = getelementptr i8, ptr %5, i64 -384
  %i.p = load i32, ptr %6, align 4
  %i.q = select i1 %i.l, i32 20, i32 4
  %i.r = or i32 %i.p, %i.q
  br label %.critedge

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit50: ; preds = %bb.f, %bb.f
  %i.s = load i64, ptr %3, align 8
  %i.t = or i64 %i.s, 65536
  store i64 %i.t, ptr %3, align 8
  %7 = zext nneg i8 %.043 to i64
  %8 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %7
  %9 = getelementptr i8, ptr %8, i64 -384
  %i.u = load i32, ptr %9, align 4
  %i.v = select i1 %i.l, i32 20, i32 4
  %i.w = or i32 %i.u, %i.v
  br label %.critedge

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit53: ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %10 = zext nneg i8 %.043 to i64
  %11 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %10
  %12 = getelementptr i8, ptr %11, i64 -384
  %i.x = load i32, ptr %12, align 4
  %i.y = select i1 %i.l, i32 20, i32 4
  %i.z = or i32 %i.x, %i.y
  br label %.critedge

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit56: ; preds = %bb.f, %bb.f
  %13 = zext nneg i8 %.043 to i64
  %14 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %13
  %15 = getelementptr i8, ptr %14, i64 -384
  %i.aa = load i32, ptr %15, align 4
  %i.ab = select i1 %i.l, i32 20, i32 4
  %i.ac = or i32 %i.aa, %i.ab
  br label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  %.not.i.i57 = icmp sgt i8 %i.ae, -1
  br i1 %.not.i.i57, label %bb.h, label %bb.i, !prof !6

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
  br i1 %i.am, label %_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.28) #19
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
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJlEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #7 comdat align 2 {
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
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJlEEEvjPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.i, ptr noundef %2, i64 noundef %3)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJlEEEvjPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3)
  ret void
}

declare preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE12DecodeLocalsEPKh(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::base::SmallVector.169", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = trunc i64 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  store i32 %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp ult ptr %1, %i.h
  br i1 %i.i, label %bb.b, label %.critedge.i.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %1, align 1                 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.j, -1
  br i1 %.not.i.i, label %bb.c, label %.critedge.i.i, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i8 %i.j to i64
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

.critedge.i.i:                                    ; preds = %bb.b, %bb.a
  %i.l = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str) ; 3 uses
  %i.m = icmp ult i64 %i.l, 25769803776
  tail call void @llvm.assume(i1 %i.m)
  %i.n = lshr i64 %i.l, 32
  %i.o = trunc nuw nsw i64 %i.n to i32
  br label %_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit: ; preds = %bb.c, %.critedge.i.i
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE12DecodeLocalsEPKh:bb.a
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = load i64, ptr %i.dm, align 8
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.dr ; 2 uses
  %.not107 = icmp eq i64 %i.do, 1
  br i1 %.not107, label %bb.aa, label %bb.z, !prof !12

bb.z:                                             ; preds = %bb.y
  %.idx = shl nuw nsw i64 %i.do, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.dj, ptr align 4 %i.ds, i64 %.idx, i1 false)
  br label %_ZSt4copyIPKN2v88internal4wasm9ValueTypeEPS3_ET0_T_S8_S7_.exit

bb.aa:                                            ; preds = %bb.y
  %i.dt = load i32, ptr %i.ds, align 4
  store i32 %i.dt, ptr %i.dj, align 4
  br label %_ZSt4copyIPKN2v88internal4wasm9ValueTypeEPS3_ET0_T_S8_S7_.exit

_ZSt4copyIPKN2v88internal4wasm9ValueTypeEPS3_ET0_T_S8_S7_.exit: ; preds = %bb.z, %bb.aa
  %i.du = load ptr, ptr %i.a, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dw
  br label %bb.ab

bb.ab:                                            ; preds = %_ZSt4copyIPKN2v88internal4wasm9ValueTypeEPS3_ET0_T_S8_S7_.exit, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit
  %.062 = phi ptr [ %i.dx, %_ZSt4copyIPKN2v88internal4wasm9ValueTypeEPS3_ET0_T_S8_S7_.exit ], [ %i.dj, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit ]
  %i.dy = load ptr, ptr %2, align 8               ; 2 uses
  %i.dz = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not71128 = icmp eq ptr %i.dy, %i.dz
  br i1 %.not71128, label %.thread100, label %.lr.ph132

.lr.ph132:                                        ; preds = %bb.ab, %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit
  %.057130 = phi ptr [ %i.er, %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit ], [ %i.dy, %bb.ab ] ; 4 uses
  %.163129 = phi ptr [ %i.eq, %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit ], [ %.062, %bb.ab ] ; 5 uses
  %i.ea = load i32, ptr %.057130, align 4         ; 2 uses
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.lr.ph132
  %i.ec = getelementptr inbounds nuw i8, ptr %.057130, i64 4
  %i.ed = zext i32 %i.ea to i64
  %.idx.i.i = shl nuw nsw i64 %i.ed, 2            ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.163129, i64 %.idx.i.i
  %.pre.i.i.i.i = load i32, ptr %i.ec, align 4    ; 2 uses
  %i.ef = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.eg = lshr exact i64 %i.ef, 2
  %i.eh = add nuw nsw i64 %i.eg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ef, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec = and i64 %i.eh, 9223372036854775800     ; 3 uses
  %i.ei = shl i64 %n.vec, 2
  %i.ej = getelementptr i8, ptr %.163129, i64 %i.ei
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ek = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.163129, i64 %i.ek ; 2 uses
  %i.el = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4
  store <4 x i32> %broadcast.splat, ptr %i.el, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.em = icmp eq i64 %index.next, %n.vec
  br i1 %i.em, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eh, %n.vec
  br i1 %cmp.n, label %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit.loopexit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.preheader.i.i.i.i, %middle.block
  %.06.i.i.i.i.ph = phi ptr [ %.163129, %.lr.ph.preheader.i.i.i.i ], [ %i.ej, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.en, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %.06.i.i.i.i, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.en, %i.ee
  br i1 %.not.i.i.i.i, label %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !38

_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre = load i32, ptr %.057130, align 4
  %i.eo = zext i32 %.pre to i64
  br label %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit

_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit: ; preds = %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit.loopexit, %.lr.ph132
  %i.ep = phi i64 [ %i.eo, %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit.loopexit ], [ 0, %.lr.ph132 ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.163129, i64 %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %.057130, i64 8 ; 2 uses
  %.not71 = icmp eq ptr %i.er, %i.dz
  br i1 %.not71, label %.thread100, label %.lr.ph132

.thread100:                                       ; preds = %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE17ValidateValueTypeEPKhNS1_9ValueTypeE.exit, %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit, %bb.ab, %bb.u, %bb.p, %bb.n, %bb.j, %._crit_edge
  %.4 = phi i32 [ %.058.lcssa, %._crit_edge ], [ %.058.lcssa, %bb.ab ], [ 0, %bb.j ], [ 0, %bb.n ], [ 0, %bb.p ], [ 0, %bb.u ], [ %.058.lcssa, %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit ], [ 0, %_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder17FullValidationTagELNS1_12DecodingModeE0EE17ValidateValueTypeEPKhNS1_9ValueTypeE.exit ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorIZNS_8internal4wasm11WasmDecoderINS3_7Decoder17FullValidationTagELNS3_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntryLm8ESaISB_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.ac

bb.ac:                                            ; preds = %.thread100, %bb.f, %bb.d
  %.5 = phi i32 [ 0, %bb.f ], [ %.4, %.thread100 ], [ 0, %bb.d ]
  ret i32 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp ult ptr %1, %i.b
  br i1 %i.c, label %bb.b, label %.critedge.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1                 ; 2 uses
  %.not.i = icmp sgt i8 %i.d, -1
  br i1 %.not.i, label %bb.c, label %.critedge.i, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i8 %i.d to i64
  br label %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.f = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) ; 3 uses
  %.sroa.4.0.extract.shift = and i64 %i.f, 30064771072
  %i.g = icmp ult i64 %i.f, 25769803776
  tail call void @llvm.assume(i1 %i.g)
  br label %_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit

_ZN2v88internal4wasm7Decoder8read_lebIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE.exit: ; preds = %bb.c, %.critedge.i
  %.sroa.05.0 = phi i64 [ %i.e, %bb.c ], [ %i.f, %.critedge.i ]
  %.sroa.5.0 = phi i64 [ 4294967296, %bb.c ], [ %.sroa.4.0.extract.shift, %.critedge.i ]
  %.sroa.05.0.insert.ext = and i64 %.sroa.05.0, 4294967295
  %.sroa.05.0.insert.insert = or disjoint i64 %.sroa.5.0, %.sroa.05.0.insert.ext
  ret i64 %.sroa.05.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal4wasm17value_type_reader15read_value_typeINS1_7Decoder17FullValidationTagEEESt4pairINS1_9ValueTypeEjEPS4_PKhNS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = icmp slt i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.14)
  br label %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

bb.c:                                             ; preds = %bb.a
  %.0.copyload.i.i.i.i = load i8, ptr %1, align 1
  br label %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi i8 [ 0, %bb.b ], [ %.0.copyload.i.i.i.i, %bb.c ] ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i32, ptr %i.g, align 8
  %.not.i = icmp eq i32 %i.h, -1
  br i1 %.not.i, label %bb.d, label %bb.w, !prof !6

bb.d:                                             ; preds = %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit
  switch i8 %.0.i.i, label %bb.v [
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
    i8 116, label %bb.e
    i8 105, label %bb.e
    i8 103, label %bb.h
    i8 102, label %bb.h
    i8 96, label %bb.h
    i8 97, label %bb.h
    i8 104, label %bb.j
    i8 117, label %bb.j
    i8 127, label %bb.w
    i8 126, label %bb.l
    i8 125, label %bb.m
    i8 124, label %bb.n
    i8 100, label %bb.o
    i8 99, label %bb.o
    i8 123, label %bb.r
  ]

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit:  ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %10 = zext nneg i8 %.0.i.i to i64
  %11 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %10
  %12 = getelementptr i8, ptr %11, i64 -384
  %i.i = load i32, ptr %12, align 4
  %i.j = or i32 %i.i, 4
  br label %bb.w

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.k = and i32 %2, 65536
  %.not91 = icmp eq i32 %i.k, 0
  br i1 %.not91, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit34, label %bb.f, !prof !12

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit34: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %13 = zext nneg i8 %.0.i.i to i64
  %14 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %13
  %15 = getelementptr i8, ptr %14, i64 -384
  %i.l = load i32, ptr %15, align 4
  %i.m = or i32 %i.l, 4
  store i32 %i.m, ptr %5, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.n = load ptr, ptr %4, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef %i.n)
  %i.o = load ptr, ptr %4, align 8                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit34
  %i.r = load i64, ptr %i.p, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.w

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %3, align 8                ; 2 uses
  %i.u = and i64 %i.t, 8192
  %i.v = icmp eq i64 %i.u, 0
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 961), align 1, !range !8
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond = select i1 %i.v, i1 true, i1 %i.x, !prof !39
  br i1 %or.cond, label %.critedge, label %bb.g, !prof !39

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.44)
  br label %bb.w

.critedge:                                        ; preds = %bb.f
  %i.y = or i64 %i.t, 65536
  store i64 %i.y, ptr %3, align 8
  %i.z = icmp eq i8 %.0.i.i, 105
  %.sroa.0.0.copyload.i.i = select i1 %i.z, i32 4101, i32 1285
  br label %bb.w

bb.h:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.aa = and i32 %2, 1024
  %.not90 = icmp eq i32 %i.aa, 0
  br i1 %.not90, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit37, label %bb.i, !prof !12

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit37: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %16 = zext nneg i8 %.0.i.i to i64
  %17 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %16
  %18 = getelementptr i8, ptr %17, i64 -384
  %i.ab = load i32, ptr %18, align 4
  %i.ac = or i32 %i.ab, 4
  store i32 %i.ac, ptr %7, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %i.ad = load ptr, ptr %6, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.45, ptr noundef %i.ad)
  %i.ae = load ptr, ptr %6, align 8               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit37
  %i.ah = load i64, ptr %i.af, align 8
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.aj = icmp eq i8 %.0.i.i, 103
  br i1 %i.aj, label %bb.w, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit43

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit43: ; preds = %bb.i
  %19 = zext nneg i8 %.0.i.i to i64
  %20 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %19
  %21 = getelementptr i8, ptr %20, i64 -384
  %i.ak = load i32, ptr %21, align 4
  %i.al = and i32 %i.ak, -5
  br label %bb.w

bb.j:                                             ; preds = %bb.d, %bb.d
  %i.am = and i32 %2, 128
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit46, label %bb.k, !prof !12

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit46: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %22 = zext nneg i8 %.0.i.i to i64
  %23 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %22
  %24 = getelementptr i8, ptr %23, i64 -384
  %i.an = load i32, ptr %24, align 4
  %i.ao = or i32 %i.an, 4
  store i32 %i.ao, ptr %9, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
  %i.ap = load ptr, ptr %8, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef %i.ap)
  %i.aq = load ptr, ptr %8, align 8               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit46
  %i.at = load i64, ptr %i.ar, align 8
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.w

bb.k:                                             ; preds = %bb.j
  %i.av = icmp eq i8 %.0.i.i, 104
  %.sroa.0.0.copyload.i.i50 = select i1 %i.av, i32 4485, i32 1157
  br label %bb.w

bb.l:                                             ; preds = %bb.d
  br label %bb.w

bb.m:                                             ; preds = %bb.d
  br label %bb.w

bb.n:                                             ; preds = %bb.d
  br label %bb.w

bb.o:                                             ; preds = %bb.d, %bb.d
  %i.aw = icmp eq i8 %.0.i.i, 99                  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ay = tail call i64 @_ZN2v88internal4wasm17value_type_reader14read_heap_typeINS1_7Decoder17FullValidationTagEEESt4pairINS1_8HeapTypeEjEPS4_PKhNS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE(ptr noundef nonnull %0, ptr noundef nonnull %i.ax, i32 %2, ptr noundef %3) ; 2 uses
  %.sroa.055.0.extract.trunc = trunc i64 %i.ay to i32 ; 2 uses
  %i.az = and i32 %.sroa.055.0.extract.trunc, 268435427 ; 2 uses
  switch i32 %i.az, label %.thread [
    i32 5121, label %_ZNK2v88internal4wasm13ValueTypeBase14is_string_viewEv.exit
    i32 4865, label %_ZNK2v88internal4wasm13ValueTypeBase14is_string_viewEv.exit
    i32 5377, label %_ZNK2v88internal4wasm13ValueTypeBase14is_string_viewEv.exit
    i32 514, label %bb.q
  ]

_ZNK2v88internal4wasm13ValueTypeBase14is_string_viewEv.exit: ; preds = %bb.o, %bb.o, %bb.o
  br i1 %i.aw, label %bb.p, label %.thread, !prof !40

bb.p:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase14is_string_viewEv.exit
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.47)
  br label %bb.w

.thread:                                          ; preds = %bb.o, %_ZNK2v88internal4wasm13ValueTypeBase14is_string_viewEv.exit
  %i.ba = and i32 %.sroa.055.0.extract.trunc, -5
  %i.bb = select i1 %i.aw, i32 4, i32 0
  %i.bc = or disjoint i32 %i.ba, %i.bb
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %.thread
  %storemerge = phi i32 [ %i.bc, %.thread ], [ %i.az, %bb.o ]
  %i.bd = and i64 %i.ay, -4294967296
  %i.be = add i64 %i.bd, 4294967296
  br label %bb.w

bb.r:                                             ; preds = %bb.d
  %i.bf = tail call noundef zeroext i1 @_ZN2v88internal11CpuFeatures19SupportsWasmSimd128Ev() #17
  br i1 %i.bf, label %bb.w, label %bb.s, !prof !6

bb.s:                                             ; preds = %bb.r
  %i.bg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1555), align 1, !range !8, !noundef !9
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.48) #19
  unreachable

bb.u:                                             ; preds = %bb.s
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.49)
  br label %bb.w

bb.v:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJNS1_13ValueTypeCodeEEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.50, i8 noundef zeroext %.0.i.i)
  br label %bb.w

bb.w:                                             ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %bb.k, %bb.l, %bb.m, %bb.n, %bb.u, %bb.v, %bb.i, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit43, %bb.d, %bb.q, %bb.p, %bb.r, %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit
  %.sroa.087.2 = phi i32 [ 514, %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ], [ 514, %bb.v ], [ %i.j, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit ], [ %.sroa.0.0.copyload.i.i, %.critedge ], [ 514, %bb.g ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 514, %bb.u ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %.sroa.0.0.copyload.i.i50, %bb.k ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ 4613, %bb.i ], [ 5904, %bb.l ], [ 6160, %bb.m ], [ 6416, %bb.n ], [ 5648, %bb.d ], [ %storemerge, %bb.q ], [ %i.al, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit43 ], [ 514, %bb.p ], [ 6672, %bb.r ]
  %.sroa.19.2 = phi i64 [ 0, %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ], [ 0, %bb.v ], [ 4294967296, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit ], [ 4294967296, %.critedge ], [ 0, %bb.g ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 0, %bb.u ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ 4294967296, %bb.k ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ 4294967296, %bb.i ], [ 4294967296, %bb.l ], [ 4294967296, %bb.m ], [ 4294967296, %bb.n ], [ 4294967296, %bb.d ], [ %i.be, %bb.q ], [ 4294967296, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit43 ], [ 0, %bb.p ], [ 4294967296, %bb.r ]
  %.sroa.087.0.insert.ext = zext i32 %.sroa.087.2 to i64
  %.sroa.087.0.insert.insert = or i64 %.sroa.19.2, %.sroa.087.0.insert.ext
  ret i64 %.sroa.087.0.insert.insert
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %.not.i = icmp ult ptr %1, %i.b
  br i1 %.not.i, label %bb.b, label %.critedge14.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1                 ; 2 uses
  %i.d = and i8 %i.c, 127
  %i.e = zext nneg i8 %i.d to i32                 ; 2 uses
  %i.f = icmp sgt i8 %i.c, -1
  br i1 %i.f, label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %.not.i3 = icmp ult ptr %i.g, %i.b
  br i1 %.not.i3, label %bb.d, label %.critedge14.i4, !prof !6

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = and i8 %i.h, 127
  %i.j = zext nneg i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = or disjoint i32 %i.k, %i.e               ; 2 uses
  %i.m = icmp sgt i8 %i.h, -1
  br i1 %i.m, label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %.not.i6 = icmp ult ptr %i.n, %i.b
  br i1 %.not.i6, label %bb.f, label %.critedge14.i7, !prof !6

bb.f:                                             ; preds = %bb.e
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %i.p = and i8 %i.o, 127
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = or disjoint i32 %i.r, %i.l               ; 2 uses
  %i.t = icmp sgt i8 %i.o, -1
  br i1 %i.t, label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 3 uses
  %.not.i9 = icmp ult ptr %i.u, %i.b
  br i1 %.not.i9, label %bb.h, label %.critedge14.i10, !prof !6

bb.h:                                             ; preds = %bb.g
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  %i.w = and i8 %i.v, 127
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = or disjoint i32 %i.y, %i.s               ; 2 uses
  %i.aa = icmp sgt i8 %i.v, -1
  br i1 %i.aa, label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %.not = icmp ult ptr %i.ab, %i.b
  br i1 %.not, label %bb.j, label %.thread, !prof !6

bb.j:                                             ; preds = %bb.i
  %i.ac = load i8, ptr %i.ab, align 1             ; 3 uses
  %i.ad = icmp slt i8 %i.ac, 0
  br i1 %i.ad, label %.thread, label %bb.k, !prof !41

.thread:                                          ; preds = %bb.i, %bb.j
  %i.ae = phi ptr [ @.str.40, %bb.i ], [ @.str.41, %bb.j ]
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.39, ptr noundef nonnull %i.ae, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

bb.k:                                             ; preds = %bb.j
  %i.af = zext nneg i8 %i.ac to i32
  %i.ag = shl nuw i32 %i.af, 28
  %i.ah = or disjoint i32 %i.ag, %i.z
  %i.ai = icmp samesign ult i8 %i.ac, 16
  br i1 %i.ai, label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.42)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge14.i10:                                  ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.u, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge14.i7:                                   ; preds = %bb.e
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.n, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge14.i4:                                   ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

.critedge14.i:                                    ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcS5_EEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef %2)
  br label %_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit

_ZN2v88internal4wasm7Decoder13read_leb_tailIjNS2_17FullValidationTagELNS2_9TraceFlagE0ELm32ELi0EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeES7_.exit: ; preds = %.critedge14.i4, %bb.d, %bb.f, %.critedge14.i7, %bb.l, %.thread, %bb.k, %bb.h, %.critedge14.i10, %bb.b, %.critedge14.i
  %.sroa.6.0 = phi i64 [ 4294967296, %bb.b ], [ 0, %.critedge14.i ], [ 8589934592, %bb.d ], [ 0, %.critedge14.i4 ], [ 12884901888, %bb.f ], [ 0, %.critedge14.i7 ], [ 17179869184, %bb.h ], [ 0, %.critedge14.i10 ], [ 0, %.thread ], [ 0, %bb.l ], [ 21474836480, %bb.k ]
  %.sroa.0.0 = phi i32 [ %i.e, %bb.b ], [ 0, %.critedge14.i ], [ %i.l, %bb.d ], [ 0, %.critedge14.i4 ], [ %i.s, %bb.f ], [ 0, %.critedge14.i7 ], [ %i.z, %bb.h ], [ 0, %.critedge14.i10 ], [ 0, %.thread ], [ 0, %bb.l ], [ %i.ah, %bb.k ]
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
end_hunk_2
begin_hunk_3_@_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev:bb.a
bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.cr = phi ptr [ %i.cp, %bb.x ], [ %i.cm, %bb.y ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cr, i8 0, i64 %i.cl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i8: ; preds = %bb.aa, %bb.z, %bb.y
  %i.cs = phi i64 [ 0, %bb.y ], [ 1, %bb.z ], [ %i.cl, %bb.aa ] ; 2 uses
  %i.ct = phi ptr [ %i.cm, %bb.y ], [ %i.cq, %bb.z ], [ %i.cr, %bb.aa ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.cs, ptr %i.cu, align 8, !alias.scope !52
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cs
  store i8 0, ptr %i.cv, align 1
  %i.cw = load ptr, ptr %0, align 8, !alias.scope !52 ; 4 uses
  %i.cx = icmp samesign ugt i32 %i.bz, 99
  br i1 %i.cx, label %.lr.ph.preheader.i.i12, label %._crit_edge.i.i9

.lr.ph.preheader.i.i12:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i8
  %i.cy = load i64, ptr %i.cu, align 8, !alias.scope !52
  %i.cz = trunc i64 %i.cy to i32
  %i.da = add i32 %i.cz, -1
  br label %.lr.ph.i2.i13

.lr.ph.i2.i13:                                    ; preds = %.lr.ph.i2.i13, %.lr.ph.preheader.i.i12
  %.020.i.i14 = phi i32 [ %i.dd, %.lr.ph.i2.i13 ], [ %i.bz, %.lr.ph.preheader.i.i12 ] ; 3 uses
  %.01819.i.i15 = phi i32 [ %i.do, %.lr.ph.i2.i13 ], [ %i.da, %.lr.ph.preheader.i.i12 ] ; 3 uses
  %i.db = urem i32 %.020.i.i14, 100
  %i.dc = shl nuw nsw i32 %i.db, 1
  %i.dd = udiv i32 %.020.i.i14, 100               ; 2 uses
  %i.de = zext nneg i32 %i.dc to i64
  %i.df = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !noalias !52
  %i.di = zext i32 %.01819.i.i15 to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.di
  store i8 %i.dh, ptr %i.dj, align 1
  %i.dk = load i8, ptr %i.df, align 2, !noalias !52
  %i.dl = add i32 %.01819.i.i15, -1
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.dm
  store i8 %i.dk, ptr %i.dn, align 1
  %i.do = add i32 %.01819.i.i15, -2
  %i.dp = icmp samesign ugt i32 %.020.i.i14, 9999
  br i1 %i.dp, label %.lr.ph.i2.i13, label %._crit_edge.i.i9, !llvm.loop !48

._crit_edge.i.i9:                                 ; preds = %.lr.ph.i2.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i8
  %.0.lcssa.i.i10 = phi i32 [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i8 ], [ %i.dd, %.lr.ph.i2.i13 ] ; 3 uses
  %i.dq = icmp samesign ugt i32 %.0.lcssa.i.i10, 9
  br i1 %i.dq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i9
  %i.dr = shl nuw nsw i32 %.0.lcssa.i.i10, 1
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !noalias !52
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store i8 %i.dv, ptr %i.dw, align 1
  %i.dx = load i8, ptr %i.dt, align 2, !noalias !52
  br label %_ZNSt7__cxx119to_stringEj.exit17

bb.ac:                                            ; preds = %._crit_edge.i.i9
  %i.dy = trunc nuw nsw i32 %.0.lcssa.i.i10 to i8
  %i.dz = or disjoint i8 %i.dy, 48
  br label %_ZNSt7__cxx119to_stringEj.exit17

_ZNSt7__cxx119to_stringEj.exit17:                 ; preds = %bb.ab, %bb.ac
  %storemerge.i.i11 = phi i8 [ %i.dz, %bb.ac ], [ %i.dx, %bb.ab ]
  store i8 %storemerge.i.i11, ptr %i.cw, align 1
  br label %bb.ae

bb.ad:                                            ; preds = %bb.a
  tail call void @_ZNK2v88internal4wasm13ValueTypeBase21generic_heaptype_nameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #17
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZNSt7__cxx119to_stringEj.exit17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal4wasm17value_type_reader14read_heap_typeINS1_7Decoder17FullValidationTagEEESt4pairINS1_8HeapTypeEjEPS4_PKhNS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.v8::internal::wasm::HeapType", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp ult ptr %1, %i.b
  br i1 %i.c, label %bb.b, label %.critedge.i.i, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1                 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.d, -1
  br i1 %.not.i.i, label %bb.c, label %.critedge.i.i, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.e = zext nneg i8 %i.d to i64
  %i.f = shl nuw i64 %i.e, 57
  %i.g = ashr exact i64 %i.f, 57
  br label %_ZN2v88internal4wasm7Decoder9read_i33vINS2_17FullValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

.critedge.i.i:                                    ; preds = %bb.b, %bb.a
  %i.h = tail call preserve_mostcc { i64, i32 } @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIlNS2_17FullValidationTagELNS2_9TraceFlagE0ELm33EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.24) ; 2 uses
  %.fca.1.extract.i.i = extractvalue { i64, i32 } %i.h, 1 ; 2 uses
  %i.i = icmp ult i32 %.fca.1.extract.i.i, 6
  tail call void @llvm.assume(i1 %i.i)
  %i.j = extractvalue { i64, i32 } %i.h, 0
  br label %_ZN2v88internal4wasm7Decoder9read_i33vINS2_17FullValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

_ZN2v88internal4wasm7Decoder9read_i33vINS2_17FullValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit: ; preds = %bb.c, %.critedge.i.i
  %.fca.1.extract.pre-phi = phi i32 [ 1, %bb.c ], [ %.fca.1.extract.i.i, %.critedge.i.i ] ; 6 uses
  %.fca.1.insert.i.merged.i = phi i64 [ %i.g, %bb.c ], [ %i.j, %.critedge.i.i ] ; 6 uses
  %i.k = icmp slt i64 %.fca.1.insert.i.merged.i, 0 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.x

bb.d:                                             ; preds = %_ZN2v88internal4wasm7Decoder9read_i33vINS2_17FullValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit
  %i.l = icmp samesign ugt i64 %.fca.1.insert.i.merged.i, -65
  br i1 %i.l, label %bb.f, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJlEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.26, i64 noundef %.fca.1.insert.i.merged.i)
  br label %.critedge90

bb.f:                                             ; preds = %bb.d
  %i.m = trunc nsw i64 %.fca.1.insert.i.merged.i to i8
  %i.n = and i8 %i.m, 127                         ; 2 uses
  %i.o = icmp eq i8 %i.n, 101                     ; 9 uses
  br i1 %i.o, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.p = and i32 %2, 16
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.h, label %bb.i, !prof !12

bb.h:                                             ; preds = %bb.g
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJhEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.55, i8 noundef zeroext 101)
  br label %.critedge90

bb.i:                                             ; preds = %bb.g
  %i.q = zext nneg i32 %.fca.1.extract.pre-phi to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 3 uses
  %i.s = load ptr, ptr %i.a, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp slt i64 %i.v, 1
  br i1 %i.w, label %bb.j, label %bb.k, !prof !12

bb.j:                                             ; preds = %bb.i
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.r, ptr noundef nonnull @.str.24)
  br label %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

bb.k:                                             ; preds = %bb.i
  %.0.copyload.i.i.i.i = load i8, ptr %i.r, align 1
  br label %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit

_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit: ; preds = %bb.j, %bb.k
  %.0.i.i = phi i8 [ 0, %bb.j ], [ %.0.copyload.i.i.i.i, %bb.k ]
  %i.x = add nuw nsw i32 %.fca.1.extract.pre-phi, 1
  br label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit, %bb.f
  %.sroa.6.0 = phi i32 [ %i.x, %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ], [ %.fca.1.extract.pre-phi, %bb.f ] ; 6 uses
  %.085 = phi i8 [ %.0.i.i, %_ZN2v88internal4wasm7Decoder7read_u8INS2_17FullValidationTagEEEhPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ], [ %i.n, %bb.f ] ; 10 uses
  switch i8 %.085, label %bb.w [
    i8 115, label %bb.m
    i8 112, label %bb.m
    i8 109, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 108, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 107, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 106, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 110, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 113, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 114, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 111, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93
    i8 116, label %bb.n
    i8 105, label %bb.n
    i8 103, label %bb.q
    i8 102, label %bb.q
    i8 96, label %bb.q
    i8 97, label %bb.q
    i8 117, label %bb.r
    i8 104, label %bb.r
    i8 98, label %bb.t
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  br i1 %i.o, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93, !prof !12

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit:  ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %16 = zext nneg i8 %.085 to i64
  %17 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %16
  %18 = getelementptr i8, ptr %17, i64 -384
  %i.y = load i32, ptr %18, align 4
  %i.z = or i32 %i.y, 20
  store i32 %i.z, ptr %5, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.aa = load ptr, ptr %4, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.56, ptr noundef %i.aa)
  %i.ab = load ptr, ptr %4, align 8               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit
  %i.ae = load i64, ptr %i.ac, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %.critedge90

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93: ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.m
  %19 = zext nneg i8 %.085 to i64
  %20 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %19
  %21 = getelementptr i8, ptr %20, i64 -384
  %i.ag = load i32, ptr %21, align 4
  %i.ah = select i1 %i.o, i32 20, i32 4
  %i.ai = or i32 %i.ag, %i.ah
  br label %.critedge90

bb.n:                                             ; preds = %bb.l, %bb.l
  %i.aj = and i32 %2, 65536
  %.not178 = icmp eq i32 %i.aj, 0
  br i1 %.not178, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit96, label %bb.o, !prof !12

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit96: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %22 = zext nneg i8 %.085 to i64
  %23 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %22
  %24 = getelementptr i8, ptr %23, i64 -384
  %i.ak = load i32, ptr %24, align 4
  %i.al = select i1 %i.o, i32 20, i32 4
  %i.am = or i32 %i.ak, %i.al
  store i32 %i.am, ptr %7, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %i.an = load ptr, ptr %6, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.57, ptr noundef %i.an)
  %i.ao = load ptr, ptr %6, align 8               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit96
  %i.ar = load i64, ptr %i.ap, align 8
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit96, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %.critedge90

bb.o:                                             ; preds = %bb.n
  %i.at = load i64, ptr %3, align 8               ; 2 uses
  %i.au = and i64 %i.at, 8192
  %i.av = icmp eq i64 %i.au, 0
  %i.aw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 961), align 1, !range !8
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond = select i1 %i.av, i1 true, i1 %i.ax, !prof !39
  br i1 %or.cond, label %.critedge, label %bb.p, !prof !39

bb.p:                                             ; preds = %bb.o
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.44)
  br label %.critedge90

.critedge:                                        ; preds = %bb.o
  %25 = zext nneg i8 %.085 to i64
  %26 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %25
  %27 = getelementptr i8, ptr %26, i64 -384       ; 2 uses
  br i1 %i.o, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit102, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit108, !prof !12

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit102: ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.ay = load i32, ptr %27, align 4
  %i.az = or i32 %i.ay, 20
  store i32 %i.az, ptr %9, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
  %i.ba = load ptr, ptr %8, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.58, ptr noundef %i.ba)
  %i.bb = load ptr, ptr %8, align 8               ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit102
  %i.be = load i64, ptr %i.bc, align 8
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit102, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %.critedge90

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit108: ; preds = %.critedge
  %i.bg = or i64 %i.at, 65536
  store i64 %i.bg, ptr %3, align 8
  %i.bh = load i32, ptr %27, align 4
  %i.bi = or i32 %i.bh, 4
  br label %.critedge90

bb.q:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.bj = and i32 %2, 1024
  %.not177 = icmp eq i32 %i.bj, 0
  br i1 %.not177, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit111, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit117, !prof !12

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit111: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %28 = zext nneg i8 %.085 to i64
  %29 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %28
  %30 = getelementptr i8, ptr %29, i64 -384
  %i.bk = load i32, ptr %30, align 4
  %i.bl = select i1 %i.o, i32 20, i32 4
  %i.bm = or i32 %i.bk, %i.bl
  store i32 %i.bm, ptr %11, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 4 dereferenceable(4) %11)
  %i.bn = load ptr, ptr %10, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.59, ptr noundef %i.bn)
  %i.bo = load ptr, ptr %10, align 8              ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit111
  %i.br = load i64, ptr %i.bp, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %.critedge90

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit117: ; preds = %bb.q
  %31 = zext nneg i8 %.085 to i64
  %32 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %31
  %33 = getelementptr i8, ptr %32, i64 -384
  %i.bt = load i32, ptr %33, align 4
  %i.bu = select i1 %i.o, i32 20, i32 4
  %i.bv = or i32 %i.bt, %i.bu
  br label %.critedge90

bb.r:                                             ; preds = %bb.l, %bb.l
  %i.bw = and i32 %2, 128
  %.not176 = icmp eq i32 %i.bw, 0
  br i1 %.not176, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit120, label %bb.s, !prof !12

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit120: ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %34 = zext nneg i8 %.085 to i64
  %35 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %34
  %36 = getelementptr i8, ptr %35, i64 -384
  %i.bx = load i32, ptr %36, align 4
  %i.by = select i1 %i.o, i32 20, i32 4
  %i.bz = or i32 %i.bx, %i.by
  store i32 %i.bz, ptr %13, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 4 dereferenceable(4) %13)
  %i.ca = load ptr, ptr %12, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.60, ptr noundef %i.ca)
  %i.cb = load ptr, ptr %12, align 8              ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit120
  %i.ce = load i64, ptr %i.cc, align 8
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %.critedge90

bb.s:                                             ; preds = %bb.r
  br i1 %i.o, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit126, label %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit132, !prof !12

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit126: ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %37 = zext nneg i8 %.085 to i64
  %38 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %37
  %39 = getelementptr i8, ptr %38, i64 -384
  %i.cg = load i32, ptr %39, align 4
  %i.ch = or i32 %i.cg, 20
  store i32 %i.ch, ptr %15, align 4
  call void @_ZNK2v88internal4wasm8HeapType4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %15)
  %i.ci = load ptr, ptr %14, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.61, ptr noundef %i.ci)
  %i.cj = load ptr, ptr %14, align 8              ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit126
  %i.cm = load i64, ptr %i.ck, align 8
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %.critedge90

_ZN2v88internal4wasm8HeapType9from_codeEhb.exit132: ; preds = %bb.s
  %40 = zext nneg i8 %.085 to i64
  %41 = getelementptr [4 x i8], ptr @__const._ZN2v88internal4wasm8HeapType9from_codeEhb.kLookupTable, i64 %40
  %42 = getelementptr i8, ptr %41, i64 -384
  %i.co = load i32, ptr %42, align 4
  %i.cp = or i32 %i.co, 4
  br label %.critedge90

bb.t:                                             ; preds = %bb.l
  %i.cq = and i32 %2, 8
  %.not175 = icmp eq i32 %i.cq, 0
  br i1 %.not175, label %bb.u, label %bb.v, !prof !12

bb.u:                                             ; preds = %bb.t
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.62)
  br label %.critedge90

bb.v:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cs = tail call i64 @_ZN2v88internal4wasm7Decoder9read_u32vINS2_17FullValidationTagEEESt4pairIjjEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.cr, ptr noundef nonnull @.str.25) ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.cs, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.ct = add i32 %.sroa.6.0, %.sroa.4.0.extract.trunc
  br label %bb.x

bb.w:                                             ; preds = %bb.l
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJlEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.26, i64 noundef %.fca.1.insert.i.merged.i)
  br label %.critedge90

bb.x:                                             ; preds = %_ZN2v88internal4wasm7Decoder9read_i33vINS2_17FullValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit, %bb.v
  %.0.in = phi i64 [ %i.cs, %bb.v ], [ %.fca.1.insert.i.merged.i, %_ZN2v88internal4wasm7Decoder9read_i33vINS2_17FullValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ]
  %.sroa.6.1 = phi i32 [ %i.ct, %bb.v ], [ %.fca.1.extract.pre-phi, %_ZN2v88internal4wasm7Decoder9read_i33vINS2_17FullValidationTagEEESt4pairIljEPKhNSt11conditionalIXsrT_8validateEPKcNS2_6NoNameEE4typeE.exit ] ; 2 uses
  %.0 = trunc i64 %.0.in to i32                   ; 3 uses
  %i.cu = icmp ult i32 %.0, 1000000
  br i1 %i.cu, label %_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit, label %bb.y, !prof !6

bb.y:                                             ; preds = %bb.x
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjmEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull @.str.63, i32 noundef %.0, i64 noundef 1000000)
  br label %.critedge90

_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit: ; preds = %bb.x
  %i.cv = select i1 %i.k, i32 15, i32 7
  %i.cw = shl nuw nsw i32 %.0, 8
  %i.cx = or disjoint i32 %i.cw, %i.cv
  br label %.critedge90

.critedge90:                                      ; preds = %bb.e, %bb.w, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit108, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %bb.u, %bb.h, %_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit, %bb.y
  %.sroa.0172.0 = phi i32 [ 514, %bb.w ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ai, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93 ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %i.bi, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit108 ], [ 514, %bb.p ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %i.bv, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit117 ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %i.cp, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit132 ], [ 514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %i.cx, %_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit ], [ 514, %bb.y ], [ 514, %bb.u ], [ 514, %bb.h ], [ 514, %bb.e ]
  %.sroa.18.0 = phi i32 [ %.sroa.6.0, %bb.w ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.6.0, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit93 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105 ], [ %.sroa.6.0, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit108 ], [ 0, %bb.p ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.sroa.6.0, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit117 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ], [ %.sroa.6.0, %_ZN2v88internal4wasm8HeapType9from_codeEhb.exit132 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %.sroa.6.1, %_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit ], [ %.sroa.6.1, %bb.y ], [ 0, %bb.u ], [ %.fca.1.extract.pre-phi, %bb.h ], [ %.fca.1.extract.pre-phi, %bb.e ]
  %.sroa.18.0.insert.ext = zext i32 %.sroa.18.0 to i64
  %.sroa.18.0.insert.shift = shl nuw i64 %.sroa.18.0.insert.ext, 32
  %.sroa.0172.0.insert.ext = zext i32 %.sroa.0172.0 to i64
  %.sroa.0172.0.insert.insert = or disjoint i64 %.sroa.18.0.insert.shift, %.sroa.0172.0.insert.ext
  ret i64 %.sroa.0172.0.insert.insert
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvPKhS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 {
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
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.i, ptr noundef %2, ptr noundef %3)
  ret void
}

declare void @_ZNK2v88internal4wasm13ValueTypeBase21generic_heaptype_nameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #19
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !6

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1
  store i8 %i.v, ptr %i.t, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1
  store i8 %i.w, ptr %i.m, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
end_hunk_3
