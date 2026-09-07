Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMMCInstLower?download=true
inline.NumInlined: 149
inline.NumDeleted: 102
begin_hunk_0_@_ZN4llvm13ARMAsmPrinter12lowerOperandERKNS_14MachineOperandERNS_9MCOperandE:bb.a
  %i.al = extractvalue { i8, i64 } %i.ak, 0
  %i.am = extractvalue { i8, i64 } %i.ak, 1
  store i8 %i.al, ptr %2, align 8, !tbaa !178
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.am, ptr %.sroa.413.0..sroa_idx, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !142
  %i.ap = tail call noundef ptr @_ZNK4llvm10AsmPrinter12GetJTISymbolEjb(ptr noundef nonnull align 8 dereferenceable(1073) %0, i32 noundef %i.ao, i1 noundef zeroext false) #9
  %i.aq = tail call { i8, i64 } @_ZN4llvm13ARMAsmPrinter12GetSymbolRefERKNS_14MachineOperandEPKNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(1272) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ap) ; 2 uses
  %i.ar = extractvalue { i8, i64 } %i.aq, 0
  %i.as = extractvalue { i8, i64 } %i.aq, 1
  store i8 %i.ar, ptr %2, align 8, !tbaa !178
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.as, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !142
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !142
  %i.av = load ptr, ptr %0, align 8, !tbaa !149
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 304
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(1272) %0, i32 noundef %i.au) #9
  %i.az = tail call { i8, i64 } @_ZN4llvm13ARMAsmPrinter12GetSymbolRefERKNS_14MachineOperandEPKNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(1272) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ay) ; 2 uses
  %i.ba = extractvalue { i8, i64 } %i.az, 0
  %i.bb = extractvalue { i8, i64 } %i.az, 1
  store i8 %i.ba, ptr %2, align 8, !tbaa !178
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bb, ptr %.sroa.47.0..sroa_idx, align 8, !tbaa !142
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !142
  %i.be = tail call noundef ptr @_ZNK4llvm10AsmPrinter21GetBlockAddressSymbolEPKNS_12BlockAddressE(ptr noundef nonnull align 8 dereferenceable(1073) %0, ptr noundef %i.bd) #9
  %i.bf = tail call { i8, i64 } @_ZN4llvm13ARMAsmPrinter12GetSymbolRefERKNS_14MachineOperandEPKNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(1272) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.be) ; 2 uses
  %i.bg = extractvalue { i8, i64 } %i.bf, 0
  %i.bh = extractvalue { i8, i64 } %i.bf, 1
  store i8 %i.bg, ptr %2, align 8, !tbaa !178
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bh, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !142
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !142
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.bk) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.bl = call noundef i32 @_ZN4llvm7APFloat7convertERKNS_12fltSemanticsENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEdoubleE, i8 noundef signext 0, ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.bm = call noundef double @_ZNK4llvm7APFloat15convertToDoubleEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #9
  store i8 4, ptr %2, align 8, !tbaa !178
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.bm, ptr %.sroa.41.0..sroa_idx, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %_ZN4llvm5TwineC2EPKc.exit, %bb.k, %bb.l, %bb.m, %bb.n, %bb.a, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.n ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.k ], [ true, %_ZN4llvm5TwineC2EPKc.exit ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZNK4llvm17MachineBasicBlock9getSymbolEv(ptr noundef nonnull align 8 dereferenceable(360)) local_unnamed_addr #2

declare hidden noundef ptr @_ZN4llvm13ARMAsmPrinter14GetARMGVSymbolEPKNS_11GlobalValueEh(ptr noundef nonnull align 8 dereferenceable(1272), ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZNK4llvm10AsmPrinter23GetExternalSymbolSymbolERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(1073), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

declare noundef ptr @_ZNK4llvm10AsmPrinter12GetJTISymbolEjb(ptr noundef nonnull align 8 dereferenceable(1073), i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZNK4llvm10AsmPrinter21GetBlockAddressSymbolEPKNS_12BlockAddressE(ptr noundef nonnull align 8 dereferenceable(1073), ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN4llvm7APFloat7convertERKNS_12fltSemanticsENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29), i8 noundef signext, ptr noundef) local_unnamed_addr #2

declare noundef double @_ZNK4llvm7APFloat15convertToDoubleEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm28LowerARMMachineInstrToMCInstEPKNS_12MachineInstrERNS_6MCInstERNS_13ARMAsmPrinterE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 4)) %1, ptr noundef nonnull align 8 dereferenceable(1272) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.llvm::MCOperand", align 8   ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !179  ; 2 uses
  store i32 %i.b, ptr %1, align 8, !tbaa !174
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !180  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i24, ptr %i.e, align 8              ; 2 uses
  %i.g = zext i24 %i.f to i64
  %.idx38 = shl nuw nsw i64 %i.g, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx38 ; 2 uses
  %.not2739 = icmp eq i24 %i.f, 0                 ; 2 uses
  switch i32 %i.b, label %.thread [
    i32 1005, label %bb.b
    i32 1863, label %bb.b
    i32 892, label %bb.b
    i32 888, label %bb.b
    i32 2074, label %bb.b
    i32 2068, label %bb.b
    i32 1020, label %bb.b
    i32 813, label %bb.b
    i32 817, label %bb.b
    i32 331, label %bb.b
    i32 1921, label %bb.b
    i32 2055, label %bb.b
    i32 454, label %bb.b
    i32 826, label %bb.b
    i32 1875, label %bb.b
    i32 908, label %bb.b
    i32 839, label %bb.b
    i32 1909, label %bb.b
    i32 428, label %bb.b
    i32 1913, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br i1 %.not2739, label %._crit_edge, label %.lr.ph.split.preheader

.thread:                                          ; preds = %bb.a
  br i1 %.not2739, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.thread
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 28
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.us
  %.01728.us = phi ptr [ %i.z, %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.us ], [ %i.d, %.lr.ph.split.us.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store i8 0, ptr %3, align 8, !tbaa !182
  store i64 0, ptr %i.i, align 8, !tbaa !142
  %i.q = call noundef zeroext i1 @_ZN4llvm13ARMAsmPrinter12lowerOperandERKNS_14MachineOperandERNS_9MCOperandE(ptr noundef nonnull align 8 dereferenceable(1272) %2, ptr noundef nonnull align 8 dereferenceable(32) %.01728.us, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.q, label %_ZN4llvm6ARM_AM11getSOImmValEj.exit.thread.us, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.us

_ZN4llvm6ARM_AM11getSOImmValEj.exit.thread.us:    ; preds = %.lr.ph.split.us
  %i.r = load i8, ptr %3, align 8, !tbaa !182     ; 2 uses
  %.sroa.22.0.copyload.us = load i64, ptr %i.i, align 8, !tbaa !142 ; 2 uses
  %i.s = load i32, ptr %i.k, align 8, !tbaa !175  ; 2 uses
  %i.t = load i32, ptr %i.l, align 4, !tbaa !176
  %.not.i.i20.us = icmp ult i32 %i.s, %i.t
  br i1 %.not.i.i20.us, label %bb.d, label %bb.c, !prof !183

bb.c:                                             ; preds = %_ZN4llvm6ARM_AM11getSOImmValEj.exit.thread.us
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 %i.r, i64 %.sroa.22.0.copyload.us)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.us

bb.d:                                             ; preds = %_ZN4llvm6ARM_AM11getSOImmValEj.exit.thread.us
  %i.u = zext i32 %i.s to i64
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !177
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.u ; 2 uses
  store i8 %i.r, ptr %i.w, align 1
  %.sroa.4.0..sroa_idx.i.i.us = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %.sroa.22.0.copyload.us, ptr %.sroa.4.0..sroa_idx.i.i.us, align 1
  %i.x = load i32, ptr %i.k, align 8, !tbaa !175
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.k, align 8, !tbaa !175
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.us

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.us: ; preds = %bb.d, %bb.c, %.lr.ph.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.z = getelementptr inbounds nuw i8, ptr %.01728.us, i64 32 ; 2 uses
  %.not.us = icmp eq ptr %i.z, %i.h
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit, %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit.us, %.thread, %bb.b
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit
  %.01728 = phi ptr [ %i.bb, %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit ], [ %i.d, %.lr.ph.split.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store i8 0, ptr %3, align 8, !tbaa !182
  store i64 0, ptr %i.m, align 8, !tbaa !142
  %i.aa = call noundef zeroext i1 @_ZN4llvm13ARMAsmPrinter12lowerOperandERKNS_14MachineOperandERNS_9MCOperandE(ptr noundef nonnull align 8 dereferenceable(1272) %2, ptr noundef nonnull align 8 dereferenceable(32) %.01728, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.aa, label %bb.e, label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.e:                                             ; preds = %.lr.ph.split
  %i.ab = load i8, ptr %3, align 8, !tbaa !182    ; 3 uses
  %i.ac = icmp eq i8 %i.ab, 2
  %.sroa.22.0.copyload.pre = load i64, ptr %i.m, align 8, !tbaa !142 ; 4 uses
  br i1 %i.ac, label %bb.f, label %_ZN4llvm6ARM_AM11getSOImmValEj.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ad = trunc i64 %.sroa.22.0.copyload.pre to i32 ; 12 uses
  %i.ae = icmp ult i32 %i.ad, 256
  br i1 %i.ae, label %_ZN4llvm6ARM_AM11getSOImmValEj.exit.thread23, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ad, i1 true)
  %i.ag = and i32 %i.af, 30                       ; 3 uses
  %i.ah = tail call noundef i32 @llvm.fshr.i32(i32 %i.ad, i32 %i.ad, i32 %i.ag)
  %i.ai = icmp ult i32 %i.ah, 256
  br i1 %i.ai, label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = and i32 %i.ad, 63
  %.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = and i32 %i.ad, -64
  %i.al = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ak, i1 false)
  %i.am = and i32 %i.al, 62                       ; 2 uses
  %i.an = tail call noundef i32 @llvm.fshr.i32(i32 %i.ad, i32 %i.ad, i32 %i.am)
  %i.ao = icmp ugt i32 %i.an, 255
  br i1 %i.ao, label %bb.j, label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i

_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i:      ; preds = %bb.j, %bb.i, %bb.g
  %.pn.i = phi i32 [ %i.am, %bb.i ], [ %i.ag, %bb.j ], [ %i.ag, %bb.g ] ; 3 uses
  %i.ap = tail call i32 @llvm.fshl.i32(i32 -256, i32 -256, i32 %.pn.i)
  %i.aq = and i32 %i.ap, %i.ad
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %_ZN4llvm6ARM_AM11getSOImmValEj.exit, label %_ZN4llvm6ARM_AM11getSOImmValEj.exit.thread

_ZN4llvm6ARM_AM11getSOImmValEj.exit:              ; preds = %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i
  %i.ar = tail call i32 @llvm.fshr.i32(i32 %i.ad, i32 %i.ad, i32 %.pn.i)
  %.neg.i = mul nuw nsw i32 %.pn.i, 3968
  %4 = and i32 %.neg.i, 3840
  %i.as = or i32 %4, %i.ar                        ; 2 uses
  %.not19 = icmp eq i32 %i.as, -1
  br i1 %.not19, label %_ZN4llvm6ARM_AM11getSOImmValEj.exit.thread, label %_ZN4llvm6ARM_AM11getSOImmValEj.exit.thread23

_ZN4llvm6ARM_AM11getSOImmValEj.exit.thread23:     ; preds = %bb.f, %_ZN4llvm6ARM_AM11getSOImmValEj.exit
  %.1.i26 = phi i32 [ %i.as, %_ZN4llvm6ARM_AM11getSOImmValEj.exit ], [ %i.ad, %bb.f ]
  %i.at = sext i32 %.1.i26 to i64
  br label %_ZN4llvm6ARM_AM11getSOImmValEj.exit.thread

_ZN4llvm6ARM_AM11getSOImmValEj.exit.thread:       ; preds = %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i, %_ZN4llvm6ARM_AM11getSOImmValEj.exit, %_ZN4llvm6ARM_AM11getSOImmValEj.exit.thread23, %bb.e
  %.sroa.22.0.copyload = phi i64 [ %.sroa.22.0.copyload.pre, %_ZN4llvm6ARM_AM17getSOImmValRotateEj.exit.i ], [ %.sroa.22.0.copyload.pre, %_ZN4llvm6ARM_AM11getSOImmValEj.exit ], [ %i.at, %_ZN4llvm6ARM_AM11getSOImmValEj.exit.thread23 ], [ %.sroa.22.0.copyload.pre, %bb.e ] ; 2 uses
  %i.au = load i32, ptr %i.o, align 8, !tbaa !175 ; 2 uses
  %i.av = load i32, ptr %i.p, align 4, !tbaa !176
  %.not.i.i20 = icmp ult i32 %i.au, %i.av
  br i1 %.not.i.i20, label %bb.l, label %bb.k, !prof !183

bb.k:                                             ; preds = %_ZN4llvm6ARM_AM11getSOImmValEj.exit.thread
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 %i.ab, i64 %.sroa.22.0.copyload)
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

bb.l:                                             ; preds = %_ZN4llvm6ARM_AM11getSOImmValEj.exit.thread
  %i.aw = zext i32 %i.au to i64
  %i.ax = load ptr, ptr %i.n, align 8, !tbaa !177
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.aw ; 2 uses
  store i8 %i.ab, ptr %i.ay, align 1
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %.sroa.22.0.copyload, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  %i.az = load i32, ptr %i.o, align 8, !tbaa !175
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.o, align 8, !tbaa !175
  br label %_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit

_ZN4llvm6MCInst10addOperandENS_9MCOperandE.exit:  ; preds = %bb.l, %bb.k, %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %i.bb = getelementptr inbounds nuw i8, ptr %.01728, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.bb, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm13ARMAsmPrinter8EmitSledERKNS_12MachineInstrENS_10AsmPrinter8SledKindE(ptr noundef nonnull align 8 dereferenceable(1272) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::DiagnosticInfoUnsupported", align 8 ; 9 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvm::DiagnosticLocation", align 8 ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::MCInstBuilder", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !231  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !336
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !348, !range !349, !noundef !140
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZN4llvm13MCInstBuilder6addRegENS_10MCRegisterE.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !350, !nonnull !140, !align !141 ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140) %i.j) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.m, align 1, !tbaa !146
  store ptr @.str, ptr %4, align 8, !tbaa !142
  store i8 3, ptr %i.l, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @_ZN4llvm18DiagnosticLocationC1ERKNS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.n) #9
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 25, ptr %i.o, align 8, !tbaa !353
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.p, align 4, !tbaa !354
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.j, ptr %i.q, align 8, !tbaa !355
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !359
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm25DiagnosticInfoUnsupportedE, i64 16), ptr %3, align 8, !tbaa !149
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %4, ptr %i.s, align 8, !tbaa !361
  call void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(13) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.d

