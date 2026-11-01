Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VPlanTransforms?download=true
inline.NumInlined: 28623
inline.NumDeleted: 13159
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN4llvm21VPWidenStoreEVLRecipeC2ERNS_18VPWidenStoreRecipeEPNS_7VPValueES4_RS3_S4_:_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i
  %i.y = load i32, ptr %i.x, align 8, !tbaa !76   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !77
  %.not.i.i.i.i.i.1 = icmp ult i32 %i.y, %i.aa
  br i1 %.not.i.i.i.i.i.1, label %bb.f, label %bb.e, !prof !194

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.1
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6VPUserELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  br label %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.1

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.1
  %i.ab = zext i32 %i.y to i64
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !75
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  store ptr %i.d, ptr %i.ad, align 1
  %i.ae = load i32, ptr %i.x, align 8, !tbaa !76
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.x, align 8, !tbaa !76
  br label %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.1

_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.1: ; preds = %bb.f, %bb.e
  %i.ag = load i32, ptr %i.g, align 8, !tbaa !76  ; 2 uses
  %i.ah = load i32, ptr %i.h, align 4, !tbaa !77
  %.not.i.i.i.i.2 = icmp ult i32 %i.ag, %i.ah
  br i1 %.not.i.i.i.i.2, label %bb.h, label %bb.g, !prof !194

bb.g:                                             ; preds = %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.1
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull %4)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.2

bb.h:                                             ; preds = %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.1
  %i.ai = zext i32 %i.ag to i64
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  store ptr %4, ptr %i.ak, align 1
  %i.al = load i32, ptr %i.g, align 8, !tbaa !76
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.g, align 8, !tbaa !76
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.2

_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.2: ; preds = %bb.h, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !76 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !77
  %.not.i.i.i.i.i.2 = icmp ult i32 %i.ap, %i.ar
  br i1 %.not.i.i.i.i.i.2, label %bb.j, label %bb.i, !prof !194

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.2
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6VPUserELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.d)
  br label %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.2

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i.i.2
  %i.as = zext i32 %i.ap to i64
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !75
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  store ptr %i.d, ptr %i.au, align 1
  %i.av = load i32, ptr %i.ao, align 8, !tbaa !76
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.ao, align 8, !tbaa !76
  br label %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.2

_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.2: ; preds = %bb.j, %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm12VPRecipeBaseE, i64 16), ptr %0, align 8, !tbaa !159
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm12VPRecipeBaseE, i64 72), ptr %i.d, align 8, !tbaa !159
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.ax, align 8, !tbaa !195
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.0.0.copyload.i, ptr %i.ay, align 8, !tbaa !150
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 22, ptr %i.az, align 8, !tbaa !135
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !614, !nonnull !255, !align !432 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 177
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !167, !range !254, !noundef !255
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !75
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i32 0, ptr %i.bi, align 8, !tbaa !76
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 3, ptr %i.bj, align 4, !tbaa !77
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !76 ; 4 uses
  %.not.i.i.i.i10 = icmp eq i32 %i.bl, 0
  %i.bm = icmp eq ptr %0, %1
  %or.cond.i.i.i = or i1 %i.bm, %.not.i.i.i.i10
  br i1 %or.cond.i.i.i, label %_ZN4llvm19VPWidenMemoryRecipeC2ERNS_11InstructionEbRKNS_12VPIRMetadataE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.2
  %i.bn = zext i32 %i.bl to i64                   ; 2 uses
  %i.bo = icmp ugt i32 %i.bl, 3
  br i1 %i.bo, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i: ; preds = %bb.k
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %i.bg, ptr noundef nonnull %i.bh, i64 noundef %i.bn, i64 noundef 16) #25
  %.pre.i.i.i.i = load i32, ptr %i.bk, align 8, !tbaa !76 ; 2 uses
  %.not.i.i.i.i.i11 = icmp eq i32 %.pre.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i11, label %.sink.split.i.i.i.i, label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i: ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i
  %.pre37.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  %.pre.i.i = load ptr, ptr %i.bg, align 8, !tbaa !75
  br label %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i

