Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MipsDisassembler?download=true
inline.NumInlined: 3479
inline.NumDeleted: 122
begin_hunk_0_@_ZNK12_GLOBAL__N_116MipsDisassembler14getInstructionERN4llvm6MCInstERmNS1_8ArrayRefIhEEmRNS1_11raw_ostreamE:bb.a
._crit_edge182:                                   ; preds = %bb.ak
  %.val126.pre = load ptr, ptr %i.bm, align 8, !tbaa !37 ; 2 uses
  %.phi.trans.insert184 = getelementptr i8, ptr %.val126.pre, i64 240
  %.val126.val.pre = load i64, ptr %.phi.trans.insert184, align 8, !tbaa !20
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge182, %bb.aj
  %.val126.val = phi i64 [ %.val126.val.pre, %._crit_edge182 ], [ %.val125.val, %bb.aj ] ; 2 uses
  %.val126 = phi ptr [ %.val126.pre, %._crit_edge182 ], [ %.val125, %bb.aj ] ; 2 uses
  %i.bz = and i64 %.val126.val, 4
  %.not161 = icmp eq i64 %i.bz, 0
  br i1 %.not161, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ca = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_117decodeInstructionIjEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE(ptr noundef nonnull @_ZN12_GLOBAL__N_120DecoderTableCnMips32E, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %.2.ph, i64 noundef %5, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(320) %.val126) ; 2 uses
  %.not104 = icmp eq i32 %i.ca, 0
  br i1 %.not104, label %._crit_edge186, label %_ZL17readInstruction16N4llvm8ArrayRefIhEEmRmRjb.exit

._crit_edge186:                                   ; preds = %bb.am
  %.val127.pre = load ptr, ptr %i.bm, align 8, !tbaa !37 ; 2 uses
  %.phi.trans.insert188 = getelementptr i8, ptr %.val127.pre, i64 240
  %.val127.val.pre = load i64, ptr %.phi.trans.insert188, align 8, !tbaa !20
  br label %bb.an

bb.an:                                            ; preds = %._crit_edge186, %bb.al
  %.val127.val = phi i64 [ %.val127.val.pre, %._crit_edge186 ], [ %.val126.val, %bb.al ] ; 2 uses
  %.val127 = phi ptr [ %.val127.pre, %._crit_edge186 ], [ %.val126, %bb.al ] ; 2 uses
  %i.cb = and i64 %.val127.val, 8
  %.not162 = icmp eq i64 %i.cb, 0
  br i1 %.not162, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cc = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_117decodeInstructionIjEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE(ptr noundef nonnull @_ZN12_GLOBAL__N_121DecoderTableCnMipsP32E, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %.2.ph, i64 noundef %5, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(320) %.val127) ; 2 uses
  %.not105 = icmp eq i32 %i.cc, 0
  br i1 %.not105, label %._crit_edge190, label %_ZL17readInstruction16N4llvm8ArrayRefIhEEmRmRjb.exit

._crit_edge190:                                   ; preds = %bb.ao
  %.val118.pre = load ptr, ptr %i.bm, align 8, !tbaa !37 ; 2 uses
  %.phi.trans.insert192 = getelementptr i8, ptr %.val118.pre, i64 240
  %.val118.val.pre = load i64, ptr %.phi.trans.insert192, align 8, !tbaa !20
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge190, %bb.an
  %.val118.val = phi i64 [ %.val118.val.pre, %._crit_edge190 ], [ %.val127.val, %bb.an ] ; 2 uses
  %.val118 = phi ptr [ %.val118.pre, %._crit_edge190 ], [ %.val127, %bb.an ] ; 2 uses
  %i.cd = and i64 %.val118.val, 4096
  %.not163 = icmp eq i64 %i.cd, 0
  br i1 %.not163, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ce = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_117decodeInstructionIjEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE(ptr noundef nonnull @_ZN12_GLOBAL__N_120DecoderTableMips6432E, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %.2.ph, i64 noundef %5, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(320) %.val118) ; 2 uses
  %.not106 = icmp eq i32 %i.ce, 0
  br i1 %.not106, label %._crit_edge194, label %_ZL17readInstruction16N4llvm8ArrayRefIhEEmRmRjb.exit

._crit_edge194:                                   ; preds = %bb.aq
  %.val120.pre = load ptr, ptr %i.bm, align 8, !tbaa !37 ; 2 uses
  %.phi.trans.insert196 = getelementptr i8, ptr %.val120.pre, i64 240
  %.val120.val.pre = load i64, ptr %.phi.trans.insert196, align 8, !tbaa !20
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge194, %bb.ap
  %.val120.val = phi i64 [ %.val120.val.pre, %._crit_edge194 ], [ %.val118.val, %bb.ap ]
  %.val120 = phi ptr [ %.val120.pre, %._crit_edge194 ], [ %.val118, %bb.ap ] ; 2 uses
  %i.cf = and i64 %.val120.val, 256
  %.not164 = icmp eq i64 %i.cf, 0
  br i1 %.not164, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cg = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_117decodeInstructionIjEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE(ptr noundef nonnull @_ZN12_GLOBAL__N_122DecoderTableMipsFP6432E, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %.2.ph, i64 noundef %5, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(320) %.val120) ; 2 uses
  %.not107 = icmp eq i32 %i.cg, 0
  br i1 %.not107, label %._crit_edge198, label %_ZL17readInstruction16N4llvm8ArrayRefIhEEmRmRjb.exit

._crit_edge198:                                   ; preds = %bb.as
  %.pre = load ptr, ptr %i.bm, align 8, !tbaa !37
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge198, %bb.ar
  %i.ch = phi ptr [ %.pre, %._crit_edge198 ], [ %.val120, %bb.ar ]
  %i.ci = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_117decodeInstructionIjEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE(ptr noundef nonnull @_ZN12_GLOBAL__N_118DecoderTableMips32E, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %.2.ph, i64 noundef %5, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(320) %i.ch)
  br label %_ZL17readInstruction16N4llvm8ArrayRefIhEEmRmRjb.exit

_ZL17readInstruction16N4llvm8ArrayRefIhEEmRmRjb.exit: ; preds = %bb.x, %bb.b, %_ZL17readInstruction32N4llvm8ArrayRefIhEEmRmRjbb.exit, %bb.at, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.w, %bb.v, %bb.s, %bb.q, %bb.j, %bb.h
  %.0 = phi i32 [ %i.cg, %bb.as ], [ %i.t, %bb.h ], [ %i.v, %bb.j ], [ %i.ci, %bb.at ], [ %i.az, %bb.q ], [ %i.bb, %bb.s ], [ %i.be, %bb.v ], [ 0, %bb.w ], [ 0, %_ZL17readInstruction32N4llvm8ArrayRefIhEEmRmRjbb.exit ], [ 0, %bb.b ], [ %i.bq, %bb.ac ], [ %i.bs, %bb.ae ], [ %i.bu, %bb.ag ], [ %i.bw, %bb.ai ], [ %i.by, %bb.ak ], [ %i.ca, %bb.am ], [ %i.cc, %bb.ao ], [ %i.ce, %bb.aq ], [ 0, %bb.x ]
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
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN12_GLOBAL__N_117decodeInstructionIjEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, i64 noundef %3, ptr noundef nonnull %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.128", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i32 0, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 8, ptr %i.e, align 4, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.0156 = phi ptr [ %0, %bb.a ], [ %.0156.be, %.backedge.backedge ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0156, i64 1 ; 17 uses
  %i.h = load i8, ptr %.0156, align 1, !tbaa !36  ; 2 uses
  switch i8 %i.h, label %bb.b [
    i8 1, label %.preheader
    i8 2, label %.preheader424
    i8 3, label %.preheader425
    i8 4, label %.preheader426
    i8 5, label %.preheader427
  ]