_ZN4llvm13MCInstBuilder6addRegENS_10MCRegisterE.exit: ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !362  ; 2 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm10AsmPrinter16getSubtargetInfoEv(ptr noundef nonnull align 8 dereferenceable(1073) %0) #9
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !149
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 608
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(304) %i.u, i8 2, ptr noundef nonnull align 8 dereferenceable(320) %i.v, i32 noundef 0) #9
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !139, !nonnull !140, !align !141
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.ac, align 1, !tbaa !146
  store ptr @.str.1, ptr %6, align 8, !tbaa !142
  store i8 3, ptr %i.ab, align 8, !tbaa !147
  %i.ad = call noundef ptr @_ZN4llvm9MCContext16createTempSymbolERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(2208) %i.aa, ptr noundef nonnull align 8 dereferenceable(34) %6, i1 noundef zeroext true) #9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !362 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !149
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(304) %i.ae, ptr noundef %i.ad, ptr null) #9
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !139, !nonnull !140, !align !141
  %i.aj = call noundef ptr @_ZN4llvm9MCContext16createTempSymbolEv(ptr noundef nonnull align 8 dereferenceable(2208) %i.ai) #9
  %i.ak = load ptr, ptr %i.t, align 8, !tbaa !362
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %7, i8 0, i64 16, i1 false)
  store ptr %i.am, ptr %i.al, align 8, !tbaa !177
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 6, ptr %i.ao, align 4, !tbaa !176
  store i32 853, ptr %7, align 8, !tbaa !174
  store i8 2, ptr %i.am, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 20, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i8 2, ptr %i.ap, align 8
  %.sroa.4.0..sroa_idx.i.i.i12 = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 14, ptr %.sroa.4.0..sroa_idx.i.i.i12, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i8 1, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx.i.i.i15 = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i15, align 8
  store i32 3, ptr %i.an, align 8, !tbaa !175
  call void @_ZN4llvm10AsmPrinter14EmitToStreamerERNS_10MCStreamerERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(1073) %0, ptr noundef nonnull align 8 dereferenceable(304) %i.ak, ptr noundef nonnull align 8 dereferenceable(128) %7) #9
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !177 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.am
  br i1 %i.as, label %_ZN4llvm13MCInstBuilderD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm13MCInstBuilder6addRegENS_10MCRegisterE.exit
  call void @free(ptr noundef %i.ar) #9
  br label %_ZN4llvm13MCInstBuilderD2Ev.exit

