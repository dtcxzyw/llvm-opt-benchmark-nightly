Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MCAsmParser?download=true
inline.NumInlined: 451
inline.NumDeleted: 243
begin_hunk_0_@_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE9push_backERKS2_:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !58   ; 5 uses
  %.not.i.i.i.i = icmp eq i64 %i.z, 0
  %i.aa = icmp eq ptr %i.r, %.016.i.i
  %or.cond.i.i.i = or i1 %i.aa, %.not.i.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN4llvm11MCAsmParser14MCPendingErrorC2ERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE28reserveForParamAndGetAddressERKS2_m.exit
  %i.ab = icmp ugt i64 %i.z, 64
  br i1 %i.ab, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i.i.i

_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i:       ; preds = %bb.d
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.t, ptr noundef nonnull %i.v, i64 noundef %i.z, i64 noundef 1) #13
  %.pre.i.i.i = load i64, ptr %i.y, align 8, !tbaa !58 ; 2 uses
  %.not.i.i.i.i.i = icmp samesign eq i64 %.pre.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.sink.split.i.i.i.i, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i

_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.t, align 8, !tbaa !44
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i.i.i

_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i.i.i: ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i, %bb.d
  %i.ac = phi ptr [ %.pre.i.i, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i ], [ %i.v, %bb.d ]
  %i.ad = phi i64 [ %.pre.i.i.i, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i._ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i_crit_edge.i.i ], [ %i.z, %bb.d ]
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.ae, i64 %i.ad, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.thread.i.i.i, %_ZSt4copyIPKcPcET0_T_S4_S3_.exit30.i.i.i.i
  store i64 %i.z, ptr %i.w, align 8, !tbaa !58
  br label %_ZN4llvm11MCAsmParser14MCPendingErrorC2ERKS1_.exit

_ZN4llvm11MCAsmParser14MCPendingErrorC2ERKS1_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE28reserveForParamAndGetAddressERKS2_m.exit, %.sink.split.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.ag = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !65
  %i.ah = load i32, ptr %i.a, align 8, !tbaa !42
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.a, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZN4llvm8AsmLexer3LexEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %"class.llvm::AsmToken", align 8    ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !53
  %i.c = icmp eq i32 %i.b, 9
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.e = zext i1 %i.c to i8
  store i8 %i.e, ptr %i.d, align 1, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !42   ; 3 uses
  %i.h = icmp ugt i32 %i.g, 1
  br i1 %i.h, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt4moveIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.i = zext i32 %i.g to i64
  %.idx = mul nuw nsw i64 %i.i, 40
  %gepdiff = add nsw i64 %.idx, -40
  %i.j = udiv exact i64 %gepdiff, 40
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.v, %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i.i ], [ %i.j, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.k, %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i.i ], [ %i.a, %.lr.ph.preheader.i.i.i.i.i.i ] ; 6 uses
  %i.k = getelementptr i8, ptr %.0811.i.i.i.i.i.i, i64 40 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !49
  %i.o = icmp ult i32 %i.n, 65
  br i1 %i.o, label %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #14
  br label %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i.i

_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i.i:        ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64
  %i.s = load i64, ptr %i.r, align 8
  store i64 %i.s, ptr %i.l, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 72 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !49
  store i32 %i.u, ptr %i.m, align 8, !tbaa !49
  store i32 0, ptr %i.t, align 8, !tbaa !49
  %i.v = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.w = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit.loopexit.i, !llvm.loop !80

_ZSt4moveIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit.loopexit.i: ; preds = %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i.i
  %.pre.i = load i32, ptr %i.f, align 8, !tbaa !42
  %.pre6.i = load ptr, ptr %0, align 8, !tbaa !17
  br label %_ZSt4moveIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit.i

_ZSt4moveIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit.i: ; preds = %_ZSt4moveIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit.loopexit.i, %bb.a
  %i.x = phi ptr [ %.pre6.i, %_ZSt4moveIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit.loopexit.i ], [ %i.a, %bb.a ]
  %i.y = phi i32 [ %.pre.i, %_ZSt4moveIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit.loopexit.i ], [ %i.g, %bb.a ]
  %i.z = add i32 %i.y, -1                         ; 4 uses
  store i32 %i.z, ptr %i.f, align 8, !tbaa !42
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !49
  %i.ae = icmp ugt i32 %i.ad, 64
  br i1 %i.ae, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_8AsmTokenEE5eraseEPKS1_.exit

bb.d:                                             ; preds = %_ZSt4moveIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !47 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN4llvm15SmallVectorImplINS_8AsmTokenEE5eraseEPKS1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.ag) #14
  %.pre = load i32, ptr %i.f, align 8, !tbaa !42
  br label %_ZN4llvm15SmallVectorImplINS_8AsmTokenEE5eraseEPKS1_.exit