_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i: ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i, %bb.k
  %i.bp = phi ptr [ %.pre.i.i, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i ], [ %i.bh, %bb.k ]
  %.pre-phi.i8.i.i.i = phi i64 [ %.pre37.i.i.i.i, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i._ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i_crit_edge.i.i ], [ %i.bn, %bb.k ]
  %i.bq = load ptr, ptr %i.bf, align 8, !tbaa !75
  %gepdiff.i.i.i.i = shl nuw nsw i64 %.pre-phi.i8.i.i.i, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 8 %i.bq, i64 %gepdiff.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.thread.i.i.i, %_ZSt4copyIPKSt4pairIjPN4llvm6MDNodeEEPS4_ET0_T_S9_S8_.exit35.i.i.i.i
  store i32 %i.bl, ptr %i.bi, align 8, !tbaa !76
  br label %_ZN4llvm19VPWidenMemoryRecipeC2ERNS_11InstructionEbRKNS_12VPIRMetadataE.exit

_ZN4llvm19VPWidenMemoryRecipeC2ERNS_11InstructionEbRKNS_12VPIRMetadataE.exit: ; preds = %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i.i.2, %.sink.split.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.bc, ptr %i.br, align 8, !tbaa !162
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.0.1.in.in.in.in.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %.sroa.0.1.in.in.in.i.i = load i16, ptr %.sroa.0.1.in.in.in.in.i.i, align 2, !tbaa !163
  %.sroa.0.1.in.in.i.i = trunc i16 %.sroa.0.1.in.in.in.i.i to i8
  %.sroa.0.1.in.i.i = lshr i8 %.sroa.0.1.in.in.i.i, 1
  %.sroa.0.1.i.i = and i8 %.sroa.0.1.in.i.i, 63
  store i8 %.sroa.0.1.i.i, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 %i.be, ptr %i.bt, align 1, !tbaa !167
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 178 ; 2 uses
  store i8 0, ptr %i.bu, align 2, !tbaa !168
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm21VPWidenStoreEVLRecipeE, i64 16), ptr %0, align 8, !tbaa !159
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4llvm21VPWidenStoreEVLRecipeE, i64 96), ptr %i.d, align 8, !tbaa !159
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm21VPWidenStoreEVLRecipeE, i64 152), ptr %i.ba, align 8, !tbaa !159
  %.not.i = icmp eq ptr %5, null
  br i1 %.not.i, label %_ZN4llvm19VPWidenMemoryRecipe7setMaskEPNS_7VPValueE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm19VPWidenMemoryRecipeC2ERNS_11InstructionEbRKNS_12VPIRMetadataE.exit
  %i.bv = load ptr, ptr getelementptr inbounds nuw inrange(-32, 16) (i8, ptr @_ZTVN4llvm21VPWidenStoreEVLRecipeE, i64 168), align 8
  %i.bw = tail call noundef ptr %i.bv(ptr noundef nonnull align 8 dereferenceable(83) %i.ba) #25, !inline_history !1 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 40 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 48 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !76 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 52
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !77
  %.not.i.i.i = icmp ult i32 %i.ca, %i.cc
  br i1 %.not.i.i.i, label %bb.n, label %bb.m, !prof !194

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.by, ptr noundef nonnull %5)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.cd = zext i32 %i.ca to i64
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !75
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cd
  store ptr %5, ptr %i.cf, align 1
  %i.cg = load i32, ptr %i.bz, align 8, !tbaa !76
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.bz, align 8, !tbaa !76
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i: ; preds = %bb.n, %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !76 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !77
  %.not.i.i.i.i12 = icmp ult i32 %i.ck, %i.cm
  br i1 %.not.i.i.i.i12, label %bb.p, label %bb.o, !prof !194

bb.o:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6VPUserELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, ptr noundef nonnull align 8 dereferenceable(40) %i.bx)
  br label %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i

bb.p:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7VPValueELb1EE9push_backES2_.exit.i.i
  %i.cn = zext i32 %i.ck to i64
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !75
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cn
  store ptr %i.bx, ptr %i.cp, align 1
  %i.cq = load i32, ptr %i.cj, align 8, !tbaa !76
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cj, align 8, !tbaa !76
  br label %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i

_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i: ; preds = %bb.p, %bb.o
  store i8 1, ptr %i.bu, align 2, !tbaa !168
  br label %_ZN4llvm19VPWidenMemoryRecipe7setMaskEPNS_7VPValueE.exit

