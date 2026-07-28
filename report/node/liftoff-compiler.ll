inline.NumInlined: 20842
inline.NumDeleted: 3929
loop-unroll.NumCompletelyUnrolled: 69
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN2v88internal4wasm11WasmDecoderINS1_7Decoder15NoValidationTagELNS1_12DecodingModeE0EE12DecodeLocalsEPKh:bb.a
  %i.bk = icmp ugt i64 %i.bj, %i.bb
  call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %i.bb ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 22
  %i.bn = load i8, ptr %i.bm, align 2, !range !5, !noundef !6
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
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !153

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
  br i1 %i.cn, label %bb.k, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm9ValueTypeEA_S4_EEPT_m.exit, !prof !7

bb.k:                                             ; preds = %bb.j
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cd, i64 noundef %i.ch) #24
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
  br i1 %.not71, label %bb.n, label %bb.m, !prof !7

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
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !154

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
  br i1 %.not.i.i.i.i, label %_ZSt6fill_nIPN2v88internal4wasm9ValueTypeEjS3_ET_S5_T0_RKT1_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !157

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
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
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
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27) #27
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
define linkonce_odr hidden preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #12 comdat align 2 {
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
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 comdat align 2 {
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
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.i, ptr noundef nonnull @.str.28, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #12 comdat align 2 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.c, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 256, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.va_start.p0(ptr nonnull %4)
  %.sroa.0.0.copyload = load ptr, ptr %3, align 8
  %.sroa.2.0.copyload = load i64, ptr %i.d, align 8
  %i.e = call noundef i32 @_ZN2v84base9VSNPrintFENS0_6VectorIcEEPKcP13__va_list_tag(ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef %2, ptr noundef nonnull %4) #24 ; 4 uses
  call void @llvm.va_end.p0(ptr nonnull %4)
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.29) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.g = load ptr, ptr %3, align 8                ; 3 uses
  %i.h = zext nneg i32 %i.e to i64                ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  store ptr %i.i, ptr %6, align 8
  %i.j = icmp eq ptr %i.g, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.30) #27
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i32 %i.e, 15
  br i1 %i.k, label %._crit_edge.i.i.thread, label %._crit_edge.i.i

._crit_edge.i.i.thread:                           ; preds = %bb.f
  %i.l = add nuw nsw i64 %i.h, 1
  %i.m = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #25 ; 2 uses
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
begin_hunk_1_@llvm.va_end.p0

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIZNS_8internal4wasm11WasmDecoderINS3_7Decoder15NoValidationTagELNS3_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntryLm8ESaISB_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 {
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
  br i1 %i.l, label %bb.b, label %bb.e, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 8, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #25 ; 7 uses
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
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !158

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
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrySB_ET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !159

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
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIZNS_8internal4wasm11WasmDecoderINS3_7Decoder15NoValidationTagELNS3_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntryLm8ESaISB_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #12 comdat align 2 {
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
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #26
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPZN2v88internal4wasm11WasmDecoderINS2_7Decoder15NoValidationTagELNS2_12DecodingModeE0EE12DecodeLocalsEPKhE17DecodedLocalEntrylET_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal4wasm17value_type_reader14read_heap_typeINS1_7Decoder15NoValidationTagEEESt4pairINS1_8HeapTypeEjEPS4_PKhNS1_19WasmEnabledFeaturesEPNS1_20WasmDetectedFeaturesE(ptr noundef %0, ptr noundef %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.a, -1
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !16

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
  br i1 %.not.i.i57, label %bb.h, label %bb.i, !prof !16

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
  br i1 %i.am, label %_ZN2v88internal4wasm8HeapType5IndexENS1_15ModuleTypeIndexEbNS1_11RefTypeKindENS1_9ExactnessE.exit, label %bb.l, !prof !16

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.47) #27
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
define linkonce_odr hidden preserve_mostcc { i64, i32 } @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIlNS2_15NoValidationTagELNS2_9TraceFlagE0ELm33EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #12 comdat align 2 {
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
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKhPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #12 comdat align 2 {
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
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvjPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorIjE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #12 comdat align 2 {
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
  br i1 %i.n, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16) #27
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
  br i1 %i.w, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIjA_jEEPT_m.exit, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 noundef %i.q) #24
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler9StructNewEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEERKNS1_20StructIndexImmediateERKNS1_9ValueBaseIS6_EEb:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %.not117 = icmp eq i32 %i.r, -1
  br i1 %.not117, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler6GetRttEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_15ModuleTypeIndexERKNS1_14TypeDefinitionERKNS1_9ValueBaseIS6_EE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 4 uses
  %i.u = zext nneg i8 %.sroa.06.0.i to i32
  %i.v = shl nuw nsw i32 1, %i.u
  br i1 %4, label %bb.e, label %_ZNK2v88internal4wasm14StructTypeBase28first_field_can_be_prototypeEv.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.w = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 854), align 2, !range !5, !noundef !6
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.z = load i8, ptr %i.y, align 2, !range !5
  %i.aa = trunc nuw i8 %i.z to i1
  %or.cond.i.i = select i1 %i.x, i1 %i.aa, i1 false
  %i.ab = load i16, ptr %i.t, align 8             ; 2 uses
  %.not.i.i = icmp ne i16 %i.ab, 0
  %or.cond3.not.i.i = select i1 %or.cond.i.i, i1 %.not.i.i, i1 false
  br i1 %or.cond3.not.i.i, label %bb.f, label %_ZNK2v88internal4wasm14StructTypeBase28first_field_can_be_prototypeEv.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = load i8, ptr %i.ad, align 1, !range !5, !noundef !6
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_ZNK2v88internal4wasm14StructTypeBase28first_field_can_be_prototypeEv.exit.thread.i, label %_ZNK2v88internal4wasm14StructTypeBase28first_field_can_be_prototypeEv.exit.i

