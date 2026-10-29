Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DebuggerExecutionContextHook?download=true
inline.NumInlined: 1086
inline.NumDeleted: 626
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@mlirDebuggerCursorSelectIRUnitFromContext:bb.a
  %i.bd = icmp eq ptr %i.ba, %i.bc
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit13
  %i.be = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull @.str.3, i64 noundef 1) #10 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit13
  store i8 10, ptr %i.bc, align 1
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !52
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !52
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.n:                                             ; preds = %bb.f
  %i.bh = extractvalue { ptr, i64 } %i.v, 0
  %i.bi = zext nneg i32 %0 to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.bl = load i64, ptr %i.bj, align 8
  store i64 %i.bl, ptr %i.bk, align 8
  %i.bm = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @_ZN4mlir15OpPrintingFlagsC1Ev(ptr noundef nonnull align 8 dereferenceable(42) %1) #10
  %i.bn = call noundef nonnull align 8 dereferenceable(42) ptr @_ZN4mlir15OpPrintingFlags11skipRegionsEb(ptr noundef nonnull align 8 dereferenceable(42) %1, i1 noundef zeroext true) #10
  %i.bo = call noundef nonnull align 8 dereferenceable(42) ptr @_ZN4mlir15OpPrintingFlags13useLocalScopeEb(ptr noundef nonnull align 8 dereferenceable(42) %i.bn, i1 noundef zeroext true) #10
  call void @_ZNK4mlir6IRUnit5printERN4llvm11raw_ostreamENS_15OpPrintingFlagsE(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noundef nonnull byval(%"class.mlir::OpPrintingFlags") align 8 %i.bo) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  %i.bp = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #10 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !51
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !52 ; 2 uses
  %i.bu = icmp eq ptr %i.br, %i.bt
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bp, ptr noundef nonnull @.str.3, i64 noundef 1) #10 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.p:                                             ; preds = %bb.n
  store i8 10, ptr %i.bt, align 1
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !52
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !52
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.l, %bb.m, %bb.o, %bb.p, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @mlirDebuggerCursorSelectParentIRUnit() #0 {
bb.a:
  %0 = alloca %"class.mlir::OpPrintingFlags", align 8 ; 4 uses
  %.b.i = load i1, ptr @_ZGVZL22getGlobalDebuggerStatevE13debuggerState, align 1
  br i1 %.b.i, label %_ZL22getGlobalDebuggerStatev.exit, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_113DebuggerStateC2Ev()
  %i.a = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZN12_GLOBAL__N_113DebuggerStateD2Ev, ptr nonnull @_ZZL22getGlobalDebuggerStatevE13debuggerState, ptr nonnull @__dso_handle) #10 ; 0 uses
  store i1 true, ptr @_ZGVZL22getGlobalDebuggerStatevE13debuggerState, align 1
  br label %_ZL22getGlobalDebuggerStatev.exit

_ZL22getGlobalDebuggerStatev.exit:                ; preds = %bb.a, %bb.b
  %i.b = tail call noundef nonnull align 8 dereferenceable(128) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZL22getGlobalDebuggerStatevE13debuggerState)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 3 uses
  %.0.copyload.i.i.i = load i64, ptr %i.c, align 8 ; 3 uses
  %i.d = icmp ugt i64 %.0.copyload.i.i.i, 7
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZL22getGlobalDebuggerStatev.exit
  %i.e = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #10 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52   ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, 53
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull @.str.4, i64 noundef 53) #10 ; 0 uses
  br label %.critedge25

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %i.i, ptr noundef nonnull align 1 dereferenceable(53) @.str.4, i64 53, i1 false)
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 53
  store ptr %i.p, ptr %i.h, align 8, !tbaa !52
  br label %.critedge25

