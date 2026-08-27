Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SparcDisassembler?download=true
inline.NumInlined: 996
inline.NumDeleted: 87
begin_hunk_0_@LLVMInitializeSparcDisassembler:bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm17getTheSparcTargetEv() #10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr @_ZL23createSparcDisassemblerRKN4llvm6TargetERKNS_15MCSubtargetInfoERNS_9MCContextE, ptr %i.b, align 8, !tbaa !8
  %i.c = tail call noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm19getTheSparcV9TargetEv() #10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr @_ZL23createSparcDisassemblerRKN4llvm6TargetERKNS_15MCSubtargetInfoERNS_9MCContextE, ptr %i.d, align 8, !tbaa !8
  %i.e = tail call noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm19getTheSparcelTargetEv() #10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store ptr @_ZL23createSparcDisassemblerRKN4llvm6TargetERKNS_15MCSubtargetInfoERNS_9MCContextE, ptr %i.f, align 8, !tbaa !8
  ret void
}

declare noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm17getTheSparcTargetEv() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @_ZL23createSparcDisassemblerRKN4llvm6TargetERKNS_15MCSubtargetInfoERNS_9MCContextE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 8 dereferenceable(2208) %2) #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #11 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN12_GLOBAL__N_117SparcDisassemblerE, i64 16), ptr %i.a, align 8, !tbaa !18
  ret ptr %i.a
}

declare noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm19getTheSparcV9TargetEv() local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(264) ptr @_ZN4llvm19getTheSparcelTargetEv() local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4llvm14MCDisassemblerD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117SparcDisassemblerD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm14MCDisassemblerD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #10
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZNK12_GLOBAL__N_117SparcDisassembler14getInstructionERN4llvm6MCInstERmNS1_8ArrayRefIhEEmRNS1_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2, ptr nofree readonly captures(none) %3, i64 %4, i64 noundef %5, ptr nofree nonnull readnone align 8 captures(none) %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i64 %4, 4
  br i1 %i.a, label %_ZL17readInstruction32N4llvm8ArrayRefIhEEmRmRjb.exit.thread, label %bb.b

_ZL17readInstruction32N4llvm8ArrayRefIhEEmRmRjb.exit.thread: ; preds = %bb.a
  store i64 0, ptr %2, align 8, !tbaa !20
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22, !nonnull !32, !align !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34, !nonnull !32, !align !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !190, !range !211, !noundef !32
  %i.h = trunc nuw i8 %i.g to i1
  store i64 4, ptr %2, align 8, !tbaa !20
  %.0.copyload.i.i = load i32, ptr %3, align 1    ; 2 uses
  %i.i = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.i.i)
  %spec.select.i.i.i = select i1 %i.h, i32 %.0.copyload.i.i, i32 %i.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !212, !nonnull !32, !align !33 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20
  %i.n = and i64 %i.m, 4398046511104
  %.not22 = icmp eq i64 %i.n, 0
  %_ZN12_GLOBAL__N_121DecoderTableSparcV832E._ZN12_GLOBAL__N_121DecoderTableSparcV932E = select i1 %.not22, ptr @_ZN12_GLOBAL__N_121DecoderTableSparcV832E, ptr @_ZN12_GLOBAL__N_121DecoderTableSparcV932E
  %i.o = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_117decodeInstructionIjEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE(ptr noundef nonnull %_ZN12_GLOBAL__N_121DecoderTableSparcV832E._ZN12_GLOBAL__N_121DecoderTableSparcV932E, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %spec.select.i.i.i, i64 noundef %5, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(320) %i.k) ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !212, !nonnull !32, !align !33
  %i.q = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_117decodeInstructionIjEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE(ptr noundef nonnull @_ZN12_GLOBAL__N_119DecoderTableSparc32E, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %spec.select.i.i.i, i64 noundef %5, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(320) %i.p)
  br label %bb.d

bb.d:                                             ; preds = %_ZL17readInstruction32N4llvm8ArrayRefIhEEmRmRjb.exit.thread, %bb.b, %bb.c
  %.0 = phi i32 [ %i.q, %bb.c ], [ 0, %_ZL17readInstruction32N4llvm8ArrayRefIhEEmRmRjb.exit.thread ], [ %i.o, %bb.b ]
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
define internal fastcc noundef i32 @_ZN12_GLOBAL__N_117decodeInstructionIjEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, i64 noundef %3, ptr noundef nonnull %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.141", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !213
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i32 0, ptr %i.d, align 8, !tbaa !214
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 8, ptr %i.e, align 4, !tbaa !215
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.0156 = phi ptr [ %0, %bb.a ], [ %.0156.be, %.backedge.backedge ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0156, i64 1 ; 17 uses
  %i.h = load i8, ptr %.0156, align 1, !tbaa !216 ; 2 uses
  switch i8 %i.h, label %bb.b [
    i8 1, label %.preheader
    i8 2, label %.preheader196
    i8 3, label %.preheader197
    i8 4, label %.preheader198
    i8 5, label %.preheader199
  ]

bb.b:                                             ; preds = %.backedge
  %i.i = ptrtoint ptr %.0156 to i64
  %i.j = ptrtoint ptr %0 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #10
  %i.m = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef %i.k) #10 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !217
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !221  ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp ult i64 %i.t, 34
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull @.str, i64 noundef 34) #10
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.q, ptr noundef nonnull align 1 dereferenceable(34) @.str, i64 34, i1 false)
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !221
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 34
  store ptr %i.x, ptr %i.p, align 8, !tbaa !221
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.v, %bb.c ], [ %i.m, %bb.d ]
  %i.y = zext i8 %i.h to i64
  %i.z = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %i.y) #10 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !221 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !217
  %.not.i = icmp ult ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ae = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.z, i8 noundef zeroext 10) #10 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !221
  store i8 10, ptr %i.ab, align 1, !tbaa !216
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread

.preheader:                                       ; preds = %.backedge, %bb.h
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.h ], [ 0, %.backedge ] ; 5 uses
  %.031.i.i.i = phi ptr [ %i.ao, %bb.h ], [ %i.g, %.backedge ] ; 3 uses
  %.029.i.i.i = phi i64 [ %.130.i.i.i, %bb.h ], [ 0, %.backedge ]
  %i.ag = load i8, ptr %.031.i.i.i, align 1, !tbaa !216 ; 2 uses
  %i.ah = and i8 %i.ag, 127                       ; 3 uses
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = icmp samesign ugt i64 %indvars.iv.i.i, 62
  br i1 %i.aj, label %bb.g, label %bb.h, !prof !222

bb.g:                                             ; preds = %.preheader
  %.not44.i.i.i = icmp eq i64 %indvars.iv.i.i, 63
  %.not.i.i.i = icmp samesign ugt i8 %i.ah, 1
  %i.ak = icmp ne i8 %i.ah, 0
  %or.cond43.i.i.i = select i1 %.not44.i.i.i, i1 %.not.i.i.i, i1 %i.ak
  br i1 %or.cond43.i.i.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader
  %i.al = icmp samesign ult i64 %indvars.iv.i.i, 64
  %i.am = shl i64 %i.ai, %indvars.iv.i.i
  %i.an = select i1 %i.al, i64 %i.am, i64 0, !prof !223
  %.130.i.i.i = add i64 %i.an, %.029.i.i.i        ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 7
  %i.ao = getelementptr inbounds nuw i8, ptr %.031.i.i.i, i64 1 ; 2 uses
  %i.ap = icmp slt i8 %i.ag, 0
  br i1 %i.ap, label %.preheader, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit, !llvm.loop !224

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit:    ; preds = %bb.g, %bb.h
  %.132.i.i.i = phi ptr [ %i.ao, %bb.h ], [ %.031.i.i.i, %bb.g ]
  %.3.i.i.i = phi i64 [ %.130.i.i.i, %bb.h ], [ 0, %bb.g ]
  %i.aq = ptrtoint ptr %.132.i.i.i to i64
  %i.ar = ptrtoint ptr %i.g to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = and i64 %i.as, 4294967295
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.at ; 3 uses
  %i.av = and i64 %.3.i.i.i, 4294967295
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.d, align 8, !tbaa !214 ; 2 uses
  %i.ay = load i32, ptr %i.e, align 4, !tbaa !215
  %.not.i55 = icmp ult i32 %i.ax, %i.ay
  br i1 %.not.i55, label %bb.j, label %bb.i, !prof !223

bb.i:                                             ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKhLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.aw)
  br label %.backedge.backedge

bb.j:                                             ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit
  %i.az = zext i32 %i.ax to i64
  %i.ba = load ptr, ptr %6, align 8, !tbaa !213
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.az
  store ptr %i.aw, ptr %i.bb, align 1
  %i.bc = load i32, ptr %i.d, align 8, !tbaa !214
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.d, align 8, !tbaa !214
  br label %.backedge.backedge

.preheader196:                                    ; preds = %.backedge, %bb.l
  %indvars.iv.i.i57 = phi i64 [ %indvars.iv.next.i.i61, %bb.l ], [ 0, %.backedge ] ; 5 uses
  %.031.i.i.i58 = phi ptr [ %i.bm, %bb.l ], [ %i.g, %.backedge ] ; 3 uses
  %.029.i.i.i59 = phi i64 [ %.130.i.i.i60, %bb.l ], [ 0, %.backedge ]
  %i.be = load i8, ptr %.031.i.i.i58, align 1, !tbaa !216 ; 2 uses
  %i.bf = and i8 %i.be, 127                       ; 3 uses
  %i.bg = zext nneg i8 %i.bf to i64
  %i.bh = icmp samesign ugt i64 %indvars.iv.i.i57, 62
  br i1 %i.bh, label %bb.k, label %bb.l, !prof !222