bb.b:                                             ; preds = %.backedge
  %i.i = ptrtoint ptr %.0156 to i64
  %i.j = ptrtoint ptr %0 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #11
  %i.m = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 noundef %i.k) #11 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46   ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = icmp ult i64 %i.t, 34
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull @.str, i64 noundef 34) #11
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.q, ptr noundef nonnull align 1 dereferenceable(34) @.str, i64 34, i1 false)
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 34
  store ptr %i.x, ptr %i.p, align 8, !tbaa !46
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.v, %bb.c ], [ %i.m, %bb.d ]
  %i.y = zext i8 %i.h to i64
  %i.z = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %i.y) #11 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !46 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42
  %.not.i = icmp ult ptr %i.ab, %i.ad
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ae = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.z, i8 noundef zeroext 10) #11 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !46
  store i8 10, ptr %i.ab, align 1, !tbaa !36
  br label %_ZN4llvm11raw_ostreamlsEc.exit.thread

.preheader:                                       ; preds = %.backedge, %bb.h
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.h ], [ 0, %.backedge ] ; 5 uses
  %.031.i.i.i = phi ptr [ %i.ao, %bb.h ], [ %i.g, %.backedge ] ; 3 uses
  %.029.i.i.i = phi i64 [ %.130.i.i.i, %bb.h ], [ 0, %.backedge ]
  %i.ag = load i8, ptr %.031.i.i.i, align 1, !tbaa !36 ; 2 uses
  %i.ah = and i8 %i.ag, 127                       ; 3 uses
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = icmp samesign ugt i64 %indvars.iv.i.i, 62
  br i1 %i.aj, label %bb.g, label %bb.h, !prof !47

bb.g:                                             ; preds = %.preheader
  %.not44.i.i.i = icmp eq i64 %indvars.iv.i.i, 63
  %.not.i.i.i = icmp samesign ugt i8 %i.ah, 1
  %i.ak = icmp ne i8 %i.ah, 0
  %or.cond43.i.i.i = select i1 %.not44.i.i.i, i1 %.not.i.i.i, i1 %i.ak
  br i1 %or.cond43.i.i.i, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader
  %i.al = icmp samesign ult i64 %indvars.iv.i.i, 64
  %i.am = shl i64 %i.ai, %indvars.iv.i.i
  %i.an = select i1 %i.al, i64 %i.am, i64 0, !prof !48
  %.130.i.i.i = add i64 %i.an, %.029.i.i.i        ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 7
  %i.ao = getelementptr inbounds nuw i8, ptr %.031.i.i.i, i64 1 ; 2 uses
  %i.ap = icmp slt i8 %i.ag, 0
  br i1 %i.ap, label %.preheader, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit, !llvm.loop !49

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
  %i.ax = load i32, ptr %i.d, align 8, !tbaa !40  ; 2 uses
  %i.ay = load i32, ptr %i.e, align 4, !tbaa !41
  %.not.i55 = icmp ult i32 %i.ax, %i.ay
  br i1 %.not.i55, label %bb.j, label %bb.i, !prof !48

bb.i:                                             ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKhLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %i.aw)
  br label %.backedge.backedge

bb.j:                                             ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit
  %i.az = zext i32 %i.ax to i64
  %i.ba = load ptr, ptr %6, align 8, !tbaa !38
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.az
  store ptr %i.aw, ptr %i.bb, align 1
  %i.bc = load i32, ptr %i.d, align 8, !tbaa !40
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.d, align 8, !tbaa !40
  br label %.backedge.backedge

.preheader424:                                    ; preds = %.backedge, %bb.l
  %indvars.iv.i.i57 = phi i64 [ %indvars.iv.next.i.i61, %bb.l ], [ 0, %.backedge ] ; 5 uses
  %.031.i.i.i58 = phi ptr [ %i.bm, %bb.l ], [ %i.g, %.backedge ] ; 3 uses
  %.029.i.i.i59 = phi i64 [ %.130.i.i.i60, %bb.l ], [ 0, %.backedge ]
  %i.be = load i8, ptr %.031.i.i.i58, align 1, !tbaa !36 ; 2 uses
  %i.bf = and i8 %i.be, 127                       ; 3 uses
  %i.bg = zext nneg i8 %i.bf to i64
  %i.bh = icmp samesign ugt i64 %indvars.iv.i.i57, 62
  br i1 %i.bh, label %bb.k, label %bb.l, !prof !47

bb.k:                                             ; preds = %.preheader424
  %.not44.i.i.i63 = icmp eq i64 %indvars.iv.i.i57, 63
  %.not.i.i.i64 = icmp samesign ugt i8 %i.bf, 1
  %i.bi = icmp ne i8 %i.bf, 0
  %or.cond43.i.i.i65 = select i1 %.not44.i.i.i63, i1 %.not.i.i.i64, i1 %i.bi
  br i1 %or.cond43.i.i.i65, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit66, label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader424
  %i.bj = icmp samesign ult i64 %indvars.iv.i.i57, 64
  %i.bk = shl i64 %i.bg, %indvars.iv.i.i57
  %i.bl = select i1 %i.bj, i64 %i.bk, i64 0, !prof !48
  %.130.i.i.i60 = add i64 %i.bl, %.029.i.i.i59    ; 2 uses
  %indvars.iv.next.i.i61 = add nuw nsw i64 %indvars.iv.i.i57, 7
  %i.bm = getelementptr inbounds nuw i8, ptr %.031.i.i.i58, i64 1 ; 2 uses
  %i.bn = icmp slt i8 %i.be, 0
  br i1 %i.bn, label %.preheader424, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit66, !llvm.loop !49

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
  %i.bv = load i8, ptr %i.bs, align 1, !tbaa !36  ; 2 uses
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
  %i.cd = load i8, ptr %.031.i.i.i71, align 1, !tbaa !36 ; 2 uses
  %i.ce = and i8 %i.cd, 127                       ; 3 uses
  %i.cf = zext nneg i8 %i.ce to i64
  %i.cg = icmp samesign ugt i64 %indvars.iv.i.i70, 62
  br i1 %i.cg, label %bb.o, label %bb.p, !prof !47

bb.o:                                             ; preds = %bb.n
  %.not44.i.i.i75 = icmp eq i64 %indvars.iv.i.i70, 63
  %.not.i.i.i76 = icmp samesign ugt i8 %i.ce, 1
  %i.ch = icmp ne i8 %i.ce, 0
  %or.cond43.i.i.i77 = select i1 %.not44.i.i.i75, i1 %.not.i.i.i76, i1 %i.ch
  br i1 %or.cond43.i.i.i77, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit78, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ci = icmp samesign ult i64 %indvars.iv.i.i70, 64
  %i.cj = shl i64 %i.cf, %indvars.iv.i.i70
  %i.ck = select i1 %i.ci, i64 %i.cj, i64 0, !prof !48
  %.130.i.i.i72 = add i64 %i.ck, %.029.i.i.i72    ; 2 uses
  %indvars.iv.next.i.i74 = add nuw nsw i64 %indvars.iv.i.i70, 7
  %i.cl = getelementptr inbounds nuw i8, ptr %.031.i.i.i71, i64 1 ; 2 uses
  %i.cm = icmp slt i8 %i.cd, 0
  br i1 %i.cm, label %bb.n, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit78, !llvm.loop !49

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
  %indvars.iv.next.i.i86 = add nuw nsw i64 %indvars.iv.i.i82514, 7
  br label %bb.r, !llvm.loop !49