bb.f:                                             ; preds = %_ZL22getGlobalDebuggerStatev.exit
  %i.q = and i64 %.0.copyload.i.i.i, 6
  %i.r = and i64 %.0.copyload.i.i.i, -7
  %i.s = inttoptr i64 %i.r to ptr                 ; 3 uses
  switch i64 %i.q, label %.unreachabledefault [
    i64 0, label %bb.g
    i64 2, label %bb.h
    i64 4, label %_ZN4llvm11raw_ostreamlsEPKc.exit33
    i64 6, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !77
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = or i64 %i.v, 4
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !85
  %i.z = ptrtoint ptr %i.y to i64
  br label %.critedge

.unreachabledefault:                              ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.aa = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #10 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !52 ; 2 uses
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp ult i64 %i.ah, 36
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull @.str.8, i64 noundef 36) #10 ; 0 uses
  br label %.critedge25

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.ae, ptr noundef nonnull align 1 dereferenceable(36) @.str.8, i64 36, i1 false)
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !52
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  store ptr %i.al, ptr %i.ad, align 8, !tbaa !52
  br label %.critedge25

_ZN4llvm11raw_ostreamlsEPKc.exit33:               ; preds = %bb.f
  %i.am = tail call noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.s) #10
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = or i64 %i.an, 2
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit33, %bb.h, %bb.g
  %.sink = phi i64 [ %i.ao, %_ZN4llvm11raw_ostreamlsEPKc.exit33 ], [ %i.z, %bb.h ], [ %i.w, %bb.g ]
  store i64 %.sink, ptr %i.c, align 8
  %i.ap = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #10
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  call void @_ZN4mlir15OpPrintingFlagsC1Ev(ptr noundef nonnull align 8 dereferenceable(42) %0) #10
  %i.aq = call noundef nonnull align 8 dereferenceable(42) ptr @_ZN4mlir15OpPrintingFlags11skipRegionsEb(ptr noundef nonnull align 8 dereferenceable(42) %0, i1 noundef zeroext true) #10
  %i.ar = call noundef nonnull align 8 dereferenceable(42) ptr @_ZN4mlir15OpPrintingFlags13useLocalScopeEb(ptr noundef nonnull align 8 dereferenceable(42) %i.aq, i1 noundef zeroext true) #10
  call void @_ZNK4mlir6IRUnit5printERN4llvm11raw_ostreamENS_15OpPrintingFlagsE(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull byval(%"class.mlir::OpPrintingFlags") align 8 %i.ar) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  %i.as = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #10 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !52 ; 2 uses
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.ay = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull @.str.3, i64 noundef 1) #10 ; 0 uses
  br label %.critedge25

bb.m:                                             ; preds = %.critedge
  store i8 10, ptr %i.aw, align 1
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !52
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store ptr %i.ba, ptr %i.av, align 8, !tbaa !52
  br label %.critedge25

.critedge25:                                      ; preds = %bb.j, %bb.k, %bb.m, %bb.l, %bb.e, %bb.d
  ret void
}

declare noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @mlirDebuggerCursorSelectChildIRUnit(i32 noundef %0) #0 {
bb.a:
  %1 = alloca %"class.mlir::OpPrintingFlags", align 8 ; 4 uses
  %.b.i = load i1, ptr @_ZGVZL22getGlobalDebuggerStatevE13debuggerState, align 1
  br i1 %.b.i, label %_ZL22getGlobalDebuggerStatev.exit, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_113DebuggerStateC2Ev()
  %i.a = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZN12_GLOBAL__N_113DebuggerStateD2Ev, ptr nonnull @_ZZL22getGlobalDebuggerStatevE13debuggerState, ptr nonnull @__dso_handle) #10 ; 0 uses
  store i1 true, ptr @_ZGVZL22getGlobalDebuggerStatevE13debuggerState, align 1
  br label %_ZL22getGlobalDebuggerStatev.exit

_ZL22getGlobalDebuggerStatev.exit:                ; preds = %bb.a, %bb.b
  %i.b = tail call noundef nonnull align 8 dereferenceable(128) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZL22getGlobalDebuggerStatevE13debuggerState)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 3 uses
  %.0.copyload.i.i.i = load i64, ptr %i.c, align 8 ; 3 uses
  %i.d = icmp ugt i64 %.0.copyload.i.i.i, 7
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZL22getGlobalDebuggerStatev.exit
  %i.e = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #10 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52   ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, 53
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull @.str.4, i64 noundef 53) #10 ; 0 uses
  br label %.critedge55

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %i.i, ptr noundef nonnull align 1 dereferenceable(53) @.str.4, i64 53, i1 false)
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 53
  store ptr %i.p, ptr %i.h, align 8, !tbaa !52
  br label %.critedge55

