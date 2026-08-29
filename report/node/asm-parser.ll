Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/asm-parser?download=true
inline.NumInlined: 2031
inline.NumDeleted: 541
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2v88internal4wasm11AsmJsParser10GetVarInfoEi:bb.a

bb.c:                                             ; preds = %bb.a
  %i.g = add nsw i32 %1, -256
  %i.h = zext nneg i32 %i.g to i64                ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %.not = icmp ugt i64 %i.j, %i.h
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i64 %i.h, 1
  store i64 %i.k, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %i.l = phi i64 [ %i.h, %bb.d ], [ %i.h, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %i.m = add nsw i64 %i.l, 1                      ; 2 uses
  %i.n = icmp ugt i64 %i.m, %i.d
  br i1 %i.n, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %i.b, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.o = shl i64 %i.d, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.o, i64 %i.m) ; 7 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %.sroa.speculated, 461168601842738790
  br i1 %i.q, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117) #16
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.r = mul nuw i64 %.sroa.speculated, 40        ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.i, label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm11AsmJsParser7VarInfoEA_S5_EEPT_m.exit.i, !prof !5

bb.i:                                             ; preds = %bb.h
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #15
  %.pre.i.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm11AsmJsParser7VarInfoEA_S5_EEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayINS0_4wasm11AsmJsParser7VarInfoEA_S5_EEPT_m.exit.i: ; preds = %bb.i, %bb.h
  %i.y = phi i64 [ %.pre.i.i.i, %bb.i ], [ %i.v, %bb.h ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 6 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  %xtraiter = and i64 %.sroa.speculated, 3        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm11AsmJsParser7VarInfoEA_S5_EEPT_m.exit.i, %.lr.ph.i.i.i.i.prol
  %.08.i.i.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.prol ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm11AsmJsParser7VarInfoEA_S5_EEPT_m.exit.i ] ; 4 uses
  %.057.i.i.i.i.prol = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.prol ], [ %.sroa.speculated, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm11AsmJsParser7VarInfoEA_S5_EEPT_m.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm11AsmJsParser7VarInfoEA_S5_EEPT_m.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 32
  store i64 4294967296, ptr %i.ab, align 8
  store ptr inttoptr (i64 2147483649 to ptr), ptr %.08.i.i.i.i.prol, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ac, i8 0, i64 28, i1 false)
  %i.ad = add i64 %.057.i.i.i.i.prol, -1          ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 40 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !14

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm11AsmJsParser7VarInfoEA_S5_EEPT_m.exit.i
  %.08.i.i.i.i.unr = phi ptr [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm11AsmJsParser7VarInfoEA_S5_EEPT_m.exit.i ], [ %i.ae, %.lr.ph.i.i.i.i.prol ]
  %.057.i.i.i.i.unr = phi i64 [ %.sroa.speculated, %_ZN2v88internal4Zone13AllocateArrayINS0_4wasm11AsmJsParser7VarInfoEA_S5_EEPT_m.exit.i ], [ %i.ad, %.lr.ph.i.i.i.i.prol ]
  %i.af = icmp ult i64 %.sroa.speculated, 4
  br i1 %i.af, label %_ZN2v88internal4Zone9NewVectorINS0_4wasm11AsmJsParser7VarInfoEA_S5_EENS_4base6VectorIT_EEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i ], [ %.057.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 32
  store i64 4294967296, ptr %i.ag, align 8
  store ptr inttoptr (i64 2147483649 to ptr), ptr %.08.i.i.i.i, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ah, i8 0, i64 28, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 72
  store i64 4294967296, ptr %i.aj, align 8
  store ptr inttoptr (i64 2147483649 to ptr), ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ak, i8 0, i64 28, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 112
  store i64 4294967296, ptr %i.am, align 8
  store ptr inttoptr (i64 2147483649 to ptr), ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.an, i8 0, i64 28, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 120
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 152
  store i64 4294967296, ptr %i.ap, align 8
  store ptr inttoptr (i64 2147483649 to ptr), ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aq, i8 0, i64 28, i1 false)
  %i.ar = add i64 %.057.i.i.i.i, -4               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 160
  %.not.i.i.i.i.3 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i.3, label %_ZN2v88internal4Zone9NewVectorINS0_4wasm11AsmJsParser7VarInfoEA_S5_EENS_4base6VectorIT_EEm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !16

