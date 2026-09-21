Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64AsmPrinter?download=true
inline.NumInlined: 4963
inline.NumDeleted: 1785
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN12_GLOBAL__N_117AArch64AsmPrinter25LowerPATCHABLE_EVENT_CALLERKN4llvm12MachineInstrEb:bb.a
  %i.ew = load ptr, ptr %i.eo, align 8, !tbaa !25 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.ep
  br i1 %i.ex, label %_ZN4llvm13MCInstBuilderD2Ev.exit144, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm13MCInstBuilder6addImmEl.exit143
  call void @free(ptr noundef %i.ew) #25
  br label %_ZN4llvm13MCInstBuilderD2Ev.exit144

_ZN4llvm13MCInstBuilderD2Ev.exit144:              ; preds = %_ZN4llvm13MCInstBuilder6addImmEl.exit143, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !571
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !54
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i64 16, i1 false)
  store ptr %i.fe, ptr %i.fd, align 8, !tbaa !25
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 6, ptr %i.fg, align 4, !tbaa !64
  store i32 5645, ptr %4, align 8, !tbaa !408
  store i8 1, ptr %i.fe, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i145 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 239, ptr %.sroa.4.0..sroa_idx.i.i.i.i145, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i8 1, ptr %i.fh, align 8
  %.sroa.4.0..sroa_idx.i.i.i3.i146 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 14, ptr %.sroa.4.0..sroa_idx.i.i.i3.i146, align 8
  %.sroa.3.8.insert.ext.i.i5.i147 = zext i32 %i.fb to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i8 1, ptr %i.fi, align 8
  %.sroa.4.0..sroa_idx.i.i.i7.i148 = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 %.sroa.3.8.insert.ext.i.i5.i147, ptr %.sroa.4.0..sroa_idx.i.i.i7.i148, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i8 2, ptr %i.fj, align 8
  %.sroa.4.0..sroa_idx.i.i.i10.i149 = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i10.i149, align 8
  store i32 4, ptr %i.ff, align 8, !tbaa !48
  %.pre15.i150 = load ptr, ptr %i.fc, align 8, !tbaa !20
  %.phi.trans.insert16.i151 = getelementptr inbounds nuw i8, ptr %.pre15.i150, i64 1280
  %.pre17.i152 = load ptr, ptr %.phi.trans.insert16.i151, align 8
  %.val.pre.i154 = load ptr, ptr %i.ei, align 8, !tbaa !358
  call void %.pre17.i152(ptr noundef nonnull align 8 dereferenceable(304) %i.fc, ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(320) %.val.pre.i154) #25, !inline_history !6
  %i.fk = load ptr, ptr %i.fd, align 8, !tbaa !25 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.fe
  br i1 %i.fl, label %_ZN12_GLOBAL__N_117AArch64AsmPrinter11emitMovXRegEN4llvm8RegisterES2_.exit155, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm13MCInstBuilderD2Ev.exit144
  call void @free(ptr noundef %i.fk) #25
  br label %_ZN12_GLOBAL__N_117AArch64AsmPrinter11emitMovXRegEN4llvm8RegisterES2_.exit155

_ZN12_GLOBAL__N_117AArch64AsmPrinter11emitMovXRegEN4llvm8RegisterES2_.exit155: ; preds = %_ZN4llvm13MCInstBuilderD2Ev.exit144, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.fm = load ptr, ptr %i.ey, align 8, !tbaa !571
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 36
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !54
  %i.fp = load ptr, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store ptr %i.fr, ptr %i.fq, align 8, !tbaa !25
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 6, ptr %i.ft, align 4, !tbaa !64
  store i32 5645, ptr %3, align 8, !tbaa !408
  store i8 1, ptr %i.fr, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i156 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 240, ptr %.sroa.4.0..sroa_idx.i.i.i.i156, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i8 1, ptr %i.fu, align 8
  %.sroa.4.0..sroa_idx.i.i.i3.i157 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 14, ptr %.sroa.4.0..sroa_idx.i.i.i3.i157, align 8
  %.sroa.3.8.insert.ext.i.i5.i158 = zext i32 %i.fo to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i8 1, ptr %i.fv, align 8
  %.sroa.4.0..sroa_idx.i.i.i7.i159 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %.sroa.3.8.insert.ext.i.i5.i158, ptr %.sroa.4.0..sroa_idx.i.i.i7.i159, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i8 2, ptr %i.fw, align 8
  %.sroa.4.0..sroa_idx.i.i.i10.i160 = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i10.i160, align 8
  store i32 4, ptr %i.fs, align 8, !tbaa !48
  %.pre15.i161 = load ptr, ptr %i.fp, align 8, !tbaa !20
  %.phi.trans.insert16.i162 = getelementptr inbounds nuw i8, ptr %.pre15.i161, i64 1280
  %.pre17.i163 = load ptr, ptr %.phi.trans.insert16.i162, align 8
  %.val.pre.i165 = load ptr, ptr %i.ei, align 8, !tbaa !358
  call void %.pre17.i163(ptr noundef nonnull align 8 dereferenceable(304) %i.fp, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(320) %.val.pre.i165) #25, !inline_history !6
  %i.fx = load ptr, ptr %i.fq, align 8, !tbaa !25 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.fr
  br i1 %i.fy, label %_ZN4llvm13MCInstBuilder7addExprEPKNS_6MCExprE.exit170, label %bb.o