_ZN4llvm15SmallVectorImplINS_8AsmTokenEE5eraseEPKS1_.exit: ; preds = %_ZSt4moveIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit.i, %bb.d, %bb.e
  %i.ai = phi i32 [ %i.z, %_ZSt4moveIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit.i ], [ %i.z, %bb.d ], [ %.pre, %bb.e ]
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_8AsmTokenEE5eraseEPKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @_ZN4llvm8AsmLexer8LexTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::AsmToken") align 8 %1, ptr noundef nonnull align 8 dereferenceable(176) %0) #13
  %i.aj = load ptr, ptr %0, align 8, !tbaa !17
  %i.ak = call noundef ptr @_ZN4llvm15SmallVectorImplINS_8AsmTokenEE15insert_one_implIRKS1_EEPS1_S6_OT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(40) %1) ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !49
  %i.an = icmp ugt i32 %i.am, 64
  br i1 %i.an, label %bb.g, label %_ZN4llvm8AsmTokenD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !47 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN4llvm8AsmTokenD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ap) #14
  br label %_ZN4llvm8AsmTokenD2Ev.exit

_ZN4llvm8AsmTokenD2Ev.exit:                       ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8AsmTokenD2Ev.exit, %_ZN4llvm15SmallVectorImplINS_8AsmTokenEE5eraseEPKS1_.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !17
  ret ptr %i.ar
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm11MCAsmParser14addErrorSuffixERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(243) %0, ptr noundef nonnull align 8 dereferenceable(34) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = load i32, ptr %i.b, align 8, !tbaa !53
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.g(ptr noundef nonnull align 8 dereferenceable(243) %0) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.l = load i32, ptr %i.k, align 8, !tbaa !42   ; 2 uses
  %i.m = zext i32 %i.l to i64
  %.idx = mul nuw nsw i64 %i.m, 112
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %.not9 = icmp eq i32 %i.l, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret i1 true

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.010 = phi ptr [ %i.p, %.lr.ph ], [ %i.j, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.010, i64 8
  tail call void @_ZNK4llvm5Twine8toVectorERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.o) #13
  %i.p = getelementptr inbounds nuw i8, ptr %.010, i64 112 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.n
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm11MCAsmParser9parseManyENS_12function_refIFbvEEEb(ptr noundef nonnull align 8 dereferenceable(243) %0, ptr nofree readonly captures(none) %1, i64 %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"struct.llvm::MCAsmParser::MCPendingError", align 8 ; 9 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = load i32, ptr %i.b, align 8, !tbaa !53
  %i.d = icmp eq i32 %i.c, 9
  br i1 %i.d, label %_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit.thread, label %_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit.preheader

_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit.preheader: ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 %1(i64 noundef %2) #13, !inline_history !82
  br i1 %i.e, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 33
  br i1 %3, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit.us
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = icmp eq i32 %i.i, 9
  br i1 %i.j, label %_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit2.thread, label %_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit2.us

_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit2.us: ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store i8 1, ptr %i.g, align 1, !tbaa !56
  store ptr @.str.3, ptr %7, align 8, !tbaa !47
  store i8 3, ptr %i.f, align 8, !tbaa !57
  %.not.i.us = icmp eq i32 %i.i, 26
  br i1 %.not.i.us, label %_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit.us, label %.split.us

_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit.us: ; preds = %_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit2.us
  %8 = load ptr, ptr %0, align 8, !tbaa !11
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 152
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(40) ptr %10(ptr noundef nonnull align 8 dereferenceable(243) %0) #13, !inline_history !84 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %12 = tail call noundef zeroext i1 %1(i64 noundef %2) #13, !inline_history !82
  br i1 %12, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !83

_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.l, align 1, !tbaa !56
  store ptr @.str.3, ptr %6, align 8, !tbaa !47
  store i8 3, ptr %i.k, align 8, !tbaa !57
  %i.m = call noundef zeroext i1 @_ZN4llvm11MCAsmParser8parseEOLERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(243) %0, ptr noundef nonnull align 8 dereferenceable(34) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit2
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.o = load i32, ptr %i.n, align 8, !tbaa !53
  %i.p = icmp eq i32 %i.o, 9
  br i1 %i.p, label %_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit2.thread, label %_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit2

_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit2.thread: ; preds = %.lr.ph.split, %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.r, align 1, !tbaa !56
  store ptr @.str.3, ptr %5, align 8, !tbaa !47
  store i8 3, ptr %i.q, align 8, !tbaa !57
  %i.s = call noundef zeroext i1 @_ZN4llvm11MCAsmParser8parseEOLERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(243) %0, ptr noundef nonnull align 8 dereferenceable(34) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.loopexit

_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit2: ; preds = %.lr.ph.split
  %i.t = tail call noundef zeroext i1 %1(i64 noundef %2) #13, !inline_history !82
  br i1 %i.t, label %.loopexit, label %.lr.ph.split, !llvm.loop !83

.split.us:                                        ; preds = %_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit2.us
  %13 = tail call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %15, ptr %14, align 8, !tbaa !44
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %16, align 8, !tbaa !58
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 64, ptr %17, align 8, !tbaa !59
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  store ptr %13, ptr %4, align 8, !tbaa !50
  call void @_ZNK4llvm5Twine8toVectorERNS_15SmallVectorImplIcEE(ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef nonnull align 8 dereferenceable(24) %14) #13
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(112) %4)
  %20 = load ptr, ptr %i.a, align 8, !tbaa !17
  %21 = load i32, ptr %20, align 8, !tbaa !53
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %.split.us
  %24 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4llvm8AsmLexer3LexEv(ptr noundef nonnull align 8 dereferenceable(176) %i.a) ; 0 uses
  br label %25