bb.k:                                             ; preds = %.preheader196
  %.not44.i.i.i63 = icmp eq i64 %indvars.iv.i.i57, 63
  %.not.i.i.i64 = icmp samesign ugt i8 %i.bf, 1
  %i.bi = icmp ne i8 %i.bf, 0
  %or.cond43.i.i.i65 = select i1 %.not44.i.i.i63, i1 %.not.i.i.i64, i1 %i.bi
  br i1 %or.cond43.i.i.i65, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit66, label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader196
  %i.bj = icmp samesign ult i64 %indvars.iv.i.i57, 64
  %i.bk = shl i64 %i.bg, %indvars.iv.i.i57
  %i.bl = select i1 %i.bj, i64 %i.bk, i64 0, !prof !223
  %.130.i.i.i60 = add i64 %i.bl, %.029.i.i.i59    ; 2 uses
  %indvars.iv.next.i.i61 = add nuw nsw i64 %indvars.iv.i.i57, 7
  %i.bm = getelementptr inbounds nuw i8, ptr %.031.i.i.i58, i64 1 ; 2 uses
  %i.bn = icmp slt i8 %i.be, 0
  br i1 %i.bn, label %.preheader196, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit66, !llvm.loop !224

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit66:  ; preds = %bb.k, %bb.l
  %.132.i.i.i61 = phi ptr [ %i.bm, %bb.l ], [ %.031.i.i.i58, %bb.k ]
  %.3.i.i.i62 = phi i64 [ %.130.i.i.i60, %bb.l ], [ 0, %bb.k ]
  %i.bo = ptrtoint ptr %.132.i.i.i61 to i64
  %i.bp = ptrtoint ptr %i.g to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = and i64 %i.bq, 4294967295
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.br ; 2 uses
  %i.bt = trunc i64 %.3.i.i.i62 to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bv = load i8, ptr %i.bs, align 1, !tbaa !216 ; 2 uses
  %i.bw = zext i8 %i.bv to i32
  %i.bx = icmp eq i8 %i.bv, 0
  %i.by = sub nsw i32 32, %i.bw
  %i.bz = lshr i32 -1, %i.by
  %.0.i.i67 = select i1 %i.bx, i32 0, i32 %i.bz
  %i.ca = lshr i32 %2, %i.bt
  %i.cb = and i32 %.0.i.i67, %i.ca
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.u, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit66
  %.1 = phi ptr [ %i.bu, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit66 ], [ %i.dp, %bb.u ] ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %indvars.iv.i.i70 = phi i64 [ %indvars.iv.next.i.i74, %bb.p ], [ 0, %bb.m ] ; 5 uses
  %.031.i.i.i71 = phi ptr [ %i.cl, %bb.p ], [ %.1, %bb.m ] ; 3 uses
  %.029.i.i.i72 = phi i64 [ %.130.i.i.i72, %bb.p ], [ 0, %bb.m ]
  %i.cd = load i8, ptr %.031.i.i.i71, align 1, !tbaa !216 ; 2 uses
  %i.ce = and i8 %i.cd, 127                       ; 3 uses
  %i.cf = zext nneg i8 %i.ce to i64
  %i.cg = icmp samesign ugt i64 %indvars.iv.i.i70, 62
  br i1 %i.cg, label %bb.o, label %bb.p, !prof !222