bb.r:                                             ; preds = %bb.q, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit78
  %.029.i.i.i84516 = phi i64 [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit78 ], [ %.130.i.i.i83, %bb.q ]
  %.031.i.i.i83515 = phi ptr [ %i.cr, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit78 ], [ %i.da, %bb.q ] ; 3 uses
  %indvars.iv.i.i82514 = phi i64 [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit78 ], [ %indvars.iv.next.i.i86, %bb.q ] ; 5 uses
  %i.cs = load i8, ptr %.031.i.i.i83515, align 1, !tbaa !36 ; 2 uses
  %i.ct = and i8 %i.cs, 127                       ; 3 uses
  %i.cu = zext nneg i8 %i.ct to i64
  %i.cv = icmp samesign ugt i64 %indvars.iv.i.i82514, 62
  br i1 %i.cv, label %bb.s, label %bb.t, !prof !47

bb.s:                                             ; preds = %bb.r
  %.not44.i.i.i86 = icmp eq i64 %indvars.iv.i.i82514, 63
  %.not.i.i.i87 = icmp samesign ugt i8 %i.ct, 1
  %i.cw = icmp ne i8 %i.ct, 0
  %or.cond43.i.i.i88 = select i1 %.not44.i.i.i86, i1 %.not.i.i.i87, i1 %i.cw
  br i1 %or.cond43.i.i.i88, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89.thread.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cx = icmp samesign ult i64 %indvars.iv.i.i82514, 64
  %i.cy = shl i64 %i.cu, %indvars.iv.i.i82514
  %i.cz = select i1 %i.cx, i64 %i.cy, i64 0, !prof !48
  %.130.i.i.i83 = add i64 %i.cz, %.029.i.i.i84516 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.031.i.i.i83515, i64 1 ; 2 uses
  %i.db = icmp slt i8 %i.cs, 0
  br i1 %i.db, label %bb.q, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89, !llvm.loop !49

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89.thread.loopexit: ; preds = %bb.s
  %i.dc = ptrtoint ptr %.031.i.i.i83515 to i64
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
  br label %bb.m, !llvm.loop !51

.loopexit:                                        ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89.thread.loopexit
  %i.dq = phi ptr [ %i.dg, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89.thread.loopexit ], [ %i.dl, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit89 ]
  %.not = icmp eq i64 %.3.i.i.i74, %i.cc
  br i1 %.not, label %.backedge.backedge, label %.thread

.preheader425:                                    ; preds = %.backedge, %bb.w
  %indvars.iv.i.i94 = phi i64 [ %indvars.iv.next.i.i98, %bb.w ], [ 0, %.backedge ] ; 5 uses
  %.031.i.i.i95 = phi ptr [ %i.dz, %bb.w ], [ %i.g, %.backedge ] ; 3 uses
  %.029.i.i.i96 = phi i64 [ %.130.i.i.i94, %bb.w ], [ 0, %.backedge ]
  %i.dr = load i8, ptr %.031.i.i.i95, align 1, !tbaa !36 ; 2 uses
  %i.ds = and i8 %i.dr, 127                       ; 3 uses
  %i.dt = zext nneg i8 %i.ds to i64
  %i.du = icmp samesign ugt i64 %indvars.iv.i.i94, 62
  br i1 %i.du, label %bb.v, label %bb.w, !prof !47

bb.v:                                             ; preds = %.preheader425
  %.not44.i.i.i97 = icmp eq i64 %indvars.iv.i.i94, 63
  %.not.i.i.i98 = icmp samesign ugt i8 %i.ds, 1
  %i.dv = icmp ne i8 %i.ds, 0
  %or.cond43.i.i.i99 = select i1 %.not44.i.i.i97, i1 %.not.i.i.i98, i1 %i.dv
  br i1 %or.cond43.i.i.i99, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit100, label %bb.w

bb.w:                                             ; preds = %bb.v, %.preheader425
  %i.dw = icmp samesign ult i64 %indvars.iv.i.i94, 64
  %i.dx = shl i64 %i.dt, %indvars.iv.i.i94
  %i.dy = select i1 %i.dw, i64 %i.dx, i64 0, !prof !48
  %.130.i.i.i94 = add i64 %i.dy, %.029.i.i.i96    ; 2 uses
  %indvars.iv.next.i.i98 = add nuw nsw i64 %indvars.iv.i.i94, 7
  %i.dz = getelementptr inbounds nuw i8, ptr %.031.i.i.i95, i64 1 ; 2 uses
  %i.ea = icmp slt i8 %i.dr, 0
  br i1 %i.ea, label %.preheader425, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit100, !llvm.loop !49

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit100: ; preds = %bb.v, %bb.w
  %.132.i.i.i95 = phi ptr [ %i.dz, %bb.w ], [ %.031.i.i.i95, %bb.v ]
  %.3.i.i.i96 = phi i64 [ %.130.i.i.i94, %bb.w ], [ 0, %bb.v ]
  %i.eb = ptrtoint ptr %.132.i.i.i95 to i64
  %i.ec = ptrtoint ptr %i.g to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = and i64 %i.ed, 4294967295
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ee ; 2 uses
  %i.eg = trunc i64 %.3.i.i.i96 to i32
  %i.eh = load i8, ptr %i.ef, align 1, !tbaa !36  ; 2 uses
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
  %i.eq = load i8, ptr %.031.i, align 1, !tbaa !36 ; 2 uses
  %i.er = and i8 %i.eq, 127                       ; 3 uses
  %i.es = zext nneg i8 %i.er to i64
  %i.et = icmp samesign ugt i64 %indvars.iv, 62
  br i1 %i.et, label %bb.y, label %bb.z, !prof !47

bb.y:                                             ; preds = %bb.x
  %.not44.i = icmp eq i64 %indvars.iv, 63
  %.not.i102 = icmp samesign ugt i8 %i.er, 1
  %i.eu = icmp ne i8 %i.er, 0
  %or.cond43.i = select i1 %.not44.i, i1 %.not.i102, i1 %i.eu
  br i1 %or.cond43.i, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ev = icmp samesign ult i64 %indvars.iv, 64
  %i.ew = shl i64 %i.es, %indvars.iv
  %i.ex = select i1 %i.ev, i64 %i.ew, i64 0, !prof !48
  %.130.i = add i64 %i.ex, %.029.i                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 7
  %i.ey = getelementptr inbounds nuw i8, ptr %.031.i, i64 1 ; 2 uses
  %i.ez = icmp slt i8 %i.eq, 0
  br i1 %i.ez, label %bb.x, label %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, !llvm.loop !49

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