_ZN4llvm13MCInstBuilderD2Ev.exit:                 ; preds = %_ZN4llvm13MCInstBuilder6addRegENS_10MCRegisterE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @_ZN4llvm10AsmPrinter8emitNopsEj(ptr noundef nonnull align 8 dereferenceable(1073) %0, i32 noundef 6) #9
  %i.at = load ptr, ptr %i.t, align 8, !tbaa !362 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !149
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 200
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(304) %i.at, ptr noundef %i.aj, ptr null) #9
  call void @_ZN4llvm10AsmPrinter10recordSledEPNS_8MCSymbolERKNS_12MachineInstrENS0_8SledKindEh(ptr noundef nonnull align 8 dereferenceable(1073) %0, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext %2, i8 noundef zeroext 2) #9
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm13MCInstBuilderD2Ev.exit, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4llvm8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #2

declare void @_ZN4llvm11LLVMContext8diagnoseERKNS_14DiagnosticInfoE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(13)) local_unnamed_addr #2

declare void @_ZN4llvm18DiagnosticLocationC1ERKNS_8DebugLocE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(320) ptr @_ZNK4llvm10AsmPrinter16getSubtargetInfoEv(ptr noundef nonnull align 8 dereferenceable(1073)) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm9MCContext16createTempSymbolERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(2208), ptr noundef nonnull align 8 dereferenceable(34), i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN4llvm9MCContext16createTempSymbolEv(ptr noundef nonnull align 8 dereferenceable(2208)) local_unnamed_addr #2