_ZN4llvm19VPWidenMemoryRecipe7setMaskEPNS_7VPValueE.exit: ; preds = %_ZN4llvm19VPWidenMemoryRecipeC2ERNS_11InstructionEbRKNS_12VPIRMetadataE.exit, %_ZN4llvm6VPUser10addOperandEPNS_7VPValueE.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK16RemoveMask_matchIPN4llvm7VPValueES2_E5matchIS1_EEbPT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.llvm::PatternMatchHelpers::match_combine_or", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3410   ; 3 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3411, !nonnull !255, !align !432
  store ptr null, ptr %i.d, align 8, !tbaa !157
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3411, !nonnull !255, !align !432 ; 2 uses
  %3 = ptrtoint ptr %i.f to i64                   ; 2 uses
  %4 = ptrtoint ptr %i.a to i64                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 64, ptr %i.g, align 8, !tbaa !392, !alias.scope !3412
  store i64 0, ptr %2, align 8, !tbaa !155, !alias.scope !3412
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 0, ptr %5, align 8, !tbaa !394, !alias.scope !3412
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %3, ptr %i.h, align 8, !tbaa !396, !alias.scope !3412
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %4, ptr %i.i, align 8, !tbaa !157, !alias.scope !3412
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %3, ptr %6, align 8, !alias.scope !3413
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %4, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3413
  %i.j = tail call noundef ptr @_ZNK4llvm7VPValue17getDefiningRecipeEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #25 ; 7 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load i8, ptr %i.k, align 8, !tbaa !135
  %.not4.i = icmp eq i8 %i.l, 5
  br i1 %.not4.i, label %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyENS_19PatternMatchHelpers10match_bindINS_7VPValueEEEEELj89ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS9_EEbPKNS_12VPRecipeBaseE.exit.i.i, label %bb.k

_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyENS_19PatternMatchHelpers10match_bindINS_7VPValueEEEEELj89ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS9_EEbPKNS_12VPRecipeBaseE.exit.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  %i.n = load i8, ptr %i.m, align 8, !tbaa !149
  %i.o = icmp eq i8 %i.n, 89
  br i1 %i.o, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyENS_19PatternMatchHelpers10match_bindINS_7VPValueEEEEELj89ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS9_EEbPKNS_12VPRecipeBaseE.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !76   ; 2 uses
  %i.r = icmp ult i32 %i.q, 2
  br i1 %i.r, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not27.i.i = icmp eq i32 %i.q, 2
  br i1 %.not27.i.i, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call noundef i32 @_ZNK4llvm13VPInstruction23getNumOperandsForOpcodeEv(ptr noundef nonnull align 8 dereferenceable(264) %i.j) #25 ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.k, label %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i

_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i:     ; preds = %bb.g
  %i.u = add nuw i32 %i.s, 1                      ; 2 uses
  %i.v = load i32, ptr %i.p, align 8, !tbaa !76
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i
  %i.x = tail call noundef i32 @_ZNK4llvm13VPInstruction23getNumOperandsForOpcodeEv(ptr noundef nonnull align 8 dereferenceable(264) %i.j) #25 ; 2 uses
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = add nuw i32 %i.x, 1
  %i.aa = load i32, ptr %i.p, align 8, !tbaa !76
  %i.ab = icmp eq i32 %i.z, %i.aa
  %i.ac = sext i1 %i.ab to i32
  br label %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i

_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.i ], [ 0, %bb.h ]
  %i.ad = add i32 %.0.i.i.i.i, %i.u
  %.not22.i.i = icmp eq i32 %i.ad, 2
  br i1 %.not22.i.i, label %.critedge.i.i, label %bb.k

.critedge.i.i:                                    ; preds = %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !75 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !157
  %i.ah = icmp eq ptr %i.ag, %i.a
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !157 ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.not.i.i.i, label %bb.k, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyENS_19PatternMatchHelpers10match_bindINS_7VPValueEEEEELj89ELb0EJNS_13VPInstructionEEE5matchEPKS6_.exit

_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyENS_19PatternMatchHelpers10match_bindINS_7VPValueEEEEELj89ELb0EJNS_13VPInstructionEEE5matchEPKS6_.exit: ; preds = %bb.j
  store ptr %i.aj, ptr %i.f, align 8, !tbaa !157
  br label %_ZNK4llvm19PatternMatchHelpers16match_combine_orIJNS_17VPlanPatternMatch12Recipe_matchISt5tupleIJNS2_14specificval_tyENS0_10match_bindINS_7VPValueEEEEELj89ELb0EJNS_13VPInstructionEEEENS3_IS4_IJS5_S8_NS2_11int_pred_tyINS2_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeESA_EEEEE5matchIS7_EEbPT_.exit