_ZN2v88internal4Zone9NewVectorINS0_4wasm11AsmJsParser7VarInfoEA_S5_EENS_4base6VectorIT_EEm.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %i.at = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.au = load i64, ptr %i.c, align 8             ; 3 uses
  %i.av = icmp ugt i64 %i.au, 1
  br i1 %i.av, label %bb.j, label %bb.k, !prof !7

bb.j:                                             ; preds = %_ZN2v88internal4Zone9NewVectorINS0_4wasm11AsmJsParser7VarInfoEA_S5_EENS_4base6VectorIT_EEm.exit
  %.idx = mul nuw nsw i64 %i.au, 40
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.z, ptr align 8 %i.at, i64 %.idx, i1 false)
  br label %_ZSt4copyIPN2v88internal4wasm11AsmJsParser7VarInfoES5_ET0_T_S7_S6_.exit

bb.k:                                             ; preds = %_ZN2v88internal4Zone9NewVectorINS0_4wasm11AsmJsParser7VarInfoEA_S5_EENS_4base6VectorIT_EEm.exit
  %i.aw = icmp eq i64 %i.au, 1
  br i1 %i.aw, label %bb.l, label %_ZSt4copyIPN2v88internal4wasm11AsmJsParser7VarInfoES5_ET0_T_S7_S6_.exit

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.z, ptr noundef nonnull align 8 dereferenceable(38) %i.at, i64 38, i1 false)
  br label %_ZSt4copyIPN2v88internal4wasm11AsmJsParser7VarInfoES5_ET0_T_S7_S6_.exit