bb.o:                                             ; preds = %_ZN12_GLOBAL__N_117AArch64AsmPrinter11emitMovXRegEN4llvm8RegisterES2_.exit155
  call void @free(ptr noundef %i.fx) #25
  br label %_ZN4llvm13MCInstBuilder7addExprEPKNS_6MCExprE.exit170

_ZN4llvm13MCInstBuilder7addExprEPKNS_6MCExprE.exit170: ; preds = %_ZN12_GLOBAL__N_117AArch64AsmPrinter11emitMovXRegEN4llvm8RegisterES2_.exit155, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  %i.fz = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %21, i8 0, i64 16, i1 false)
  store ptr %i.ga, ptr %i.fz, align 8, !tbaa !25
  %i.gb = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.gc = getelementptr inbounds nuw i8, ptr %21, i64 28
  store i32 6, ptr %i.gc, align 4, !tbaa !64
  store i32 2137, ptr %21, align 8, !tbaa !408
  %.fca.1.load.cast.i.i167 = ptrtoint ptr %i.x to i64
  store i8 5, ptr %i.ga, align 8
  %.sroa.4.0..sroa_idx.i.i.i169 = getelementptr inbounds nuw i8, ptr %21, i64 40
  store i64 %.fca.1.load.cast.i.i167, ptr %.sroa.4.0..sroa_idx.i.i.i169, align 8
  store i32 1, ptr %i.gb, align 8, !tbaa !48
  %.val34 = load ptr, ptr %i.ei, align 8, !tbaa !358
  %i.gd = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1280
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(304) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %21, ptr noundef nonnull align 8 dereferenceable(320) %.val34) #25, !inline_history !2
  %i.gg = load ptr, ptr %i.fz, align 8, !tbaa !25 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.ga
  br i1 %i.gh, label %_ZN4llvm13MCInstBuilder6addImmEl.exit187, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm13MCInstBuilder7addExprEPKNS_6MCExprE.exit170
  call void @free(ptr noundef %i.gg) #25
  br label %_ZN4llvm13MCInstBuilder6addImmEl.exit187

_ZN4llvm13MCInstBuilder6addImmEl.exit187:         ; preds = %_ZN4llvm13MCInstBuilder7addExprEPKNS_6MCExprE.exit170, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  %i.gi = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.gj = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 1, ptr %i.gj, align 1, !tbaa !53
  store ptr @.str.54, ptr %22, align 8, !tbaa !54
  store i8 3, ptr %i.gi, align 8, !tbaa !52
  %i.gk = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 120
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(304) %i.b, ptr noundef nonnull align 8 dereferenceable(34) %22, i1 noundef zeroext true) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  %i.gn = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %23, i8 0, i64 16, i1 false)
  store ptr %i.go, ptr %i.gn, align 8, !tbaa !25
  %i.gp = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %23, i64 28
  store i32 6, ptr %i.gq, align 4, !tbaa !64
  store i32 5088, ptr %23, align 8, !tbaa !408
  store i8 1, ptr %i.go, align 8
  %.sroa.4.0..sroa_idx.i.i.i174 = getelementptr inbounds nuw i8, ptr %23, i64 40
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i.i174, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %23, i64 48
  store i8 1, ptr %i.gr, align 8
  %.sroa.4.0..sroa_idx.i.i.i177 = getelementptr inbounds nuw i8, ptr %23, i64 56
  store i64 239, ptr %.sroa.4.0..sroa_idx.i.i.i177, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %23, i64 64
  store i8 1, ptr %i.gs, align 8
  %.sroa.4.0..sroa_idx.i.i.i180 = getelementptr inbounds nuw i8, ptr %23, i64 72
  store i64 240, ptr %.sroa.4.0..sroa_idx.i.i.i180, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %23, i64 80
  store i8 1, ptr %i.gt, align 8
  %.sroa.4.0..sroa_idx.i.i.i183 = getelementptr inbounds nuw i8, ptr %23, i64 88
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i.i183, align 8
  store i32 4, ptr %i.gp, align 8, !tbaa !48
  %i.gu = getelementptr inbounds nuw i8, ptr %23, i64 96
  store i8 2, ptr %i.gu, align 8
  %.sroa.4.0..sroa_idx.i.i.i186 = getelementptr inbounds nuw i8, ptr %23, i64 104
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i.i186, align 8
  store i32 5, ptr %i.gp, align 8, !tbaa !48
  %.pre245 = load ptr, ptr %i.b, align 8, !tbaa !20
  %.phi.trans.insert246 = getelementptr inbounds nuw i8, ptr %.pre245, i64 1280
  %.pre247 = load ptr, ptr %.phi.trans.insert246, align 8
  %.val.pre = load ptr, ptr %i.ei, align 8, !tbaa !358
  call void %.pre247(ptr noundef nonnull align 8 dereferenceable(304) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %23, ptr noundef nonnull align 8 dereferenceable(320) %.val.pre) #25, !inline_history !2
  %i.gv = load ptr, ptr %i.gn, align 8, !tbaa !25 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.go
  br i1 %i.gw, label %_ZN4llvm13MCInstBuilderD2Ev.exit188, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm13MCInstBuilder6addImmEl.exit187
  call void @free(ptr noundef %i.gv) #25
  br label %_ZN4llvm13MCInstBuilderD2Ev.exit188