declare void @_ZN4llvm10AsmPrinter14EmitToStreamerERNS_10MCStreamerERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(1073), ptr noundef nonnull align 8 dereferenceable(304), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2

declare void @_ZN4llvm10AsmPrinter8emitNopsEj(ptr noundef nonnull align 8 dereferenceable(1073), i32 noundef) local_unnamed_addr #2

declare void @_ZN4llvm10AsmPrinter10recordSledEPNS_8MCSymbolERKNS_12MachineInstrENS0_8SledKindEh(ptr noundef nonnull align 8 dereferenceable(1073), ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm13ARMAsmPrinter29LowerPATCHABLE_FUNCTION_ENTERERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1272) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm13ARMAsmPrinter8EmitSledERKNS_12MachineInstrENS_10AsmPrinter8SledKindE(ptr noundef nonnull align 8 dereferenceable(1272) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm13ARMAsmPrinter28LowerPATCHABLE_FUNCTION_EXITERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1272) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm13ARMAsmPrinter8EmitSledERKNS_12MachineInstrENS_10AsmPrinter8SledKindE(ptr noundef nonnull align 8 dereferenceable(1272) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm13ARMAsmPrinter24LowerPATCHABLE_TAIL_CALLERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1272) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm13ARMAsmPrinter8EmitSledERKNS_12MachineInstrENS_10AsmPrinter8SledKindE(ptr noundef nonnull align 8 dereferenceable(1272) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i8 noundef zeroext 2)
  ret void
}

declare noundef ptr @_ZN4llvm12MCBinaryExpr6createENS0_6OpcodeEPKNS_6MCExprES4_RNS_9MCContextENS_5SMLocE(i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(2208), ptr) local_unnamed_addr #2

declare void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2
end_hunk_0