bb.f:                                             ; preds = %_ZL22getGlobalDebuggerStatev.exit
  %i.q = and i64 %.0.copyload.i.i.i, 6
  %i.r = and i64 %.0.copyload.i.i.i, -7
  %i.s = inttoptr i64 %i.r to ptr                 ; 8 uses
  switch i64 %i.q, label %.unreachabledefault [
    i64 0, label %bb.g
    i64 2, label %.preheader
    i64 4, label %bb.y
    i64 6, label %.critedge
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = icmp slt i32 %0, 0
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.v = load i32, ptr %i.u, align 4              ; 3 uses
  %i.w = and i32 %i.v, 8388607
  %.not51 = icmp samesign ult i32 %0, %i.w
  br i1 %.not51, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.x = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #10 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !52 ; 2 uses
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = icmp ult i64 %i.ae, 22
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull @.str.9, i64 noundef 22) #10
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit59

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.ab, ptr noundef nonnull align 1 dereferenceable(22) @.str.9, i64 22, i1 false)
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 22
  store ptr %i.ai, ptr %i.aa, align 8, !tbaa !52
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit59

_ZN4llvm11raw_ostreamlsEPKc.exit59:               ; preds = %bb.j, %bb.k
  %.0.i.i58 = phi ptr [ %i.ag, %bb.j ], [ %i.x, %bb.k ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = and i32 %i.ak, 8388607
  %i.am = zext nneg i32 %i.al to i64
  %i.an = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i58, i64 noundef %i.am) #10 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !51
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !52 ; 2 uses
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = icmp ult i64 %i.au, 9
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit59
  %i.aw = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull @.str.10, i64 noundef 9) #10
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit59
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ar, ptr noundef nonnull align 1 dereferenceable(9) @.str.10, i64 9, i1 false)
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !52
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 9
  store ptr %i.ay, ptr %i.aq, align 8, !tbaa !52
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62

_ZN4llvm11raw_ostreamlsEPKc.exit62:               ; preds = %bb.l, %bb.m
  %.0.i.i61 = phi ptr [ %i.aw, %bb.l ], [ %i.an, %bb.m ]
  %i.az = sext i32 %0 to i64
  %i.ba = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i61, i64 noundef %i.az) #10 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !51
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !52 ; 2 uses
  %i.bf = icmp eq ptr %i.bc, %i.be
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit62
  %i.bg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noundef nonnull @.str.3, i64 noundef 1) #10 ; 0 uses
  br label %.critedge55

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit62
  store i8 10, ptr %i.be, align 1
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !52
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  store ptr %i.bi, ptr %i.bd, align 8, !tbaa !52
  br label %.critedge55

bb.p:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.bk = lshr i32 %i.v, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.bk, 1
  %i.bl = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = lshr i32 %i.v, 21
  %i.bo = and i32 %i.bn, 2040
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !86
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %i.bt
  %i.bv = zext nneg i32 %0 to i64
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.bu, i64 %i.bv
  %2 = ptrtoint ptr %i.bw to i64
  %3 = or i64 %2, 2
  br label %.critedge53

.preheader:                                       ; preds = %bb.f, %.preheader
  %.pn = phi ptr [ %.sroa.0103.0, %.preheader ], [ %i.s, %bb.f ]
  %.043 = phi i32 [ %i.ca, %.preheader ], [ 0, %bb.f ] ; 3 uses
  %.sroa.0103.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.sroa.0103.0 = load ptr, ptr %.sroa.0103.0.in, align 8, !tbaa !87 ; 3 uses
  %i.bx = icmp ne ptr %.sroa.0103.0, %i.s         ; 2 uses
  %i.by = icmp ne i32 %.043, %0
  %i.bz = select i1 %i.bx, i1 %i.by, i1 false
  %i.ca = add nuw nsw i32 %.043, 1
  br i1 %i.bz, label %.preheader, label %bb.q, !llvm.loop !153

