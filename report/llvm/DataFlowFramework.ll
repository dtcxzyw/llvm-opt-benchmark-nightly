Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DataFlowFramework?download=true
inline.NumInlined: 400
inline.NumDeleted: 271
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4mlir13AnalysisState4dumpEv:bb.a
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a) #17
  ret void
}

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4mlir12ProgramPoint5printERN4llvm11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.mlir::OpWithFlags", align 8 ; 5 uses
  %3 = alloca %"class.mlir::OpWithFlags", align 8 ; 5 uses
  %4 = alloca %"class.mlir::OpPrintingFlags", align 8 ; 4 uses
  %5 = alloca %"class.mlir::OpPrintingFlags", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !33     ; 3 uses
  %i.b = icmp eq ptr %i.a, null                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ult i64 %i.m, 12
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str, i64 noundef 12) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.j, ptr noundef nonnull align 1 dereferenceable(12) @.str, i64 12, i1 false)
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store ptr %i.q, ptr %i.i, align 8, !tbaa !45
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.a
  br i1 %i.b, label %_ZNK4mlir12ProgramPoint12isBlockStartEv.exit.thread, label %_ZNK4mlir12ProgramPoint12isBlockStartEv.exit

_ZNK4mlir12ProgramPoint12isBlockStartEv.exit:     ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !49
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.j, label %_ZNK4mlir12ProgramPoint12isBlockStartEv.exit.thread

_ZNK4mlir12ProgramPoint12isBlockStartEv.exit.thread: ; preds = %bb.e, %_ZNK4mlir12ProgramPoint12isBlockStartEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !39
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45   ; 2 uses
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp ult i64 %i.ac, 18
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK4mlir12ProgramPoint12isBlockStartEv.exit.thread
  %i.ae = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.1, i64 noundef 18) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit7

bb.g:                                             ; preds = %_ZNK4mlir12ProgramPoint12isBlockStartEv.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.z, ptr noundef nonnull align 1 dereferenceable(18) @.str.1, i64 18, i1 false)
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 18
  store ptr %i.ag, ptr %i.y, align 8, !tbaa !45
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit7

_ZN4llvm11raw_ostreamlsEPKc.exit7:                ; preds = %bb.f, %bb.g
  %.0.i.i6 = phi ptr [ %i.ae, %bb.f ], [ %1, %bb.g ]
  %i.ah = load ptr, ptr %0, align 8, !tbaa !33
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit7
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !50
  br label %_ZNK4mlir12ProgramPoint9getPrevOpEv.exit

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit7
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !51
  %i.ao = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.an) #17
  br label %_ZNK4mlir12ProgramPoint9getPrevOpEv.exit

_ZNK4mlir12ProgramPoint9getPrevOpEv.exit:         ; preds = %bb.h, %bb.i
  %.0.i = phi ptr [ %i.aj, %bb.h ], [ %i.ao, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZN4mlir15OpPrintingFlagsC1Ev(ptr noundef nonnull align 8 dereferenceable(42) %4) #17
  %i.ap = call noundef nonnull align 8 dereferenceable(42) ptr @_ZN4mlir15OpPrintingFlags11skipRegionsEb(ptr noundef nonnull align 8 dereferenceable(42) %4, i1 noundef zeroext true) #17
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.217.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.ap, i64 48, i1 false)
  store ptr %.0.i, ptr %3, align 8
  %i.aq = call noundef nonnull align 8 dereferenceable(42) ptr @_ZN4mlir15OpPrintingFlags13useLocalScopeEb(ptr noundef nonnull align 8 dereferenceable(42) %.sroa.217.0..sroa_idx, i1 noundef zeroext true) #17 ; 0 uses
  %i.ar = load ptr, ptr %3, align 8, !tbaa !52
  call void @_ZN4mlir9Operation5printERN4llvm11raw_ostreamERKNS_15OpPrintingFlagsE(ptr noundef nonnull align 8 dereferenceable(64) %i.ar, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i6, ptr noundef nonnull align 8 dereferenceable(42) %.sroa.217.0..sroa_idx) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.j:                                             ; preds = %_ZNK4mlir12ProgramPoint12isBlockStartEv.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.at = icmp eq ptr %i.as, %i.s
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !39
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !45 ; 3 uses
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 2 uses
  br i1 %i.at, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp ult i64 %i.ba, 19
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.2, i64 noundef 19) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit11

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.ax, ptr noundef nonnull align 1 dereferenceable(19) @.str.2, i64 19, i1 false)
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !45
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 19
  store ptr %i.be, ptr %i.aw, align 8, !tbaa !45
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit11