bb.k:                                             ; preds = %bb.c, %bb.g, %bb.d, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyENS_19PatternMatchHelpers10match_bindINS_7VPValueEEEEELj89ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS9_EEbPKNS_12VPRecipeBaseE.exit.i.i, %.critedge.i.i, %bb.j, %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i.i, %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i.i, %bb.e
  %i.ak = tail call noundef ptr @_ZNK4llvm7VPValue17getDefiningRecipeEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #25 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyENS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE5matchEPKS6_.exit.thread.i.i, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyENS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE5matchEPKS6_.exit.i.i

_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyENS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE5matchEPKS6_.exit.i.i: ; preds = %bb.k
  %i.al = call noundef zeroext i1 @_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyENS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE5matchEPKNS_12VPRecipeBaseE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %i.ak)
  br i1 %i.al, label %_ZNK4llvm19PatternMatchHelpers16match_combine_orIJNS_17VPlanPatternMatch12Recipe_matchISt5tupleIJNS2_14specificval_tyENS0_10match_bindINS_7VPValueEEEEELj89ELb0EJNS_13VPInstructionEEEENS3_IS4_IJS5_S8_NS2_11int_pred_tyINS2_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeESA_EEEEE5matchIS7_EEbPT_.exit, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyENS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE5matchEPKS6_.exit.thread.i.i

_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyENS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE5matchEPKS6_.exit.thread.i.i: ; preds = %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyENS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE5matchEPKS6_.exit.i.i, %bb.k
  br label %_ZNK4llvm19PatternMatchHelpers16match_combine_orIJNS_17VPlanPatternMatch12Recipe_matchISt5tupleIJNS2_14specificval_tyENS0_10match_bindINS_7VPValueEEEEELj89ELb0EJNS_13VPInstructionEEEENS3_IS4_IJS5_S8_NS2_11int_pred_tyINS2_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeESA_EEEEE5matchIS7_EEbPT_.exit

_ZNK4llvm19PatternMatchHelpers16match_combine_orIJNS_17VPlanPatternMatch12Recipe_matchISt5tupleIJNS2_14specificval_tyENS0_10match_bindINS_7VPValueEEEEELj89ELb0EJNS_13VPInstructionEEEENS3_IS4_IJS5_S8_NS2_11int_pred_tyINS2_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeESA_EEEEE5matchIS7_EEbPT_.exit: ; preds = %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyENS_19PatternMatchHelpers10match_bindINS_7VPValueEEEEELj89ELb0EJNS_13VPInstructionEEE5matchEPKS6_.exit, %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyENS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE5matchEPKS6_.exit.i.i, %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyENS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE5matchEPKS6_.exit.thread.i.i
  %i.am = phi i1 [ true, %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyENS_19PatternMatchHelpers10match_bindINS_7VPValueEEEEELj89ELb0EJNS_13VPInstructionEEE5matchEPKS6_.exit ], [ true, %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyENS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE5matchEPKS6_.exit.i.i ], [ false, %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJNS0_14specificval_tyENS_19PatternMatchHelpers10match_bindINS_7VPValueEEENS0_11int_pred_tyINS0_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEE5matchEPKS6_.exit.thread.i.i ]
  %i.an = load i32, ptr %i.g, align 8, !tbaa !392
  %i.ao = icmp ugt i32 %i.an, 64
  br i1 %i.ao, label %bb.l, label %_ZN4llvm19PatternMatchHelpers16match_combine_orIJNS_17VPlanPatternMatch12Recipe_matchISt5tupleIJNS2_14specificval_tyENS0_10match_bindINS_7VPValueEEENS2_11int_pred_tyINS2_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEEEED2Ev.exit

bb.l:                                             ; preds = %_ZNK4llvm19PatternMatchHelpers16match_combine_orIJNS_17VPlanPatternMatch12Recipe_matchISt5tupleIJNS2_14specificval_tyENS0_10match_bindINS_7VPValueEEEEELj89ELb0EJNS_13VPInstructionEEEENS3_IS4_IJS5_S8_NS2_11int_pred_tyINS2_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeESA_EEEEE5matchIS7_EEbPT_.exit
  %i.ap = load ptr, ptr %2, align 8, !tbaa !155   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN4llvm19PatternMatchHelpers16match_combine_orIJNS_17VPlanPatternMatch12Recipe_matchISt5tupleIJNS2_14specificval_tyENS0_10match_bindINS_7VPValueEEENS2_11int_pred_tyINS2_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.ap) #28
  br label %_ZN4llvm19PatternMatchHelpers16match_combine_orIJNS_17VPlanPatternMatch12Recipe_matchISt5tupleIJNS2_14specificval_tyENS0_10match_bindINS_7VPValueEEENS2_11int_pred_tyINS2_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEEEED2Ev.exit