bb.q:                                             ; preds = %.preheader
  br i1 %i.bx, label %_ZN4llvm11raw_ostreamlsEPKc.exit76, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #10 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !51
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 32 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !52 ; 2 uses
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = icmp ult i64 %i.ci, 26
  br i1 %i.cj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ck = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cb, ptr noundef nonnull @.str.11, i64 noundef 26) #10
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit70

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.cf, ptr noundef nonnull align 1 dereferenceable(26) @.str.11, i64 26, i1 false)
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !52
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 26
  store ptr %i.cm, ptr %i.ce, align 8, !tbaa !52
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit70

_ZN4llvm11raw_ostreamlsEPKc.exit70:               ; preds = %bb.s, %bb.t
  %.0.i.i69 = phi ptr [ %i.ck, %bb.s ], [ %i.cb, %bb.t ]
  %i.cn = zext nneg i32 %.043 to i64
  %i.co = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i69, i64 noundef %i.cn) #10 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !51
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 32 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !52 ; 2 uses
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = icmp ult i64 %i.cv, 15
  br i1 %i.cw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit70
  %i.cx = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.co, ptr noundef nonnull @.str.12, i64 noundef 15) #10
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit73

bb.v:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.cs, ptr noundef nonnull align 1 dereferenceable(15) @.str.12, i64 15, i1 false)
  %i.cy = load ptr, ptr %i.cr, align 8, !tbaa !52
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 15
  store ptr %i.cz, ptr %i.cr, align 8, !tbaa !52
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit73

_ZN4llvm11raw_ostreamlsEPKc.exit73:               ; preds = %bb.u, %bb.v
  %.0.i.i72 = phi ptr [ %i.cx, %bb.u ], [ %i.co, %bb.v ]
  %i.da = sext i32 %0 to i64
  %i.db = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i72, i64 noundef %i.da) #10 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !51
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 32 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !52 ; 2 uses
  %i.dg = icmp eq ptr %i.dd, %i.df
  br i1 %i.dg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit73
  %i.dh = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.db, ptr noundef nonnull @.str.3, i64 noundef 1) #10 ; 0 uses
  br label %.critedge55

bb.x:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit73
  store i8 10, ptr %i.df, align 1
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !52
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  store ptr %i.dj, ptr %i.de, align 8, !tbaa !52
  br label %.critedge55

_ZN4llvm11raw_ostreamlsEPKc.exit76:               ; preds = %bb.q
  %i.dk = getelementptr inbounds i8, ptr %.sroa.0103.0, i64 -8
  %4 = ptrtoint ptr %i.dk to i64
  %5 = or i64 %4, 4
  br label %.critedge53

bb.y:                                             ; preds = %bb.f
  %i.dl = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 3 uses
  %.sroa.096.0111 = load ptr, ptr %i.dl, align 8, !tbaa !87 ; 3 uses
  %i.dn = icmp ne ptr %.sroa.096.0111, %i.dm
  %i.do = icmp ne i32 %0, 0
  %i.dp = and i1 %i.dn, %i.do
  br i1 %i.dp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.y, %.lr.ph
  %.sroa.096.0113 = phi ptr [ %.sroa.096.0, %.lr.ph ], [ %.sroa.096.0111, %bb.y ]
  %.0112 = phi i32 [ %i.dr, %.lr.ph ], [ 0, %bb.y ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.096.0113, i64 8
  %i.dr = add nuw nsw i32 %.0112, 1               ; 3 uses
  %.sroa.096.0 = load ptr, ptr %i.dq, align 8, !tbaa !87 ; 3 uses
  %i.ds = icmp ne ptr %.sroa.096.0, %i.dm
  %i.dt = icmp ne i32 %i.dr, %0
  %i.du = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %i.du, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !154

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.dv = zext nneg i32 %i.dr to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.y
  %.0.lcssa = phi i64 [ 0, %bb.y ], [ %i.dv, %._crit_edge.loopexit ]
  %.sroa.096.0.lcssa = phi ptr [ %.sroa.096.0111, %bb.y ], [ %.sroa.096.0, %._crit_edge.loopexit ] ; 2 uses
  %i.dw = icmp eq ptr %.sroa.096.0.lcssa, %i.dm
  br i1 %i.dw, label %bb.z, label %_ZN4llvm11raw_ostreamlsEPKc.exit87.a

bb.z:                                             ; preds = %._crit_edge
  %i.dx = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #10 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !51
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 32 ; 3 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !52 ; 2 uses
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = icmp ult i64 %i.ee, 25
  br i1 %i.ef, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dx, ptr noundef nonnull @.str.13, i64 noundef 25) #10
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit81