25:                                               ; preds = %23, %.split.us
  %26 = load ptr, ptr %14, align 8, !tbaa !44     ; 2 uses
  %27 = icmp eq ptr %26, %15
  br i1 %27, label %_ZN4llvm11MCAsmParser10parseTokenENS_8AsmToken9TokenKindERKNS_5TwineE.exit.thread, label %28

28:                                               ; preds = %25
  call void @free(ptr noundef %26) #13
  br label %_ZN4llvm11MCAsmParser10parseTokenENS_8AsmToken9TokenKindERKNS_5TwineE.exit.thread

_ZN4llvm11MCAsmParser10parseTokenENS_8AsmToken9TokenKindERKNS_5TwineE.exit.thread: ; preds = %25, %28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit2, %_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit.us, %_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit.preheader, %_ZN4llvm11MCAsmParser10parseTokenENS_8AsmToken9TokenKindERKNS_5TwineE.exit.thread, %_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit2.thread, %_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit.thread
  %.0 = phi i1 [ false, %_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit2.thread ], [ false, %_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit.thread ], [ true, %_ZN4llvm11MCAsmParser10parseTokenENS_8AsmToken9TokenKindERKNS_5TwineE.exit.thread ], [ true, %_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit.preheader ], [ true, %_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit.us ], [ true, %_ZN4llvm11MCAsmParser18parseOptionalTokenENS_8AsmToken9TokenKindE.exit2 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm11MCAsmParser15parseExpressionERPKNS_6MCExprE(ptr noundef nonnull align 8 dereferenceable(243) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SMLoc", align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store ptr null, ptr %2, align 8, !tbaa !85
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(243) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm11MCAsmParser17parseGNUAttributeENS_5SMLocERlS2_(ptr noundef nonnull align 8 dereferenceable(243) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #3 align 2 {
_ZN4llvm9StringRefC2EPKc.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = tail call ptr @_ZNK4llvm8AsmToken6getLocEv(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #13 ; 0 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !53
  %.not = icmp eq i32 %i.e, 4
  br i1 %.not, label %bb.a, label %bb.c

bb.a:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !49
  %i.i = icmp ult i32 %i.h, 65
  %i.j = load ptr, ptr %i.f, align 8
  %spec.select.i.i = select i1 %i.i, ptr %i.f, ptr %i.j
  %.0.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !47
  store i64 %.0.i.i, ptr %2, align 8, !tbaa !61
  %i.k = load ptr, ptr %0, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(243) %0) #13 ; 0 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.q(ptr noundef nonnull align 8 dereferenceable(243) %0) #13 ; 0 uses
  %i.s = load i32, ptr %i.d, align 8, !tbaa !53
  %.not12 = icmp eq i32 %i.s, 4
  br i1 %.not12, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = load i32, ptr %i.g, align 8, !tbaa !49
  %i.u = icmp ult i32 %i.t, 65
  %i.v = load ptr, ptr %i.f, align 8
  %spec.select.i.i8 = select i1 %i.u, ptr %i.f, ptr %i.v
  %.0.i.i9 = load i64, ptr %spec.select.i.i8, align 8, !tbaa !47
  store i64 %.0.i.i9, ptr %3, align 8, !tbaa !61
  %i.w = load ptr, ptr %0, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.y(ptr noundef nonnull align 8 dereferenceable(243) %0) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN4llvm9StringRefC2EPKc.exit, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ false, %_ZN4llvm9StringRefC2EPKc.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm11MCAsmParser11parseSymbolERPNS_8MCSymbolE(ptr noundef nonnull align 8 dereferenceable(243) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(243) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #13 ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86, !nonnull !15, !align !87
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !50
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 5, ptr %i.g, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !56
  store ptr %.sroa.0.0.copyload, ptr %3, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.2.0.copyload, ptr %i.i, align 8, !tbaa !47
  %i.j = call noundef ptr @_ZN4llvm9MCContext11parseSymbolERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208) %i.f, ptr noundef nonnull align 8 dereferenceable(34) %3) #13
  store ptr %i.j, ptr %1, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i1 %i.d
}

declare noundef ptr @_ZN4llvm9MCContext11parseSymbolERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(2208), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZNK4llvm18MCParsedAsmOperand4dumpEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #9 align 2 {
bb.a:
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm11MCAsmParser19getAssemblerDialectEv(ptr noundef nonnull align 8 dereferenceable(243) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11MCAsmParser19setAssemblerDialectEj(ptr noundef nonnull align 8 dereferenceable(243) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm11MCAsmParser16discardLTOSymbolENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(243) %0, ptr %1, i64 %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm11MCAsmParser13isParsingMasmEv(ptr noundef nonnull align 8 dereferenceable(243) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm11MCAsmParser11defineMacroENS_9StringRefES1_(ptr noundef nonnull align 8 dereferenceable(243) %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm11MCAsmParser11lookUpFieldENS_9StringRefERNS_12AsmFieldInfoE(ptr noundef nonnull align 8 dereferenceable(243) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm11MCAsmParser11lookUpFieldENS_9StringRefES1_RNS_12AsmFieldInfoE(ptr noundef nonnull align 8 dereferenceable(243) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(36) %5) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm11MCAsmParser10lookUpTypeENS_9StringRefERNS_11AsmTypeInfoE(ptr noundef nonnull align 8 dereferenceable(243) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(28) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm18MCParsedAsmOperandD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN4llvm18MCParsedAsmOperandE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !47
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm18MCParsedAsmOperandD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #15
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4llvm18MCParsedAsmOperand10getSymNameEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret { ptr, i64 } zeroinitializer
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm18MCParsedAsmOperand9getOpDeclEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18MCParsedAsmOperand14isMemUseUpRegsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18MCParsedAsmOperand13needAddressOfEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm18MCParsedAsmOperand15isOffsetOfLocalEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNK4llvm18MCParsedAsmOperand14getOffsetOfLocEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

declare void @_ZN4llvm8AsmLexer8LexTokenEv(ptr dead_on_unwind writable sret(%"class.llvm::AsmToken") align 8, ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm15SmallVectorImplINS_8AsmTokenEE15insert_one_implIRKS1_EEPS1_S6_OT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !42   ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.d ; 2 uses
  %i.f = icmp eq ptr %1, %i.e
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !62
  %.not.i.i.not.i = icmp ult i32 %i.c, %i.i
  br i1 %.not.i.i.not.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit.i, label %bb.c, !prof !63

bb.c:                                             ; preds = %bb.b
  %i.j = icmp uge ptr %2, %i.a
  %i.k = icmp ult ptr %2, %1
  %spec.select.i.i.i.i.i = and i1 %i.j, %i.k
  br i1 %spec.select.i.i.i.i.i, label %bb.d, label %.critedge.i.i.i, !prof !64

bb.d:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %2 to i64
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.g)
  %i.o = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %i.n
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit.i

.critedge.i.i.i:                                  ; preds = %bb.c
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.g)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !17
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit.i: ; preds = %.critedge.i.i.i, %bb.d, %bb.b
  %i.q = phi ptr [ %i.a, %bb.b ], [ %i.o, %bb.d ], [ %.pre.i, %.critedge.i.i.i ]
  %.016.i.i.i = phi ptr [ %2, %bb.b ], [ %i.p, %bb.d ], [ %2, %.critedge.i.i.i ] ; 3 uses
  %i.r = load i32, ptr %i.b, align 8, !tbaa !42
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.s ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %.016.i.i.i, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !49   ; 2 uses
  store i32 %i.y, ptr %i.w, align 8, !tbaa !49
  %i.z = icmp ult i32 %i.y, 65
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit.i
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !47
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !47
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE9push_backERKS1_.exit

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit.i
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.u, ptr noundef nonnull align 8 dereferenceable(12) %i.v) #13
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE9push_backERKS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE9push_backERKS1_.exit: ; preds = %bb.e, %bb.f
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !42
  %i.ac = add i32 %i.ab, 1                        ; 2 uses
  store i32 %i.ac, ptr %i.b, align 8, !tbaa !42
  %i.ad = load ptr, ptr %0, align 8, !tbaa !17
  %i.ae = zext i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -40
  br label %_ZN4llvm8AsmTokenaSERKS0_.exit

bb.g:                                             ; preds = %bb.a
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = add nuw nsw i64 %i.d, 1                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !62
  %.not.i.i.not = icmp ult i32 %i.c, %i.am
  br i1 %.not.i.i.not, label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit, label %bb.h, !prof !63

bb.h:                                             ; preds = %bb.g
  %i.an = icmp uge ptr %2, %i.a
  %i.ao = icmp ult ptr %2, %i.e
  %spec.select.i.i.i.i = and i1 %i.an, %i.ao
  br i1 %spec.select.i.i.i.i, label %bb.i, label %.critedge.i.i, !prof !64

bb.i:                                             ; preds = %bb.h
  %i.ap = ptrtoint ptr %2 to i64
  %i.aq = sub i64 %i.ap, %i.ai
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.ak)
  %i.ar = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aq
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit

.critedge.i.i:                                    ; preds = %bb.h
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.ak)
  %.pre = load ptr, ptr %0, align 8, !tbaa !17
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit: ; preds = %bb.g, %bb.i, %.critedge.i.i
  %i.at = phi ptr [ %i.a, %bb.g ], [ %i.ar, %bb.i ], [ %.pre, %.critedge.i.i ] ; 2 uses
  %.016.i.i = phi ptr [ %2, %bb.g ], [ %i.as, %bb.i ], [ %2, %.critedge.i.i ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aj ; 7 uses
  %i.av = load i32, ptr %i.b, align 8, !tbaa !42
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %i.aw ; 6 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i64 24, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 -16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bc = getelementptr inbounds i8, ptr %i.ax, i64 -8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !49
  store i32 %i.bd, ptr %i.bb, align 8, !tbaa !49
  %i.be = load i64, ptr %i.ba, align 8
  store i64 %i.be, ptr %i.az, align 8
  store i32 0, ptr %i.bc, align 8, !tbaa !49
  %i.bf = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.bg = load i32, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.bf, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -40 ; 2 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.au to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit
  %i.bo = udiv exact i64 %i.bm, 40
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.cb, %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i ], [ %i.bo, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bq, %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i ], [ %i.bi, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.078.i.i.i.i.i = phi ptr [ %i.bp, %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i ], [ %i.bj, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bq, ptr noundef nonnull align 8 dereferenceable(40) %i.bp, i64 24, i1 false)
  %i.br = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !49
  %i.bu = icmp ult i32 %i.bt, 65
  br i1 %i.bu, label %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !47 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.bv) #14
  br label %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i

_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i:          ; preds = %bb.k, %bb.j, %.lr.ph.i.i.i.i.i
  %i.bx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.by = load i64, ptr %i.bx, align 8
  store i64 %i.by, ptr %i.br, align 8
  %i.bz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !49
  store i32 %i.ca, ptr %i.bs, align 8, !tbaa !49
  store i32 0, ptr %i.bz, align 8, !tbaa !49
  %i.cb = add nsw i64 %.010.i.i.i.i.i, -1
  %i.cc = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit.loopexit, !llvm.loop !90

_ZSt13move_backwardIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit.loopexit: ; preds = %_ZN4llvm8AsmTokenaSEOS0_.exit.i.i.i.i.i
  %.pre15 = load i32, ptr %i.b, align 8, !tbaa !42
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !17
  br label %_ZSt13move_backwardIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit

_ZSt13move_backwardIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit: ; preds = %_ZSt13move_backwardIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit.loopexit, %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit
  %i.cd = phi ptr [ %.pre16, %_ZSt13move_backwardIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit.loopexit ], [ %i.bf, %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit ]
  %i.ce = phi i32 [ %.pre15, %_ZSt13move_backwardIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit.loopexit ], [ %i.bg, %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE28reserveForParamAndGetAddressERKS1_m.exit ]
  %i.cf = add i32 %i.ce, 1                        ; 2 uses
  store i32 %i.cf, ptr %i.b, align 8, !tbaa !42
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [40 x i8], ptr %i.cd, i64 %i.cg
  %i.ci = icmp uge ptr %.016.i.i, %i.au
  %i.cj = icmp ult ptr %.016.i.i, %i.ch
  %spec.select.i = and i1 %i.ci, %i.cj
  %spec.select.idx = select i1 %spec.select.i, i64 40, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 %spec.select.idx ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %spec.select, i64 24, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %spec.select, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !49
  %i.co = icmp ult i32 %i.cn, 65
  br i1 %i.co, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZSt13move_backwardIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %spec.select, i64 32 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !49
  %i.cr = icmp ult i32 %i.cq, 65
  br i1 %i.cr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cs = load i64, ptr %i.cl, align 8, !tbaa !47
  store i64 %i.cs, ptr %i.ck, align 8, !tbaa !47
  %i.ct = load i32, ptr %i.cp, align 8, !tbaa !49
  store i32 %i.ct, ptr %i.cm, align 8, !tbaa !49
  br label %_ZN4llvm8AsmTokenaSERKS0_.exit

bb.n:                                             ; preds = %bb.l, %_ZSt13move_backwardIPN4llvm8AsmTokenES2_ET0_T_S4_S3_.exit
  tail call void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.ck, ptr noundef nonnull align 8 dereferenceable(12) %i.cl) #13
  br label %_ZN4llvm8AsmTokenaSERKS0_.exit

_ZN4llvm8AsmTokenaSERKS0_.exit:                   ; preds = %bb.n, %bb.m, %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE9push_backERKS1_.exit
  %.013 = phi ptr [ %i.ag, %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE9push_backERKS1_.exit ], [ %i.au, %bb.m ], [ %i.au, %bb.n ]
  ret ptr %.013
}

declare void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 40, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !42   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = mul nuw nsw i64 %i.g, 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE19moveElementsForGrowEPS1_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 4 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.08.i.i.i.i.i.i, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !49
  store i32 %i.m, ptr %i.k, align 8, !tbaa !49
  %i.n = load i64, ptr %i.j, align 8
  store i64 %i.n, ptr %i.i, align 8
  store i32 0, ptr %i.l, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 40
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !91

_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !17  ; 3 uses
  %.pre3.i = load i32, ptr %i.e, align 8, !tbaa !42 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE19moveElementsForGrowEPS1_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i
  %i.q = zext i32 %.pre3.i to i64
  %.idx2.i = mul nuw nsw i64 %i.q, 40
  %i.r = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm8AsmTokenD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.s, %_ZN4llvm8AsmTokenD2Ev.exit.i.i ], [ %i.r, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.05.i.i, i64 -40 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.05.i.i, i64 -8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !49
  %i.v = icmp ugt i32 %i.u, 64
  br i1 %i.v, label %bb.b, label %_ZN4llvm8AsmTokenD2Ev.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.w = getelementptr inbounds i8, ptr %.05.i.i, i64 -16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN4llvm8AsmTokenD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.x) #14
  br label %_ZN4llvm8AsmTokenD2Ev.exit.i.i