.preheader426:                                    ; preds = %.backedge, %bb.ab
  %indvars.iv.i.i108 = phi i64 [ %indvars.iv.next.i.i112, %bb.ab ], [ 0, %.backedge ] ; 5 uses
  %.031.i.i.i109 = phi ptr [ %i.fs, %bb.ab ], [ %i.g, %.backedge ] ; 3 uses
  %.029.i.i.i110 = phi i64 [ %.130.i.i.i107, %bb.ab ], [ 0, %.backedge ]
  %i.ff = load i8, ptr %.031.i.i.i109, align 1, !tbaa !36 ; 2 uses
  %i.fg = and i8 %i.ff, 127                       ; 3 uses
  %i.fh = zext nneg i8 %i.fg to i64
  %i.fi = icmp samesign ugt i64 %indvars.iv.i.i108, 62
  br i1 %i.fi, label %bb.aa, label %bb.ab, !prof !47

bb.aa:                                            ; preds = %.preheader426
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

bb.ab:                                            ; preds = %bb.aa, %.preheader426
  %i.fp = icmp samesign ult i64 %indvars.iv.i.i108, 64
  %i.fq = shl i64 %i.fh, %indvars.iv.i.i108
  %i.fr = select i1 %i.fp, i64 %i.fq, i64 0, !prof !48
  %.130.i.i.i107 = add i64 %i.fr, %.029.i.i.i110  ; 2 uses
  %indvars.iv.next.i.i112 = add nuw nsw i64 %indvars.iv.i.i108, 7
  %i.fs = getelementptr inbounds nuw i8, ptr %.031.i.i.i109, i64 1 ; 2 uses
  %i.ft = icmp slt i8 %i.ff, 0
  br i1 %i.ft, label %.preheader426, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113, !llvm.loop !49

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113: ; preds = %bb.ab
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.g to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = and i64 %i.fw, 4294967295
  %i.fy = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fx ; 115 uses
  %i.fz = trunc i64 %.130.i.i.i107 to i32
  %.val = load i64, ptr %i.b, align 8             ; 115 uses
  switch i32 %i.fz, label %bb.ac [
    i32 0, label %.split
    i32 1, label %bb.ad
    i32 2, label %.split281
    i32 3, label %bb.ae
    i32 4, label %bb.af
    i32 5, label %bb.ag
    i32 6, label %.split277
    i32 7, label %bb.ah
    i32 8, label %.split275
    i32 9, label %bb.ai
    i32 10, label %bb.aj
    i32 11, label %bb.ak
    i32 12, label %bb.al
    i32 13, label %bb.am
    i32 14, label %bb.an
    i32 15, label %bb.ao
    i32 16, label %bb.ap
    i32 17, label %bb.aq
    i32 18, label %bb.ar
    i32 19, label %bb.as
    i32 20, label %bb.at
    i32 21, label %bb.au
    i32 22, label %bb.av
    i32 23, label %bb.aw
    i32 24, label %bb.ax
    i32 25, label %bb.ay
    i32 26, label %bb.az
    i32 27, label %bb.ba
    i32 28, label %bb.bb
    i32 29, label %bb.bc
    i32 30, label %bb.bd
    i32 31, label %bb.be
    i32 32, label %bb.bf
    i32 33, label %bb.bg
    i32 34, label %bb.bh
    i32 35, label %bb.bi
    i32 36, label %bb.bj
    i32 37, label %.split246
    i32 38, label %bb.bk
    i32 39, label %bb.bl
    i32 40, label %bb.bm
    i32 41, label %bb.bn
    i32 42, label %bb.bo
    i32 43, label %bb.bp
    i32 44, label %bb.bq
    i32 45, label %bb.br
    i32 46, label %bb.bs
    i32 47, label %bb.bt
    i32 48, label %bb.bu
    i32 49, label %bb.bv
    i32 50, label %bb.bw
    i32 51, label %bb.bx
    i32 52, label %bb.by
    i32 53, label %bb.bz
    i32 54, label %bb.ca
    i32 55, label %bb.cb
    i32 56, label %bb.cc
    i32 57, label %bb.cd
    i32 58, label %bb.ce
    i32 59, label %bb.cf
    i32 60, label %bb.cg
    i32 61, label %bb.ch
    i32 62, label %bb.ci
    i32 63, label %bb.cj
    i32 64, label %bb.ck
    i32 65, label %bb.cl
    i32 66, label %bb.cm
    i32 67, label %bb.cn
    i32 68, label %bb.co
    i32 69, label %bb.cp
    i32 70, label %bb.cq
    i32 71, label %.split212
    i32 72, label %bb.cr
    i32 73, label %bb.cs
    i32 74, label %bb.ct
    i32 75, label %bb.cu
    i32 76, label %bb.cv
    i32 77, label %bb.cw
    i32 78, label %bb.cx
    i32 79, label %bb.cy
    i32 80, label %bb.cz
    i32 81, label %bb.da
    i32 82, label %bb.db
    i32 83, label %bb.dc
    i32 84, label %bb.dd
    i32 85, label %bb.de
    i32 86, label %bb.df
    i32 87, label %bb.dg
    i32 88, label %bb.dh
    i32 89, label %bb.di
    i32 90, label %bb.dj
    i32 91, label %bb.dk
    i32 92, label %bb.dl
    i32 93, label %bb.dm
    i32 94, label %bb.dn
    i32 95, label %bb.do
    i32 96, label %bb.dp
    i32 97, label %bb.dq
    i32 98, label %bb.dr
    i32 99, label %bb.ds
    i32 100, label %bb.dt
    i32 101, label %bb.du
    i32 102, label %bb.dv
    i32 103, label %bb.dw
    i32 104, label %bb.dx
    i32 105, label %bb.dy
    i32 106, label %bb.dz
    i32 107, label %bb.ea
    i32 108, label %bb.eb
    i32 109, label %bb.ec
    i32 110, label %bb.ed
    i32 111, label %bb.ee
    i32 112, label %bb.ef
    i32 113, label %bb.eg
    i32 114, label %bb.eh
  ]

bb.ac:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  unreachable

.split:                                           ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113.thread, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %.val165 = phi i64 [ %.val164, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113.thread ], [ %.val, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113 ]
  %i.ga = phi ptr [ %i.fo, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113.thread ], [ %i.fy, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113 ]
  %i.gb = and i64 %.val165, 268435456
  %.not423 = icmp eq i64 %i.gb, 0
  br i1 %.not423, label %.thread, label %.backedge.backedge

bb.ad:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gc = and i64 %.val, 8590000128
  %or.cond288 = icmp eq i64 %i.gc, 65536
  br i1 %or.cond288, label %.backedge.backedge, label %.thread

.split281:                                        ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gd = and i64 %.val, 65536
  %.not422 = icmp eq i64 %i.gd, 0
  br i1 %.not422, label %.thread, label %.backedge.backedge

bb.ae:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.ge = and i64 %.val, 8590000128
  %or.cond290 = icmp eq i64 %i.ge, 8590000128
  br i1 %or.cond290, label %.backedge.backedge, label %.thread