bb.ab:                                            ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.eb, ptr noundef nonnull align 1 dereferenceable(25) @.str.13, i64 25, i1 false)
  %i.eh = load ptr, ptr %i.ea, align 8, !tbaa !52
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 25
  store ptr %i.ei, ptr %i.ea, align 8, !tbaa !52
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit81

_ZN4llvm11raw_ostreamlsEPKc.exit81:               ; preds = %bb.aa, %bb.ab
  %.0.i.i80 = phi ptr [ %i.eg, %bb.aa ], [ %i.dx, %bb.ab ]
  %i.ej = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i80, i64 noundef %.0.lcssa) #10 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !51
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 32 ; 3 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !52 ; 2 uses
  %i.eo = ptrtoint ptr %i.el to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = icmp ult i64 %i.eq, 19
  br i1 %i.er, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit81
  %i.es = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ej, ptr noundef nonnull @.str.14, i64 noundef 19) #10
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit84

bb.ad:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit81
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.en, ptr noundef nonnull align 1 dereferenceable(19) @.str.14, i64 19, i1 false)
  %i.et = load ptr, ptr %i.em, align 8, !tbaa !52
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 19
  store ptr %i.eu, ptr %i.em, align 8, !tbaa !52
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit84

_ZN4llvm11raw_ostreamlsEPKc.exit84:               ; preds = %bb.ac, %bb.ad
  %.0.i.i83 = phi ptr [ %i.es, %bb.ac ], [ %i.ej, %bb.ad ]
  %i.ev = sext i32 %0 to i64
  %i.ew = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i83, i64 noundef %i.ev) #10 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !51
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 32 ; 3 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !52 ; 2 uses
  %i.fb = icmp eq ptr %i.ey, %i.fa
  br i1 %i.fb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit84
  %i.fc = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ew, ptr noundef nonnull @.str.3, i64 noundef 1) #10 ; 0 uses
  br label %.critedge55

bb.af:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit84
  store i8 10, ptr %i.fa, align 1
  %i.fd = load ptr, ptr %i.ez, align 8, !tbaa !52
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  store ptr %i.fe, ptr %i.ez, align 8, !tbaa !52
  br label %.critedge55

_ZN4llvm11raw_ostreamlsEPKc.exit87.a:             ; preds = %._crit_edge
  %i.ff = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.096.0.lcssa) #10
  %i.fg = ptrtoint ptr %i.ff to i64
  br label %.critedge53

.unreachabledefault:                              ; preds = %bb.f
  unreachable

.critedge:                                        ; preds = %bb.f
  %i.fh = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #10 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !51
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 32 ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !52 ; 2 uses
  %i.fm = ptrtoint ptr %i.fj to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = icmp ult i64 %i.fo, 36
  br i1 %i.fp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.critedge
  %i.fq = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.fh, ptr noundef nonnull @.str.8, i64 noundef 36) #10 ; 0 uses
  br label %.critedge55

bb.ah:                                            ; preds = %.critedge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.fl, ptr noundef nonnull align 1 dereferenceable(36) @.str.8, i64 36, i1 false)
  %i.fr = load ptr, ptr %i.fk, align 8, !tbaa !52
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 36
  store ptr %i.fs, ptr %i.fk, align 8, !tbaa !52
  br label %.critedge55