_ZNK2v88internal4wasm14StructTypeBase28first_field_can_be_prototypeEv.exit.i: ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = and i32 %i.ai, 268435427
  %i.ak = icmp eq i32 %i.aj, 3841
  br i1 %i.ak, label %bb.g, label %_ZNK2v88internal4wasm14StructTypeBase28first_field_can_be_prototypeEv.exit.thread.i

bb.g:                                             ; preds = %_ZNK2v88internal4wasm14StructTypeBase28first_field_can_be_prototypeEv.exit.i
  %i.al = zext i16 %i.ab to i64
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds [12 x i8], ptr %i.ao, i64 %i.am ; 2 uses
  %.sroa.0.0.copyload10.i = load i64, ptr %i.ap, align 4 ; 5 uses
  %.sroa.0.sroa.411.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload10.i, 32
  %.sroa.0.sroa.411.0.extract.trunc.i = trunc i64 %.sroa.0.sroa.411.0.extract.shift.i to i8
  %.sroa.0.sroa.5.0.extract.shift.i = and i64 %.sroa.0.0.copyload10.i, -1099511627776
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4
  %i.aq = and i64 %.sroa.0.0.copyload10.i, 4294901760
  %i.ar = and i64 %.sroa.0.0.copyload10.i, 65280
  %i.as = and i64 %.sroa.0.0.copyload10.i, 255
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24GetFirstFieldIfPrototypeEPKNS1_10StructTypeEbNS1_14LiftoffRegListE.exit

_ZNK2v88internal4wasm14StructTypeBase28first_field_can_be_prototypeEv.exit.thread.i: ; preds = %_ZNK2v88internal4wasm14StructTypeBase28first_field_can_be_prototypeEv.exit.i, %bb.f, %bb.e, %bb.d
  %i.at = and i32 %i.v, 37839
  %i.au = xor i32 %i.at, 37839                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 680
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.av, align 8
  %i.aw = xor i32 %.sroa.0.0.copyload.i.i.i.i, -1
  %i.ax = and i32 %i.au, %i.aw                    ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %_ZNK2v88internal4wasm14StructTypeBase28first_field_can_be_prototypeEv.exit.thread.i
  %i.ay = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ax, i1 true)
  %i.az = trunc nuw nsw i32 %i.ay to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i