.backedge.backedge:                               ; preds = %bb.ae, %.loopexit, %bb.ad, %bb.en, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, %bb.j, %.split281, %bb.i, %.split, %bb.eg, %bb.eh, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %.split212, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %.split246, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %.split275, %bb.ag, %.split277, %bb.af
  %.0156.be = phi ptr [ %i.fy, %bb.af ], [ %i.fy, %bb.ae ], [ %i.dq, %.loopexit ], [ %i.fy, %bb.ad ], [ %i.lv, %bb.en ], [ %i.fe, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit ], [ %i.au, %bb.j ], [ %i.fy, %.split281 ], [ %i.au, %bb.i ], [ %i.ga, %.split ], [ %i.fy, %bb.eg ], [ %i.fy, %bb.eh ], [ %i.fy, %bb.ef ], [ %i.fy, %bb.ee ], [ %i.fy, %bb.ed ], [ %i.fy, %bb.ec ], [ %i.fy, %bb.eb ], [ %i.fy, %bb.ea ], [ %i.fy, %bb.dz ], [ %i.fy, %bb.dy ], [ %i.fy, %bb.dx ], [ %i.fy, %bb.dw ], [ %i.fy, %bb.dv ], [ %i.fy, %bb.du ], [ %i.fy, %bb.dt ], [ %i.fy, %bb.ds ], [ %i.fy, %bb.dr ], [ %i.fy, %bb.dq ], [ %i.fy, %bb.dp ], [ %i.fy, %bb.do ], [ %i.fy, %bb.dn ], [ %i.fy, %bb.dm ], [ %i.fy, %bb.dl ], [ %i.fy, %bb.dk ], [ %i.fy, %bb.dj ], [ %i.fy, %bb.di ], [ %i.fy, %bb.dh ], [ %i.fy, %bb.dg ], [ %i.fy, %bb.df ], [ %i.fy, %bb.de ], [ %i.fy, %bb.dd ], [ %i.fy, %bb.dc ], [ %i.fy, %bb.db ], [ %i.fy, %bb.da ], [ %i.fy, %bb.cz ], [ %i.fy, %bb.cy ], [ %i.fy, %bb.cx ], [ %i.fy, %bb.cw ], [ %i.fy, %bb.cv ], [ %i.fy, %bb.cu ], [ %i.fy, %bb.ct ], [ %i.fy, %bb.cs ], [ %i.fy, %bb.cr ], [ %i.fy, %bb.cq ], [ %i.fy, %.split212 ], [ %i.fy, %bb.cp ], [ %i.fy, %bb.co ], [ %i.fy, %bb.cn ], [ %i.fy, %bb.cm ], [ %i.fy, %bb.cl ], [ %i.fy, %bb.ck ], [ %i.fy, %bb.cj ], [ %i.fy, %bb.ci ], [ %i.fy, %bb.ch ], [ %i.fy, %bb.cg ], [ %i.fy, %bb.cf ], [ %i.fy, %bb.ce ], [ %i.fy, %bb.cd ], [ %i.fy, %bb.cc ], [ %i.fy, %bb.cb ], [ %i.fy, %bb.ca ], [ %i.fy, %bb.bz ], [ %i.fy, %bb.by ], [ %i.fy, %bb.bx ], [ %i.fy, %bb.bw ], [ %i.fy, %bb.bv ], [ %i.fy, %bb.bu ], [ %i.fy, %bb.bt ], [ %i.fy, %bb.bs ], [ %i.fy, %bb.br ], [ %i.fy, %bb.bq ], [ %i.fy, %bb.bp ], [ %i.fy, %bb.bo ], [ %i.fy, %bb.bn ], [ %i.fy, %bb.bm ], [ %i.fy, %bb.bl ], [ %i.fy, %bb.bk ], [ %i.fy, %bb.bj ], [ %i.fy, %.split246 ], [ %i.fy, %bb.bi ], [ %i.fy, %bb.bh ], [ %i.fy, %bb.bg ], [ %i.fy, %bb.bf ], [ %i.fy, %bb.be ], [ %i.fy, %bb.bd ], [ %i.fy, %bb.bc ], [ %i.fy, %bb.bb ], [ %i.fy, %bb.ba ], [ %i.fy, %bb.az ], [ %i.fy, %bb.ay ], [ %i.fy, %bb.ax ], [ %i.fy, %bb.aw ], [ %i.fy, %bb.av ], [ %i.fy, %bb.au ], [ %i.fy, %bb.at ], [ %i.fy, %bb.as ], [ %i.fy, %bb.ar ], [ %i.fy, %bb.aq ], [ %i.fy, %bb.ap ], [ %i.fy, %bb.ao ], [ %i.fy, %bb.an ], [ %i.fy, %bb.am ], [ %i.fy, %bb.al ], [ %i.fy, %bb.ak ], [ %i.fy, %bb.aj ], [ %i.fy, %bb.ai ], [ %i.fy, %bb.ah ], [ %i.fy, %.split275 ], [ %i.fy, %bb.ag ], [ %i.fy, %.split277 ]
  br label %.backedge, !llvm.loop !52

bb.af:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gf = and i64 %.val, 17875922386948
  %or.cond291 = icmp eq i64 %i.gf, 0
  br i1 %or.cond291, label %.backedge.backedge, label %.thread

bb.ag:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gg = and i64 %.val, 17592454807556
  %or.cond292 = icmp eq i64 %i.gg, 262144
  br i1 %or.cond292, label %.backedge.backedge, label %.thread

.split277:                                        ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gh = and i64 %.val, 4
  %.not421 = icmp eq i64 %i.gh, 0
  br i1 %.not421, label %.thread, label %.backedge.backedge

bb.ah:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gi = and i64 %.val, 17179934724
  %or.cond293 = icmp eq i64 %i.gi, 17179869188
  br i1 %or.cond293, label %.backedge.backedge, label %.thread

.split275:                                        ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gj = and i64 %.val, 8
  %.not420 = icmp eq i64 %i.gj, 0
  br i1 %.not420, label %.thread, label %.backedge.backedge

bb.ai:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gk = and i64 %.val, 65552
  %or.cond295 = icmp eq i64 %i.gk, 65552
  br i1 %or.cond295, label %.backedge.backedge, label %.thread

bb.aj:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gl = and i64 %.val, 65568
  %or.cond297 = icmp eq i64 %i.gl, 65568
  br i1 %or.cond297, label %.backedge.backedge, label %.thread

bb.ak:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gm = and i64 %.val, 9007203549773824
  %or.cond299 = icmp eq i64 %i.gm, 9007203549773824
  br i1 %or.cond299, label %.backedge.backedge, label %.thread

bb.al:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.gn = and i64 %.val, 65600
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_117decodeInstructionIjEEN4llvm14MCDisassembler12DecodeStatusEPKhRNS1_6MCInstET_mPKS2_RKNS1_15MCSubtargetInfoE:bb.a
  %i.iy = and i64 %.val, 8796361523200
  %or.cond369 = icmp eq i64 %i.iy, 8796093022208
  br i1 %or.cond369, label %.backedge.backedge, label %.thread

bb.cv:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.iz = and i64 %.val, 26672015671296
  %or.cond370 = icmp eq i64 %i.iz, 8796093284352
  br i1 %or.cond370, label %.backedge.backedge, label %.thread

bb.cw:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.ja = and i64 %.val, 8858370048
  %or.cond372 = icmp eq i64 %i.ja, 8589934592
  br i1 %or.cond372, label %.backedge.backedge, label %.thread

bb.cx:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.jb = and i64 %.val, 8858435584
  %or.cond373 = icmp eq i64 %i.jb, 8589934592
  br i1 %or.cond373, label %.backedge.backedge, label %.thread