.critedge53:                                      ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit87.a, %_ZN4llvm11raw_ostreamlsEPKc.exit76, %bb.p
  %.sink = phi i64 [ %i.fg, %_ZN4llvm11raw_ostreamlsEPKc.exit87.a ], [ %5, %_ZN4llvm11raw_ostreamlsEPKc.exit76 ], [ %3, %bb.p ]
  store i64 %.sink, ptr %i.c, align 8
  %i.ft = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @_ZN4mlir15OpPrintingFlagsC1Ev(ptr noundef nonnull align 8 dereferenceable(42) %1) #10
  %i.fu = call noundef nonnull align 8 dereferenceable(42) ptr @_ZN4mlir15OpPrintingFlags11skipRegionsEb(ptr noundef nonnull align 8 dereferenceable(42) %1, i1 noundef zeroext true) #10
  %i.fv = call noundef nonnull align 8 dereferenceable(42) ptr @_ZN4mlir15OpPrintingFlags13useLocalScopeEb(ptr noundef nonnull align 8 dereferenceable(42) %i.fu, i1 noundef zeroext true) #10
  call void @_ZNK4mlir6IRUnit5printERN4llvm11raw_ostreamENS_15OpPrintingFlagsE(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.ft, ptr noundef nonnull byval(%"class.mlir::OpPrintingFlags") align 8 %i.fv) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  %i.fw = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #10 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !51
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 32 ; 3 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !52 ; 2 uses
  %i.gb = icmp eq ptr %i.fy, %i.ga
  br i1 %i.gb, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.critedge53
  %i.gc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.fw, ptr noundef nonnull @.str.3, i64 noundef 1) #10 ; 0 uses
  br label %.critedge55

bb.aj:                                            ; preds = %.critedge53
  store i8 10, ptr %i.ga, align 1
  %i.gd = load ptr, ptr %i.fz, align 8, !tbaa !52
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  store ptr %i.ge, ptr %i.fz, align 8, !tbaa !52
  br label %.critedge55

.critedge55:                                      ; preds = %bb.ae, %bb.af, %bb.w, %bb.x, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.o, %bb.n, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @mlirDebuggerCursorSelectPreviousIRUnit() #0 {
bb.a:
  %0 = alloca %"class.mlir::OpPrintingFlags", align 8 ; 4 uses
  %.b.i = load i1, ptr @_ZGVZL22getGlobalDebuggerStatevE13debuggerState, align 1
  br i1 %.b.i, label %_ZL22getGlobalDebuggerStatev.exit, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN12_GLOBAL__N_113DebuggerStateC2Ev()
  %i.a = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZN12_GLOBAL__N_113DebuggerStateD2Ev, ptr nonnull @_ZZL22getGlobalDebuggerStatevE13debuggerState, ptr nonnull @__dso_handle) #10 ; 0 uses
  store i1 true, ptr @_ZGVZL22getGlobalDebuggerStatevE13debuggerState, align 1
  br label %_ZL22getGlobalDebuggerStatev.exit

_ZL22getGlobalDebuggerStatev.exit:                ; preds = %bb.a, %bb.b
  %i.b = tail call noundef nonnull align 8 dereferenceable(128) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZL22getGlobalDebuggerStatevE13debuggerState)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 3 uses
  %.0.copyload.i.i.i = load i64, ptr %i.c, align 8 ; 3 uses
  %i.d = icmp ugt i64 %.0.copyload.i.i.i, 7
  br i1 %i.d, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZL22getGlobalDebuggerStatev.exit
  %i.e = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #10 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52   ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, 53
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull @.str.4, i64 noundef 53) #10 ; 0 uses
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %i.i, ptr noundef nonnull align 1 dereferenceable(53) @.str.4, i64 53, i1 false)
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 53
  store ptr %i.p, ptr %i.h, align 8, !tbaa !52
  br label %.critedge

