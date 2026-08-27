Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AVRDisassembler?download=true
inline.NumInlined: 393
inline.NumDeleted: 90
begin_hunk_0_@_ZL21createAVRDisassemblerRKN4llvm6TargetERKNS_15MCSubtargetInfoERNS_9MCContextE:bb.a
; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvm14MCDisassemblerD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115AVRDisassemblerD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm14MCDisassemblerD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #9
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 4) i32 @_ZNK12_GLOBAL__N_115AVRDisassembler14getInstructionERN4llvm6MCInstERmNS1_8ArrayRefIhEEmRNS1_11raw_ostreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2, ptr nofree readonly captures(none) %3, i64 %4, i64 %5, ptr nofree nonnull readnone align 8 captures(none) %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i64 %4, 2
  br i1 %i.a, label %_ZL17readInstruction16N4llvm8ArrayRefIhEEmRmRj.exit.thread, label %bb.b

_ZL17readInstruction16N4llvm8ArrayRefIhEEmRmRj.exit.thread: ; preds = %bb.a
  store i64 0, ptr %2, align 8, !tbaa !20
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  store i64 2, ptr %2, align 8, !tbaa !20
  %i.b = load i16, ptr %3, align 1
  %i.c = zext i16 %i.b to i32                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22, !nonnull !32, !align !33 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20
  %i.h = and i64 %i.g, 36028797018963968
  %.not46 = icmp eq i64 %i.h, 0
  br i1 %.not46, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_117decodeInstructionIjEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE(ptr noundef nonnull @_ZN12_GLOBAL__N_121DecoderTableAVRTiny16E, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(320) %i.e) ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %2, align 8, !tbaa !20
  %.pre47 = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.j = icmp eq i64 %.pre, 2
  %i.k = select i1 %i.j, ptr @_ZN12_GLOBAL__N_114DecoderTable16E, ptr @_ZN12_GLOBAL__N_114DecoderTable32E
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.l = phi ptr [ %.pre47, %._crit_edge ], [ %i.e, %bb.b ]
  %_ZN12_GLOBAL__N_114DecoderTable16E._ZN12_GLOBAL__N_114DecoderTable32E.i = phi ptr [ %i.k, %._crit_edge ], [ @_ZN12_GLOBAL__N_114DecoderTable16E, %bb.b ]
  %i.m = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_117decodeInstructionIjEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE(ptr noundef nonnull %_ZN12_GLOBAL__N_114DecoderTable16E._ZN12_GLOBAL__N_114DecoderTable32E.i, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(320) %i.l) ; 2 uses
  %.not33 = icmp eq i32 %i.m, 0
  br i1 %.not33, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = tail call fastcc noundef i32 @_ZL15decodeLoadStoreRN4llvm6MCInstEjmPKNS_14MCDisassemblerE(ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %i.c) ; 2 uses
  %.not34 = icmp eq i32 %i.n, 0
  br i1 %.not34, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = icmp ult i64 %4, 4
  br i1 %i.o, label %_ZL17readInstruction32N4llvm8ArrayRefIhEEmRmRj.exit.thread, label %bb.g

_ZL17readInstruction32N4llvm8ArrayRefIhEEmRmRj.exit.thread: ; preds = %bb.f
  store i64 0, ptr %2, align 8, !tbaa !20
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 4, ptr %2, align 8, !tbaa !20
  %i.p = load i16, ptr %3, align 1
  %i.q = zext i16 %i.p to i32
  %i.r = shl nuw i32 %i.q, 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !34
  %i.u = zext i8 %i.t to i32
  %i.v = or disjoint i32 %i.r, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !34
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 8
  %i.aa = or disjoint i32 %i.v, %i.z
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !22, !nonnull !32, !align !33
  %i.ac = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_117decodeInstructionIjEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE(ptr noundef nonnull @_ZN12_GLOBAL__N_114DecoderTable32E, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(320) %i.ab)
  br label %bb.h

bb.h:                                             ; preds = %_ZL17readInstruction32N4llvm8ArrayRefIhEEmRmRj.exit.thread, %_ZL17readInstruction16N4llvm8ArrayRefIhEEmRmRj.exit.thread, %bb.g, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %_ZL17readInstruction32N4llvm8ArrayRefIhEEmRmRj.exit.thread ], [ 0, %_ZL17readInstruction16N4llvm8ArrayRefIhEEmRmRj.exit.thread ], [ %i.i, %bb.c ], [ %i.m, %bb.d ], [ %i.n, %bb.e ], [ %i.ac, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm14MCDisassembler20getInstructionBundleERNS_6MCInstERmNS_8ArrayRefIhEEmRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr %3, i64 %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(48) %6) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

declare void @_ZNK4llvm14MCDisassembler13onSymbolStartERNS_12SymbolInfoTyERmNS_8ArrayRefIhEEm() unnamed_addr

declare noundef i64 @_ZNK4llvm14MCDisassembler18suggestBytesToSkipENS_8ArrayRefIhEEm(ptr noundef nonnull align 8 dereferenceable(40), ptr, i64, i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14MCDisassembler13setABIVersionEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm14MCDisassembler23emitTargetIDIfSupportedERNS_11raw_ostreamEj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 4) i32 @_ZN12_GLOBAL__N_117decodeInstructionIjEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.128", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i32 0, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 8, ptr %i.d, align 4, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.backedge, %bb.a
  %.019 = phi ptr [ %0, %bb.a ], [ %.019.be, %_ZN4llvm11raw_ostreamlsEc.exit.backedge ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.019, i64 1 ; 17 uses
  %i.f = load i8, ptr %.019, align 1, !tbaa !34   ; 2 uses
  switch i8 %i.f, label %bb.b [
    i8 1, label %.preheader75
    i8 2, label %.preheader76
    i8 3, label %.preheader77
    i8 4, label %.preheader78
    i8 5, label %.preheader
  ]

bb.b:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.g = ptrtoint ptr %.019 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #9
  %i.k = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 noundef %i.i) #9 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43   ; 2 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ult i64 %i.r, 34
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull @.str, i64 noundef 34) #9
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.o, ptr noundef nonnull align 1 dereferenceable(34) @.str, i64 34, i1 false)
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 34
  store ptr %i.v, ptr %i.n, align 8, !tbaa !43
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.d ]
  %i.w = zext i8 %i.f to i64
  %i.x = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %i.w) #9 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !39
  %.not.i = icmp ult ptr %i.z, %i.ab
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ac = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.x, i8 noundef zeroext 10) #9 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !43
  store i8 10, ptr %i.z, align 1, !tbaa !34
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread

.preheader75:                                     ; preds = %_ZN4llvm11raw_ostreamlsEc.exit, %bb.h
  %.031.i.i.i = phi ptr [ %i.am, %bb.h ], [ %i.e, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 3 uses
  %.029.i.i.i = phi i64 [ %.130.i.i.i, %bb.h ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit ]
  %.028.i.i.i = phi i32 [ %6, %bb.h ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 5 uses
  %i.ae = load i8, ptr %.031.i.i.i, align 1, !tbaa !34 ; 2 uses
  %i.af = and i8 %i.ae, 127                       ; 3 uses
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = icmp ugt i32 %.028.i.i.i, 62
  br i1 %i.ah, label %bb.g, label %bb.h, !prof !44

bb.g:                                             ; preds = %.preheader75
  %.not44.i.i.i = icmp eq i32 %.028.i.i.i, 63
  %.not.i.i.i = icmp samesign ugt i8 %i.af, 1
  %i.ai = icmp ne i8 %i.af, 0
  %or.cond43.i.i.i = select i1 %.not44.i.i.i, i1 %.not.i.i.i, i1 %i.ai
  br i1 %or.cond43.i.i.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader75
  %i.aj = icmp ult i32 %.028.i.i.i, 64
  %5 = zext nneg i32 %.028.i.i.i to i64
  %i.ak = shl i64 %i.ag, %5
  %i.al = select i1 %i.aj, i64 %i.ak, i64 0, !prof !45
  %.130.i.i.i = add i64 %i.al, %.029.i.i.i        ; 2 uses
  %6 = add i32 %.028.i.i.i, 7
  %i.am = getelementptr inbounds nuw i8, ptr %.031.i.i.i, i64 1 ; 2 uses
  %i.an = icmp slt i8 %i.ae, 0
  br i1 %i.an, label %.preheader75, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit, !llvm.loop !46

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit:    ; preds = %bb.g, %bb.h
  %.132.i.i.i = phi ptr [ %i.am, %bb.h ], [ %.031.i.i.i, %bb.g ]
  %.3.i.i.i = phi i64 [ %.130.i.i.i, %bb.h ], [ 0, %bb.g ]
  %i.ao = ptrtoint ptr %.132.i.i.i to i64
  %i.ap = ptrtoint ptr %i.e to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ar ; 3 uses
  %i.at = and i64 %.3.i.i.i, 4294967295
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.c, align 8, !tbaa !37  ; 2 uses
  %i.aw = load i32, ptr %i.d, align 4, !tbaa !38
  %.not.i55 = icmp ult i32 %i.av, %i.aw
  br i1 %.not.i55, label %bb.j, label %bb.i, !prof !45

bb.i:                                             ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKhLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.au)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.backedge

bb.j:                                             ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit
  %i.ax = zext i32 %i.av to i64
  %i.ay = load ptr, ptr %4, align 8, !tbaa !35
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ax
  store ptr %i.au, ptr %i.az, align 1
  %i.ba = load i32, ptr %i.c, align 8, !tbaa !37
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.c, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEc.exit.backedge

.preheader76:                                     ; preds = %_ZN4llvm11raw_ostreamlsEc.exit, %bb.l
  %.031.i.i.i57 = phi ptr [ %i.bk, %bb.l ], [ %i.e, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 3 uses
  %.029.i.i.i58 = phi i64 [ %.130.i.i.i60, %bb.l ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit ]
  %.028.i.i.i59 = phi i32 [ %8, %bb.l ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 5 uses
  %i.bc = load i8, ptr %.031.i.i.i57, align 1, !tbaa !34 ; 2 uses
  %i.bd = and i8 %i.bc, 127                       ; 3 uses
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = icmp ugt i32 %.028.i.i.i59, 62
  br i1 %i.bf, label %bb.k, label %bb.l, !prof !44

bb.k:                                             ; preds = %.preheader76
  %.not44.i.i.i63 = icmp eq i32 %.028.i.i.i59, 63
  %.not.i.i.i64 = icmp samesign ugt i8 %i.bd, 1
  %i.bg = icmp ne i8 %i.bd, 0
  %or.cond43.i.i.i65 = select i1 %.not44.i.i.i63, i1 %.not.i.i.i64, i1 %i.bg
  br i1 %or.cond43.i.i.i65, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit66, label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader76
  %i.bh = icmp ult i32 %.028.i.i.i59, 64
  %7 = zext nneg i32 %.028.i.i.i59 to i64
  %i.bi = shl i64 %i.be, %7
  %i.bj = select i1 %i.bh, i64 %i.bi, i64 0, !prof !45
  %.130.i.i.i60 = add i64 %i.bj, %.029.i.i.i58    ; 2 uses
  %8 = add i32 %.028.i.i.i59, 7
  %i.bk = getelementptr inbounds nuw i8, ptr %.031.i.i.i57, i64 1 ; 2 uses
  %i.bl = icmp slt i8 %i.bc, 0
  br i1 %i.bl, label %.preheader76, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit66, !llvm.loop !46

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit66:  ; preds = %bb.k, %bb.l
  %.132.i.i.i61 = phi ptr [ %i.bk, %bb.l ], [ %.031.i.i.i57, %bb.k ]
  %.3.i.i.i62 = phi i64 [ %.130.i.i.i60, %bb.l ], [ 0, %bb.k ]
  %i.bm = ptrtoint ptr %.132.i.i.i61 to i64
  %i.bn = ptrtoint ptr %i.e to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = and i64 %i.bo, 4294967295
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bp ; 2 uses
  %i.br = trunc i64 %.3.i.i.i62 to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bt = load i8, ptr %i.bq, align 1, !tbaa !34  ; 2 uses
  %i.bu = zext i8 %i.bt to i32
  %i.bv = icmp eq i8 %i.bt, 0
  %i.bw = sub nsw i32 32, %i.bu
  %i.bx = lshr i32 -1, %i.bw
  %.0.i.i67 = select i1 %i.bv, i32 0, i32 %i.bx
  %i.by = lshr i32 %2, %i.br
  %i.bz = and i32 %.0.i.i67, %i.by
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.u, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit66
  %.1 = phi ptr [ %i.bs, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit66 ], [ %i.dn, %bb.u ] ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %.031.i.i.i69 = phi ptr [ %.1, %bb.m ], [ %i.cj, %bb.p ] ; 3 uses
  %.029.i.i.i70 = phi i64 [ 0, %bb.m ], [ %.130.i.i.i72, %bb.p ]
  %.028.i.i.i71 = phi i32 [ 0, %bb.m ], [ %10, %bb.p ] ; 5 uses
  %i.cb = load i8, ptr %.031.i.i.i69, align 1, !tbaa !34 ; 2 uses
  %i.cc = and i8 %i.cb, 127                       ; 3 uses
  %i.cd = zext nneg i8 %i.cc to i64
  %i.ce = icmp ugt i32 %.028.i.i.i71, 62
  br i1 %i.ce, label %bb.o, label %bb.p, !prof !44

bb.o:                                             ; preds = %bb.n
  %.not44.i.i.i75 = icmp eq i32 %.028.i.i.i71, 63
  %.not.i.i.i76 = icmp samesign ugt i8 %i.cc, 1
  %i.cf = icmp ne i8 %i.cc, 0
  %or.cond43.i.i.i77 = select i1 %.not44.i.i.i75, i1 %.not.i.i.i76, i1 %i.cf
  br i1 %or.cond43.i.i.i77, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit78, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cg = icmp ult i32 %.028.i.i.i71, 64
  %9 = zext nneg i32 %.028.i.i.i71 to i64
  %i.ch = shl i64 %i.cd, %9
  %i.ci = select i1 %i.cg, i64 %i.ch, i64 0, !prof !45
  %.130.i.i.i72 = add i64 %i.ci, %.029.i.i.i70    ; 2 uses
  %10 = add i32 %.028.i.i.i71, 7
  %i.cj = getelementptr inbounds nuw i8, ptr %.031.i.i.i69, i64 1 ; 2 uses
  %i.ck = icmp slt i8 %i.cb, 0
  br i1 %i.ck, label %bb.n, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit78, !llvm.loop !46

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit78:  ; preds = %bb.o, %bb.p
  %.132.i.i.i73 = phi ptr [ %i.cj, %bb.p ], [ %.031.i.i.i69, %bb.o ]
  %.3.i.i.i74 = phi i64 [ %.130.i.i.i72, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.cl = ptrtoint ptr %.132.i.i.i73 to i64
  %i.cm = ptrtoint ptr %.1 to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = and i64 %i.cn, 4294967295
  %i.cp = getelementptr inbounds nuw i8, ptr %.1, i64 %i.co ; 5 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.t
  %11 = add i32 %.028.i.i.i8227, 7
  br label %bb.r, !llvm.loop !46

bb.r:                                             ; preds = %bb.q, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit78
  %.028.i.i.i8227 = phi i32 [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit78 ], [ %11, %bb.q ] ; 5 uses
  %.029.i.i.i8126 = phi i64 [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit78 ], [ %.130.i.i.i83, %bb.q ]
  %.031.i.i.i8025 = phi ptr [ %i.cp, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit78 ], [ %i.cy, %bb.q ] ; 3 uses
  %i.cq = load i8, ptr %.031.i.i.i8025, align 1, !tbaa !34 ; 2 uses
  %i.cr = and i8 %i.cq, 127                       ; 3 uses
  %i.cs = zext nneg i8 %i.cr to i64
  %i.ct = icmp ugt i32 %.028.i.i.i8227, 62
  br i1 %i.ct, label %bb.s, label %bb.t, !prof !44

bb.s:                                             ; preds = %bb.r
  %.not44.i.i.i86 = icmp eq i32 %.028.i.i.i8227, 63
  %.not.i.i.i87 = icmp samesign ugt i8 %i.cr, 1
  %i.cu = icmp ne i8 %i.cr, 0
  %or.cond43.i.i.i88 = select i1 %.not44.i.i.i86, i1 %.not.i.i.i87, i1 %i.cu
  br i1 %or.cond43.i.i.i88, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89.thread.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cv = icmp ult i32 %.028.i.i.i8227, 64
  %12 = zext nneg i32 %.028.i.i.i8227 to i64
  %i.cw = shl i64 %i.cs, %12
  %i.cx = select i1 %i.cv, i64 %i.cw, i64 0, !prof !45
  %.130.i.i.i83 = add i64 %i.cx, %.029.i.i.i8126  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.031.i.i.i8025, i64 1 ; 2 uses
  %i.cz = icmp slt i8 %i.cq, 0
  br i1 %i.cz, label %bb.q, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89, !llvm.loop !46

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89.thread.loopexit: ; preds = %bb.s
  %i.da = ptrtoint ptr %.031.i.i.i8025 to i64
  %i.db = ptrtoint ptr %i.cp to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = and i64 %i.dc, 4294967295
  %i.de = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dd
  br label %.loopexit

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89:  ; preds = %bb.t
  %i.df = ptrtoint ptr %i.cy to i64
  %i.dg = ptrtoint ptr %i.cp to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = and i64 %i.dh, 4294967295
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.di ; 2 uses
  %i.dk = icmp ne i64 %.3.i.i.i74, %i.ca
  %i.dl = and i64 %.130.i.i.i83, 4294967295       ; 2 uses
  %i.dm = icmp ne i64 %i.dl, 0
  %or.cond = and i1 %i.dk, %i.dm
  br i1 %or.cond, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dl
  br label %bb.m, !llvm.loop !48

.loopexit:                                        ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89.thread.loopexit
  %i.do = phi ptr [ %i.de, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89.thread.loopexit ], [ %i.dj, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89 ]
  %.not = icmp eq i64 %.3.i.i.i74, %i.ca
  br i1 %.not, label %_ZN4llvm11raw_ostreamlsEc.exit.backedge, label %.thread

.preheader77:                                     ; preds = %_ZN4llvm11raw_ostreamlsEc.exit, %bb.w
  %.031.i.i.i91 = phi ptr [ %i.dx, %bb.w ], [ %i.e, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 3 uses
  %.029.i.i.i92 = phi i64 [ %.130.i.i.i94, %bb.w ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit ]
  %.028.i.i.i93 = phi i32 [ %14, %bb.w ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 5 uses
  %i.dp = load i8, ptr %.031.i.i.i91, align 1, !tbaa !34 ; 2 uses
  %i.dq = and i8 %i.dp, 127                       ; 3 uses
  %i.dr = zext nneg i8 %i.dq to i64
  %i.ds = icmp ugt i32 %.028.i.i.i93, 62
  br i1 %i.ds, label %bb.v, label %bb.w, !prof !44

bb.v:                                             ; preds = %.preheader77
  %.not44.i.i.i97 = icmp eq i32 %.028.i.i.i93, 63
  %.not.i.i.i98 = icmp samesign ugt i8 %i.dq, 1
  %i.dt = icmp ne i8 %i.dq, 0
  %or.cond43.i.i.i99 = select i1 %.not44.i.i.i97, i1 %.not.i.i.i98, i1 %i.dt
  br i1 %or.cond43.i.i.i99, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit100, label %bb.w

bb.w:                                             ; preds = %bb.v, %.preheader77
  %i.du = icmp ult i32 %.028.i.i.i93, 64
  %13 = zext nneg i32 %.028.i.i.i93 to i64
  %i.dv = shl i64 %i.dr, %13
  %i.dw = select i1 %i.du, i64 %i.dv, i64 0, !prof !45
  %.130.i.i.i94 = add i64 %i.dw, %.029.i.i.i92    ; 2 uses
  %14 = add i32 %.028.i.i.i93, 7
  %i.dx = getelementptr inbounds nuw i8, ptr %.031.i.i.i91, i64 1 ; 2 uses
  %i.dy = icmp slt i8 %i.dp, 0
  br i1 %i.dy, label %.preheader77, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit100, !llvm.loop !46

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit100: ; preds = %bb.v, %bb.w
  %.132.i.i.i95 = phi ptr [ %i.dx, %bb.w ], [ %.031.i.i.i91, %bb.v ]
  %.3.i.i.i96 = phi i64 [ %.130.i.i.i94, %bb.w ], [ 0, %bb.v ]
  %i.dz = ptrtoint ptr %.132.i.i.i95 to i64
  %i.ea = ptrtoint ptr %i.e to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = and i64 %i.eb, 4294967295
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ec ; 2 uses
  %i.ee = trunc i64 %.3.i.i.i96 to i32
  %i.ef = load i8, ptr %i.ed, align 1, !tbaa !34  ; 2 uses
  %i.eg = zext i8 %i.ef to i32
  %i.eh = icmp eq i8 %i.ef, 0
  %i.ei = sub nsw i32 32, %i.eg
  %i.ej = lshr i32 -1, %i.ei
  %.0.i.i101 = select i1 %i.eh, i32 0, i32 %i.ej
  %i.ek = lshr i32 %2, %i.ee
  %i.el = and i32 %.0.i.i101, %i.ek
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 1 ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit100
  %.031.i = phi ptr [ %i.en, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit100 ], [ %i.ew, %bb.z ] ; 3 uses
  %.029.i = phi i64 [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit100 ], [ %.130.i, %bb.z ]
  %.028.i = phi i32 [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit100 ], [ %16, %bb.z ] ; 5 uses
  %i.eo = load i8, ptr %.031.i, align 1, !tbaa !34 ; 2 uses
  %i.ep = and i8 %i.eo, 127                       ; 3 uses
  %i.eq = zext nneg i8 %i.ep to i64
  %i.er = icmp ugt i32 %.028.i, 62
  br i1 %i.er, label %bb.y, label %bb.z, !prof !44

bb.y:                                             ; preds = %bb.x
  %.not44.i = icmp eq i32 %.028.i, 63
  %.not.i102 = icmp samesign ugt i8 %i.ep, 1
  %i.es = icmp ne i8 %i.ep, 0
  %or.cond43.i = select i1 %.not44.i, i1 %.not.i102, i1 %i.es
  br i1 %or.cond43.i, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.et = icmp ult i32 %.028.i, 64
  %15 = zext nneg i32 %.028.i to i64
  %i.eu = shl i64 %i.eq, %15
  %i.ev = select i1 %i.et, i64 %i.eu, i64 0, !prof !45
  %.130.i = add i64 %i.ev, %.029.i                ; 2 uses
  %16 = add i32 %.028.i, 7
  %i.ew = getelementptr inbounds nuw i8, ptr %.031.i, i64 1 ; 2 uses
  %i.ex = icmp slt i8 %i.eo, 0
  br i1 %i.ex, label %bb.x, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, !llvm.loop !46

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit:        ; preds = %bb.y, %bb.z
  %.132.i = phi ptr [ %i.ew, %bb.z ], [ %.031.i, %bb.y ]
  %.3.i = phi i64 [ %.130.i, %bb.z ], [ 0, %bb.y ]
  %i.ey = ptrtoint ptr %.132.i to i64
  %i.ez = ptrtoint ptr %i.en to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = and i64 %i.fa, 4294967295
  %i.fc = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.fb
  %.not.not = icmp eq i64 %.3.i, %i.em
  br i1 %.not.not, label %_ZN4llvm11raw_ostreamlsEc.exit.backedge, label %.thread

.preheader78:                                     ; preds = %_ZN4llvm11raw_ostreamlsEc.exit, %bb.ab
  %.031.i.i.i104 = phi ptr [ %i.fq, %bb.ab ], [ %i.e, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 3 uses
  %.029.i.i.i105 = phi i64 [ %.130.i.i.i107, %bb.ab ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit ]
  %.028.i.i.i106 = phi i32 [ %18, %bb.ab ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 5 uses
  %i.fd = load i8, ptr %.031.i.i.i104, align 1, !tbaa !34 ; 2 uses
  %i.fe = and i8 %i.fd, 127                       ; 3 uses
  %i.ff = zext nneg i8 %i.fe to i64
  %i.fg = icmp ugt i32 %.028.i.i.i106, 62
  br i1 %i.fg, label %bb.aa, label %bb.ab, !prof !44

bb.aa:                                            ; preds = %.preheader78
  %.not44.i.i.i110 = icmp eq i32 %.028.i.i.i106, 63
  %.not.i.i.i111 = icmp samesign ugt i8 %i.fe, 1
  %i.fh = icmp ne i8 %i.fe, 0
  %or.cond43.i.i.i112 = select i1 %.not44.i.i.i110, i1 %.not.i.i.i111, i1 %i.fh
  br i1 %or.cond43.i.i.i112, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113.thread, label %bb.ab

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113.thread: ; preds = %bb.aa
  %i.fi = ptrtoint ptr %.031.i.i.i104 to i64
  %i.fj = ptrtoint ptr %i.e to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = and i64 %i.fk, 4294967295
  %i.fm = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.fl
  %.val27 = load i64, ptr %i.a, align 8
  br label %.split

bb.ab:                                            ; preds = %bb.aa, %.preheader78
  %i.fn = icmp ult i32 %.028.i.i.i106, 64
  %17 = zext nneg i32 %.028.i.i.i106 to i64
  %i.fo = shl i64 %i.ff, %17
  %i.fp = select i1 %i.fn, i64 %i.fo, i64 0, !prof !45
  %.130.i.i.i107 = add i64 %i.fp, %.029.i.i.i105  ; 2 uses
  %18 = add i32 %.028.i.i.i106, 7
  %i.fq = getelementptr inbounds nuw i8, ptr %.031.i.i.i104, i64 1 ; 2 uses
  %i.fr = icmp slt i8 %i.fd, 0
  br i1 %i.fr, label %.preheader78, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113, !llvm.loop !46

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113: ; preds = %bb.ab
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.e to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = and i64 %i.fu, 4294967295
  %i.fw = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.fv ; 18 uses
  %i.fx = trunc i64 %.130.i.i.i107 to i32
  %.val = load i64, ptr %i.a, align 8             ; 18 uses
  switch i32 %i.fx, label %bb.ac [
    i32 0, label %.split
    i32 1, label %_ZN12_GLOBAL__N_121checkDecoderPredicateEjRKN4llvm13FeatureBitsetE.exit
    i32 2, label %.split47
    i32 3, label %bb.ad
    i32 4, label %.split45
    i32 5, label %.split44
    i32 6, label %.split43
    i32 7, label %.split42
    i32 8, label %.split41
    i32 9, label %.split40
    i32 10, label %.split39
    i32 11, label %.split38
    i32 12, label %.split37
    i32 13, label %.split36
    i32 14, label %.split35
    i32 15, label %.split34
    i32 16, label %bb.ae
    i32 17, label %.split46
  ]

bb.ac:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  unreachable

.split:                                           ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113.thread, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %.val28 = phi i64 [ %.val27, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113.thread ], [ %.val, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113 ]
  %i.fy = phi ptr [ %i.fm, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113.thread ], [ %i.fw, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113 ]
  %i.fz = and i64 %.val28, 140737488355328
  %.not74 = icmp eq i64 %i.fz, 0
  br i1 %.not74, label %.thread, label %_ZN4llvm11raw_ostreamlsEc.exit.backedge

.split47:                                         ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.ga = and i64 %.val, 4503599627370496
  %.not72 = icmp eq i64 %i.ga, 0
  br i1 %.not72, label %.thread, label %_ZN4llvm11raw_ostreamlsEc.exit.backedge

bb.ad:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gb = and i64 %.val, 40532396646334464
  %or.cond56 = icmp eq i64 %i.gb, 4503599627370496
  br i1 %or.cond56, label %_ZN4llvm11raw_ostreamlsEc.exit.backedge, label %.thread

.split45:                                         ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gc = and i64 %.val, 17592186044416
  %.not71 = icmp eq i64 %i.gc, 0
  br i1 %.not71, label %.thread, label %_ZN4llvm11raw_ostreamlsEc.exit.backedge

.split44:                                         ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gd = and i64 %.val, 1099511627776
  %.not70 = icmp eq i64 %i.gd, 0
  br i1 %.not70, label %.thread, label %_ZN4llvm11raw_ostreamlsEc.exit.backedge

.split43:                                         ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.ge = and i64 %.val, 562949953421312
  %.not69 = icmp eq i64 %i.ge, 0
  br i1 %.not69, label %.thread, label %_ZN4llvm11raw_ostreamlsEc.exit.backedge

.split42:                                         ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gf = and i64 %.val, 68719476736
  %.not68 = icmp eq i64 %i.gf, 0
  br i1 %.not68, label %.thread, label %_ZN4llvm11raw_ostreamlsEc.exit.backedge

.split41:                                         ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gg = and i64 %.val, 8796093022208
  %.not67 = icmp eq i64 %i.gg, 0
  br i1 %.not67, label %.thread, label %_ZN4llvm11raw_ostreamlsEc.exit.backedge

.split40:                                         ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gh = and i64 %.val, 549755813888
  %.not66 = icmp eq i64 %i.gh, 0
  br i1 %.not66, label %.thread, label %_ZN4llvm11raw_ostreamlsEc.exit.backedge

.split39:                                         ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gi = and i64 %.val, 1125899906842624
  %.not65 = icmp eq i64 %i.gi, 0
  br i1 %.not65, label %.thread, label %_ZN4llvm11raw_ostreamlsEc.exit.backedge

.split38:                                         ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gj = and i64 %.val, 2251799813685248
  %.not64 = icmp eq i64 %i.gj, 0
  br i1 %.not64, label %.thread, label %_ZN4llvm11raw_ostreamlsEc.exit.backedge

.split37:                                         ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gk = and i64 %.val, 2199023255552
  %.not63 = icmp eq i64 %i.gk, 0
  br i1 %.not63, label %.thread, label %_ZN4llvm11raw_ostreamlsEc.exit.backedge

.split36:                                         ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gl = and i64 %.val, 274877906944
  %.not62 = icmp eq i64 %i.gl, 0
  br i1 %.not62, label %.thread, label %_ZN4llvm11raw_ostreamlsEc.exit.backedge

.split35:                                         ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gm = and i64 %.val, 137438953472
  %.not61 = icmp eq i64 %i.gm, 0
  br i1 %.not61, label %.thread, label %_ZN4llvm11raw_ostreamlsEc.exit.backedge

.split34:                                         ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gn = and i64 %.val, 34359738368
  %.not60 = icmp eq i64 %i.gn, 0
  br i1 %.not60, label %.thread, label %_ZN4llvm11raw_ostreamlsEc.exit.backedge

bb.ae:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.go = and i64 %.val, 40532396646334464
  %or.cond58 = icmp eq i64 %i.go, 40532396646334464
  br i1 %or.cond58, label %_ZN4llvm11raw_ostreamlsEc.exit.backedge, label %.thread

_ZN4llvm11raw_ostreamlsEc.exit.backedge:          ; preds = %bb.ae, %bb.ad, %.split47, %.split46, %.split45, %.split44, %.split43, %.split42, %.split41, %.split40, %.split39, %.split38, %.split37, %.split36, %.split35, %.split34, %.split, %_ZN12_GLOBAL__N_121checkDecoderPredicateEjRKN4llvm13FeatureBitsetE.exit, %bb.j, %bb.i, %.loopexit, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, %bb.fz
  %.019.be = phi ptr [ %i.fw, %.split47 ], [ %i.fw, %.split44 ], [ %i.do, %.loopexit ], [ %i.fw, %.split45 ], [ %i.adz, %bb.fz ], [ %i.fc, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ], [ %i.as, %bb.j ], [ %i.fw, %.split46 ], [ %i.as, %bb.i ], [ %i.fy, %.split ], [ %i.fw, %_ZN12_GLOBAL__N_121checkDecoderPredicateEjRKN4llvm13FeatureBitsetE.exit ], [ %i.fw, %bb.ae ], [ %i.fw, %bb.ad ], [ %i.fw, %.split34 ], [ %i.fw, %.split35 ], [ %i.fw, %.split36 ], [ %i.fw, %.split37 ], [ %i.fw, %.split38 ], [ %i.fw, %.split39 ], [ %i.fw, %.split40 ], [ %i.fw, %.split41 ], [ %i.fw, %.split42 ], [ %i.fw, %.split43 ]
  br label %_ZN4llvm11raw_ostreamlsEc.exit

.split46:                                         ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gp = and i64 %.val, 4398046511104
  %.not59 = icmp eq i64 %i.gp, 0
  br i1 %.not59, label %.thread, label %_ZN4llvm11raw_ostreamlsEc.exit.backedge

_ZN12_GLOBAL__N_121checkDecoderPredicateEjRKN4llvm13FeatureBitsetE.exit: ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gq = and i64 %.val, 281474976710656
  %.not73 = icmp eq i64 %i.gq, 0
  br i1 %.not73, label %.thread, label %_ZN4llvm11raw_ostreamlsEc.exit.backedge

.preheader:                                       ; preds = %_ZN4llvm11raw_ostreamlsEc.exit, %bb.ag
  %.031.i.i.i117 = phi ptr [ %i.gz, %bb.ag ], [ %i.e, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 3 uses
  %.029.i.i.i118 = phi i64 [ %.130.i.i.i120, %bb.ag ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit ]
  %.028.i.i.i119 = phi i32 [ %20, %bb.ag ], [ 0, %_ZN4llvm11raw_ostreamlsEc.exit ] ; 5 uses
  %i.gr = load i8, ptr %.031.i.i.i117, align 1, !tbaa !34 ; 2 uses
  %i.gs = and i8 %i.gr, 127                       ; 3 uses
  %i.gt = zext nneg i8 %i.gs to i64
  %i.gu = icmp ugt i32 %.028.i.i.i119, 62
  br i1 %i.gu, label %bb.af, label %bb.ag, !prof !44

bb.af:                                            ; preds = %.preheader
  %.not44.i.i.i123 = icmp eq i32 %.028.i.i.i119, 63
  %.not.i.i.i124 = icmp samesign ugt i8 %i.gs, 1
  %i.gv = icmp ne i8 %i.gs, 0
  %or.cond43.i.i.i125 = select i1 %.not44.i.i.i123, i1 %.not.i.i.i124, i1 %i.gv
  br i1 %or.cond43.i.i.i125, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit126, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.preheader
  %i.gw = icmp ult i32 %.028.i.i.i119, 64
  %19 = zext nneg i32 %.028.i.i.i119 to i64
  %i.gx = shl i64 %i.gt, %19
  %i.gy = select i1 %i.gw, i64 %i.gx, i64 0, !prof !45
  %.130.i.i.i120 = add i64 %i.gy, %.029.i.i.i118  ; 2 uses
  %20 = add i32 %.028.i.i.i119, 7
  %i.gz = getelementptr inbounds nuw i8, ptr %.031.i.i.i117, i64 1 ; 2 uses
  %i.ha = icmp slt i8 %i.gr, 0
  br i1 %i.ha, label %.preheader, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit126, !llvm.loop !46

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit126: ; preds = %bb.af, %bb.ag
  %.132.i.i.i121 = phi ptr [ %i.gz, %bb.ag ], [ %.031.i.i.i117, %bb.af ]
  %.3.i.i.i122 = phi i64 [ %.130.i.i.i120, %bb.ag ], [ 0, %bb.af ]
  %i.hb = ptrtoint ptr %.132.i.i.i121 to i64
  %i.hc = ptrtoint ptr %i.e to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = and i64 %i.hd, 4294967295
  %i.hf = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.he
  %i.hg = trunc i64 %.3.i.i.i122 to i32           ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit126, %bb.aj
  %.031.i.i.i128 = phi ptr [ %i.hf, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit126 ], [ %i.hq, %bb.aj ] ; 2 uses
  %.029.i.i.i129 = phi i64 [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit126 ], [ %.130.i.i.i131, %bb.aj ]
  %.028.i.i.i130 = phi i32 [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit126 ], [ %22, %bb.aj ] ; 5 uses
  %i.hh = load i8, ptr %.031.i.i.i128, align 1, !tbaa !34 ; 2 uses
  %i.hi = and i8 %i.hh, 127                       ; 3 uses
  %i.hj = zext nneg i8 %i.hi to i64
  %i.hk = icmp ugt i32 %.028.i.i.i130, 62
  br i1 %i.hk, label %bb.ai, label %bb.aj, !prof !44

bb.ai:                                            ; preds = %bb.ah
  %.not44.i.i.i134 = icmp eq i32 %.028.i.i.i130, 63
  %.not.i.i.i135 = icmp samesign ugt i8 %i.hi, 1
  %i.hl = icmp ne i8 %i.hi, 0
  %or.cond43.i.i.i136 = select i1 %.not44.i.i.i134, i1 %.not.i.i.i135, i1 %i.hl
  br i1 %or.cond43.i.i.i136, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit137.thread, label %bb.aj

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit137.thread: ; preds = %bb.ai
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 0, ptr %i.hm, align 8, !tbaa !37
  store i32 %i.hg, ptr %1, align 8, !tbaa !49
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.hn = icmp ult i32 %.028.i.i.i130, 64
  %21 = zext nneg i32 %.028.i.i.i130 to i64
  %i.ho = shl i64 %i.hj, %21
  %i.hp = select i1 %i.hn, i64 %i.ho, i64 0, !prof !45
  %.130.i.i.i131 = add i64 %i.hp, %.029.i.i.i129  ; 2 uses
  %22 = add i32 %.028.i.i.i130, 7
  %i.hq = getelementptr inbounds nuw i8, ptr %.031.i.i.i128, i64 1
  %i.hr = icmp slt i8 %i.hh, 0
  br i1 %i.hr, label %bb.ah, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit137, !llvm.loop !46

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit137: ; preds = %bb.aj
  %i.hs = trunc i64 %.130.i.i.i131 to i32
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 143 uses
  store i32 0, ptr %i.ht, align 8, !tbaa !37
  store i32 %i.hg, ptr %1, align 8, !tbaa !49
  switch i32 %i.hs, label %bb.ak [
    i32 0, label %_ZN4llvm11raw_ostreamlsEc.exit.thread
    i32 1, label %bb.al
    i32 2, label %bb.aq
    i32 3, label %bb.av
    i32 4, label %bb.ba
    i32 5, label %bb.bf
    i32 6, label %bb.bm
    i32 7, label %bb.br
    i32 8, label %bb.by
    i32 9, label %bb.bz
    i32 10, label %bb.cg
    i32 11, label %bb.cn
    i32 12, label %bb.cs
    i32 13, label %bb.cv
    i32 14, label %bb.da
    i32 15, label %bb.dd
    i32 16, label %bb.dg
    i32 17, label %bb.dj
    i32 18, label %bb.dq
    i32 19, label %bb.dv
    i32 20, label %bb.ea
    i32 21, label %bb.ef
    i32 22, label %bb.ei
    i32 23, label %bb.el
    i32 24, label %bb.eq
    i32 25, label %bb.ex
    i32 26, label %bb.fc
    i32 27, label %bb.fh
    i32 28, label %bb.fm
    i32 29, label %bb.fr
    i32 30, label %bb.fw
  ]

bb.ak:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit137
  unreachable

bb.al:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit137
  %i.hu = lshr i32 %2, 4
  %i.hv = and i32 %i.hu, 15
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr @_ZL19GPRPairDecoderTable, i64 %i.hw
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.hx, align 4, !tbaa !57
  %.sroa.3.8.insert.ext.i.i.i = zext i32 %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !38
  %.not.i.i.i.i.not = icmp eq i32 %i.ia, 0
  br i1 %.not.i.i.i.i.not, label %bb.am, label %bb.an, !prof !44

bb.am:                                            ; preds = %bb.al
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.hy, i8 1, i64 %.sroa.3.8.insert.ext.i.i.i)
  %.pre147.a = load i32, ptr %i.ht, align 8, !tbaa !37
  br label %_ZL24DecodeDREGSRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i

bb.an:                                            ; preds = %bb.al
  %i.ib = load ptr, ptr %i.hy, align 8, !tbaa !35 ; 2 uses
  store i8 1, ptr %i.ib, align 1
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1
  %i.ic = load i32, ptr %i.ht, align 8, !tbaa !37
  %i.id = add i32 %i.ic, 1                        ; 2 uses
  store i32 %i.id, ptr %i.ht, align 8, !tbaa !37
  br label %_ZL24DecodeDREGSRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i

_ZL24DecodeDREGSRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i: ; preds = %bb.am, %bb.an
  %i.ie = phi i32 [ %.pre147.a, %bb.am ], [ %i.id, %bb.an ] ; 2 uses
  %i.if = and i32 %2, 15
  %i.ig = zext nneg i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr @_ZL19GPRPairDecoderTable, i64 %i.ig
  %.sroa.0.0.copyload.i226 = load i32, ptr %i.ih, align 4, !tbaa !57
  %.sroa.3.8.insert.ext.i.i227 = zext i32 %.sroa.0.0.copyload.i226 to i64 ; 2 uses
  %i.ii = load i32, ptr %i.hz, align 4, !tbaa !38
  %.not.i.i.i228 = icmp ult i32 %i.ie, %i.ii
  br i1 %.not.i.i.i228, label %bb.ap, label %bb.ao, !prof !45

bb.ao:                                            ; preds = %_ZL24DecodeDREGSRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.hy, i8 1, i64 %.sroa.3.8.insert.ext.i.i227)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread

bb.ap:                                            ; preds = %_ZL24DecodeDREGSRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i
  %i.ij = zext i32 %i.ie to i64
  %i.ik = load ptr, ptr %i.hy, align 8, !tbaa !35
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.ik, i64 %i.ij ; 2 uses
  store i8 1, ptr %i.il, align 1
  %.sroa.4.0..sroa_idx.i.i.i230 = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i227, ptr %.sroa.4.0..sroa_idx.i.i.i230, align 1
  %i.im = load i32, ptr %i.ht, align 8, !tbaa !37
  %i.in = add i32 %i.im, 1
  store i32 %i.in, ptr %i.ht, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread

bb.aq:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit137
  %i.io = lshr i32 %2, 4
  %i.ip = and i32 %i.io, 15
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 64
  %.sroa.0.0.copyload.i265.i = load i32, ptr %i.is, align 4, !tbaa !57
  %.sroa.3.8.insert.ext.i.i266.i = zext i32 %.sroa.0.0.copyload.i265.i to i64 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !38
  %.not.i.i.i267.i.not = icmp eq i32 %i.iv, 0
  br i1 %.not.i.i.i267.i.not, label %bb.ar, label %bb.as, !prof !44

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.it, i8 1, i64 %.sroa.3.8.insert.ext.i.i266.i)
  %.pre146.a = load i32, ptr %i.ht, align 8, !tbaa !37
  br label %_ZL22DecodeLD8RegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.iw = load ptr, ptr %i.it, align 8, !tbaa !35 ; 2 uses
  store i8 1, ptr %i.iw, align 1
  %.sroa.4.0..sroa_idx.i.i.i268.i = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i266.i, ptr %.sroa.4.0..sroa_idx.i.i.i268.i, align 1
  %i.ix = load i32, ptr %i.ht, align 8, !tbaa !37
  %i.iy = add i32 %i.ix, 1                        ; 2 uses
  store i32 %i.iy, ptr %i.ht, align 8, !tbaa !37
  br label %_ZL22DecodeLD8RegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i

_ZL22DecodeLD8RegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i: ; preds = %bb.ar, %bb.as
  %i.iz = phi i32 [ %.pre146.a, %bb.ar ], [ %i.iy, %bb.as ] ; 2 uses
  %i.ja = and i32 %2, 15
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 64
  %.sroa.0.0.copyload.i220 = load i32, ptr %i.jd, align 4, !tbaa !57
  %.sroa.3.8.insert.ext.i.i221 = zext i32 %.sroa.0.0.copyload.i220 to i64 ; 2 uses
  %i.je = load i32, ptr %i.iu, align 4, !tbaa !38
  %.not.i.i.i222 = icmp ult i32 %i.iz, %i.je
  br i1 %.not.i.i.i222, label %bb.au, label %bb.at, !prof !45

bb.at:                                            ; preds = %_ZL22DecodeLD8RegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.it, i8 1, i64 %.sroa.3.8.insert.ext.i.i221)
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread

bb.au:                                            ; preds = %_ZL22DecodeLD8RegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i
  %i.jf = zext i32 %i.iz to i64
  %i.jg = load ptr, ptr %i.it, align 8, !tbaa !35
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %i.jg, i64 %i.jf ; 2 uses
  store i8 1, ptr %i.jh, align 1
  %.sroa.4.0..sroa_idx.i.i.i224 = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i221, ptr %.sroa.4.0..sroa_idx.i.i.i224, align 1
  %i.ji = load i32, ptr %i.ht, align 8, !tbaa !37
  %i.jj = add i32 %i.ji, 1
  store i32 %i.jj, ptr %i.ht, align 8, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread

bb.av:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit137
  %i.jk = lshr i32 %2, 4
  %i.jl = and i32 %i.jk, 7
  %i.jm = zext nneg i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 64
  %.sroa.0.0.copyload.i269.i = load i32, ptr %i.jo, align 4, !tbaa !57
  %.sroa.3.8.insert.ext.i.i270.i = zext i32 %.sroa.0.0.copyload.i269.i to i64 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !38
  %.not.i.i.i271.i.not = icmp eq i32 %i.jr, 0
  br i1 %.not.i.i.i271.i.not, label %bb.aw, label %bb.ax, !prof !44

bb.aw:                                            ; preds = %bb.av
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.jp, i8 1, i64 %.sroa.3.8.insert.ext.i.i270.i)
  %.pre145.a = load i32, ptr %i.ht, align 8, !tbaa !37
  br label %_ZL24DecodeLD8loRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.js = load ptr, ptr %i.jp, align 8, !tbaa !35 ; 2 uses
  store i8 1, ptr %i.js, align 1
  %.sroa.4.0..sroa_idx.i.i.i272.i = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  store i64 %.sroa.3.8.insert.ext.i.i270.i, ptr %.sroa.4.0..sroa_idx.i.i.i272.i, align 1
  %i.jt = load i32, ptr %i.ht, align 8, !tbaa !37
  %i.ju = add i32 %i.jt, 1                        ; 2 uses
  store i32 %i.ju, ptr %i.ht, align 8, !tbaa !37
  br label %_ZL24DecodeLD8loRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i

_ZL24DecodeLD8loRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i: ; preds = %bb.aw, %bb.ax
  %i.jv = phi i32 [ %.pre145.a, %bb.aw ], [ %i.ju, %bb.ax ] ; 2 uses
  %i.jw = and i32 %2, 7
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr @_ZL15GPRDecoderTable, i64 %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 64
  %.sroa.0.0.copyload.i215 = load i32, ptr %i.jz, align 4, !tbaa !57
  %.sroa.3.8.insert.ext.i.i216.a = zext i32 %.sroa.0.0.copyload.i215 to i64 ; 2 uses
  %i.ka = load i32, ptr %i.jq, align 4, !tbaa !38
  %.not.i.i.i217.a = icmp ult i32 %i.jv, %i.ka
  br i1 %.not.i.i.i217.a, label %bb.az, label %bb.ay, !prof !45

bb.ay:                                            ; preds = %_ZL24DecodeLD8loRegisterClassRN4llvm6MCInstEjmPKNS_14MCDisassemblerE.exit.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.jp, i8 1, i64 %.sroa.3.8.insert.ext.i.i216.a)
end_hunk_0