bb.cy:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.jc = and i64 %.val, 275146407936
  %or.cond374 = icmp eq i64 %i.jc, 274877906944
  br i1 %or.cond374, label %.backedge.backedge, label %.thread

bb.cz:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.jd = and i64 %.val, 8858439680
  %or.cond375 = icmp eq i64 %i.jd, 8589934592
  br i1 %or.cond375, label %.backedge.backedge, label %.thread

bb.da:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.je = and i64 %.val, 70377602613248
  %or.cond376 = icmp eq i64 %i.je, 8589934592
  br i1 %or.cond376, label %.backedge.backedge, label %.thread

bb.db:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.jf = and i64 %.val, 8858435586
  %or.cond377 = icmp eq i64 %i.jf, 8589934594
  br i1 %or.cond377, label %.backedge.backedge, label %.thread

bb.dc:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.jg = and i64 %.val, 275146407938
  %or.cond378 = icmp eq i64 %i.jg, 274877906946
  br i1 %or.cond378, label %.backedge.backedge, label %.thread

bb.dd:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.jh = and i64 %.val, 8804951457792
  %or.cond379 = icmp eq i64 %i.jh, 8589934592
  br i1 %or.cond379, label %.backedge.backedge, label %.thread

bb.de:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.ji = and i64 %.val, 8858437632
  %or.cond380 = icmp eq i64 %i.ji, 8589936640
  br i1 %or.cond380, label %.backedge.backedge, label %.thread

bb.df:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.jj = and i64 %.val, 275146342400
  %or.cond382 = icmp eq i64 %i.jj, 274877906944
  br i1 %or.cond382, label %.backedge.backedge, label %.thread

bb.dg:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.jk = and i64 %.val, 275146346496
  %or.cond384 = icmp eq i64 %i.jk, 274877911040
  br i1 %or.cond384, label %.backedge.backedge, label %.thread

bb.dh:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.jl = and i64 %.val, 8858374144
  %or.cond386 = icmp eq i64 %i.jl, 8589938688
  br i1 %or.cond386, label %.backedge.backedge, label %.thread

bb.di:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.jm = and i64 %.val, 9071239430144
  %or.cond387 = icmp eq i64 %i.jm, 9070970929152
  br i1 %or.cond387, label %.backedge.backedge, label %.thread

bb.dj:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.jn = and i64 %.val, 292326277120
  %or.cond388 = icmp eq i64 %i.jn, 17179869184
  br i1 %or.cond388, label %.backedge.backedge, label %.thread

bb.dk:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.jo = and i64 %.val, 8796361457664
  %or.cond390 = icmp eq i64 %i.jo, 8796093022208
  br i1 %or.cond390, label %.backedge.backedge, label %.thread

bb.dl:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.jp = and i64 %.val, 34628239360
  %or.cond391 = icmp eq i64 %i.jp, 34359738368
  br i1 %or.cond391, label %.backedge.backedge, label %.thread

bb.dm:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.jq = and i64 %.val, 269025280
  %or.cond392 = icmp eq i64 %i.jq, 524288
  br i1 %or.cond392, label %.backedge.backedge, label %.thread

bb.dn:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.jr = and i64 %.val, 17875922911232
  %or.cond393 = icmp eq i64 %i.jr, 524288
  br i1 %or.cond393, label %.backedge.backedge, label %.thread

bb.do:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.js = and i64 %.val, 268963840
  %or.cond395 = icmp eq i64 %i.js, 528384
  br i1 %or.cond395, label %.backedge.backedge, label %.thread

bb.dp:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.jt = and i64 %.val, 9007336962129920
  %or.cond397 = icmp eq i64 %i.jt, 9007336693694464
  br i1 %or.cond397, label %.backedge.backedge, label %.thread

bb.dq:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.ju = and i64 %.val, 283736801280
  %or.cond398 = icmp eq i64 %i.ju, 524288
  br i1 %or.cond398, label %.backedge.backedge, label %.thread

bb.dr:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.jv = and i64 %.val, 292326281216
  %or.cond399 = icmp eq i64 %i.jv, 17179873280
  br i1 %or.cond399, label %.backedge.backedge, label %.thread

bb.ds:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.jw = and i64 %.val, 17875922845696
  %or.cond400 = icmp eq i64 %i.jw, 524288
  br i1 %or.cond400, label %.backedge.backedge, label %.thread

bb.dt:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.jx = and i64 %.val, 268435472
  %or.cond402 = icmp eq i64 %i.jx, 16
  br i1 %or.cond402, label %.backedge.backedge, label %.thread

bb.du:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.jy = and i64 %.val, 105553384767744
  %or.cond403 = icmp eq i64 %i.jy, 256
  br i1 %or.cond403, label %.backedge.backedge, label %.thread

bb.dv:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.jz = and i64 %.val, 105554458509568
  %or.cond404 = icmp eq i64 %i.jz, 1073742080
  br i1 %or.cond404, label %.backedge.backedge, label %.thread

bb.dw:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.ka = and i64 %.val, 105837926351104
  %or.cond405 = icmp eq i64 %i.ka, 1073742080
  br i1 %or.cond405, label %.backedge.backedge, label %.thread

bb.dx:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.kb = and i64 %.val, 105553385029888
  %or.cond406 = icmp eq i64 %i.kb, 262400
  br i1 %or.cond406, label %.backedge.backedge, label %.thread

bb.dy:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.kc = and i64 %.val, 105553386864896
  %or.cond407 = icmp eq i64 %i.kc, 2097408
  br i1 %or.cond407, label %.backedge.backedge, label %.thread

bb.dz:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.kd = and i64 %.val, 105836869386496
  %or.cond408 = icmp eq i64 %i.kd, 16777472
  br i1 %or.cond408, label %.backedge.backedge, label %.thread

bb.ea:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.ke = and i64 %.val, 105553418322176
  %or.cond409 = icmp eq i64 %i.ke, 33554688
  br i1 %or.cond409, label %.backedge.backedge, label %.thread

bb.eb:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.kf = and i64 %.val, 105837927334144
  %or.cond411 = icmp eq i64 %i.kf, 1074790656
  br i1 %or.cond411, label %.backedge.backedge, label %.thread

bb.ec:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.kg = and i64 %.val, 105553388962048
  %or.cond412 = icmp eq i64 %i.kg, 4194560
  br i1 %or.cond412, label %.backedge.backedge, label %.thread

bb.ed:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.kh = and i64 %.val, 105836852609280
  %or.cond413 = icmp eq i64 %i.kh, 256
  br i1 %or.cond413, label %.backedge.backedge, label %.thread

bb.ee:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.ki = and i64 %.val, 105836886098176
  %or.cond414 = icmp eq i64 %i.ki, 33554688
  br i1 %or.cond414, label %.backedge.backedge, label %.thread

bb.ef:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.kj = and i64 %.val, 105836986827008
  %or.cond415 = icmp eq i64 %i.kj, 134217984
  br i1 %or.cond415, label %.backedge.backedge, label %.thread

bb.eg:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.kk = and i64 %.val, 108035909419264
  %or.cond417 = icmp eq i64 %i.kk, 33554688
  br i1 %or.cond417, label %.backedge.backedge, label %.thread