_ZN4llvm13MCInstBuilderD2Ev.exit188:              ; preds = %_ZN4llvm13MCInstBuilder6addImmEl.exit187, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  br label %bb.r

bb.r:                                             ; preds = %_ZN4llvm13MCInstBuilderD2Ev.exit188, %_ZN4llvm13MCInstBuilderD2Ev.exit123
  %.sink279 = phi i8 [ 4, %_ZN4llvm13MCInstBuilderD2Ev.exit188 ], [ 5, %_ZN4llvm13MCInstBuilderD2Ev.exit123 ]
  call void @_ZN4llvm10AsmPrinter10recordSledEPNS_8MCSymbolERKNS_12MachineInstrENS0_8SledKindEh(ptr noundef nonnull align 8 dereferenceable(1073) %0, ptr noundef %i.g, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext %.sink279, i8 noundef zeroext 2) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_117AArch64AsmPrinter15LowerKCFI_CHECKERKN4llvm12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1376) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MCInstBuilder", align 8 ; 17 uses
  %3 = alloca %"class.llvm::MCInstBuilder", align 8 ; 17 uses
  %4 = alloca %"class.llvm::MCInstBuilder", align 8 ; 16 uses
  %.sroa.0 = alloca i32, align 4                  ; 5 uses
  %.sroa.8 = alloca i32, align 4                  ; 5 uses
  %5 = alloca %"class.llvm::MCInstBuilder", align 8 ; 14 uses
  %6 = alloca %"class.llvm::MCInstBuilder", align 8 ; 16 uses
  %7 = alloca %"class.llvm::MCInstBuilder", align 8 ; 10 uses
  %8 = alloca %"class.llvm::MCInstBuilder", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !571
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !54   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  store i32 224, ptr %.sroa.0, align 4
  store i32 225, ptr %.sroa.8, align 4
  %i.e = icmp eq i32 %i.d, 14
  br i1 %i.e, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = tail call fastcc i32 @_ZN4llvmL15getWRegFromXRegENS_10MCRegisterE(i32 %i.d)
  switch i32 %i.f, label %_ZN4llvm13MCInstBuilder6addImmEl.exit [
    i32 224, label %bb.d
    i32 225, label %.fold.split
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc i32 @_ZN4llvmL15getXRegFromWRegENS_10MCRegisterE(i32 224) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i64 16, i1 false)
  store ptr %i.k, ptr %i.j, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 6, ptr %i.m, align 4, !tbaa !64
  store i32 5645, ptr %4, align 8, !tbaa !408
  %.sroa.3.8.insert.ext.i.i.i = zext i32 %i.g to i64
  store i8 1, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %.sroa.3.8.insert.ext.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i8 1, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx.i.i.i3.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 14, ptr %.sroa.4.0..sroa_idx.i.i.i3.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i8 1, ptr %i.o, align 8
  %.sroa.4.0..sroa_idx.i.i.i7.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 14, ptr %.sroa.4.0..sroa_idx.i.i.i7.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i8 2, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx.i.i.i10.i = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i10.i, align 8
  store i32 4, ptr %i.l, align 8, !tbaa !48
  %.pre15.i = load ptr, ptr %i.i, align 8, !tbaa !20
  %.phi.trans.insert16.i = getelementptr inbounds nuw i8, ptr %.pre15.i, i64 1280
  %.pre17.i = load ptr, ptr %.phi.trans.insert16.i, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %.val.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !358
  call void %.pre17.i(ptr noundef nonnull align 8 dereferenceable(304) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(320) %.val.pre.i) #25, !inline_history !6
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !25   ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.k
  br i1 %i.r, label %_ZN12_GLOBAL__N_117AArch64AsmPrinter11emitMovXRegEN4llvm8RegisterES2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.q) #25
  br label %_ZN12_GLOBAL__N_117AArch64AsmPrinter11emitMovXRegEN4llvm8RegisterES2_.exit

_ZN12_GLOBAL__N_117AArch64AsmPrinter11emitMovXRegEN4llvm8RegisterES2_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.f

.fold.split:                                      ; preds = %.preheader
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.fold.split
  %.023.ptr103.lcssa = phi ptr [ %.sroa.0, %.preheader ], [ %.sroa.8, %.fold.split ]
  store i32 217, ptr %.023.ptr103.lcssa, align 4, !tbaa !66
  %.sroa.0.0..sroa.0.0..sroa.0.0.106.pre = load i32, ptr %.sroa.0, align 4, !tbaa !66
  %9 = zext i32 %.sroa.0.0..sroa.0.0..sroa.0.0.106.pre to i64
  br label %_ZN4llvm13MCInstBuilder6addImmEl.exit