bb.o:                                             ; preds = %bb.n
  %.not44.i.i.i75 = icmp eq i64 %indvars.iv.i.i70, 63
  %.not.i.i.i76 = icmp samesign ugt i8 %i.ce, 1
  %i.ch = icmp ne i8 %i.ce, 0
  %or.cond43.i.i.i77 = select i1 %.not44.i.i.i75, i1 %.not.i.i.i76, i1 %i.ch
  br i1 %or.cond43.i.i.i77, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit78, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ci = icmp samesign ult i64 %indvars.iv.i.i70, 64
  %i.cj = shl i64 %i.cf, %indvars.iv.i.i70
  %i.ck = select i1 %i.ci, i64 %i.cj, i64 0, !prof !223
  %.130.i.i.i72 = add i64 %i.ck, %.029.i.i.i72    ; 2 uses
  %indvars.iv.next.i.i74 = add nuw nsw i64 %indvars.iv.i.i70, 7
  %i.cl = getelementptr inbounds nuw i8, ptr %.031.i.i.i71, i64 1 ; 2 uses
  %i.cm = icmp slt i8 %i.cd, 0
  br i1 %i.cm, label %bb.n, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit78, !llvm.loop !224

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit78:  ; preds = %bb.o, %bb.p
  %.132.i.i.i73 = phi ptr [ %i.cl, %bb.p ], [ %.031.i.i.i71, %bb.o ]
  %.3.i.i.i74 = phi i64 [ %.130.i.i.i72, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.cn = ptrtoint ptr %.132.i.i.i73 to i64
  %i.co = ptrtoint ptr %.1 to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = and i64 %i.cp, 4294967295
  %i.cr = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cq ; 5 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.t
  %indvars.iv.next.i.i86 = add nuw nsw i64 %indvars.iv.i.i82286, 7
  br label %bb.r, !llvm.loop !224

bb.r:                                             ; preds = %bb.q, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit78
  %.029.i.i.i84288 = phi i64 [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit78 ], [ %.130.i.i.i83, %bb.q ]
  %.031.i.i.i83287 = phi ptr [ %i.cr, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit78 ], [ %i.da, %bb.q ] ; 3 uses
  %indvars.iv.i.i82286 = phi i64 [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit78 ], [ %indvars.iv.next.i.i86, %bb.q ] ; 5 uses
  %i.cs = load i8, ptr %.031.i.i.i83287, align 1, !tbaa !216 ; 2 uses
  %i.ct = and i8 %i.cs, 127                       ; 3 uses
  %i.cu = zext nneg i8 %i.ct to i64
  %i.cv = icmp samesign ugt i64 %indvars.iv.i.i82286, 62
  br i1 %i.cv, label %bb.s, label %bb.t, !prof !222

bb.s:                                             ; preds = %bb.r
  %.not44.i.i.i86 = icmp eq i64 %indvars.iv.i.i82286, 63
  %.not.i.i.i87 = icmp samesign ugt i8 %i.ct, 1
  %i.cw = icmp ne i8 %i.ct, 0
  %or.cond43.i.i.i88 = select i1 %.not44.i.i.i86, i1 %.not.i.i.i87, i1 %i.cw
  br i1 %or.cond43.i.i.i88, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89.thread.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cx = icmp samesign ult i64 %indvars.iv.i.i82286, 64
  %i.cy = shl i64 %i.cu, %indvars.iv.i.i82286
  %i.cz = select i1 %i.cx, i64 %i.cy, i64 0, !prof !223
  %.130.i.i.i83 = add i64 %i.cz, %.029.i.i.i84288 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.031.i.i.i83287, i64 1 ; 2 uses
  %i.db = icmp slt i8 %i.cs, 0
  br i1 %i.db, label %bb.q, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89, !llvm.loop !224

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89.thread.loopexit: ; preds = %bb.s
  %i.dc = ptrtoint ptr %.031.i.i.i83287 to i64
  %i.dd = ptrtoint ptr %i.cr to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = and i64 %i.de, 4294967295
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.df
  br label %.loopexit

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89:  ; preds = %bb.t
  %i.dh = ptrtoint ptr %i.da to i64
  %i.di = ptrtoint ptr %i.cr to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = and i64 %i.dj, 4294967295
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.dk ; 2 uses
  %i.dm = icmp ne i64 %.3.i.i.i74, %i.cc
  %i.dn = and i64 %.130.i.i.i83, 4294967295       ; 2 uses
  %i.do = icmp ne i64 %i.dn, 0
  %or.cond = and i1 %i.dm, %i.do
  br i1 %or.cond, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dn
  br label %bb.m, !llvm.loop !226

.loopexit:                                        ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89.thread.loopexit
  %i.dq = phi ptr [ %i.dg, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89.thread.loopexit ], [ %i.dl, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89 ]
  %.not = icmp eq i64 %.3.i.i.i74, %i.cc
  br i1 %.not, label %.backedge.backedge, label %.thread

.preheader197:                                    ; preds = %.backedge, %bb.w
  %indvars.iv.i.i94 = phi i64 [ %indvars.iv.next.i.i98, %bb.w ], [ 0, %.backedge ] ; 5 uses
  %.031.i.i.i95 = phi ptr [ %i.dz, %bb.w ], [ %i.g, %.backedge ] ; 3 uses
  %.029.i.i.i96 = phi i64 [ %.130.i.i.i94, %bb.w ], [ 0, %.backedge ]
  %i.dr = load i8, ptr %.031.i.i.i95, align 1, !tbaa !216 ; 2 uses
  %i.ds = and i8 %i.dr, 127                       ; 3 uses
  %i.dt = zext nneg i8 %i.ds to i64
  %i.du = icmp samesign ugt i64 %indvars.iv.i.i94, 62
  br i1 %i.du, label %bb.v, label %bb.w, !prof !222

bb.v:                                             ; preds = %.preheader197
  %.not44.i.i.i97 = icmp eq i64 %indvars.iv.i.i94, 63
  %.not.i.i.i98 = icmp samesign ugt i8 %i.ds, 1
  %i.dv = icmp ne i8 %i.ds, 0
  %or.cond43.i.i.i99 = select i1 %.not44.i.i.i97, i1 %.not.i.i.i98, i1 %i.dv
  br i1 %or.cond43.i.i.i99, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit100, label %bb.w

bb.w:                                             ; preds = %bb.v, %.preheader197
  %i.dw = icmp samesign ult i64 %indvars.iv.i.i94, 64
  %i.dx = shl i64 %i.dt, %indvars.iv.i.i94
  %i.dy = select i1 %i.dw, i64 %i.dx, i64 0, !prof !223
  %.130.i.i.i94 = add i64 %i.dy, %.029.i.i.i96    ; 2 uses
  %indvars.iv.next.i.i98 = add nuw nsw i64 %indvars.iv.i.i94, 7
  %i.dz = getelementptr inbounds nuw i8, ptr %.031.i.i.i95, i64 1 ; 2 uses
  %i.ea = icmp slt i8 %i.dr, 0
  br i1 %i.ea, label %.preheader197, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit100, !llvm.loop !224

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit100: ; preds = %bb.v, %bb.w
  %.132.i.i.i95 = phi ptr [ %i.dz, %bb.w ], [ %.031.i.i.i95, %bb.v ]
  %.3.i.i.i96 = phi i64 [ %.130.i.i.i94, %bb.w ], [ 0, %bb.v ]
  %i.eb = ptrtoint ptr %.132.i.i.i95 to i64
  %i.ec = ptrtoint ptr %i.g to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = and i64 %i.ed, 4294967295
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ee ; 2 uses
  %i.eg = trunc i64 %.3.i.i.i96 to i32
  %i.eh = load i8, ptr %i.ef, align 1, !tbaa !216 ; 2 uses
  %i.ei = zext i8 %i.eh to i32
  %i.ej = icmp eq i8 %i.eh, 0
  %i.ek = sub nsw i32 32, %i.ei
  %i.el = lshr i32 -1, %i.ek
  %.0.i.i101 = select i1 %i.ej, i32 0, i32 %i.el
  %i.em = lshr i32 %2, %i.eg
  %i.en = and i32 %.0.i.i101, %i.em
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ef, i64 1 ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit100
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.z ], [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit100 ] ; 5 uses
  %.031.i = phi ptr [ %i.ey, %bb.z ], [ %i.ep, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit100 ] ; 3 uses
  %.029.i = phi i64 [ %.130.i, %bb.z ], [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit100 ]
  %i.eq = load i8, ptr %.031.i, align 1, !tbaa !216 ; 2 uses
  %i.er = and i8 %i.eq, 127                       ; 3 uses
  %i.es = zext nneg i8 %i.er to i64
  %i.et = icmp samesign ugt i64 %indvars.iv, 62
  br i1 %i.et, label %bb.y, label %bb.z, !prof !222