_ZN4llvm8AsmTokenD2Ev.exit.i.i:                   ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.pre.i, %i.s
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE19moveElementsForGrowEPS1_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE19moveElementsForGrowEPS1_.exit.loopexit: ; preds = %_ZN4llvm8AsmTokenD2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !17
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE19moveElementsForGrowEPS1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE19moveElementsForGrowEPS1_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE19moveElementsForGrowEPS1_.exit.loopexit, %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i
  %i.z = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE19moveElementsForGrowEPS1_.exit.loopexit ], [ %i.d, %bb.a ], [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i ] ; 2 uses
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !61
  %i.ab = icmp eq ptr %i.z, %i.b
  br i1 %i.ab, label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE21takeAllocationForGrowEPS1_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE19moveElementsForGrowEPS1_.exit
  call void @free(ptr noundef %i.z) #13
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE21takeAllocationForGrowEPS1_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE21takeAllocationForGrowEPS1_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EE19moveElementsForGrowEPS1_.exit, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !17
  %i.ac = trunc i64 %i.aa to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN4llvm5APInt14assignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIjE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !68, !range !14, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i8, ptr %i.e, align 4, !tbaa !68, !range !14, !noundef !15
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = load i32, ptr %i.d, align 8
  %i.k = icmp eq i32 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 112, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !42   ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = mul nuw nsw i64 %i.g, 112
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE19moveElementsForGrowEPS2_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %_ZSt10_ConstructIN4llvm11MCAsmParser14MCPendingErrorEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.u, %_ZSt10_ConstructIN4llvm11MCAsmParser14MCPendingErrorEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.c, %bb.a ] ; 7 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.t, %_ZSt10_ConstructIN4llvm11MCAsmParser14MCPendingErrorEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 5 uses
  %i.i = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !50
  store i64 %i.i, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  store ptr %i.k, ptr %i.j, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  store i64 0, ptr %i.l, align 8, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  store i64 64, ptr %i.m, align 8, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !58
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN4llvm11MCAsmParser14MCPendingErrorEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8
  %i.q = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15SmallVectorImplIcEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %i.p) ; 0 uses
  br label %_ZSt10_ConstructIN4llvm11MCAsmParser14MCPendingErrorEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructIN4llvm11MCAsmParser14MCPendingErrorEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !65
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 112 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 112
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !92