_ZN4llvm13MCInstBuilder6addImmEl.exit:            ; preds = %.preheader, %bb.d
  %.sroa.0.0..sroa.0.0.106 = phi i64 [ %9, %bb.d ], [ 224, %.preheader ] ; 2 uses
  %i.s = tail call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #25
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !360, !nonnull !32, !align !46
  %i.u = tail call noundef i64 @_ZNK4llvm8Function29getFnAttributeAsParsedIntegerENS_9StringRefEm(ptr noundef nonnull align 8 dereferenceable(140) %i.t, ptr nonnull @.str.55, i64 25, i64 noundef 0) #25
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !70   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 16, i1 false)
  store ptr %i.y, ptr %i.x, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 6, ptr %i.aa, align 4, !tbaa !64
  store i32 5313, ptr %5, align 8, !tbaa !408
  store i8 1, ptr %i.y, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %.sroa.0.0..sroa.0.0.106, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.sroa.3.8.insert.ext.i.i29 = zext i32 %i.d to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i8 1, ptr %i.ab, align 8
  %.sroa.4.0..sroa_idx.i.i.i31 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %.sroa.3.8.insert.ext.i.i29, ptr %.sroa.4.0..sroa_idx.i.i.i31, align 8
  %i.ac = shl nsw i64 %i.u, 2
  %i.ad = sub nuw nsw i64 -4, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i8 2, ptr %i.ae, align 8
  %.sroa.4.0..sroa_idx.i.i.i34 = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 %i.ad, ptr %.sroa.4.0..sroa_idx.i.i.i34, align 8
  store i32 3, ptr %i.z, align 8, !tbaa !48
  %.pre115 = load ptr, ptr %i.w, align 8, !tbaa !20
  %.phi.trans.insert116 = getelementptr inbounds nuw i8, ptr %.pre115, i64 1280
  %.pre117 = load ptr, ptr %.phi.trans.insert116, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %.val28.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !358
  call void %.pre117(ptr noundef nonnull align 8 dereferenceable(304) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(320) %.val28.pre) #25, !inline_history !2
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !25  ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.y
  br i1 %i.ag, label %_ZN4llvm13MCInstBuilderD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm13MCInstBuilder6addImmEl.exit
  call void @free(ptr noundef %i.af) #25
  br label %_ZN4llvm13MCInstBuilderD2Ev.exit

_ZN4llvm13MCInstBuilderD2Ev.exit:                 ; preds = %_ZN4llvm13MCInstBuilder6addImmEl.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.sroa.8.0..sroa.8.0..sroa.8.4.108.pre = load i32, ptr %.sroa.8, align 4, !tbaa !66
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm13MCInstBuilderD2Ev.exit, %_ZN12_GLOBAL__N_117AArch64AsmPrinter11emitMovXRegEN4llvm8RegisterES2_.exit
  %.sroa.0.0..sroa.0.0.105 = phi i64 [ 224, %_ZN12_GLOBAL__N_117AArch64AsmPrinter11emitMovXRegEN4llvm8RegisterES2_.exit ], [ %.sroa.0.0..sroa.0.0.106, %_ZN4llvm13MCInstBuilderD2Ev.exit ]
  %.sroa.8.0..sroa.8.4. = phi i32 [ 225, %_ZN12_GLOBAL__N_117AArch64AsmPrinter11emitMovXRegEN4llvm8RegisterES2_.exit ], [ %.sroa.8.0..sroa.8.0..sroa.8.4.108.pre, %_ZN4llvm13MCInstBuilderD2Ev.exit ] ; 5 uses
  %.sroa.096.0 = phi i32 [ %i.g, %_ZN12_GLOBAL__N_117AArch64AsmPrinter11emitMovXRegEN4llvm8RegisterES2_.exit ], [ %i.d, %_ZN4llvm13MCInstBuilderD2Ev.exit ] ; 2 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !571
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !54 ; 2 uses
  %i.ak = and i64 %i.aj, 65535
  %i.al = lshr i32 %.sroa.8.0..sroa.8.4., 3       ; 4 uses
  %i.am = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3602), align 2, !tbaa !411
  %i.an = zext i16 %i.am to i32
  %.not.i.i = icmp samesign ult i32 %i.al, %i.an
  br i1 %.not.i.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i: ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  br label %_ZN4llvm13MCInstBuilder6addImmEl.exit13.i

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i: ; preds = %bb.f
  %10 = and i32 %.sroa.8.0..sroa.8.4., 7
  %i.aq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3588), align 4, !tbaa !412
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3584), i64 %i.ar
  %i.at = zext nneg i32 %i.al to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !54
  %11 = zext i8 %i.av to i32
  %12 = shl nuw nsw i32 1, %10
  %13 = and i32 %12, %11
  %.fr.i = freeze i32 %13
  %.not.i = icmp eq i32 %.fr.i, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %spec.select.i = select i1 %.not.i, i32 5534, i32 5535
  br label %_ZN4llvm13MCInstBuilder6addImmEl.exit13.i