bb.eh:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit113
  %i.kl = and i64 %.val, 108035909419264
  %or.cond416 = icmp eq i64 %i.kl, 33554688
  br i1 %or.cond416, label %.backedge.backedge, label %.thread

.preheader427:                                    ; preds = %.backedge, %bb.ej
  %indvars.iv.i.i122 = phi i64 [ %indvars.iv.next.i.i126, %bb.ej ], [ 0, %.backedge ] ; 5 uses
  %.031.i.i.i123 = phi ptr [ %i.ku, %bb.ej ], [ %i.g, %.backedge ] ; 3 uses
  %.029.i.i.i124 = phi i64 [ %.130.i.i.i120, %bb.ej ], [ 0, %.backedge ]
  %i.km = load i8, ptr %.031.i.i.i123, align 1, !tbaa !36 ; 2 uses
  %i.kn = and i8 %i.km, 127                       ; 3 uses
  %i.ko = zext nneg i8 %i.kn to i64
  %i.kp = icmp samesign ugt i64 %indvars.iv.i.i122, 62
  br i1 %i.kp, label %bb.ei, label %bb.ej, !prof !47

bb.ei:                                            ; preds = %.preheader427
  %.not44.i.i.i123 = icmp eq i64 %indvars.iv.i.i122, 63
  %.not.i.i.i124 = icmp samesign ugt i8 %i.kn, 1
  %i.kq = icmp ne i8 %i.kn, 0
  %or.cond43.i.i.i125 = select i1 %.not44.i.i.i123, i1 %.not.i.i.i124, i1 %i.kq
  br i1 %or.cond43.i.i.i125, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit126, label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %.preheader427
  %i.kr = icmp samesign ult i64 %indvars.iv.i.i122, 64
  %i.ks = shl i64 %i.ko, %indvars.iv.i.i122
  %i.kt = select i1 %i.kr, i64 %i.ks, i64 0, !prof !48
  %.130.i.i.i120 = add i64 %i.kt, %.029.i.i.i124  ; 2 uses
  %indvars.iv.next.i.i126 = add nuw nsw i64 %indvars.iv.i.i122, 7
  %i.ku = getelementptr inbounds nuw i8, ptr %.031.i.i.i123, i64 1 ; 2 uses
  %i.kv = icmp slt i8 %i.km, 0
  br i1 %i.kv, label %.preheader427, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit126, !llvm.loop !49

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit126: ; preds = %bb.ei, %bb.ej
  %.132.i.i.i121 = phi ptr [ %i.ku, %bb.ej ], [ %.031.i.i.i123, %bb.ei ]
  %.3.i.i.i122 = phi i64 [ %.130.i.i.i120, %bb.ej ], [ 0, %bb.ei ]
  %i.kw = ptrtoint ptr %.132.i.i.i121 to i64
  %i.kx = ptrtoint ptr %i.g to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = and i64 %i.ky, 4294967295
  %i.la = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.kz
  %i.lb = trunc i64 %.3.i.i.i122 to i32
  br label %bb.ek

bb.ek:                                            ; preds = %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit126, %bb.em
  %indvars.iv.i.i134 = phi i64 [ %indvars.iv.next.i.i138, %bb.em ], [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit126 ] ; 5 uses
  %.031.i.i.i135 = phi ptr [ %i.lk, %bb.em ], [ %i.la, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit126 ] ; 2 uses
  %.029.i.i.i136 = phi i64 [ %.130.i.i.i131, %bb.em ], [ 0, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit126 ]
  %i.lc = load i8, ptr %.031.i.i.i135, align 1, !tbaa !36 ; 2 uses
  %i.ld = and i8 %i.lc, 127                       ; 3 uses
  %i.le = zext nneg i8 %i.ld to i64
  %i.lf = icmp samesign ugt i64 %indvars.iv.i.i134, 62
  br i1 %i.lf, label %bb.el, label %bb.em, !prof !47

bb.el:                                            ; preds = %bb.ek
  %.not44.i.i.i134 = icmp eq i64 %indvars.iv.i.i134, 63
  %.not.i.i.i135 = icmp samesign ugt i8 %i.ld, 1
  %i.lg = icmp ne i8 %i.ld, 0
  %or.cond43.i.i.i136 = select i1 %.not44.i.i.i134, i1 %.not.i.i.i135, i1 %i.lg
  br i1 %or.cond43.i.i.i136, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit137, label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.lh = icmp samesign ult i64 %indvars.iv.i.i134, 64
  %i.li = shl i64 %i.le, %indvars.iv.i.i134
  %i.lj = select i1 %i.lh, i64 %i.li, i64 0, !prof !48
  %.130.i.i.i131 = add i64 %i.lj, %.029.i.i.i136  ; 2 uses
  %indvars.iv.next.i.i138 = add nuw nsw i64 %indvars.iv.i.i134, 7
  %i.lk = getelementptr inbounds nuw i8, ptr %.031.i.i.i135, i64 1
  %i.ll = icmp slt i8 %i.lc, 0
  br i1 %i.ll, label %bb.ek, label %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit137, !llvm.loop !49