_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i: ; preds = %_ZSt10_ConstructIN4llvm11MCAsmParser14MCPendingErrorEJS2_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !17  ; 3 uses
  %.pre3.i = load i32, ptr %i.e, align 8, !tbaa !42 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre3.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE19moveElementsForGrowEPS2_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i
  %i.v = zext i32 %.pre3.i to i64
  %.idx2.i = mul nuw nsw i64 %i.v, 112
  %i.w = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx2.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm11MCAsmParser14MCPendingErrorD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.x, %_ZN4llvm11MCAsmParser14MCPendingErrorD2Ev.exit.i.i ], [ %i.w, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %.05.i.i, i64 -112 ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.05.i.i, i64 -104
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !44   ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.05.i.i, i64 -80
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4llvm11MCAsmParser14MCPendingErrorD2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  call void @free(ptr noundef %i.z) #13
  br label %_ZN4llvm11MCAsmParser14MCPendingErrorD2Ev.exit.i.i

_ZN4llvm11MCAsmParser14MCPendingErrorD2Ev.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.pre.i, %i.x
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE19moveElementsForGrowEPS2_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !0

_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE19moveElementsForGrowEPS2_.exit.loopexit: ; preds = %_ZN4llvm11MCAsmParser14MCPendingErrorD2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !17
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE19moveElementsForGrowEPS2_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE19moveElementsForGrowEPS2_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE19moveElementsForGrowEPS2_.exit.loopexit, %bb.a, %_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i
  %i.ac = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE19moveElementsForGrowEPS2_.exit.loopexit ], [ %i.d, %bb.a ], [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE18uninitialized_moveIPS2_S5_EEvT_S6_T0_.exit.i ] ; 2 uses
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !61
  %i.ae = icmp eq ptr %i.ac, %i.b
  br i1 %i.ae, label %_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE21takeAllocationForGrowEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE19moveElementsForGrowEPS2_.exit
  call void @free(ptr noundef %i.ac) #13
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE21takeAllocationForGrowEPS2_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE21takeAllocationForGrowEPS2_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EE19moveElementsForGrowEPS2_.exit, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !17
  %i.af = trunc i64 %i.ad to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15SmallVectorImplIcEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !44     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIcE12assignRemoteEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #13
  %.pre = load ptr, ptr %1, align 8, !tbaa !44
  br label %_ZN4llvm15SmallVectorImplIcE12assignRemoteEOS1_.exit