_ZN4llvm13MCInstBuilder6addImmEl.exit13.i:        ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i
  %i.ay = phi ptr [ %i.ap, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i ], [ %i.ax, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i ] ; 2 uses
  %i.az = phi i32 [ 5534, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i ], [ %spec.select.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !25
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 6, ptr %i.bd, align 4, !tbaa !64
  store i32 %i.az, ptr %3, align 8, !tbaa !408
  %.sroa.3.8.insert.ext.i.i.i35 = zext i32 %.sroa.8.0..sroa.8.4. to i64 ; 5 uses
  store i8 1, ptr %i.bb, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i36 = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %.sroa.3.8.insert.ext.i.i.i35, ptr %.sroa.4.0..sroa_idx.i.i.i.i36, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i8 1, ptr %i.be, align 8
  %.sroa.4.0..sroa_idx.i.i.i7.i37 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %.sroa.3.8.insert.ext.i.i.i35, ptr %.sroa.4.0..sroa_idx.i.i.i7.i37, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i8 2, ptr %i.bf, align 8
  %.sroa.4.0..sroa_idx.i.i.i10.i38 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %i.ak, ptr %.sroa.4.0..sroa_idx.i.i.i10.i38, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i8 2, ptr %i.bg, align 8
  %.sroa.4.0..sroa_idx.i.i.i12.i = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i12.i, align 8
  store i32 4, ptr %i.bc, align 8, !tbaa !48
  %.pre20.i = load ptr, ptr %i.ay, align 8, !tbaa !20
  %.phi.trans.insert21.i = getelementptr inbounds nuw i8, ptr %.pre20.i, i64 1280
  %.pre22.i = load ptr, ptr %.phi.trans.insert21.i, align 8
  %.phi.trans.insert.i39 = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 5 uses
  %.val.pre.i40 = load ptr, ptr %.phi.trans.insert.i39, align 8, !tbaa !358
  call void %.pre22.i(ptr noundef nonnull align 8 dereferenceable(304) %i.ay, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(320) %.val.pre.i40) #25, !inline_history !8
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !25 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.bb
  br i1 %i.bi, label %_ZN12_GLOBAL__N_117AArch64AsmPrinter8emitMOVKEN4llvm8RegisterEmj.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm13MCInstBuilder6addImmEl.exit13.i
  call void @free(ptr noundef %i.bh) #25
  br label %_ZN12_GLOBAL__N_117AArch64AsmPrinter8emitMOVKEN4llvm8RegisterEmj.exit

_ZN12_GLOBAL__N_117AArch64AsmPrinter8emitMOVKEN4llvm8RegisterEmj.exit: ; preds = %_ZN4llvm13MCInstBuilder6addImmEl.exit13.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.bj = lshr i64 %i.aj, 16
  %i.bk = and i64 %i.bj, 65535
  %i.bl = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3602), align 2, !tbaa !411
  %i.bm = zext i16 %i.bl to i32
  %.not.i.i41 = icmp samesign ult i32 %i.al, %i.bm
  br i1 %.not.i.i41, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i54, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i42

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i42: ; preds = %_ZN12_GLOBAL__N_117AArch64AsmPrinter8emitMOVKEN4llvm8RegisterEmj.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  br label %_ZN4llvm13MCInstBuilder6addImmEl.exit13.i43

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i54: ; preds = %_ZN12_GLOBAL__N_117AArch64AsmPrinter8emitMOVKEN4llvm8RegisterEmj.exit
  %14 = and i32 %.sroa.8.0..sroa.8.4., 7
  %i.bp = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3588), align 4, !tbaa !412
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29AArch64MCRegisterClassStorageE, i64 3584), i64 %i.bq
  %i.bs = zext nneg i32 %i.al to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !54
  %15 = zext i8 %i.bu to i32
  %16 = shl nuw nsw i32 1, %14
  %17 = and i32 %16, %15
  %.fr.i55 = freeze i32 %17
  %.not.i56 = icmp eq i32 %.fr.i55, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %spec.select.i57 = select i1 %.not.i56, i32 5534, i32 5535
  br label %_ZN4llvm13MCInstBuilder6addImmEl.exit13.i43

_ZN4llvm13MCInstBuilder6addImmEl.exit13.i43:      ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i54, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i42
  %i.bx = phi ptr [ %i.bo, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i42 ], [ %i.bw, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i54 ] ; 2 uses
  %i.by = phi i32 [ 5534, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread.i42 ], [ %spec.select.i57, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.i54 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 16, i1 false)
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !25
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 6, ptr %i.cc, align 4, !tbaa !64
  store i32 %i.by, ptr %2, align 8, !tbaa !408
  store i8 1, ptr %i.ca, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i45 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %.sroa.3.8.insert.ext.i.i.i35, ptr %.sroa.4.0..sroa_idx.i.i.i.i45, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i8 1, ptr %i.cd, align 8
  %.sroa.4.0..sroa_idx.i.i.i7.i46 = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 %.sroa.3.8.insert.ext.i.i.i35, ptr %.sroa.4.0..sroa_idx.i.i.i7.i46, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i8 2, ptr %i.ce, align 8
  %.sroa.4.0..sroa_idx.i.i.i10.i47 = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 %i.bk, ptr %.sroa.4.0..sroa_idx.i.i.i10.i47, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i8 2, ptr %i.cf, align 8
  %.sroa.4.0..sroa_idx.i.i.i12.i48 = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 16, ptr %.sroa.4.0..sroa_idx.i.i.i12.i48, align 8
  store i32 4, ptr %i.cb, align 8, !tbaa !48
  %.pre20.i49 = load ptr, ptr %i.bx, align 8, !tbaa !20
  %.phi.trans.insert21.i50 = getelementptr inbounds nuw i8, ptr %.pre20.i49, i64 1280
  %.pre22.i51 = load ptr, ptr %.phi.trans.insert21.i50, align 8
  %.val.pre.i53 = load ptr, ptr %.phi.trans.insert.i39, align 8, !tbaa !358
  call void %.pre22.i51(ptr noundef nonnull align 8 dereferenceable(304) %i.bx, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(320) %.val.pre.i53) #25, !inline_history !8
  %i.cg = load ptr, ptr %i.bz, align 8, !tbaa !25 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.ca
  br i1 %i.ch, label %_ZN4llvm13MCInstBuilder6addImmEl.exit72, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm13MCInstBuilder6addImmEl.exit13.i43
  call void @free(ptr noundef %i.cg) #25
  br label %_ZN4llvm13MCInstBuilder6addImmEl.exit72