bb.y:                                             ; preds = %bb.x
  %.not44.i = icmp eq i64 %indvars.iv, 63
  %.not.i102 = icmp samesign ugt i8 %i.er, 1
  %i.eu = icmp ne i8 %i.er, 0
  %or.cond43.i = select i1 %.not44.i, i1 %.not.i102, i1 %i.eu
  br i1 %or.cond43.i, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ev = icmp samesign ult i64 %indvars.iv, 64
  %i.ew = shl i64 %i.es, %indvars.iv
  %i.ex = select i1 %i.ev, i64 %i.ew, i64 0, !prof !223
  %.130.i = add i64 %i.ex, %.029.i                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 7
  %i.ey = getelementptr inbounds nuw i8, ptr %.031.i, i64 1 ; 2 uses
  %i.ez = icmp slt i8 %i.eq, 0
  br i1 %i.ez, label %bb.x, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, !llvm.loop !224

_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit:        ; preds = %bb.y, %bb.z
  %.132.i = phi ptr [ %i.ey, %bb.z ], [ %.031.i, %bb.y ]
  %.3.i = phi i64 [ %.130.i, %bb.z ], [ 0, %bb.y ]
  %i.fa = ptrtoint ptr %.132.i to i64
  %i.fb = ptrtoint ptr %i.ep to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = and i64 %i.fc, 4294967295
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fd
  %.not.not = icmp eq i64 %.3.i, %i.eo
  br i1 %.not.not, label %.backedge.backedge, label %.thread

.preheader198:                                    ; preds = %.backedge, %bb.ab
  %indvars.iv.i.i108 = phi i64 [ %indvars.iv.next.i.i112, %bb.ab ], [ 0, %.backedge ] ; 5 uses
  %.031.i.i.i109 = phi ptr [ %i.fs, %bb.ab ], [ %i.g, %.backedge ] ; 3 uses
  %.029.i.i.i110 = phi i64 [ %.130.i.i.i107, %bb.ab ], [ 0, %.backedge ]
  %i.ff = load i8, ptr %.031.i.i.i109, align 1, !tbaa !216 ; 2 uses
  %i.fg = and i8 %i.ff, 127                       ; 3 uses
  %i.fh = zext nneg i8 %i.fg to i64
  %i.fi = icmp samesign ugt i64 %indvars.iv.i.i108, 62
  br i1 %i.fi, label %bb.aa, label %bb.ab, !prof !222

bb.aa:                                            ; preds = %.preheader198
  %.not44.i.i.i110 = icmp eq i64 %indvars.iv.i.i108, 63
  %.not.i.i.i111 = icmp samesign ugt i8 %i.fg, 1
  %i.fj = icmp ne i8 %i.fg, 0
  %or.cond43.i.i.i112 = select i1 %.not44.i.i.i110, i1 %.not.i.i.i111, i1 %i.fj
  br i1 %or.cond43.i.i.i112, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113.thread, label %bb.ab

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113.thread: ; preds = %bb.aa
  %i.fk = ptrtoint ptr %.031.i.i.i109 to i64
  %i.fl = ptrtoint ptr %i.g to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = and i64 %i.fm, 4294967295
  %i.fo = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fn
  %.val164 = load i64, ptr %i.b, align 8
  br label %.split

bb.ab:                                            ; preds = %bb.aa, %.preheader198
  %i.fp = icmp samesign ult i64 %indvars.iv.i.i108, 64
  %i.fq = shl i64 %i.fh, %indvars.iv.i.i108
  %i.fr = select i1 %i.fp, i64 %i.fq, i64 0, !prof !223
  %.130.i.i.i107 = add i64 %i.fr, %.029.i.i.i110  ; 2 uses
  %indvars.iv.next.i.i112 = add nuw nsw i64 %indvars.iv.i.i108, 7
  %i.fs = getelementptr inbounds nuw i8, ptr %.031.i.i.i109, i64 1 ; 2 uses
  %i.ft = icmp slt i8 %i.ff, 0
  br i1 %i.ft, label %.preheader198, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113, !llvm.loop !224

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113: ; preds = %bb.ab
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.g to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = and i64 %i.fw, 4294967295
  %i.fy = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fx ; 11 uses
  %i.fz = trunc i64 %.130.i.i.i107 to i32
  %.val = load i64, ptr %i.b, align 8             ; 11 uses
  switch i32 %i.fz, label %bb.ac [
    i32 0, label %.split
    i32 1, label %_ZN12_GLOBAL__N_121checkDecoderPredicateEjRKN4llvm13FeatureBitsetE.exit
    i32 2, label %.split177.a
    i32 3, label %.split176
    i32 4, label %.split175
    i32 5, label %.split174
    i32 6, label %.split173
    i32 7, label %.split172
    i32 8, label %.split171
    i32 9, label %.split170
    i32 10, label %bb.ad
  ]