_ZN4llvm15SmallVectorImplIcE12assignRemoteEOS1_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load <2 x i64>, ptr %i.j, align 8, !tbaa !61
  store <2 x i64> %i.k, ptr %i.i, align 8, !tbaa !61
  store ptr %i.c, ptr %1, align 8, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br label %bb.s

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !58   ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !58   ; 7 uses
  %.not = icmp ult i64 %i.o, %i.m
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %.not33 = icmp eq i64 %i.m, 0
  br i1 %.not33, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = icmp sgt i64 %i.m, 1
  br i1 %i.q, label %bb.h, label %bb.i, !prof !63

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.b, i64 %i.m, i1 false)
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %bb.g
  %i.r = icmp eq i64 %i.m, 1
  br i1 %i.r, label %bb.j, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.s = load i8, ptr %i.b, align 1, !tbaa !47
  store i8 %i.s, ptr %i.p, align 1, !tbaa !47
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit

_ZSt4moveIPcS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  store i64 %i.m, ptr %i.n, align 8, !tbaa !58
  store i64 0, ptr %i.l, align 8, !tbaa !58
  br label %bb.s

bb.k:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !59
  %i.v = icmp ult i64 %i.u, %i.m
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 0, ptr %i.n, align 8, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.w, i64 noundef %i.m, i64 noundef 1) #13
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34