_ZN4llvm13MCInstBuilder6addImmEl.exit72:          ; preds = %_ZN4llvm13MCInstBuilder6addImmEl.exit13.i43, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %6, i8 0, i64 16, i1 false)
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !25
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 6, ptr %i.cn, align 4, !tbaa !64
  store i32 7764, ptr %6, align 8, !tbaa !408
  store i8 1, ptr %i.cl, align 8
  %.sroa.4.0..sroa_idx.i.i.i60 = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 12, ptr %.sroa.4.0..sroa_idx.i.i.i60, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i8 1, ptr %i.co, align 8
  %.sroa.4.0..sroa_idx.i.i.i64 = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %.sroa.0.0..sroa.0.0.105, ptr %.sroa.4.0..sroa_idx.i.i.i64, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i8 1, ptr %i.cp, align 8
  %.sroa.4.0..sroa_idx.i.i.i68 = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 %.sroa.3.8.insert.ext.i.i.i35, ptr %.sroa.4.0..sroa_idx.i.i.i68, align 8
  store i32 3, ptr %i.cm, align 8, !tbaa !48
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i8 2, ptr %i.cq, align 8
  %.sroa.4.0..sroa_idx.i.i.i71 = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i71, align 8
  store i32 4, ptr %i.cm, align 8, !tbaa !48
  %.pre119 = load ptr, ptr %i.cj, align 8, !tbaa !20
  %.phi.trans.insert120 = getelementptr inbounds nuw i8, ptr %.pre119, i64 1280
  %.pre121 = load ptr, ptr %.phi.trans.insert120, align 8
  %.val27.pre = load ptr, ptr %.phi.trans.insert.i39, align 8, !tbaa !358
  call void %.pre121(ptr noundef nonnull align 8 dereferenceable(304) %i.cj, ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 8 dereferenceable(320) %.val27.pre) #25, !inline_history !2
  %i.cr = load ptr, ptr %i.ck, align 8, !tbaa !25 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.cl
  br i1 %i.cs, label %_ZN4llvm13MCInstBuilder6addImmEl.exit76, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm13MCInstBuilder6addImmEl.exit72
  call void @free(ptr noundef %i.cr) #25
  br label %_ZN4llvm13MCInstBuilder6addImmEl.exit76

_ZN4llvm13MCInstBuilder6addImmEl.exit76:          ; preds = %_ZN4llvm13MCInstBuilder6addImmEl.exit72, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !196, !nonnull !32, !align !46
  %i.cv = call noundef ptr @_ZN4llvm9MCContext16createTempSymbolEv(ptr noundef nonnull align 8 dereferenceable(2208) %i.cu) #25 ; 2 uses
  %i.cw = load ptr, ptr %i.ci, align 8, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %7, i8 0, i64 16, i1 false)
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !25
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 2 uses
  store i32 6, ptr %i.da, align 4, !tbaa !64
  store i32 2168, ptr %7, align 8, !tbaa !408
  store i8 2, ptr %i.cy, align 8
  %.sroa.4.0..sroa_idx.i.i.i75 = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i75, align 8
  store i32 1, ptr %i.cz, align 8, !tbaa !48
  %i.db = load ptr, ptr %i.ct, align 8, !tbaa !196, !nonnull !32, !align !46
  %i.dc = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %i.cv, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.db, ptr null) #25
  %.fca.1.load.cast.i.i = ptrtoint ptr %i.dc to i64 ; 2 uses
  %i.dd = load i32, ptr %i.cz, align 8, !tbaa !48 ; 2 uses
  %i.de = load i32, ptr %i.da, align 4, !tbaa !64
  %.not.i.i.i77 = icmp ult i32 %i.dd, %i.de
  br i1 %.not.i.i.i77, label %bb.k, label %bb.j, !prof !65

bb.j:                                             ; preds = %_ZN4llvm13MCInstBuilder6addImmEl.exit76
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i8 5, i64 %.fca.1.load.cast.i.i)
  br label %_ZN4llvm13MCInstBuilder7addExprEPKNS_6MCExprE.exit

bb.k:                                             ; preds = %_ZN4llvm13MCInstBuilder6addImmEl.exit76
  %i.df = zext i32 %i.dd to i64
  %i.dg = load ptr, ptr %i.cx, align 8, !tbaa !25
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.df ; 2 uses
  store i8 5, ptr %i.dh, align 1
  %.sroa.4.0..sroa_idx.i.i.i78 = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 %.fca.1.load.cast.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i78, align 1
  %i.di = load i32, ptr %i.cz, align 8, !tbaa !48
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.cz, align 8, !tbaa !48
  br label %_ZN4llvm13MCInstBuilder7addExprEPKNS_6MCExprE.exit