bb.ac:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  unreachable

.split:                                           ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113.thread, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %.val165 = phi i64 [ %.val164, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113.thread ], [ %.val, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113 ]
  %i.ga = phi ptr [ %i.fo, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113.thread ], [ %i.fy, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113 ]
  %i.gb = and i64 %.val165, 4398046511104
  %.not195.a = icmp eq i64 %i.gb, 0
  br i1 %.not195.a, label %.thread, label %.backedge.backedge

.split177.a:                                      ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gc = and i64 %.val, 128
  %.not193.a = icmp eq i64 %i.gc, 0
  br i1 %.not193.a, label %.thread, label %.backedge.backedge

.split176:                                        ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gd = and i64 %.val, 4
  %.not192 = icmp eq i64 %i.gd, 0
  br i1 %.not192, label %.thread, label %.backedge.backedge

.split175:                                        ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.ge = and i64 %.val, 256
  %.not191 = icmp eq i64 %i.ge, 0
  br i1 %.not191, label %.thread, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.split175, %.loopexit, %.split176, %bb.aj, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, %bb.j, %.split177.a, %bb.i, %.split174, %_ZN12_GLOBAL__N_121checkDecoderPredicateEjRKN4llvm13FeatureBitsetE.exit, %.split, %bb.ad, %.split170, %.split171, %.split172, %.split173
  %.0156.be = phi ptr [ %i.fy, %.split173 ], [ %i.fy, %.split175 ], [ %i.dq, %.loopexit ], [ %i.fy, %.split176 ], [ %i.hv, %bb.aj ], [ %i.fe, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ], [ %i.au, %bb.j ], [ %i.fy, %.split177.a ], [ %i.au, %bb.i ], [ %i.fy, %.split174 ], [ %i.fy, %_ZN12_GLOBAL__N_121checkDecoderPredicateEjRKN4llvm13FeatureBitsetE.exit ], [ %i.ga, %.split ], [ %i.fy, %bb.ad ], [ %i.fy, %.split170 ], [ %i.fy, %.split171 ], [ %i.fy, %.split172 ]
  br label %.backedge, !llvm.loop !227

.split174:                                        ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gf = and i64 %.val, 274877906944
  %.not190 = icmp eq i64 %i.gf, 0
  br i1 %.not190, label %.thread, label %.backedge.backedge

.split173:                                        ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gg = and i64 %.val, 35184372088832
  %.not189 = icmp eq i64 %i.gg, 0
  br i1 %.not189, label %.thread, label %.backedge.backedge

.split172:                                        ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gh = and i64 %.val, 8796093022208
  %.not188 = icmp eq i64 %i.gh, 0
  br i1 %.not188, label %.thread, label %.backedge.backedge

.split171:                                        ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gi = and i64 %.val, 17592186044416
  %.not187 = icmp eq i64 %i.gi, 0
  br i1 %.not187, label %.thread, label %.backedge.backedge

.split170:                                        ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gj = and i64 %.val, 549755813888
  %.not186 = icmp eq i64 %i.gj, 0
  br i1 %.not186, label %.thread, label %.backedge.backedge

bb.ad:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gk = and i64 %.val, 9011597301252096
  %or.cond185.not = icmp eq i64 %i.gk, 0
  br i1 %or.cond185.not, label %.thread, label %.backedge.backedge

_ZN12_GLOBAL__N_121checkDecoderPredicateEjRKN4llvm13FeatureBitsetE.exit: ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gl = and i64 %.val, 2
  %.not194 = icmp eq i64 %i.gl, 0
  br i1 %.not194, label %.thread, label %.backedge.backedge

.preheader199:                                    ; preds = %.backedge, %bb.af
  %indvars.iv.i.i122 = phi i64 [ %indvars.iv.next.i.i126, %bb.af ], [ 0, %.backedge ] ; 5 uses
  %.031.i.i.i123 = phi ptr [ %i.gu, %bb.af ], [ %i.g, %.backedge ] ; 3 uses
  %.029.i.i.i124 = phi i64 [ %.130.i.i.i120, %bb.af ], [ 0, %.backedge ]
  %i.gm = load i8, ptr %.031.i.i.i123, align 1, !tbaa !216 ; 2 uses
  %i.gn = and i8 %i.gm, 127                       ; 3 uses
  %i.go = zext nneg i8 %i.gn to i64
  %i.gp = icmp samesign ugt i64 %indvars.iv.i.i122, 62
  br i1 %i.gp, label %bb.ae, label %bb.af, !prof !222

bb.ae:                                            ; preds = %.preheader199
  %.not44.i.i.i123 = icmp eq i64 %indvars.iv.i.i122, 63
  %.not.i.i.i124 = icmp samesign ugt i8 %i.gn, 1
  %i.gq = icmp ne i8 %i.gn, 0
  %or.cond43.i.i.i125 = select i1 %.not44.i.i.i123, i1 %.not.i.i.i124, i1 %i.gq
  br i1 %or.cond43.i.i.i125, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit126, label %bb.af