bb.m:                                             ; preds = %bb.k
  %.not32 = icmp eq i64 %i.o, 0
  br i1 %.not32, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.y = icmp sgt i64 %i.o, 1
  br i1 %i.y, label %bb.o, label %bb.p, !prof !63

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.b, i64 %i.o, i1 false)
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34

bb.p:                                             ; preds = %bb.n
  %i.z = icmp eq i64 %i.o, 1
  br i1 %i.z, label %bb.q, label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34

bb.q:                                             ; preds = %bb.p
  %i.aa = load i8, ptr %i.b, align 1, !tbaa !47
  store i8 %i.aa, ptr %i.x, align 1, !tbaa !47
  br label %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34

_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34:               ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %bb.l
  %.026 = phi i64 [ 0, %bb.l ], [ 0, %bb.m ], [ %i.o, %bb.o ], [ %i.o, %bb.p ], [ 1, %bb.q ] ; 4 uses
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !58  ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_moveIPcS3_EEvT_S4_T0_.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.026
  %i.ae = load ptr, ptr %0, align 8, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.026
  %gepdiff = sub nsw i64 %i.ab, %.026
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_moveIPcS3_EEvT_S4_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_moveIPcS3_EEvT_S4_T0_.exit: ; preds = %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit34, %bb.r
  store i64 %i.m, ptr %i.n, align 8, !tbaa !58
  store i64 0, ptr %i.l, align 8, !tbaa !58
  br label %bb.s

bb.s:                                             ; preds = %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit, %_ZN4llvm23SmallVectorTemplateBaseIcLb1EE18uninitialized_moveIPcS3_EEvT_S4_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplIcE12assignRemoteEOS1_.exit
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