_ZN4llvm11raw_ostreamlsEPKc.exit11:               ; preds = %bb.l, %bb.m
  %.0.i.i10 = phi ptr [ %i.bc, %bb.l ], [ %1, %bb.m ]
  %i.bf = load ptr, ptr %0, align 8, !tbaa !33
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !50
  br label %_ZNK4mlir12ProgramPoint9getNextOpEv.exit

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit11
  %i.bi = load ptr, ptr %i.t, align 8, !tbaa !49
  %i.bj = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.bi) #17
  br label %_ZNK4mlir12ProgramPoint9getNextOpEv.exit

_ZNK4mlir12ProgramPoint9getNextOpEv.exit:         ; preds = %bb.n, %bb.o
  %.0.i12 = phi ptr [ %i.bh, %bb.n ], [ %i.bj, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZN4mlir15OpPrintingFlagsC1Ev(ptr noundef nonnull align 8 dereferenceable(42) %5) #17
  %i.bk = call noundef nonnull align 8 dereferenceable(42) ptr @_ZN4mlir15OpPrintingFlags11skipRegionsEb(ptr noundef nonnull align 8 dereferenceable(42) %5, i1 noundef zeroext true) #17
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.bk, i64 48, i1 false)
  store ptr %.0.i12, ptr %2, align 8
  %i.bl = call noundef nonnull align 8 dereferenceable(42) ptr @_ZN4mlir15OpPrintingFlags13useLocalScopeEb(ptr noundef nonnull align 8 dereferenceable(42) %.sroa.2.0..sroa_idx, i1 noundef zeroext true) #17 ; 0 uses
  %i.bm = load ptr, ptr %2, align 8, !tbaa !52
  call void @_ZN4mlir9Operation5printERN4llvm11raw_ostreamERKNS_15OpPrintingFlagsE(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i10, ptr noundef nonnull align 8 dereferenceable(42) %.sroa.2.0..sroa_idx) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.p:                                             ; preds = %bb.j
  %i.bn = icmp ult i64 %i.ba, 26
  br i1 %i.bn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bo = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.3, i64 noundef 26) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.ax, ptr noundef nonnull align 1 dereferenceable(26) @.str.3, i64 26, i1 false)
  %i.bp = load ptr, ptr %i.aw, align 8, !tbaa !45
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 26
  store ptr %i.bq, ptr %i.aw, align 8, !tbaa !45
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.r, %bb.q, %bb.d, %bb.c, %_ZNK4mlir12ProgramPoint9getNextOpEv.exit, %_ZNK4mlir12ProgramPoint9getPrevOpEv.exit
  ret void
}

declare void @_ZN4mlir15OpPrintingFlagsC1Ev(ptr noundef nonnull align 8 dereferenceable(42)) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(42) ptr @_ZN4mlir15OpPrintingFlags11skipRegionsEb(ptr noundef nonnull align 8 dereferenceable(42), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4mlir13LatticeAnchor5printERN4llvm11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.mlir::Value", align 8       ; 5 uses
  %3 = alloca %"class.mlir::OpPrintingFlags", align 8 ; 4 uses
  %.0.copyload.i.i = load i64, ptr %0, align 8    ; 4 uses
  %i.a = icmp ult i64 %.0.copyload.i.i, 8
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45   ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ult i64 %i.h, 12
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str, i64 noundef 12) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.e, ptr noundef nonnull align 1 dereferenceable(12) @.str, i64 12, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store ptr %i.l, ptr %i.d, align 8, !tbaa !45
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.a
  %i.m = and i64 %.0.copyload.i.i, 6              ; 2 uses
  %.not12.a = icmp eq i64 %i.m, 0
  br i1 %.not12.a, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = inttoptr i64 %.0.copyload.i.i to ptr     ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %1) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.r = icmp eq i64 %i.m, 4
  %4 = and i64 %.0.copyload.i.i, -7
  %i.s = inttoptr i64 %4 to ptr                   ; 2 uses
  %.sroa.0.0.i.i.i = select i1 %i.r, ptr %i.s, ptr null ; 2 uses
  store ptr %.sroa.0.0.i.i.i, ptr %2, align 8
  %.not = icmp eq ptr %.sroa.0.0.i.i.i, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN4mlir15OpPrintingFlagsC1Ev(ptr noundef nonnull align 8 dereferenceable(42) %3) #17
  %i.t = call noundef nonnull align 8 dereferenceable(42) ptr @_ZN4mlir15OpPrintingFlags11skipRegionsEb(ptr noundef nonnull align 8 dereferenceable(42) %3, i1 noundef zeroext true) #17
  call void @_ZNK4mlir5Value5printERN4llvm11raw_ostreamERKNS_15OpPrintingFlagsE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(42) %i.t) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  tail call void @_ZNK4mlir12ProgramPoint5printERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.h, %bb.f, %bb.d, %bb.c, %bb.i
  ret void
}