_ZN4llvm19PatternMatchHelpers16match_combine_orIJNS_17VPlanPatternMatch12Recipe_matchISt5tupleIJNS2_14specificval_tyENS0_10match_bindINS_7VPValueEEENS2_11int_pred_tyINS2_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEEEED2Ev.exit: ; preds = %_ZNK4llvm19PatternMatchHelpers16match_combine_orIJNS_17VPlanPatternMatch12Recipe_matchISt5tupleIJNS2_14specificval_tyENS0_10match_bindINS_7VPValueEEEEELj89ELb0EJNS_13VPInstructionEEEENS3_IS4_IJS5_S8_NS2_11int_pred_tyINS2_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeESA_EEEEE5matchIS7_EEbPT_.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.n

bb.n:                                             ; preds = %_ZN4llvm19PatternMatchHelpers16match_combine_orIJNS_17VPlanPatternMatch12Recipe_matchISt5tupleIJNS2_14specificval_tyENS0_10match_bindINS_7VPValueEEENS2_11int_pred_tyINS2_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEEEED2Ev.exit, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.am, %_ZN4llvm19PatternMatchHelpers16match_combine_orIJNS_17VPlanPatternMatch12Recipe_matchISt5tupleIJNS2_14specificval_tyENS0_10match_bindINS_7VPValueEEENS2_11int_pred_tyINS2_15is_specific_intELj1EEEEELj59ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEEEED2Ev.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJ16RemoveMask_matchIPNS_7VPValueES5_EEELj97ELb0EJNS_13VPInstructionEEE5matchEPKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %struct.RemoveMask_match, align 16  ; 4 uses
  %i.a = tail call noundef ptr @_ZNK4llvm7VPValue17getDefiningRecipeEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #25 ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJ16RemoveMask_matchIPNS_7VPValueES5_EEELj97ELb0EJNS_13VPInstructionEEE5matchEPKNS_12VPRecipeBaseE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load i8, ptr %i.b, align 8, !tbaa !135
  %.not4 = icmp eq i8 %i.c, 5
  br i1 %.not4, label %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJ16RemoveMask_matchIPNS_7VPValueES5_EEELj97ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit.i, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJ16RemoveMask_matchIPNS_7VPValueES5_EEELj97ELb0EJNS_13VPInstructionEEE5matchEPKNS_12VPRecipeBaseE.exit

_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJ16RemoveMask_matchIPNS_7VPValueES5_EEELj97ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit.i: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.e = load i8, ptr %i.d, align 8, !tbaa !149
  %i.f = icmp eq i8 %i.e, 97
  br i1 %i.f, label %bb.c, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJ16RemoveMask_matchIPNS_7VPValueES5_EEELj97ELb0EJNS_13VPInstructionEEE5matchEPKNS_12VPRecipeBaseE.exit