bb.f:                                             ; preds = %_ZL22getGlobalDebuggerStatev.exit
  %i.q = and i64 %.0.copyload.i.i.i, 6
  %i.r = and i64 %.0.copyload.i.i.i, -7
  %i.s = inttoptr i64 %i.r to ptr                 ; 8 uses
  switch i64 %i.q, label %.unreachabledefault [
    i64 0, label %bb.g
    i64 2, label %bb.k
    i64 4, label %bb.v
    i64 6, label %.critedge44
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !77
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !87
  %i.x = icmp eq ptr %i.w, %i.s
  br i1 %i.x, label %bb.h, label %_ZN4llvm11raw_ostreamlsEPKc.exit51

bb.h:                                             ; preds = %bb.g
  %i.y = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #10 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !52 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp ult i64 %i.af, 43
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull @.str.15, i64 noundef 43) #10 ; 0 uses
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.ac, ptr noundef nonnull align 1 dereferenceable(43) @.str.15, i64 43, i1 false)
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !52
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 43
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !52
  br label %.critedge

_ZN4llvm11raw_ostreamlsEPKc.exit51:               ; preds = %bb.g
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !155
  %i.al = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.ak) #10
  %i.am = ptrtoint ptr %i.al to i64
  br label %.critedge46

bb.k:                                             ; preds = %bb.f
  %i.an = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #10 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !51
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !52 ; 2 uses
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = icmp ult i64 %i.au, 11
  br i1 %i.av, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aw = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull @.str.16, i64 noundef 11) #10 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit56

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ar, ptr noundef nonnull align 1 dereferenceable(11) @.str.16, i64 11, i1 false)
  %i.ax = load ptr, ptr %i.aq, align 8, !tbaa !52
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 11
  store ptr %i.ay, ptr %i.aq, align 8, !tbaa !52
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit56

_ZN4llvm11raw_ostreamlsEPKc.exit56:               ; preds = %bb.l, %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !85
  %.not41 = icmp eq ptr %i.ba, null
  br i1 %.not41, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit56
  %i.bb = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #10 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !51
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !52 ; 2 uses
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = icmp ult i64 %i.bi, 43
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bk = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull @.str.17, i64 noundef 43) #10 ; 0 uses
  br label %.critedge

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.bf, ptr noundef nonnull align 1 dereferenceable(43) @.str.17, i64 43, i1 false)
  %i.bl = load ptr, ptr %i.be, align 8, !tbaa !52
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 43
  store ptr %i.bm, ptr %i.be, align 8, !tbaa !52
  br label %.critedge

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit56
  %i.bn = tail call noundef i32 @_ZN4mlir6Region15getRegionNumberEv(ptr noundef nonnull align 8 dereferenceable(28) %i.s) #10
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bp = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #10 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !51
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !52 ; 2 uses
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = icmp ult i64 %i.bw, 44
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bp, ptr noundef nonnull @.str.18, i64 noundef 44) #10 ; 0 uses
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.bt, ptr noundef nonnull align 1 dereferenceable(44) @.str.18, i64 44, i1 false)
  %i.bz = load ptr, ptr %i.bs, align 8, !tbaa !52
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 44
  store ptr %i.ca, ptr %i.bs, align 8, !tbaa !52
  br label %.critedge

bb.u:                                             ; preds = %bb.q
  %i.cb = load ptr, ptr %i.az, align 8, !tbaa !85 ; 3 uses
  %i.cc = tail call noundef i32 @_ZN4mlir6Region15getRegionNumberEv(ptr noundef nonnull align 8 dereferenceable(28) %i.s) #10
  %i.cd = add i32 %i.cc, -1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 44
  %i.cf = load i32, ptr %i.ce, align 4            ; 3 uses
  %i.cg = and i32 %i.cf, 8388607
  %i.ch = icmp ne i32 %i.cg, 0
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cj = lshr i32 %i.cf, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.cj, 1
  %i.ck = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.ck
  %i.cm = lshr i32 %i.cf, 21
  %i.cn = and i32 %i.cm, 2040
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !86
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.cp, i64 %i.cs
  %i.cu = zext i32 %i.cd to i64
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = or i64 %i.cw, 2
end_hunk_0