declare void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_MCAsmParser.cpp() #12 section ".text.startup" {
bb.a:
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4llvm23AsmMacroMaxNestingDepthE, i32 noundef 0, i32 noundef 0) #13
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm23AsmMacroMaxNestingDepthE, i64 120), align 8, !tbaa !96
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm23AsmMacroMaxNestingDepthE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm23AsmMacroMaxNestingDepthE, i64 128), align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIjLb0ENS0_6parserIjEEEE, i64 16), ptr @_ZN4llvm23AsmMacroMaxNestingDepthE, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIjEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm23AsmMacroMaxNestingDepthE, i64 144), align 8, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4llvm23AsmMacroMaxNestingDepthE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvm23AsmMacroMaxNestingDepthE, ptr nonnull align 1 dereferenceable(28) @.str, i64 27) #13
  store i32 20, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm23AsmMacroMaxNestingDepthE, i64 120), align 8, !tbaa !96
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm23AsmMacroMaxNestingDepthE, i64 140), align 4, !tbaa !68
  store i32 20, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm23AsmMacroMaxNestingDepthE, i64 136), align 8, !tbaa !97
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm23AsmMacroMaxNestingDepthE, i64 10), align 2
  %i.b = and i16 %i.a, -97
  %i.c = or disjoint i16 %i.b, 32
  store i16 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm23AsmMacroMaxNestingDepthE, i64 10), align 2
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm23AsmMacroMaxNestingDepthE, i64 32), align 8, !tbaa !50
  store i64 54, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm23AsmMacroMaxNestingDepthE, i64 40), align 8, !tbaa !61
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4llvm23AsmMacroMaxNestingDepthE) #13
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIjLb0ENS0_6parserIjEEED2Ev, ptr nonnull @_ZN4llvm23AsmMacroMaxNestingDepthE, ptr nonnull @__dso_handle) #13 ; 0 uses
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !45}
!1 = distinct !{!1, !45}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"bool", !6, i64 0}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !12, i64 0, !7, i64 8, !7, i64 12}
!17 = !{!16, !12, i64 0}
!18 = !{!"p1 _ZTSN4llvm17MCTargetAsmParserE", !12, i64 0}
!19 = !{!"p1 _ZTSN4llvm9MCContextE", !12, i64 0}
!20 = !{!"p1 _ZTSN4llvm10MCStreamerE", !12, i64 0}
!21 = !{!"p1 _ZTSN4llvm9SourceMgrE", !12, i64 0}
!22 = !{!"p1 _ZTSN4llvm9MCAsmInfoE", !12, i64 0}
!23 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_8AsmTokenEvEE", !16, i64 0}
!24 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_8AsmTokenELb0EEE", !23, i64 0}
!25 = !{!"_ZTSN4llvm15SmallVectorImplINS_8AsmTokenEEE", !24, i64 0}
!26 = !{!"_ZTSN4llvm18SmallVectorStorageINS_8AsmTokenELj1EEE", !6, i64 0}
!27 = !{!"_ZTSN4llvm11SmallVectorINS_8AsmTokenELj1EEE", !25, i64 0, !26, i64 16}
!28 = !{!"p1 omnipotent char", !12, i64 0}
!29 = !{!"long", !6, i64 0}
!30 = !{!"_ZTSN4llvm9StringRefE", !28, i64 0, !29, i64 8}
!31 = !{!"_ZTSN4llvm5SMLocE", !28, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !28, i64 0}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !29, i64 8, !6, i64 16}
!34 = !{!"p1 _ZTSN4llvm18AsmCommentConsumerE", !12, i64 0}
!35 = !{!"_ZTSN4llvm8AsmLexerE", !27, i64 0, !28, i64 56, !30, i64 64, !31, i64 80, !33, i64 88, !22, i64 120, !13, i64 128, !13, i64 129, !13, i64 130, !13, i64 131, !28, i64 136, !13, i64 144, !13, i64 145, !13, i64 146, !13, i64 147, !13, i64 148, !13, i64 149, !13, i64 150, !13, i64 151, !13, i64 152, !7, i64 156, !13, i64 160, !13, i64 161, !34, i64 168}
!36 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_11MCAsmParser14MCPendingErrorEvEE", !16, i64 0}
!37 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_11MCAsmParser14MCPendingErrorELb0EEE", !36, i64 0}
!38 = !{!"_ZTSN4llvm15SmallVectorImplINS_11MCAsmParser14MCPendingErrorEEE", !37, i64 0}
!39 = !{!"_ZTSN4llvm11SmallVectorINS_11MCAsmParser14MCPendingErrorELj0EEE", !38, i64 0}
!40 = !{!"_ZTSN4llvm11MCAsmParserE", !18, i64 8, !19, i64 16, !20, i64 24, !21, i64 32, !22, i64 40, !35, i64 48, !39, i64 224, !13, i64 240, !13, i64 241, !13, i64 242}
!41 = !{!40, !18, i64 8}
!42 = !{!16, !7, i64 8}
!43 = !{!"_ZTSN4llvm15SmallVectorBaseImEE", !12, i64 0, !29, i64 8, !29, i64 16}
!44 = !{!43, !12, i64 0}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!33, !28, i64 0}
!47 = !{!6, !6, i64 0}
!48 = !{!"_ZTSN4llvm5APIntE", !6, i64 0, !7, i64 8}
!49 = !{!48, !7, i64 8}
!50 = !{!28, !28, i64 0}
!51 = !{!"_ZTSN4llvm8AsmToken9TokenKindE", !6, i64 0}
!52 = !{!"_ZTSN4llvm8AsmTokenE", !51, i64 0, !30, i64 8, !48, i64 24}
!53 = !{!52, !51, i64 0}
!54 = !{!"_ZTSN4llvm5Twine8NodeKindE", !6, i64 0}
!55 = !{!"_ZTSN4llvm5TwineE", !6, i64 0, !6, i64 16, !54, i64 32, !54, i64 33}
!56 = !{!55, !54, i64 33}
!57 = !{!55, !54, i64 32}
!58 = !{!43, !29, i64 8}
!59 = !{!43, !29, i64 16}
!60 = !{!35, !28, i64 136}
!61 = !{!29, !29, i64 0}
!62 = !{!16, !7, i64 12}
!63 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!64 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!65 = !{i64 0, i64 8, !50, i64 8, i64 8, !50}
!66 = !{!"_ZTSN4llvm2cl18GenericOptionValueE"}
!67 = !{!"_ZTSN4llvm2cl15OptionValueCopyIjEE", !66, i64 0, !7, i64 8, !13, i64 12}
!68 = !{!67, !13, i64 12}
!69 = distinct !{null}
!70 = !{!"_ZTSSt14_Function_base", !6, i64 0, !12, i64 16}
!71 = !{!70, !12, i64 16}
!72 = !{!"any p2 pointer", !12, i64 0}
!73 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !72, i64 0, !7, i64 8, !7, i64 12, !13, i64 16}
!74 = !{!73, !13, i64 16}
!75 = !{!73, !72, i64 0}
!76 = !{!19, !19, i64 0}
!77 = !{!20, !20, i64 0}
!78 = !{!21, !21, i64 0}
!79 = !{!22, !22, i64 0}
!80 = distinct !{!80, !45}
!81 = !{!35, !13, i64 129}
!82 = distinct !{null}
!83 = distinct !{!83, !45}
!84 = !{ptr @_ZN4llvm11MCAsmParser10parseTokenENS_8AsmToken9TokenKindERKNS_5TwineE}
!85 = !{!31, !28, i64 0}
!86 = !{!40, !19, i64 16}
!87 = !{i64 8}
!88 = !{!"p1 _ZTSN4llvm8MCSymbolE", !12, i64 0}
!89 = !{!88, !88, i64 0}
!90 = distinct !{!90, !45}
!91 = distinct !{!91, !45}
!92 = distinct !{!92, !45}
!93 = !{!"_ZTSN4llvm2cl15OptionValueBaseIjLb0EEE", !67, i64 0}
!94 = !{!"_ZTSN4llvm2cl11OptionValueIjEE", !93, i64 0}
!95 = !{!"_ZTSN4llvm2cl11opt_storageIjLb0ELb0EEE", !7, i64 0, !94, i64 8}
!96 = !{!95, !7, i64 0}
!97 = !{!67, !7, i64 8}
end_hunk_0