bb.c:                                             ; preds = %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJ16RemoveMask_matchIPNS_7VPValueES5_EEELj97ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !76
  switch i32 %i.h, label %bb.d [
    i32 0, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJ16RemoveMask_matchIPNS_7VPValueES5_EEELj97ELb0EJNS_13VPInstructionEEE5matchEPKNS_12VPRecipeBaseE.exit
    i32 1, label %.critedge.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef i32 @_ZNK4llvm13VPInstruction23getNumOperandsForOpcodeEv(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #25 ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJ16RemoveMask_matchIPNS_7VPValueES5_EEELj97ELb0EJNS_13VPInstructionEEE5matchEPKNS_12VPRecipeBaseE.exit, label %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i

_ZNK4llvm13VPInstruction8isMaskedEv.exit.i:       ; preds = %bb.d
  %i.k = add nuw i32 %i.i, 1                      ; 2 uses
  %i.l = load i32, ptr %i.g, align 8, !tbaa !76
  %i.m = icmp eq i32 %i.k, %i.l
  br i1 %i.m, label %bb.e, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJ16RemoveMask_matchIPNS_7VPValueES5_EEELj97ELb0EJNS_13VPInstructionEEE5matchEPKNS_12VPRecipeBaseE.exit

bb.e:                                             ; preds = %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i
  %i.n = tail call noundef i32 @_ZNK4llvm13VPInstruction23getNumOperandsForOpcodeEv(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #25 ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw i32 %i.n, 1
  %i.q = load i32, ptr %i.g, align 8, !tbaa !76
  %i.r = icmp eq i32 %i.p, %i.q
  %i.s = sext i1 %i.r to i32
  br label %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i

_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.s, %bb.f ], [ 0, %bb.e ]
  %i.t = add i32 %.0.i.i.i, %i.k
  %.not22.i = icmp eq i32 %i.t, 1
  br i1 %.not22.i, label %.critedge.i, label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJ16RemoveMask_matchIPNS_7VPValueES5_EEELj97ELb0EJNS_13VPInstructionEEE5matchEPKNS_12VPRecipeBaseE.exit

.critedge.i:                                      ; preds = %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.u = load <2 x ptr>, ptr %0, align 8, !tbaa !305
  store <2 x ptr> %i.u, ptr %2, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !157
  %i.y = call noundef zeroext i1 @_ZNK16RemoveMask_matchIPN4llvm7VPValueES2_E5matchIS1_EEbPT_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJ16RemoveMask_matchIPNS_7VPValueES5_EEELj97ELb0EJNS_13VPInstructionEEE5matchEPKNS_12VPRecipeBaseE.exit

_ZNK4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJ16RemoveMask_matchIPNS_7VPValueES5_EEELj97ELb0EJNS_13VPInstructionEEE5matchEPKNS_12VPRecipeBaseE.exit: ; preds = %.critedge.i, %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i, %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i, %bb.d, %bb.c, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJ16RemoveMask_matchIPNS_7VPValueES5_EEELj97ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit.i, %bb.b, %bb.a
  %i.z = phi i1 [ false, %bb.a ], [ false, %bb.d ], [ %i.y, %.critedge.i ], [ false, %bb.b ], [ false, %_ZN4llvm17VPlanPatternMatch12Recipe_matchISt5tupleIJ16RemoveMask_matchIPNS_7VPValueES5_EEELj97ELb0EJNS_13VPInstructionEEE20matchRecipeAndOpcodeIS8_EEbPKNS_12VPRecipeBaseE.exit.i ], [ false, %_ZNK4llvm13VPInstruction8isMaskedEv.exit.i ], [ false, %_ZNK4llvm13VPInstruction25getNumOperandsWithoutMaskEv.exit.i ], [ false, %bb.c ]
  ret i1 %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_17VPlanPatternMatch17IntrinsicID_matchENS2_14Argument_matchINS0_10match_bindINS_7VPValueEEEEES8_NS4_I16RemoveMask_matchIPS6_SA_EEENS4_INS0_16match_combine_orIJNS2_12Recipe_matchISt5tupleIJNS2_14specificval_tyEEELj39ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEESG_EEEEEEE5matchINS_12VPRecipeBaseEEEbPT_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = tail call noundef i32 @_ZN4llvm7vputils14getIntrinsicIDINS_12VPRecipeBaseEEEjPKT_(ptr noundef %1)
  %i.c = load i32, ptr %i.a, align 8, !tbaa !578
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNK4llvm19PatternMatchHelpers17match_combine_andIJNS_17VPlanPatternMatch14Argument_matchINS0_10match_bindINS_7VPValueEEEEES7_NS3_I16RemoveMask_matchIPS5_S9_EEENS3_INS0_16match_combine_orIJNS2_12Recipe_matchISt5tupleIJNS2_14specificval_tyEEELj39ELb0EJNS_13VPWidenRecipeENS_17VPReplicateRecipeENS_17VPWidenCastRecipeENS_13VPInstructionEEEESF_EEEEEEE5matchINS_12VPRecipeBaseEEEbPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load i8, ptr %i.f, align 8, !tbaa !135   ; 4 uses
  %i.h = and i8 %i.g, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ne i8 %i.h, 18
  %.not.not47.i.i = icmp eq ptr %1, null          ; 4 uses
  %.not.not.i.i = or i1 %.not.not47.i.i, %spec.select.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.not.i.i, label %_ZNK4llvm19PatternMatchHelpers10match_bindINS_7VPValueEE5matchIS2_EEbPT_.exit.i.i, label %bb.c

end_hunk_0