_ZSt4copyIPN2v88internal4wasm11AsmJsParser7VarInfoES5_ET0_T_S7_S6_.exit: ; preds = %bb.j, %bb.k, %bb.l
  store ptr %i.z, ptr %i.b, align 8
  store i64 %.sroa.speculated, ptr %i.c, align 8
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %_ZSt4copyIPN2v88internal4wasm11AsmJsParser7VarInfoES5_ET0_T_S7_S6_.exit
  %i.ax = phi ptr [ %.pre, %._crit_edge ], [ %i.z, %_ZSt4copyIPN2v88internal4wasm11AsmJsParser7VarInfoES5_ET0_T_S7_S6_.exit ]
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %i.l
  ret ptr %i.ay
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZN2v88internal4wasm11AsmJsParser8VarIndexEPNS2_7VarInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.d = load i64, ptr %i.c, align 8
  %i.e = trunc i64 %i.d to i32
  %i.f = add i32 %i.b, %i.e
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm11AsmJsParser15AddGlobalImportENS_4base6VectorIKcEEPNS1_7AsmTypeENS1_9ValueTypeEbPNS2_7VarInfoE(ptr noundef nonnull align 8 dereferenceable(768) %0, ptr %1, i64 %2, ptr noundef %3, i32 %4, i1 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.v8::internal::wasm::WasmInitExpr", align 8 ; 8 uses
  %i.a = and i32 %4, 3
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %4, 268435440
  %i.d = add nsw i32 %i.c, -5648                  ; 2 uses
  %i.e = tail call i32 @llvm.fshl.i32(i32 %i.d, i32 %i.d, i32 24) ; 2 uses
  %i.f = icmp ult i32 %i.e, 8
  br i1 %i.f, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #16, !noalias !17
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.g = and i32 %4, 268435427
  switch i32 %i.g, label %bb.e [
    i32 258, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i
    i32 514, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i
    i32 2, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = and i32 %4, 5
  %i.i = icmp eq i32 %i.h, 5
  br i1 %i.i, label %_ZN2v88internal4wasm12WasmInitExpr12DefaultValueENS1_9ValueTypeE.exit, label %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i: ; preds = %bb.b
  %switch.idx.cast.i.i = zext nneg i32 %i.e to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2v88internal4wasm11AsmJsParser15AddGlobalImportENS_4base6VectorIKcEEPNS1_7AsmTypeENS1_9ValueTypeEbPNS2_7VarInfoE, i64 %switch.idx.cast.i.i
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZN2v88internal4wasm12WasmInitExpr12DefaultValueENS1_9ValueTypeE.exit

_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread.i: ; preds = %bb.e, %bb.d, %bb.d, %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #16, !noalias !17
  unreachable

_ZN2v88internal4wasm12WasmInitExpr12DefaultValueENS1_9ValueTypeE.exit: ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i, %bb.e
  %.sroa.09.sroa.0.0.a = phi i32 [ 0, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i ], [ %4, %bb.e ]
  %.sroa.710.0 = phi i32 [ %switch.ext, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.i ], [ 12, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i32 %.sroa.09.sroa.0.0.a, ptr %7, align 8
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %.sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %.sroa.710.0, ptr %.sroa.710.0..sroa_idx, align 8
  %.sroa.1311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr null, ptr %.sroa.1311.0..sroa_idx, align 8
  %i.j = zext i1 %5 to i8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 2, ptr %i.k, align 8
  store ptr %3, ptr %6, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i32 @_ZN2v88internal4wasm17WasmModuleBuilder9AddGlobalENS1_9ValueTypeEbNS1_12WasmInitExprE(ptr noundef nonnull align 8 dereferenceable(468) %i.m, i32 %4, i1 noundef zeroext true, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmInitExpr") align 8 %7) #15
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 %i.n, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i8 %i.j, ptr %i.p, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ult i64 %i.w, 48
  br i1 %i.x, label %bb.f, label %_ZNSt7__cxx114listIN2v88internal4wasm11AsmJsParser12GlobalImportENS2_13ZoneAllocatorIS5_EEE9push_backEOS5_.exit, !prof !5

bb.f:                                             ; preds = %_ZN2v88internal4wasm12WasmInitExpr12DefaultValueENS1_9ValueTypeE.exit
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 noundef 48) #15
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8
  br label %_ZNSt7__cxx114listIN2v88internal4wasm11AsmJsParser12GlobalImportENS2_13ZoneAllocatorIS5_EEE9push_backEOS5_.exit

_ZNSt7__cxx114listIN2v88internal4wasm11AsmJsParser12GlobalImportENS2_13ZoneAllocatorIS5_EEE9push_backEOS5_.exit: ; preds = %_ZN2v88internal4wasm12WasmInitExpr12DefaultValueENS1_9ValueTypeE.exit, %bb.f
  %i.y = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %bb.f ], [ %i.v, %_ZN2v88internal4wasm12WasmInitExpr12DefaultValueENS1_9ValueTypeE.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.aa = inttoptr i64 %i.y to ptr                ; 5 uses
  %i.ab = add i64 %i.y, 48
  store i64 %i.ab, ptr %i.u, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %1, ptr %i.ac, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i32 %4, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr %6, ptr %.sroa.68.0..sroa_idx, align 8
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull %i.z) #15
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm11AsmJsParser13DeclareGlobalEPNS2_7VarInfoEbPNS1_7AsmTypeENS1_9ValueTypeENS1_12WasmInitExprE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8), (28, 37)) %1, i1 noundef zeroext %2, ptr noundef %3, i32 %4, ptr nofree noundef readonly byval(%"class.v8::internal::wasm::WasmInitExpr") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 2, ptr %i.b, align 8
  store ptr %3, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 @_ZN2v88internal4wasm17WasmModuleBuilder9AddGlobalENS1_9ValueTypeEbNS1_12WasmInitExprE(ptr noundef nonnull align 8 dereferenceable(468) %i.d, i32 %4, i1 noundef zeroext true, ptr noundef nonnull byval(%"class.v8::internal::wasm::WasmInitExpr") align 8 %5) #15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 %i.a, ptr %i.g, align 4
  ret void
}