_ZN4llvm13MCInstBuilder7addExprEPKNS_6MCExprE.exit: ; preds = %bb.j, %bb.k
  %.val26 = load ptr, ptr %.phi.trans.insert.i39, align 8, !tbaa !358
  %i.dk = load ptr, ptr %i.cw, align 8, !tbaa !20
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1280
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(304) %i.cw, ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef nonnull align 8 dereferenceable(320) %.val26) #25, !inline_history !2
  %i.dn = load ptr, ptr %i.cx, align 8, !tbaa !25 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.cy
  br i1 %i.do, label %_ZN4llvm13MCInstBuilderD2Ev.exit79, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm13MCInstBuilder7addExprEPKNS_6MCExprE.exit
  call void @free(ptr noundef %i.dn) #25
  br label %_ZN4llvm13MCInstBuilderD2Ev.exit79

_ZN4llvm13MCInstBuilderD2Ev.exit79:               ; preds = %_ZN4llvm13MCInstBuilder7addExprEPKNS_6MCExprE.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  switch i32 %.sroa.096.0, label %bb.m [
    i32 2, label %_ZN4llvm13MCInstBuilder6addImmEl.exit82
    i32 6, label %bb.n
  ]

bb.m:                                             ; preds = %_ZN4llvm13MCInstBuilderD2Ev.exit79
  %i.dp = add i32 %.sroa.096.0, 17
  %i.dq = and i32 %i.dp, 31
  br label %_ZN4llvm13MCInstBuilder6addImmEl.exit82

bb.n:                                             ; preds = %_ZN4llvm13MCInstBuilderD2Ev.exit79
  br label %_ZN4llvm13MCInstBuilder6addImmEl.exit82

_ZN4llvm13MCInstBuilder6addImmEl.exit82:          ; preds = %_ZN4llvm13MCInstBuilderD2Ev.exit79, %bb.n, %bb.m
  %.0 = phi i32 [ %i.dq, %bb.m ], [ 30, %bb.n ], [ 29, %_ZN4llvm13MCInstBuilderD2Ev.exit79 ]
  %i.dr = shl i32 %.sroa.8.0..sroa.8.4., 5
  %i.ds = and i32 %i.dr, 992
  %i.dt = or disjoint i32 %.0, %i.ds
  %i.du = xor i32 %i.dt, 33280
  %i.dv = load ptr, ptr %i.ci, align 8, !tbaa !70 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %8, i8 0, i64 16, i1 false)
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !25
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 6, ptr %i.dz, align 4, !tbaa !64
  store i32 2150, ptr %8, align 8, !tbaa !408
  %i.ea = zext nneg i32 %i.du to i64
  store i8 2, ptr %i.dx, align 8
  %.sroa.4.0..sroa_idx.i.i.i81 = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %i.ea, ptr %.sroa.4.0..sroa_idx.i.i.i81, align 8
  store i32 1, ptr %i.dy, align 8, !tbaa !48
  %.val = load ptr, ptr %.phi.trans.insert.i39, align 8, !tbaa !358
  %i.eb = load ptr, ptr %i.dv, align 8, !tbaa !20
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1280
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(304) %i.dv, ptr noundef nonnull align 8 dereferenceable(128) %8, ptr noundef nonnull align 8 dereferenceable(320) %.val) #25, !inline_history !2
  %i.ee = load ptr, ptr %i.dw, align 8, !tbaa !25 ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.dx
  br i1 %i.ef, label %_ZN4llvm13MCInstBuilderD2Ev.exit83, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm13MCInstBuilder6addImmEl.exit82
  call void @free(ptr noundef %i.ee) #25
  br label %_ZN4llvm13MCInstBuilderD2Ev.exit83

_ZN4llvm13MCInstBuilderD2Ev.exit83:               ; preds = %_ZN4llvm13MCInstBuilder6addImmEl.exit82, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.eg = load ptr, ptr %i.ci, align 8, !tbaa !70 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !20
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 200
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(304) %i.eg, ptr noundef %i.cv, ptr null) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_117AArch64AsmPrinter27LowerHWASAN_CHECK_MEMACCESSERKN4llvm12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1376) %0, ptr nofree readonly captures(none) %.32.val, i32 %.52.val) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [21 x i8], align 16               ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca [21 x i8], align 16               ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca [21 x i8], align 16               ; 4 uses
  %1 = alloca %"class.std::tuple.388", align 8    ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvm::MCInstBuilder", align 8 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.32.val, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !54   ; 3 uses
  %i.i = icmp eq i32 %i.h, 14
  br i1 %i.i, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %.52.val, 958
  br i1 %i.j, label %.thread12, label %bb.c

.thread12:                                        ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.32.val, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !54
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i32 %.52.val, 959                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.32.val, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !54   ; 2 uses
  switch i32 %.52.val, label %bb.d [
    i32 957, label %.thread11
    i32 959, label %.thread11
  ]

