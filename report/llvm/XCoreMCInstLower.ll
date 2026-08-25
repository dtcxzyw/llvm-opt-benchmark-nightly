Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/XCoreMCInstLower?download=true
inline.NumInlined: 63
inline.NumDeleted: 47
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon.138 }
%struct.anon.138 = type { ptr, i64 }

$_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8

@_ZN4llvm16XCoreMCInstLowerC1ERNS_10AsmPrinterE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm16XCoreMCInstLowerC2ERNS_10AsmPrinterE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4llvm16XCoreMCInstLowerC2ERNS_10AsmPrinterE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(1073) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4llvm16XCoreMCInstLower10InitializeEPNS_9MCContextE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i8, i64 } @_ZNK4llvm16XCoreMCInstLower18LowerSymbolOperandERKNS_14MachineOperandENS1_18MachineOperandTypeEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  switch i8 %2, label %bb.i [
    i8 4, label %bb.b
    i8 10, label %bb.c
    i8 11, label %bb.d
    i8 9, label %bb.e
    i8 8, label %bb.g
    i8 6, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = tail call noundef ptr @_ZNK4llvm17MachineBasicBlock9getSymbolEv(ptr noundef nonnull align 8 dereferenceable(360) %i.b) #5
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15, !nonnull !16, !align !17
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = tail call noundef ptr @_ZNK4llvm10AsmPrinter9getSymbolEPKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(1073) %i.e, ptr noundef %i.g) #5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14
  %i.k = add i32 %i.j, %3
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15, !nonnull !16, !align !17
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.p = tail call noundef ptr @_ZNK4llvm10AsmPrinter21GetBlockAddressSymbolEPKNS_12BlockAddressE(ptr noundef nonnull align 8 dereferenceable(1073) %i.m, ptr noundef %i.o) #5
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !14
  %i.s = add i32 %i.r, %3
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15, !nonnull !16, !align !17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !14   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.y, align 1, !tbaa !18
  %i.z = load i8, ptr %i.w, align 1, !tbaa !14
  %.not.i = icmp eq i8 %i.z, 0
  br i1 %.not.i, label %_ZN4llvm5TwineC2EPKc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.w, ptr %4, align 8, !tbaa !14
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %bb.e, %bb.f
  %storemerge.i = phi i8 [ 3, %bb.f ], [ 1, %bb.e ]
  store i8 %storemerge.i, ptr %i.x, align 8, !tbaa !21
  %i.aa = call noundef ptr @_ZNK4llvm10AsmPrinter23GetExternalSymbolSymbolERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(1073) %i.u, ptr noundef nonnull align 8 dereferenceable(34) %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !14
  %i.ad = add i32 %i.ac, %3
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !15, !nonnull !16, !align !17
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !14
  %i.ai = tail call noundef ptr @_ZNK4llvm10AsmPrinter12GetJTISymbolEjb(ptr noundef nonnull align 8 dereferenceable(1073) %i.af, i32 noundef %i.ah, i1 noundef zeroext false) #5
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !15, !nonnull !16, !align !17 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !14
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 304
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(1073) %i.ak, i32 noundef %i.am) #5
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !14
  %i.at = add i32 %i.as, %3
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g, %_ZN4llvm5TwineC2EPKc.exit, %bb.d, %bb.c, %bb.b
  %.022 = phi i32 [ %3, %bb.b ], [ %i.k, %bb.c ], [ %i.s, %bb.d ], [ %i.ad, %_ZN4llvm5TwineC2EPKc.exit ], [ %3, %bb.g ], [ %i.at, %bb.h ] ; 2 uses
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.h, %bb.c ], [ %i.p, %bb.d ], [ %i.aa, %_ZN4llvm5TwineC2EPKc.exit ], [ %i.ai, %bb.g ], [ %i.aq, %bb.h ]
  %i.au = load ptr, ptr %0, align 8, !tbaa !11
  %i.av = call noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef %.0, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(2208) %i.au, ptr null) #5 ; 2 uses
  %.not = icmp eq i32 %.022, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = zext i32 %.022 to i64
  %i.ax = load ptr, ptr %0, align 8, !tbaa !11
  %i.ay = call noundef ptr @_ZN4llvm14MCConstantExpr6createElRNS_9MCContextEbj(i64 noundef %i.aw, ptr noundef nonnull align 8 dereferenceable(2208) %i.ax, i1 noundef zeroext false, i32 noundef 0) #5
  %i.az = load ptr, ptr %0, align 8, !tbaa !11
  %i.ba = call noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef 0, ptr noundef %i.av, ptr noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(2208) %i.az, ptr null) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.fca.1.load.cast.i24.pn.in = phi ptr [ %i.ba, %bb.k ], [ %i.av, %bb.j ]
  %.fca.1.load.cast.i24.pn = ptrtoint ptr %.fca.1.load.cast.i24.pn.in to i64
  %.pn = insertvalue { i8, i64 } { i8 5, i64 poison }, i64 %.fca.1.load.cast.i24.pn, 1
  ret { i8, i64 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef ptr @_ZNK4llvm17MachineBasicBlock9getSymbolEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #3

declare noundef ptr @_ZNK4llvm10AsmPrinter9getSymbolEPKNS_11GlobalValueE(ptr noundef nonnull align 8 dereferenceable(1073), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK4llvm10AsmPrinter21GetBlockAddressSymbolEPKNS_12BlockAddressE(ptr noundef nonnull align 8 dereferenceable(1073), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK4llvm10AsmPrinter23GetExternalSymbolSymbolERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(1073), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef ptr @_ZNK4llvm10AsmPrinter12GetJTISymbolEjb(ptr noundef nonnull align 8 dereferenceable(1073), i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm14MCConstantExpr6createElRNS_9MCContextEbj(i64 noundef, ptr noundef nonnull align 8 dereferenceable(2208), i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden { i8, i64 } @_ZNK4llvm16XCoreMCInstLower12LowerOperandERKNS_14MachineOperandEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = trunc i32 %i.a to i8                     ; 2 uses
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 4, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
    i8 8, label %bb.f
    i8 6, label %bb.f
    i8 11, label %bb.f
    i8 12, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !14
  %.sroa.3.8.insert.ext.i = zext i32 %i.e to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  %i.h = zext i32 %2 to i64
  %i.i = add nsw i64 %i.g, %i.h
  br label %bb.g

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.j = tail call { i8, i64 } @_ZNK4llvm16XCoreMCInstLower18LowerSymbolOperandERKNS_14MachineOperandENS1_18MachineOperandTypeEj(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef zeroext %i.b, i32 noundef %2) ; 2 uses
  %i.k = extractvalue { i8, i64 } %i.j, 0
  %i.l = extractvalue { i8, i64 } %i.j, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.c, %bb.f, %bb.e, %bb.d
  %.sroa.010.0 = phi i8 [ %i.k, %bb.f ], [ 1, %bb.d ], [ 2, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ]
  %.sroa.5.0 = phi i64 [ %i.l, %bb.f ], [ %.sroa.3.8.insert.ext.i, %bb.d ], [ %i.i, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { i8, i64 } poison, i8 %.sroa.010.0, 0
  %.fca.1.insert = insertvalue { i8, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i8, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvm16XCoreMCInstLower5LowerEPKNS_12MachineInstrERNS_6MCInstE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 4)) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !24
  store i32 %i.b, ptr %2, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i24, ptr %i.e, align 8              ; 2 uses
  %i.g = zext i24 %i.f to i64
  %.idx = shl nuw nsw i64 %i.g, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not31 = icmp eq i24 %i.f, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 28
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit
  %.032 = phi ptr [ %i.d, %.lr.ph ], [ %i.ac, %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit ] ; 5 uses
  %i.l = load i32, ptr %.032, align 8             ; 2 uses
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  switch i8 %i.m, label %bb.c [
    i8 0, label %bb.d
    i8 1, label %bb.f
    i8 4, label %_ZNK4llvm16XCoreMCInstLower12LowerOperandERKNS_14MachineOperandEj.exit
    i8 10, label %_ZNK4llvm16XCoreMCInstLower12LowerOperandERKNS_14MachineOperandEj.exit
    i8 9, label %_ZNK4llvm16XCoreMCInstLower12LowerOperandERKNS_14MachineOperandEj.exit
    i8 8, label %_ZNK4llvm16XCoreMCInstLower12LowerOperandERKNS_14MachineOperandEj.exit
    i8 6, label %_ZNK4llvm16XCoreMCInstLower12LowerOperandERKNS_14MachineOperandEj.exit
    i8 11, label %_ZNK4llvm16XCoreMCInstLower12LowerOperandERKNS_14MachineOperandEj.exit
    i8 12, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = and i32 %i.l, 33554432
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.e, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.032, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !14
  %.sroa.3.8.insert.ext.i.i = zext i32 %i.p to i64
  br label %_ZNK4llvm16XCoreMCInstLower12LowerOperandERKNS_14MachineOperandEj.exit.thread

bb.f:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.032, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !14
  br label %_ZNK4llvm16XCoreMCInstLower12LowerOperandERKNS_14MachineOperandEj.exit.thread

_ZNK4llvm16XCoreMCInstLower12LowerOperandERKNS_14MachineOperandEj.exit: ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.s = tail call { i8, i64 } @_ZNK4llvm16XCoreMCInstLower18LowerSymbolOperandERKNS_14MachineOperandENS1_18MachineOperandTypeEj(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %.032, i8 noundef zeroext %i.m, i32 noundef 0) ; 2 uses
  %i.t = extractvalue { i8, i64 } %i.s, 0         ; 2 uses
  %i.u = extractvalue { i8, i64 } %i.s, 1
  %.not30 = icmp eq i8 %i.t, 0
  br i1 %.not30, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit, label %_ZNK4llvm16XCoreMCInstLower12LowerOperandERKNS_14MachineOperandEj.exit.thread

_ZNK4llvm16XCoreMCInstLower12LowerOperandERKNS_14MachineOperandEj.exit.thread: ; preds = %bb.f, %bb.e, %_ZNK4llvm16XCoreMCInstLower12LowerOperandERKNS_14MachineOperandEj.exit
  %.sroa.5.0.i23 = phi i64 [ %i.u, %_ZNK4llvm16XCoreMCInstLower12LowerOperandERKNS_14MachineOperandEj.exit ], [ %i.r, %bb.f ], [ %.sroa.3.8.insert.ext.i.i, %bb.e ] ; 2 uses
  %.sroa.010.0.i22 = phi i8 [ %i.t, %_ZNK4llvm16XCoreMCInstLower12LowerOperandERKNS_14MachineOperandEj.exit ], [ 2, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %i.v = load i32, ptr %i.j, align 8, !tbaa !52   ; 2 uses
  %i.w = load i32, ptr %i.k, align 4, !tbaa !53
  %.not.i.i = icmp ult i32 %i.v, %i.w
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !54

bb.g:                                             ; preds = %_ZNK4llvm16XCoreMCInstLower12LowerOperandERKNS_14MachineOperandEj.exit.thread
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 %.sroa.010.0.i22, i64 %.sroa.5.0.i23)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.h:                                             ; preds = %_ZNK4llvm16XCoreMCInstLower12LowerOperandERKNS_14MachineOperandEj.exit.thread
  %i.x = zext i32 %i.v to i64
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.x ; 2 uses
  store i8 %.sroa.010.0.i22, ptr %i.z, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %.sroa.5.0.i23, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.aa = load i32, ptr %i.j, align 8, !tbaa !52
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.j, align 8, !tbaa !52
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit:  ; preds = %bb.b, %bb.d, %bb.h, %bb.g, %_ZNK4llvm16XCoreMCInstLower12LowerOperandERKNS_14MachineOperandEj.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.032, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.h
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare noundef ptr @_ZN4llvm15MCSymbolRefExpr6createEPKNS_8MCSymbolEtRNS_9MCContextENS_5SMLocE(ptr noundef, i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(2208), ptr) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(2208), ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 %1, i64 %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #5
  %i.f = load ptr, ptr %0, align 8, !tbaa !55
  %i.g = load i32, ptr %i.a, align 8, !tbaa !52
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store i8 %1, ptr %i.i, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 1
end_hunk_0