bb.i:                                             ; preds = %_ZNK2v88internal4wasm14StructTypeBase28first_field_can_be_prototypeEv.exit.thread.i
  %i.ba = tail call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(1284) %0, i32 %i.au) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i

_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.06.0.i.i.i = phi i8 [ %i.az, %bb.h ], [ %i.ba, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i32 5904, ptr %5, align 8
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.bb, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %scevgep.i.i.i, i8 0, i64 16, i1 false)
  tail call void @_ZN2v88internal4wasm16LiftoffAssembler12LoadConstantENS1_15LiftoffRegisterENS1_9WasmValueE(ptr noundef nonnull align 8 dereferenceable(1284) %0, i8 %.sroa.06.0.i.i.i, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmValue") align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24GetFirstFieldIfPrototypeEPKNS1_10StructTypeEbNS1_14LiftoffRegListE.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24GetFirstFieldIfPrototypeEPKNS1_10StructTypeEbNS1_14LiftoffRegListE.exit: ; preds = %bb.g, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i
  %.sroa.0.sroa.5.sroa.0.0.i = phi i64 [ %.sroa.0.sroa.5.0.extract.shift.i, %bb.g ], [ 0, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i ]
  %.sroa.0.sroa.411.0.i = phi i8 [ %.sroa.0.sroa.411.0.extract.trunc.i, %bb.g ], [ %.sroa.06.0.i.i.i, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i ]
  %.sroa.0.sroa.4.0.i = phi i64 [ %i.aq, %bb.g ], [ 0, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i ]
  %.sroa.0.sroa.3.0.i = phi i64 [ %i.ar, %bb.g ], [ 2304, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i ]
  %.sroa.0.sroa.0.0.i = phi i64 [ %i.as, %bb.g ], [ 1, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i ]
  %.sroa.5.0.i = phi i32 [ %.sroa.5.0.copyload.i, %bb.g ], [ 0, %_ZN2v88internal4wasm16LiftoffAssembler17GetUnusedRegisterENS1_8RegClassENS1_14LiftoffRegListE.exit.i ]
  %.sroa.0.sroa.411.0.insert.ext.i = zext i8 %.sroa.0.sroa.411.0.i to i64
  %.sroa.0.sroa.411.0.insert.shift.i = shl nuw nsw i64 %.sroa.0.sroa.411.0.insert.ext.i, 32
  %.sroa.0.sroa.411.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.411.0.insert.shift.i, %.sroa.0.sroa.5.sroa.0.0.i
  %.sroa.0.sroa.4.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.411.0.insert.insert.i, %.sroa.0.sroa.4.0.i
  %.sroa.0.sroa.3.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.4.0.insert.insert.i, %.sroa.0.sroa.3.0.i
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.3.0.insert.insert.i, %.sroa.0.sroa.0.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store i64 1, ptr %7, align 8, !alias.scope !898
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bd, align 8, !alias.scope !898
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.bc, ptr %i.be, align 8, !alias.scope !898
  store i8 9, ptr %i.bc, align 8, !alias.scope !898
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store i64 1, ptr %6, align 8, !alias.scope !901
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 3, ptr %i.bg, align 8, !alias.scope !901
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bf, ptr %i.bh, align 8, !alias.scope !901
  store <4 x i8> <i8 9, i8 9, i8 1, i8 9>, ptr %i.bf, align 8, !alias.scope !901
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store i8 1, ptr %8, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 1
  store i8 9, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i8 %.sroa.06.0.i, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.bm = load i32, ptr %2, align 8
  store i8 2, ptr %i.bl, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 13
  store i8 1, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %i.bm, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.bq, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 %.sroa.5.0.i, ptr %.sroa.4.0..sroa_idx, align 4
  %i.br = getelementptr i8, ptr %1, i64 8
  %.val67 = load ptr, ptr %i.br, align 8
  %i.bs = getelementptr i8, ptr %1, i64 16
  %.val68 = load ptr, ptr %i.bs, align 8
  %i.bt = ptrtoint ptr %.val68 to i64
  %i.bu = ptrtoint ptr %.val67 to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = trunc i64 %i.bv to i32
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler11CallBuiltinENS0_7BuiltinERKNS0_9SignatureINS1_9ValueKindEEESt16initializer_listINS1_15LiftoffVarStateEEi(ptr noundef nonnull align 8 dereferenceable(1284) %0, i32 noundef 1353, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nonnull %8, i64 3, i32 noundef %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.m

bb.j:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler6GetRttEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS1_15ModuleTypeIndexERKNS1_14TypeDefinitionERKNS1_9ValueBaseIS6_EE.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 22
  %i.by = load i8, ptr %i.bx, align 2, !range !5, !noundef !6
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = select i1 %i.bz, i32 1354, i32 1352
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store i64 1, ptr %10, align 8, !alias.scope !904
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.cc, align 8, !alias.scope !904
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.cb, ptr %i.cd, align 8, !alias.scope !904
  store i8 9, ptr %i.cb, align 8, !alias.scope !904
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store i64 1, ptr %9, align 8, !alias.scope !907
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 2, ptr %i.cf, align 8, !alias.scope !907
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.ce, ptr %i.cg, align 8, !alias.scope !907
  store i8 9, ptr %i.ce, align 8, !alias.scope !907
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 25
  store i16 265, ptr %i.ch, align 1, !alias.scope !907
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store i8 1, ptr %11, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 1
  store i8 9, ptr %i.ci, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i8 %.sroa.06.0.i, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 0, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8            ; 3 uses
  %i.co = load i16, ptr %i.cn, align 8            ; 2 uses
  %i.cp = icmp eq i16 %i.co, 0
  br i1 %i.cp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  %i.cr = load i8, ptr %i.cq, align 2, !range !5, !noundef !6
  %i.cs = shl nuw nsw i8 %i.cr, 3
  %i.ct = zext nneg i8 %i.cs to i32
  br label %_ZN2v88internal10WasmStruct4SizeEPKNS0_4wasm10StructTypeE.exit

bb.l:                                             ; preds = %bb.j
  %i.cu = zext i16 %i.co to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  %12 = getelementptr [4 x i8], ptr %i.cw, i64 %i.cu
  %13 = getelementptr i8, ptr %12, i64 -4
  %i.cx = load i32, ptr %13, align 4
  %i.cy = call i32 @llvm.smax.i32(i32 %i.cx, i32 0)
  br label %_ZN2v88internal10WasmStruct4SizeEPKNS0_4wasm10StructTypeE.exit

_ZN2v88internal10WasmStruct4SizeEPKNS0_4wasm10StructTypeE.exit: ; preds = %bb.k, %bb.l
  %.0.i.i = phi i32 [ %i.ct, %bb.k ], [ %i.cy, %bb.l ]
  %.sroa.speculated.i = add nuw nsw i32 %.0.i.i, 16
  store i8 2, ptr %i.cl, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 13
  store i8 1, ptr %i.cz, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %.sroa.speculated.i, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.db, align 4
  %i.dc = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.dc, align 8
  %i.dd = getelementptr i8, ptr %1, i64 16
  %.val66 = load ptr, ptr %i.dd, align 8
  %i.de = ptrtoint ptr %.val66 to i64
  %i.df = ptrtoint ptr %.val to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = trunc i64 %i.dg to i32
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler11CallBuiltinENS0_7BuiltinERKNS0_9SignatureINS1_9ValueKindEEESt16initializer_listINS1_15LiftoffVarStateEEi(ptr noundef nonnull align 8 dereferenceable(1284) %0, i32 noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr nonnull %11, i64 2, i32 noundef %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal10WasmStruct4SizeEPKNS0_4wasm10StructTypeE.exit, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler24GetFirstFieldIfPrototypeEPKNS1_10StructTypeEbNS1_14LiftoffRegListE.exit
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = load i16, ptr %i.dj, align 8            ; 2 uses
  %.not120 = icmp eq i16 %i.dk, 0
  br i1 %.not120, label %.critedge65, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.dp = getelementptr inbounds nuw i8, ptr %i.m, i64 22
  %i.dq = zext i16 %i.dk to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16StoreObjectFieldEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS0_8RegisterESA_iNS1_15LiftoffRegisterEbNS1_14LiftoffRegListENS1_9ValueKindENS1_16LiftoffAssembler16SkipWriteBarrierE.exit
  %indvars.iv = phi i64 [ %i.dq, %.lr.ph ], [ %i.dr, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16StoreObjectFieldEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS0_8RegisterESA_iNS1_15LiftoffRegisterEbNS1_14LiftoffRegListENS1_9ValueKindENS1_16LiftoffAssembler16SkipWriteBarrierE.exit ] ; 2 uses
  %.sroa.097.0121 = phi i32 [ 1, %.lr.ph ], [ %i.hc, %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler16StoreObjectFieldEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES3_LNS1_12DecodingModeE0EEENS0_8RegisterESA_iNS1_15LiftoffRegisterEbNS1_14LiftoffRegListENS1_9ValueKindENS1_16LiftoffAssembler16SkipWriteBarrierE.exit ] ; 4 uses
  %i.dr = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.ds = load ptr, ptr %i.di, align 8            ; 3 uses
  %.wide = icmp eq i64 %i.dr, 0                   ; 2 uses
  br i1 %.wide, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.du = load i8, ptr %i.dt, align 2, !range !5, !noundef !6
  %i.dv = shl nuw nsw i8 %i.du, 3
  %i.dw = zext nneg i8 %i.dv to i32
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler17StructFieldOffsetEPKNS1_10StructTypeEi.exit

bb.p:                                             ; preds = %bb.n
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = add i64 %indvars.iv, 4294967294
  %i.ea = and i64 %i.dz, 4294967295
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4
  br label %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler17StructFieldOffsetEPKNS1_10StructTypeEi.exit

_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler17StructFieldOffsetEPKNS1_10StructTypeEi.exit: ; preds = %bb.o, %bb.p
  %.0.i.i73 = phi i32 [ %i.dw, %bb.o ], [ %i.ec, %bb.p ]
  %i.ed = add i32 %.0.i.i73, 15                   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.dr
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.eg, align 4 ; 12 uses
  br i1 %4, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler17StructFieldOffsetEPKNS1_10StructTypeEi.exit
  %i.eh = load ptr, ptr %i.dn, align 8            ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -12 ; 2 uses
  %.sroa.0106.0.copyload = load i64, ptr %i.ei, align 4 ; 3 uses
  %.sroa.0106.sroa.5107.0.extract.shift = lshr i64 %.sroa.0106.0.copyload, 32 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.eh, i64 -4
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  store ptr %i.ei, ptr %i.dn, align 8
  %i.ej = and i64 %.sroa.0106.0.copyload, 255
  %i.ek = icmp eq i64 %i.ej, 1
  br i1 %i.ek, label %bb.r, label %_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit, !prof !16

bb.r:                                             ; preds = %bb.q
  %i.el = and i64 %.sroa.0106.sroa.5107.0.extract.shift, 255
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = add i32 %i.en, -1                       ; 2 uses
  store i32 %i.eo, ptr %i.em, align 4
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eq = trunc nuw i64 %.sroa.0106.sroa.5107.0.extract.shift to i32
  %i.er = and i32 %i.eq, 255
  %i.es = shl nuw i32 1, %i.er
  %i.et = xor i32 %i.es, -1
  %i.eu = load i32, ptr %i.dl, align 8
  %i.ev = and i32 %i.eu, %i.et
  store i32 %i.ev, ptr %i.dl, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.0108.4.extract.trunc = trunc i64 %.sroa.0106.sroa.5107.0.extract.shift to i8
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.thread

_ZN2v88internal4wasm16LiftoffAssembler11PopVarStateEv.exit: ; preds = %bb.q
  %i.ew = call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler19LoadToRegister_SlowENS1_15LiftoffVarStateENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i64 %.sroa.0106.0.copyload, i32 %.sroa.6.0.copyload, i32 %.sroa.097.0121) #24
  br label %_ZN2v88internal4wasm16LiftoffAssembler14LoadToRegisterENS1_15LiftoffVarStateENS1_14LiftoffRegListE.exit.thread

bb.u:                                             ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_115LiftoffCompiler17StructFieldOffsetEPKNS1_10StructTypeEi.exit
  %i.ex = and i32 %.sroa.0.0.copyload.i.i, 3
  %i.ey = icmp eq i32 %i.ex, 0                    ; 2 uses
  br i1 %i.ey, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ez = and i32 %.sroa.0.0.copyload.i.i, 268435440
  %i.fa = add nsw i32 %i.ez, -5648                ; 2 uses
  %i.fb = call i32 @llvm.fshl.i32(i32 %i.fa, i32 %i.fa, i32 24) ; 2 uses
  %i.fc = icmp ult i32 %i.fb, 8
  br i1 %i.fc, label %switch.lookup.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27) #27
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.fd = and i32 %.sroa.0.0.copyload.i.i, 268435427
  switch i32 %i.fd, label %bb.y [
    i32 258, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
    i32 514, label %.fold.split.i
    i32 2, label %.fold.split1.i
  ]

bb.y:                                             ; preds = %bb.x
  %i.fe = and i32 %.sroa.0.0.copyload.i.i, 5
  %i.ff = icmp eq i32 %i.fe, 5
  %i.fg = select i1 %i.ff, i8 10, i8 9
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

.fold.split.i:                                    ; preds = %bb.x
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

.fold.split1.i:                                   ; preds = %bb.x
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

switch.lookup.i:                                  ; preds = %bb.v
  %switch.idx.cast.i = trunc nuw nsw i32 %i.fb to i8
  %switch.offset.i = add nuw nsw i8 %switch.idx.cast.i, 1
  br label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit: ; preds = %bb.x, %bb.y, %.fold.split.i, %.fold.split1.i, %switch.lookup.i
  %.0.i76 = phi i8 [ %i.fg, %bb.y ], [ 0, %.fold.split1.i ], [ 12, %.fold.split.i ], [ 11, %bb.x ], [ %switch.offset.i, %switch.lookup.i ] ; 3 uses
  %i.fh = zext nneg i8 %.0.i76 to i64
  %i.fi = icmp samesign ult i8 %.0.i76, 11
  call void @llvm.assume(i1 %i.fi)
  %i.fj = getelementptr inbounds nuw i8, ptr @__const._ZN2v88internal4wasmL13reg_class_forENS1_9ValueKindE.kRegClasses, i64 %i.fh
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = icmp ne i8 %.0.i76, 0
  call void @llvm.assume(i1 %i.fl)
  %i.fm = zext nneg i8 %i.fk to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2v88internal4wasmL15GetCacheRegListENS1_8RegClassE.kRegLists, i64 %i.fm
  %.sroa.0.0.copyload.i.i77 = load i32, ptr %i.fn, align 4
  %i.fo = xor i32 %.sroa.097.0121, -1
  %i.fp = and i32 %.sroa.0.0.copyload.i.i77, %i.fo ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.dl, align 8
  %i.fq = xor i32 %.sroa.0.0.copyload.i.i.i, -1
  %i.fr = and i32 %i.fp, %i.fq                    ; 2 uses
  %.not.i.i78 = icmp eq i32 %i.fr, 0
  br i1 %.not.i.i78, label %bb.aa, label %bb.z, !prof !7

bb.z:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.fs = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.fr, i1 true)
  %i.ft = trunc nuw nsw i32 %i.fs to i8
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit
  %i.fu = call preserve_mostcc i8 @_ZN2v88internal4wasm16LiftoffAssembler16SpillOneRegisterENS1_14LiftoffRegListE(ptr noundef nonnull align 8 dereferenceable(824) %0, i32 %i.fp) #24
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.sroa.012.0 = phi i8 [ %i.ft, %bb.z ], [ %i.fu, %bb.aa ] ; 2 uses
  br i1 %i.ey, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.fv = and i32 %.sroa.0.0.copyload.i.i, 268435440
  %i.fw = add nsw i32 %i.fv, -5648                ; 2 uses
  %i.fx = call i32 @llvm.fshl.i32(i32 %i.fw, i32 %i.fw, i32 24) ; 2 uses
  %i.fy = icmp ult i32 %i.fx, 8
  br i1 %i.fy, label %switch.lookup.i82, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27) #27
  unreachable

end_hunk_2