bb.af:                                            ; preds = %bb.ae, %.preheader199
  %i.gr = icmp samesign ult i64 %indvars.iv.i.i122, 64
  %i.gs = shl i64 %i.go, %indvars.iv.i.i122
  %i.gt = select i1 %i.gr, i64 %i.gs, i64 0, !prof !223
  %.130.i.i.i120 = add i64 %i.gt, %.029.i.i.i124  ; 2 uses
  %indvars.iv.next.i.i126 = add nuw nsw i64 %indvars.iv.i.i122, 7
  %i.gu = getelementptr inbounds nuw i8, ptr %.031.i.i.i123, i64 1 ; 2 uses
  %i.gv = icmp slt i8 %i.gm, 0
  br i1 %i.gv, label %.preheader199, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit126, !llvm.loop !224

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit126: ; preds = %bb.ae, %bb.af
  %.132.i.i.i121 = phi ptr [ %i.gu, %bb.af ], [ %.031.i.i.i123, %bb.ae ]
  %.3.i.i.i122 = phi i64 [ %.130.i.i.i120, %bb.af ], [ 0, %bb.ae ]
  %i.gw = ptrtoint ptr %.132.i.i.i121 to i64
  %i.gx = ptrtoint ptr %i.g to i64
  %i.gy = sub i64 %i.gw, %i.gx
  %i.gz = and i64 %i.gy, 4294967295
  %i.ha = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.gz
  %i.hb = trunc i64 %.3.i.i.i122 to i32
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit126, %bb.ai
  %indvars.iv.i.i134 = phi i64 [ %indvars.iv.next.i.i138, %bb.ai ], [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit126 ] ; 5 uses
  %.031.i.i.i135 = phi ptr [ %i.hk, %bb.ai ], [ %i.ha, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit126 ] ; 2 uses
  %.029.i.i.i136 = phi i64 [ %.130.i.i.i131, %bb.ai ], [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit126 ]
  %i.hc = load i8, ptr %.031.i.i.i135, align 1, !tbaa !216 ; 2 uses
  %i.hd = and i8 %i.hc, 127                       ; 3 uses
  %i.he = zext nneg i8 %i.hd to i64
  %i.hf = icmp samesign ugt i64 %indvars.iv.i.i134, 62
  br i1 %i.hf, label %bb.ah, label %bb.ai, !prof !222