declare noundef i32 @_ZN2v88internal4wasm17WasmModuleBuilder9AddGlobalENS1_9ValueTypeEbNS1_12WasmInitExprE(ptr noundef nonnull align 8 dereferenceable(468), i32, i1 noundef zeroext, ptr noundef byval(%"class.v8::internal::wasm::WasmInitExpr") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal4wasm11AsmJsParser17DeclareStdlibFuncEPNS2_7VarInfoENS2_7VarKindEPNS1_7AsmTypeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(768) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8), (28, 37)) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %2, ptr %i.a, align 8
  store ptr %3, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 0, ptr %i.c, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i32 @_ZN2v88internal4wasm11AsmJsParser12TempVariableEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(768) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp slt i32 %1, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %1, 1
  store i32 %i.c, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.e = load i32, ptr %i.d, align 8
  %i.f = add nsw i32 %i.e, %1
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZN2v88internal4wasm11AsmJsParser27CopyCurrentIdentifierStringEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i64, ptr %i.d, align 8              ; 6 uses
  %.not.i.i = icmp eq i64 %i.e, -1
  br i1 %.not.i.i, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.117) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %i.e, 7
  %i.g = and i64 %i.f, -8                         ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = sub i64 %i.i, %i.k
  %i.m = icmp ugt i64 %i.g, %i.l
  br i1 %i.m, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayIcA_cEEPT_m.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 noundef %i.g) #15
  %.pre.i.i.i = load i64, ptr %i.j, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIcA_cEEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayIcA_cEEPT_m.exit.i: ; preds = %bb.d, %bb.c
  %i.n = phi i64 [ %.pre.i.i.i, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr                 ; 3 uses
  %i.p = add i64 %i.n, %i.g
  store i64 %i.p, ptr %i.j, align 8
  %i.q = icmp sgt i64 %i.e, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIcA_cEEPT_m.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZN2v88internal4Zone11CloneVectorIKcA_cEENS_4base6VectorINSt12remove_constIT_E4typeEEENS6_IS8_EE.exit

bb.f:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIcA_cEEPT_m.exit.i
  %i.r = icmp eq i64 %i.e, 1
  br i1 %i.r, label %bb.g, label %_ZN2v88internal4Zone11CloneVectorIKcA_cEENS_4base6VectorINSt12remove_constIT_E4typeEEENS6_IS8_EE.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.c, align 1
  store i8 %i.s, ptr %i.o, align 1
  br label %_ZN2v88internal4Zone11CloneVectorIKcA_cEENS_4base6VectorINSt12remove_constIT_E4typeEEENS6_IS8_EE.exit

_ZN2v88internal4Zone11CloneVectorIKcA_cEENS_4base6VectorINSt12remove_constIT_E4typeEEENS6_IS8_EE.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %i.o, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %i.e, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm11AsmJsParser13SkipSemicolonEv(ptr noundef nonnull align 8 dereferenceable(768) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i32 %i.b, 59
  br i1 %i.c, label %_ZN2v88internal4wasm11AsmJsParser5CheckEi.exit.thread, label %_ZN2v88internal4wasm11AsmJsParser5CheckEi.exit

_ZN2v88internal4wasm11AsmJsParser5CheckEi.exit.thread: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2v88internal12AsmJsScanner4NextEv(ptr noundef nonnull align 8 dereferenceable(317) %i.d) #15
  br label %bb.c

_ZN2v88internal4wasm11AsmJsParser5CheckEi.exit:   ; preds = %bb.a
  %i.e = icmp eq i32 %i.b, 125
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.g = load i8, ptr %i.f, align 4, !range !9
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond = select i1 %i.e, i1 true, i1 %i.h
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal4wasm11AsmJsParser5CheckEi.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 548
  store i8 1, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr @.str.1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8
  %i.m = trunc i64 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 %i.m, ptr %i.n, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal4wasm11AsmJsParser5CheckEi.exit.thread, %_ZN2v88internal4wasm11AsmJsParser5CheckEi.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm11AsmJsParser5BeginEi(ptr noundef nonnull align 8 dereferenceable(768) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
end_hunk_0