declare void @_ZNK4mlir5Value5printERN4llvm11raw_ostreamERKNS_15OpPrintingFlagsE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(42)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZNK4mlir13LatticeAnchor6getLocEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.mlir::Value", align 8       ; 5 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 2 uses
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 6       ; 2 uses
  %i.b = icmp ne i64 %i.a, 0
  %i.c = and i64 %.sroa.0.0.copyload.i.i, -7      ; 3 uses
  %.not.not14 = icmp eq i64 %i.c, 0
  %.not.not = or i1 %i.b, %.not.not14
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr %i.g(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #17
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.i = icmp eq i64 %i.a, 4
  %i.j = inttoptr i64 %i.c to ptr                 ; 4 uses
  %.sroa.0.0.i.i.i = select i1 %i.i, ptr %i.j, ptr null ; 2 uses
  store ptr %.sroa.0.0.i.i.i, ptr %1, align 8
  %.not = icmp eq ptr %.sroa.0.0.i.i.i, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call ptr @_ZNK4mlir5Value6getLocEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !33   ; 3 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.f, label %_ZNK4mlir12ProgramPoint12isBlockStartEv.exit

_ZNK4mlir12ProgramPoint12isBlockStartEv.exit:     ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  br label %_ZNK4mlir12ProgramPoint9getPrevOpEv.exit

bb.g:                                             ; preds = %_ZNK4mlir12ProgramPoint12isBlockStartEv.exit
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !51
  %i.u = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %i.t) #17
  br label %_ZNK4mlir12ProgramPoint9getPrevOpEv.exit

_ZNK4mlir12ProgramPoint9getPrevOpEv.exit:         ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.s, %bb.f ], [ %i.u, %bb.g ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.v, align 8
  br label %bb.i

bb.h:                                             ; preds = %_ZNK4mlir12ProgramPoint12isBlockStartEv.exit
  %i.w = tail call noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.l) #17
  %i.x = tail call ptr @_ZN4mlir6Region6getLocEv(ptr noundef nonnull align 8 dereferenceable(28) %i.w) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.b, %_ZNK4mlir12ProgramPoint9getPrevOpEv.exit, %bb.h
  %.sroa.0.3 = phi ptr [ %i.h, %bb.b ], [ %i.k, %bb.d ], [ %i.x, %bb.h ], [ %.sroa.0.0.copyload.i, %_ZNK4mlir12ProgramPoint9getPrevOpEv.exit ]
  ret ptr %.sroa.0.3
}

declare ptr @_ZNK4mlir5Value6getLocEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef ptr @_ZNK4mlir5Block9getParentEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #6

declare ptr @_ZN4mlir6Region6getLocEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir14DataFlowSolver16initializeAndRunEPNS_9OperationEN4llvm12function_refIFbRNS_16DataFlowAnalysisEEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) initializes((1, 2)) %0, ptr noundef %1, ptr nofree readonly captures(address_is_null) %2, i64 %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  store i8 1, ptr %i.a, align 1, !tbaa !64
  %i.b = load i8, ptr %0, align 8, !tbaa !93, !range !94, !noundef !95 ; 2 uses
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit, !prof !96

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #17
  %.not.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.5, i64 49), i64 33) #17
  store ptr %i.g, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #17
  br label %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit

_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SymbolTableIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !97
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !99   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr %.sroa.01.0.copyload.i.i.i.i.i) #17, !inline_history !102
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit
  store i8 0, ptr %0, align 8, !tbaa !93
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4mlir9Operation8hasTraitINS_7OpTrait11SymbolTableEEEbv.exit, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !10   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !30   ; 2 uses
  %i.r = zext i32 %i.q to i64
  %.idx = shl nuw nsw i64 %i.r, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx ; 2 uses
  %.not63 = icmp eq i32 %i.q, 0
  br i1 %.not63, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %"_ZZN4mlir14DataFlowSolver16initializeAndRunEPNS_9OperationEN4llvm12function_refIFbRNS_16DataFlowAnalysisEEEEENK3$_2clES6_.exit.thread.us", label %"_ZZN4mlir14DataFlowSolver16initializeAndRunEPNS_9OperationEN4llvm12function_refIFbRNS_16DataFlowAnalysisEEEEENK3$_2clES6_.exit"

"_ZZN4mlir14DataFlowSolver16initializeAndRunEPNS_9OperationEN4llvm12function_refIFbRNS_16DataFlowAnalysisEEEEENK3$_2clES6_.exit.thread.us": ; preds = %.lr.ph, %"_ZZN4mlir14DataFlowSolver16initializeAndRunEPNS_9OperationEN4llvm12function_refIFbRNS_16DataFlowAnalysisEEEEENK3$_2clES6_.exit.thread.us"
  %.sroa.037.064.us = phi ptr [ %i.x, %"_ZZN4mlir14DataFlowSolver16initializeAndRunEPNS_9OperationEN4llvm12function_refIFbRNS_16DataFlowAnalysisEEEEENK3$_2clES6_.exit.thread.us" ], [ %i.o, %.lr.ph ] ; 2 uses
  %i.t = load ptr, ptr %.sroa.037.064.us, align 8, !tbaa !103 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef %1) #17
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.037.064.us, i64 8 ; 2 uses
  %.not.us = icmp eq ptr %i.x, %i.s
  br i1 %.not.us, label %._crit_edge.thread80, label %"_ZZN4mlir14DataFlowSolver16initializeAndRunEPNS_9OperationEN4llvm12function_refIFbRNS_16DataFlowAnalysisEEEEENK3$_2clES6_.exit.thread.us"

._crit_edge:                                      ; preds = %bb.h
  %.pr = load i32, ptr %i.p, align 8, !tbaa !30   ; 2 uses
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !10   ; 2 uses
  %i.z = zext i32 %.pr to i64
  %.idx69 = shl nuw nsw i64 %i.z, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx69
  %.not6165 = icmp eq i32 %.pr, 0
  br i1 %.not6165, label %.preheader, label %"_ZZN4mlir14DataFlowSolver16initializeAndRunEPNS_9OperationEN4llvm12function_refIFbRNS_16DataFlowAnalysisEEEEENK3$_2clES6_.exit29"

._crit_edge.thread80:                             ; preds = %"_ZZN4mlir14DataFlowSolver16initializeAndRunEPNS_9OperationEN4llvm12function_refIFbRNS_16DataFlowAnalysisEEEEENK3$_2clES6_.exit.thread.us"
  %.pr81 = load i32, ptr %i.p, align 8, !tbaa !30 ; 2 uses
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !10  ; 2 uses
  %i.ac = zext i32 %.pr81 to i64
  %.idx6982 = shl nuw nsw i64 %i.ac, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx6982
  %.not616583 = icmp eq i32 %.pr81, 0
  br i1 %.not616583, label %.preheader, label %"_ZZN4mlir14DataFlowSolver16initializeAndRunEPNS_9OperationEN4llvm12function_refIFbRNS_16DataFlowAnalysisEEEEENK3$_2clES6_.exit29.thread.us"

"_ZZN4mlir14DataFlowSolver16initializeAndRunEPNS_9OperationEN4llvm12function_refIFbRNS_16DataFlowAnalysisEEEEENK3$_2clES6_.exit29.thread.us": ; preds = %._crit_edge.thread80, %bb.g
  %.sroa.031.066.us = phi ptr [ %i.ak, %bb.g ], [ %i.ab, %._crit_edge.thread80 ] ; 2 uses
  %i.ae = load ptr, ptr %.sroa.031.066.us, align 8, !tbaa !103 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef %1) #17
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %"_ZN4llvm10scope_exitIZN4mlir14DataFlowSolver16initializeAndRunEPNS1_9OperationENS_12function_refIFbRNS1_16DataFlowAnalysisEEEEE3$_0ED2Ev.exit"

bb.g:                                             ; preds = %"_ZZN4mlir14DataFlowSolver16initializeAndRunEPNS_9OperationEN4llvm12function_refIFbRNS_16DataFlowAnalysisEEEEENK3$_2clES6_.exit29.thread.us"
end_hunk_0