.thread11:                                        ; preds = %bb.c, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.32.val, i64 80
  %i.q = load i64, ptr %i.p, align 8, !tbaa !54
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread12, %.thread11
  %i.r = phi i1 [ true, %.thread11 ], [ false, %bb.c ], [ false, %.thread12 ]
  %i.s = phi i8 [ 1, %.thread11 ], [ 0, %bb.c ], [ 0, %.thread12 ]
  %.shrunk = phi i1 [ %i.m, %.thread11 ], [ %i.m, %bb.c ], [ true, %.thread12 ] ; 2 uses
  %.in = phi i64 [ %i.o, %.thread11 ], [ %i.o, %bb.c ], [ %i.l, %.thread12 ] ; 2 uses
  %i.t = phi i64 [ %i.q, %.thread11 ], [ 0, %bb.c ], [ 0, %.thread12 ] ; 3 uses
  %i.u = trunc i64 %.in to i32
  %i.v = zext i1 %.shrunk to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1272
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 %i.t, ptr %1, align 8, !tbaa !1360
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.s, ptr %i.x, align 8, !tbaa !1361
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.u, ptr %i.y, align 4, !tbaa !1362
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.v, ptr %i.z, align 8, !tbaa !1363
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.h, ptr %i.aa, align 4, !tbaa !1364
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapISt5tupleIJjbjbmEEPN4llvm8MCSymbolESt4lessIS1_ESaISt4pairIKS1_S4_EEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !545 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.e, label %bb.af

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !366, !nonnull !32, !align !46
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 980
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !359
  %i.ah = icmp eq i32 %i.ag, 3
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.56, i1 noundef zeroext true) #26
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.ai = add i32 %i.h, -239                      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1365)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25, !noalias !1365
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 21 ; 2 uses
  %i.ak = icmp eq i32 %i.ai, 0
  br i1 %i.ak, label %.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.al = zext i32 %i.ai to i64
  br label %.lr.ph.i

.thread.i:                                        ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  store i8 48, ptr %i.am, align 4, !tbaa !54, !noalias !1365
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.111.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %i.aj, %.lr.ph.i.preheader ]
  %.0810.i = phi i64 [ %i.ar, %.lr.ph.i ], [ %i.al, %.lr.ph.i.preheader ] ; 3 uses
  %i.an = urem i64 %.0810.i, 10
  %i.ao = trunc nuw nsw i64 %i.an to i8
  %i.ap = or disjoint i8 %i.ao, 48
  %i.aq = getelementptr inbounds i8, ptr %.111.i, i64 -1 ; 3 uses
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !54, !noalias !1365
  %i.ar = udiv i64 %.0810.i, 10
  %.not.i = icmp samesign ult i64 %.0810.i, 10
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1347

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.thread.i
  %.1.lcssa.i = phi ptr [ %i.am, %.thread.i ], [ %i.aq, %.lr.ph.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.as, ptr %5, align 8, !tbaa !381, !alias.scope !1365
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.at, align 8, !tbaa !382, !alias.scope !1365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25, !noalias !1365
  %i.au = ptrtoint ptr %i.aj to i64
  %i.av = ptrtoint ptr %.1.lcssa.i to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 4 uses
  store i64 %i.aw, ptr %i.e, align 8, !tbaa !39, !noalias !1365
  %i.ax = icmp ugt i64 %i.aw, 15
  br i1 %i.ax, label %bb.h, label %._crit_edge.i.i.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.ay = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #25 ; 2 uses
  store ptr %i.ay, ptr %5, align 8, !tbaa !247, !alias.scope !1365
  %i.az = load i64, ptr %i.e, align 8, !tbaa !39, !noalias !1365
  store i64 %i.az, ptr %i.as, align 8, !tbaa !54, !alias.scope !1365
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.h, %._crit_edge.i
  %i.ba = phi ptr [ %i.ay, %bb.h ], [ %i.as, %._crit_edge.i ] ; 2 uses
  switch i64 %i.aw, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZN4llvm6utostrB5cxx11Emb.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.bb = load i8, ptr %.1.lcssa.i, align 1, !tbaa !54, !noalias !1365
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !54
  br label %_ZN4llvm6utostrB5cxx11Emb.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr nonnull align 1 %.1.lcssa.i, i64 %i.aw, i1 false)
  br label %_ZN4llvm6utostrB5cxx11Emb.exit

_ZN4llvm6utostrB5cxx11Emb.exit:                   ; preds = %._crit_edge.i.i.i, %bb.i, %bb.j
  %i.bc = load i64, ptr %i.e, align 8, !tbaa !39, !noalias !1365 ; 2 uses
  store i64 %i.bc, ptr %i.at, align 8, !tbaa !382, !alias.scope !1365
  %i.bd = load ptr, ptr %5, align 8, !tbaa !247, !alias.scope !1365
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  store i8 0, ptr %i.be, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25, !noalias !1365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25, !noalias !1365
  call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  %i.bf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.57, i64 noundef 16) #25, !noalias !1366 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.bg, ptr %4, align 8, !tbaa !381, !alias.scope !1366
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !247 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 5 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.k:                                             ; preds = %_ZN4llvm6utostrB5cxx11Emb.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !382 ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bm)
  %i.bn = add nuw nsw i64 %i.bl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.bi, i64 %i.bn, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm6utostrB5cxx11Emb.exit
  store ptr %i.bh, ptr %4, align 8, !tbaa !247, !alias.scope !1366
  %i.bo = load i64, ptr %i.bi, align 8, !tbaa !54
  store i64 %i.bo, ptr %i.bg, align 8, !tbaa !54, !alias.scope !1366
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !382
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bp = phi i64 [ %i.bl, %bb.k ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.bp, ptr %i.br, align 8, !tbaa !382, !alias.scope !1366
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !247
  store i64 0, ptr %i.bq, align 8, !tbaa !382
  store i8 0, ptr %i.bi, align 8, !tbaa !54
  call void @llvm.experimental.noalias.scope.decl(metadata !1367)
end_hunk_0