_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit137: ; preds = %bb.el, %bb.em
  %.3.i.i.i133 = phi i64 [ %.130.i.i.i131, %bb.em ], [ 0, %bb.el ]
  %i.lm = trunc i64 %.3.i.i.i133 to i32
  store i32 0, ptr %i.f, align 8, !tbaa !40
  store i32 %i.lb, ptr %1, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.ln = call fastcc noundef i32 @_ZN12_GLOBAL__N_114decodeToMCInstIjEEN4llvm14MCDisassembler12DecodeStatusEjS3_T_RNS1_6MCInstEmPKS2_Rb(i32 noundef %i.lm, i32 noundef 3, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef %3, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.lo = load i8, ptr %i.a, align 1, !tbaa !61, !range !34, !noundef !35
  %i.lp = trunc nuw i8 %i.lo to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %i.lp, label %_ZN4llvm11raw_ostreamlsEc.exit.thread, label %.thread

.thread:                                          ; preds = %bb.db, %bb.cr, %bb.dm, %bb.dx, %bb.bu, %bb.dy, %bb.cx, %bb.bt, %bb.cg, %bb.bs, %bb.dn, %bb.br, %bb.cy, %bb.bq, %bb.cm, %bb.do, %bb.bp, %bb.ch, %bb.bo, %bb.dz, %bb.bn, %bb.dq, %bb.de, %bb.bm, %bb.bl, %bb.ea, %bb.dd, %bb.ct, %bb.bk, %bb.dr, %bb.bj, %bb.dh, %bb.bi, %bb.dp, %bb.cf, %bb.cz, %bb.bh, %bb.bg, %bb.cv, %bb.bf, %bb.dt, %bb.eb, %bb.be, %bb.ce, %bb.da, %bb.bd, %bb.bc, %bb.cu, %bb.dg, %bb.ec, %bb.co, %bb.bb, %bb.cd, %bb.ba, %bb.az, %bb.cl, %bb.ay, %bb.ds, %bb.ax, %bb.du, %bb.cb, %bb.ed, %bb.aw, %bb.dj, %bb.av, %bb.au, %bb.cc, %bb.dk, %bb.at, %bb.as, %bb.dv, %bb.ee, %bb.ar, %bb.ca, %bb.cj, %bb.dc, %bb.aq, %bb.dw, %bb.ef, %bb.df, %bb.ck, %bb.ap, %bb.cp, %bb.bx, %bb.cq, %bb.ao, %bb.by, %bb.di, %bb.an, %bb.bz, %bb.am, %bb.eg, %bb.al, %bb.ak, %bb.bv, %bb.aj, %bb.ai, %bb.ah, %bb.ci, %bb.ag, %bb.bw, %bb.dl, %bb.cw, %bb.af, %bb.eh, %bb.cs, %bb.cn, %bb.ae, %bb.ad, %.split281, %.split277, %.split275, %.split246, %.split212, %.split, %.loopexit, %_ZN4llvm13decodeULEB128EPKhPjS1_PPKc.exit, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit137
  %i.lq = load i32, ptr %i.d, align 8, !tbaa !40  ; 3 uses
  %.not.i138 = icmp eq i32 %i.lq, 0
  br i1 %.not.i138, label %_ZN4llvm11raw_ostreamlsEc.exit.thread, label %bb.en

bb.en:                                            ; preds = %.thread
  %i.lr = load ptr, ptr %6, align 8, !tbaa !38
  %i.ls = zext i32 %i.lq to i64
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %i.ls
  %i.lu = getelementptr inbounds i8, ptr %i.lt, i64 -8
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !62
  %i.lw = add i32 %i.lq, -1
  store i32 %i.lw, ptr %i.d, align 8, !tbaa !40
  br label %.backedge.backedge

_ZN4llvm11raw_ostreamlsEc.exit.thread:            ; preds = %.thread, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit137, %bb.e, %bb.f
  %.3287 = phi i32 [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %.thread ], [ %i.ln, %_ZN4llvm25decodeULEB128AndIncUnsafeERPKh.exit137 ]
  %i.lx = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.c
  br i1 %i.ly, label %_ZN4llvm11SmallVectorIPKhLj8EED2Ev.exit, label %bb.eo

bb.eo:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.thread
  call void @free(ptr noundef %i.lx) #11
  br label %_ZN4llvm11SmallVectorIPKhLj8EED2Ev.exit

_ZN4llvm11SmallVectorIPKhLj8EED2Ev.exit:          ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.thread, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  ret i32 %.3287
}

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN12_GLOBAL__N_114decodeToMCInstIjEEN4llvm14MCDisassembler12DecodeStatusEjS3_T_RNS1_6MCInstEmPKS2_Rb(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, i64 noundef %4, ptr noundef nonnull %5, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %6) unnamed_addr #0 {
bb.a:
  store i8 1, ptr %6, align 1, !tbaa !61
  switch i32 %0, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.d
    i32 7, label %bb.d
    i32 8, label %bb.d
    i32 9, label %bb.d
    i32 10, label %bb.ajz
    i32 11, label %bb.d
    i32 12, label %bb.d
    i32 13, label %bb.d
    i32 14, label %bb.g
    i32 15, label %bb.j
    i32 16, label %bb.k
    i32 17, label %bb.m
    i32 18, label %bb.p
    i32 19, label %bb.s
    i32 20, label %bb.u
    i32 21, label %bb.x
    i32 22, label %bb.y
    i32 23, label %bb.z
    i32 24, label %bb.aa
    i32 25, label %bb.ab
    i32 26, label %bb.ac
    i32 27, label %bb.af
    i32 28, label %bb.ag
    i32 29, label %bb.ah
    i32 30, label %bb.ak
    i32 31, label %bb.am
    i32 32, label %bb.an
    i32 33, label %bb.ap
    i32 34, label %bb.aq
    i32 35, label %bb.as
    i32 36, label %bb.av
    i32 37, label %bb.ax
    i32 38, label %bb.ba
    i32 39, label %bb.bb
    i32 40, label %bb.bc
    i32 41, label %bb.d
    i32 42, label %bb.bd
    i32 43, label %bb.d
    i32 44, label %bb.d
    i32 45, label %bb.be
    i32 46, label %bb.d
    i32 47, label %bb.d
    i32 48, label %bb.bf
    i32 49, label %bb.bg
    i32 50, label %bb.bi
    i32 51, label %bb.bl
    i32 52, label %bb.bm
    i32 53, label %bb.bo
    i32 54, label %bb.bq
    i32 55, label %bb.bt
    i32 56, label %bb.bw
    i32 57, label %bb.by
    i32 58, label %bb.ca
    i32 59, label %bb.cd
    i32 60, label %bb.cf
    i32 61, label %bb.ci
    i32 62, label %bb.cl
    i32 63, label %bb.cm
    i32 64, label %bb.cp
    i32 65, label %bb.cs
    i32 66, label %bb.cv
    i32 67, label %bb.cy
    i32 68, label %bb.db
    i32 69, label %bb.de
    i32 70, label %bb.di
    i32 71, label %bb.dl
    i32 72, label %bb.dn
    i32 73, label %bb.dq
    i32 74, label %bb.dt
    i32 75, label %bb.dw
    i32 76, label %bb.dz
    i32 77, label %bb.ec
    i32 78, label %bb.ef
    i32 79, label %bb.eh
    i32 80, label %bb.ej
    i32 81, label %bb.em
    i32 82, label %bb.eo
    i32 83, label %bb.es
    i32 84, label %bb.ev
    i32 85, label %bb.ey
    i32 86, label %bb.fa
    i32 87, label %bb.fc
    i32 88, label %bb.ff
    i32 89, label %bb.fh
    i32 90, label %bb.fk
    i32 91, label %bb.fo
    i32 92, label %bb.fq
    i32 93, label %bb.fs
    i32 94, label %bb.fu
    i32 95, label %bb.fv
    i32 96, label %bb.fw
    i32 97, label %bb.fz
    i32 98, label %bb.gb
    i32 99, label %bb.gd
    i32 100, label %bb.ge
    i32 101, label %bb.gg
    i32 102, label %bb.gi
    i32 103, label %bb.gl
    i32 104, label %bb.gn
    i32 105, label %bb.gq
    i32 106, label %bb.gr
    i32 107, label %bb.gs
    i32 108, label %bb.gt
    i32 109, label %bb.gv
    i32 110, label %bb.gx
    i32 111, label %bb.gz
    i32 112, label %bb.ha
    i32 113, label %bb.hb
    i32 114, label %bb.hc
    i32 115, label %bb.he
    i32 116, label %bb.hh
    i32 117, label %bb.hl
    i32 118, label %bb.ho
    i32 119, label %bb.hr
    i32 120, label %bb.hv
    i32 121, label %bb.hz
    i32 122, label %bb.ic
    i32 123, label %bb.ig
    i32 124, label %bb.ij
    i32 125, label %bb.in
    i32 126, label %bb.ir
    i32 127, label %bb.it
    i32 128, label %bb.iv
    i32 129, label %bb.ix
    i32 130, label %bb.iz
    i32 131, label %bb.jd
    i32 132, label %bb.jf
    i32 133, label %bb.jh
    i32 134, label %bb.jj
    i32 135, label %bb.jl
    i32 136, label %bb.jn
    i32 137, label %bb.jp
    i32 138, label %bb.jr
    i32 139, label %bb.ju
    i32 140, label %bb.jx
    i32 141, label %bb.ka
    i32 142, label %bb.kb
    i32 143, label %bb.kc
    i32 144, label %bb.kd
    i32 145, label %bb.kf
end_hunk_1