bb.ah:                                            ; preds = %bb.ag
  %.not44.i.i.i134 = icmp eq i64 %indvars.iv.i.i134, 63
  %.not.i.i.i135 = icmp samesign ugt i8 %i.hd, 1
  %i.hg = icmp ne i8 %i.hd, 0
  %or.cond43.i.i.i136 = select i1 %.not44.i.i.i134, i1 %.not.i.i.i135, i1 %i.hg
  br i1 %or.cond43.i.i.i136, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit137, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hh = icmp samesign ult i64 %indvars.iv.i.i134, 64
  %i.hi = shl i64 %i.he, %indvars.iv.i.i134
  %i.hj = select i1 %i.hh, i64 %i.hi, i64 0, !prof !223
  %.130.i.i.i131 = add i64 %i.hj, %.029.i.i.i136  ; 2 uses
  %indvars.iv.next.i.i138 = add nuw nsw i64 %indvars.iv.i.i134, 7
  %i.hk = getelementptr inbounds nuw i8, ptr %.031.i.i.i135, i64 1
  %i.hl = icmp slt i8 %i.hc, 0
  br i1 %i.hl, label %bb.ag, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit137, !llvm.loop !224

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit137: ; preds = %bb.ah, %bb.ai
  %.3.i.i.i133 = phi i64 [ %.130.i.i.i131, %bb.ai ], [ 0, %bb.ah ]
  %i.hm = trunc i64 %.3.i.i.i133 to i32
  store i32 0, ptr %i.f, align 8, !tbaa !214
  store i32 %i.hb, ptr %1, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.hn = call fastcc noundef i32 @_ZN12_GLOBAL__N_114decodeToMCInstIjEEN4llvm14MCDisassembler12DecodeStatusEjS3_T_RNS1_6MCInstEmPKS2_Rb(i32 noundef %i.hm, i32 noundef 3, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef %3, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.ho = load i8, ptr %i.a, align 1, !tbaa !236, !range !211, !noundef !32
  %i.hp = trunc nuw i8 %i.ho to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br i1 %i.hp, label %_ZN4llvm11raw_ostreamlsEc.exit.thread, label %.thread

.thread:                                          ; preds = %bb.ad, %.split177.a, %.split176, %.split175, %.split174, %.split173, %.split172, %.split171, %.split170, %.split, %_ZN12_GLOBAL__N_121checkDecoderPredicateEjRKN4llvm13FeatureBitsetE.exit, %.loopexit, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit137
  %i.hq = load i32, ptr %i.d, align 8, !tbaa !214 ; 3 uses
  %.not.i138 = icmp eq i32 %i.hq, 0
  br i1 %.not.i138, label %_ZN4llvm11raw_ostreamlsEc.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %.thread
  %i.hr = load ptr, ptr %6, align 8, !tbaa !213
  %i.hs = zext i32 %i.hq to i64
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hs
  %i.hu = getelementptr inbounds i8, ptr %i.ht, i64 -8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !237
  %i.hw = add i32 %i.hq, -1
  store i32 %i.hw, ptr %i.d, align 8, !tbaa !214
  br label %.backedge.backedge

_ZN4llvm11raw_ostreamlsEc.exit.thread:            ; preds = %.thread, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit137, %bb.e, %bb.f
  %.3183 = phi i32 [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %.thread ], [ %i.hn, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit137 ]
  %i.hx = load ptr, ptr %6, align 8, !tbaa !213   ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.c
  br i1 %i.hy, label %_ZN4llvm11SmallVectorIPKhLj8EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.thread
  call void @free(ptr noundef %i.hx) #10
  br label %_ZN4llvm11SmallVectorIPKhLj8EED2Ev.exit

_ZN4llvm11SmallVectorIPKhLj8EED2Ev.exit:          ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.thread, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  ret i32 %.3183
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN12_GLOBAL__N_114decodeToMCInstIjEEN4llvm14MCDisassembler12DecodeStatusEjS3_T_RNS1_6MCInstEmPKS2_Rb(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, i64 noundef %4, ptr noundef nonnull %5, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %6) unnamed_addr #0 {
bb.a:
  store i8 1, ptr %6, align 1, !tbaa !236
  switch i32 %0, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.i
    i32 5, label %bb.k
    i32 6, label %bb.n
    i32 7, label %bb.nu
    i32 8, label %bb.q
    i32 9, label %bb.s
    i32 10, label %bb.u
    i32 11, label %bb.v
    i32 12, label %bb.y
    i32 13, label %bb.ab
    i32 14, label %bb.ae
    i32 15, label %bb.ah
    i32 16, label %bb.al
    i32 17, label %bb.ap
    i32 18, label %bb.as
    i32 19, label %bb.av
    i32 20, label %bb.ay
    i32 21, label %bb.ba
    i32 22, label %bb.bb
    i32 23, label %bb.bc
    i32 24, label %bb.be
    i32 25, label %bb.bi
    i32 26, label %bb.bn
    i32 27, label %bb.bq
    i32 28, label %bb.bu
    i32 29, label %bb.bw
    i32 30, label %bb.cb
    i32 31, label %bb.cf
    i32 32, label %bb.ci
    i32 33, label %bb.cj
    i32 34, label %bb.cm
    i32 35, label %bb.co
    i32 36, label %bb.cq
    i32 37, label %bb.ct
    i32 38, label %bb.cw
    i32 39, label %bb.cy
    i32 40, label %bb.da
    i32 41, label %bb.dc
    i32 42, label %bb.df
    i32 43, label %bb.di
    i32 44, label %bb.dl
    i32 45, label %bb.do
    i32 46, label %bb.dr
    i32 47, label %bb.dt
    i32 48, label %bb.dv
    i32 49, label %bb.dx
    i32 50, label %bb.dz
    i32 51, label %bb.eb
    i32 52, label %bb.ed
    i32 53, label %bb.eh
    i32 54, label %bb.em
    i32 55, label %bb.eq
    i32 56, label %bb.ev
    i32 57, label %bb.ez
    i32 58, label %bb.fe
    i32 59, label %bb.fj
    i32 60, label %bb.fo
    i32 61, label %bb.ft
    i32 62, label %bb.fw
    i32 63, label %bb.fz
    i32 64, label %bb.gc
    i32 65, label %bb.ge
    i32 66, label %bb.gf
    i32 67, label %bb.gi
    i32 68, label %bb.gl
    i32 69, label %bb.gm
    i32 70, label %bb.gn
    i32 71, label %bb.gp
    i32 72, label %bb.gr
    i32 73, label %bb.gs
    i32 74, label %bb.gu
    i32 75, label %bb.gw
    i32 76, label %bb.gy
    i32 77, label %bb.ha
    i32 78, label %bb.hd
    i32 79, label %bb.he
    i32 80, label %bb.hi
    i32 81, label %bb.hl
    i32 82, label %bb.hn
    i32 83, label %bb.hq
    i32 84, label %bb.ht
    i32 85, label %bb.hw
    i32 86, label %bb.hy
    i32 87, label %bb.ib
    i32 88, label %bb.id
    i32 89, label %bb.ig
    i32 90, label %bb.ij
    i32 91, label %bb.im
    i32 92, label %bb.io
    i32 93, label %bb.is
    i32 94, label %bb.iv
    i32 95, label %bb.iz
    i32 96, label %bb.jd
    i32 97, label %bb.jh
    i32 98, label %bb.jl
    i32 99, label %bb.jp
    i32 100, label %bb.jt
    i32 101, label %bb.jx
    i32 102, label %bb.ka
    i32 103, label %bb.kd
    i32 104, label %bb.kg
    i32 105, label %bb.kj
    i32 106, label %bb.km
    i32 107, label %bb.ko
    i32 108, label %bb.kr
    i32 109, label %bb.kt
    i32 110, label %bb.kw
    i32 111, label %bb.ky
    i32 112, label %bb.ld
    i32 113, label %bb.lg
    i32 114, label %bb.ll
    i32 115, label %bb.lp
    i32 116, label %bb.ls
    i32 117, label %bb.lv
    i32 118, label %bb.ly
    i32 119, label %bb.mb
    i32 120, label %bb.me
    i32 121, label %bb.mg
    i32 122, label %bb.mj
    i32 123, label %bb.ml
    i32 124, label %bb.mo
    i32 125, label %bb.mr
    i32 126, label %bb.mu
    i32 127, label %bb.mw
    i32 128, label %bb.na
    i32 129, label %bb.ne
    i32 130, label %bb.ni
    i32 131, label %bb.nm
    i32 132, label %bb.nq
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = and i32 %2, 4194303
end_hunk_0
