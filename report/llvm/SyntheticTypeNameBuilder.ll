Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SyntheticTypeNameBuilder?download=true
inline.NumInlined: 1184
inline.NumDeleted: 522
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm12dwarf_linker8parallel24SyntheticTypeNameBuilder13addParentNameERNS1_15UnitEntryPairTyE:bb.a
_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i30: ; preds = %_ZN4llvm11SmallStringILj1000EEpLENS_9StringRefE.exit, %bb.g
  %.pre8.i.i31 = phi i64 [ %i.ag, %_ZN4llvm11SmallStringILj1000EEpLENS_9StringRefE.exit ], [ %.pre8.pre.i.i34, %bb.g ]
  %i.al = load ptr, ptr %1, align 8, !tbaa !160
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.pre8.i.i31
  store i8 46, ptr %i.am, align 1
  %.pre.i.i33 = load i64, ptr %i.w, align 8, !tbaa !138
  %i.an = add i64 %.pre.i.i33, 1
  store i64 %i.an, ptr %i.w, align 8, !tbaa !138
  store ptr null, ptr %0, align 8, !tbaa !137
  br label %bb.t

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !134
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !190
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 10, ptr %i.aq, align 4, !tbaa !191
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.critedge
  %.sroa.09.0.copyload = load ptr, ptr %3, align 8, !tbaa !157 ; 2 uses
  %.sroa.210.0.copyload = load ptr, ptr %.sroa.216.0..sroa_idx, align 8, !tbaa !158 ; 2 uses
  %i.ar = load i32, ptr %i.ap, align 8, !tbaa !190 ; 2 uses
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !191
  %.not.i = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i, label %bb.j, label %bb.i, !prof !189

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_12dwarf_linker8parallel15UnitEntryPairTyELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %.sroa.09.0.copyload, ptr %.sroa.210.0.copyload)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_12dwarf_linker8parallel15UnitEntryPairTyELb1EE9push_backES3_.exit

bb.j:                                             ; preds = %bb.h
  %i.at = zext i32 %i.ar to i64
  %i.au = load ptr, ptr %5, align 8, !tbaa !134
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.at ; 2 uses
  store ptr %.sroa.09.0.copyload, ptr %i.av, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %.sroa.210.0.copyload, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.aw = load i32, ptr %i.ap, align 8, !tbaa !190
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.ap, align 8, !tbaa !190
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_12dwarf_linker8parallel15UnitEntryPairTyELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_12dwarf_linker8parallel15UnitEntryPairTyELb1EE9push_backES3_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN4llvm12dwarf_linker8parallel15UnitEntryPairTy9getParentEv(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.98") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %3) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.ay = load i8, ptr %i.a, align 8, !tbaa !149, !range !150, !noundef !151
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_12dwarf_linker8parallel15UnitEntryPairTyELb1EE9push_backES3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %.sroa.07.0.copyload = load ptr, ptr %3, align 8, !tbaa !157
  %.sroa.28.0.copyload = load ptr, ptr %.sroa.216.0..sroa_idx, align 8, !tbaa !158
  call fastcc void @_ZL29getTypeDeduplicationCandidateN4llvm12dwarf_linker8parallel15UnitEntryPairTyE(ptr dead_on_unwind noalias writable align 8 %7, ptr %.sroa.07.0.copyload, ptr %.sroa.28.0.copyload)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ba = load i8, ptr %i.a, align 8, !tbaa !149, !range !150, !noundef !151
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr %3, align 8, !tbaa !197   ; 2 uses
  %i.bd = load ptr, ptr %.sroa.216.0..sroa_idx, align 8, !tbaa !154
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 1104
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 408
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !130
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 288
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !133
  %i.bj = ptrtoint ptr %i.bd to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = sdiv exact i64 %i.bl, 24
  %i.bn = and i64 %i.bm, 4294967295
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !134
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = load atomic ptr, ptr %i.bp seq_cst, align 8
  %.not25 = icmp eq ptr %i.bq, null
  br i1 %.not25, label %bb.h, label %bb.m, !llvm.loop !299

bb.m:                                             ; preds = %bb.k, %_ZN4llvm23SmallVectorTemplateBaseINS_12dwarf_linker8parallel15UnitEntryPairTyELb1EE9push_backES3_.exit, %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !138 ; 7 uses
  %i.bt = load ptr, ptr %5, align 8, !tbaa !134, !noalias !308 ; 2 uses
  %i.bu = load i32, ptr %i.ap, align 8, !tbaa !190, !noalias !308 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.not6273 = icmp eq i32 %i.bu, 0
  br i1 %.not6273, label %.critedge28, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.by = zext i32 %i.bu to i64
  %.idx = shl nuw nsw i64 %i.by, 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx
  br label %bb.n

_ZN4llvm5ErrorD2Ev.exit39:                        ; preds = %_ZN4llvm15SmallVectorImplIcE6resizeEm.exit
  %.not62 = icmp eq ptr %i.ca, %i.bt
  br i1 %.not62, label %.critedge28, label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN4llvm5ErrorD2Ev.exit39
  %.sroa.050.074 = phi ptr [ %i.bz, %.lr.ph ], [ %i.ca, %_ZN4llvm5ErrorD2Ev.exit39 ] ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.sroa.050.074, i64 -16 ; 3 uses
  %.sroa.04.0.copyload = load ptr, ptr %i.ca, align 8, !tbaa !157
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.050.074, i64 -8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !158
  %i.cb = load i64, ptr %i.br, align 8, !tbaa !138 ; 3 uses
  %i.cc = icmp eq i64 %i.bs, %i.cb
  br i1 %i.cc, label %_ZN4llvm15SmallVectorImplIcE6resizeEm.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = icmp ult i64 %i.bs, %i.cb
  br i1 %i.cd, label %.sink.split.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = load i64, ptr %i.bv, align 8, !tbaa !163
  %i.cf = icmp ult i64 %i.ce, %i.bs
  br i1 %i.cf, label %bb.q, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i37

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.bw, i64 noundef %i.bs, i64 noundef 1) #21
  %.pre.i.i38 = load i64, ptr %i.br, align 8, !tbaa !138
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i37

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i37: ; preds = %bb.q, %bb.p
  %i.cg = phi i64 [ %i.cb, %bb.p ], [ %.pre.i.i38, %bb.q ] ; 3 uses
  %.not11.i.i = icmp samesign eq i64 %i.cg, %i.bs
  br i1 %.not11.i.i, label %.sink.split.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i37
  %i.ch = load ptr, ptr %1, align 8, !tbaa !160
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.cg
  %i.cj = sub i64 %i.bs, %i.cg
  call void @llvm.memset.p0.i64(ptr align 1 %i.ci, i8 0, i64 %i.cj, i1 false), !tbaa !185
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i37, %bb.o
  store i64 %i.bs, ptr %i.br, align 8, !tbaa !138
  br label %_ZN4llvm15SmallVectorImplIcE6resizeEm.exit

_ZN4llvm15SmallVectorImplIcE6resizeEm.exit:       ; preds = %bb.n, %.sink.split.i.i
  store i8 0, ptr %i.bx, align 8, !tbaa !156
  call void @_ZN4llvm12dwarf_linker8parallel24SyntheticTypeNameBuilder14addDIETypeNameENS1_15UnitEntryPairTyESt8optionalISt4pairImmEEb(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1040) %1, ptr %.sroa.04.0.copyload, ptr %.sroa.4.0.copyload, ptr noundef nonnull byval(%"class.std::optional") align 8 %8, i1 noundef zeroext true)
  %i.ck = load ptr, ptr %0, align 8, !tbaa !137
  %.not63 = icmp eq ptr %i.ck, null
  br i1 %.not63, label %_ZN4llvm5ErrorD2Ev.exit39, label %.critedge27

.critedge28:                                      ; preds = %_ZN4llvm5ErrorD2Ev.exit39, %bb.m
  %i.cl = load i64, ptr %i.br, align 8, !tbaa !138 ; 2 uses
  %i.cm = add i64 %i.cl, 1                        ; 2 uses
  %i.cn = load i64, ptr %i.bv, align 8, !tbaa !163
  %i.co = icmp ult i64 %i.cn, %i.cm
  br i1 %i.co, label %bb.r, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i40

bb.r:                                             ; preds = %.critedge28
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1024) %1, ptr noundef nonnull %i.bw, i64 noundef %i.cm, i64 noundef 1) #21
  %.pre8.pre.i.i44 = load i64, ptr %i.br, align 8, !tbaa !138
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i40

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i40: ; preds = %.critedge28, %bb.r
  %.pre8.i.i41 = phi i64 [ %i.cl, %.critedge28 ], [ %.pre8.pre.i.i44, %bb.r ]
  %i.cp = load ptr, ptr %1, align 8, !tbaa !160
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.pre8.i.i41
  store i8 46, ptr %i.cq, align 1
  %.pre.i.i43 = load i64, ptr %i.br, align 8, !tbaa !138
  %i.cr = add i64 %.pre.i.i43, 1
  store i64 %i.cr, ptr %i.br, align 8, !tbaa !138
  store ptr null, ptr %0, align 8, !tbaa !137
  br label %.critedge27

.critedge27:                                      ; preds = %_ZN4llvm15SmallVectorImplIcE6resizeEm.exit, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i40
  %i.cs = load ptr, ptr %5, align 8, !tbaa !134   ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.ao
  br i1 %i.ct, label %_ZN4llvm11SmallVectorINS_12dwarf_linker8parallel15UnitEntryPairTyELj10EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %.critedge27
  call void @free(ptr noundef %i.cs) #21
  br label %_ZN4llvm11SmallVectorINS_12dwarf_linker8parallel15UnitEntryPairTyELj10EED2Ev.exit

_ZN4llvm11SmallVectorINS_12dwarf_linker8parallel15UnitEntryPairTyELj10EED2Ev.exit: ; preds = %.critedge27, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.t

bb.t:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i30, %_ZN4llvm11SmallVectorINS_12dwarf_linker8parallel15UnitEntryPairTyELj10EED2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit29, %_ZN4llvm5ErrorD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

declare void @_ZN4llvm12dwarf_linker8parallel15UnitEntryPairTy9getParentEv(ptr dead_on_unwind writable sret(%"class.std::optional.98") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL29getTypeDeduplicationCandidateN4llvm12dwarf_linker8parallel15UnitEntryPairTyE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((16, 17)) %0, ptr %1, ptr %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %"struct.llvm::dwarf_linker::parallel::UnitEntryPairTy", align 8 ; 5 uses
  %4 = alloca %"class.std::optional.74", align 8  ; 4 uses
  %5 = alloca %"class.std::optional.74", align 8  ; 4 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !166  ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit.thread, label %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit

_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit:     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i16, ptr %i.d, align 4, !tbaa !177
  switch i16 %i.e, label %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit.thread.sink.split [
    i16 0, label %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit.thread
    i16 17, label %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit.thread
    i16 60, label %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit.thread
    i16 65, label %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit.thread
    i16 74, label %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit.thread
    i16 57, label %bb.b
  ]

bb.b:                                             ; preds = %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.h = load i64, ptr %2, align 8, !tbaa !178, !noalias !313
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !130, !noalias !313
  call void @_ZNK4llvm28DWARFAbbreviationDeclaration17getAttributeValueEmNS_5dwarf9AttributeERKNS_9DWARFUnitE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.74") align 8 %4, ptr noundef nonnull align 8 dereferenceable(160) %i.c, i64 noundef %i.h, i16 noundef zeroext 84, ptr noundef nonnull align 8 dereferenceable(448) %i.i) #21
  %i.j = load i8, ptr %i.g, align 8, !tbaa !180, !range !150, !alias.scope !313, !noundef !151
  %i.k = trunc nuw i8 %i.j to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %i.k, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  br label %_ZNK4llvm12dwarf_linker8parallel11CompileUnit4findEPKNS_19DWARFDebugInfoEntryENS_8ArrayRefINS_5dwarf9AttributeEEE.exit7

bb.c:                                             ; preds = %bb.b
  %i.l = call { ptr, ptr } @_ZN4llvm12dwarf_linker8parallel15UnitEntryPairTy18getNamespaceOriginEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #21 ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 3 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !157
  store ptr %i.n, ptr %i.a, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  br label %_ZNK4llvm12dwarf_linker8parallel11CompileUnit4findEPKNS_19DWARFDebugInfoEntryENS_8ArrayRefINS_5dwarf9AttributeEEE.exit7

_ZNK4llvm12dwarf_linker8parallel11CompileUnit4findEPKNS_19DWARFDebugInfoEntryENS_8ArrayRefINS_5dwarf9AttributeEEE.exit7: ; preds = %bb.c, %.thread
  %i.o = phi ptr [ %2, %.thread ], [ %i.n, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %1, %.thread ], [ %i.m, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !166, !noalias !314, !nonnull !151, !noundef !151
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 408
  %i.t = load i64, ptr %i.o, align 8, !tbaa !178, !noalias !314
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !130, !noalias !314
  call void @_ZNK4llvm28DWARFAbbreviationDeclaration17getAttributeValueEmNS_5dwarf9AttributeERKNS_9DWARFUnitE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.74") align 8 %5, ptr noundef nonnull align 8 dereferenceable(160) %i.r, i64 noundef %i.t, i16 noundef zeroext 3, ptr noundef nonnull align 8 dereferenceable(448) %i.u) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit.thread.sink.split

_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit.thread.sink.split: ; preds = %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit, %_ZNK4llvm12dwarf_linker8parallel11CompileUnit4findEPKNS_19DWARFDebugInfoEntryENS_8ArrayRefINS_5dwarf9AttributeEEE.exit7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  br label %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit.thread

_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit.thread: ; preds = %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit.thread.sink.split, %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit, %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit, %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit, %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit, %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit, %bb.a
  %.sink = phi i8 [ 0, %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit ], [ 0, %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit ], [ 0, %bb.a ], [ 0, %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit ], [ 0, %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit ], [ 0, %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit ], [ 1, %_ZNK4llvm19DWARFDebugInfoEntry6getTagEv.exit.thread.sink.split ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.v, align 8, !tbaa !149
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm12dwarf_linker8parallel24SyntheticTypeNameBuilder33addDieNameFromDeclFileAndDeclLineERNS1_15UnitEntryPairTyERb(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [17 x i8], align 16               ; 4 uses
  %3 = alloca %"class.std::optional.74", align 8  ; 5 uses
  %4 = alloca %"class.std::optional.74", align 8  ; 5 uses
  %5 = alloca %"class.std::optional.113", align 8 ; 8 uses
  %6 = alloca %"class.std::optional.74", align 8  ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.c = load ptr, ptr %1, align 8, !tbaa !197
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !154  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNK4llvm12dwarf_linker8parallel11CompileUnit4findEPKNS_19DWARFDebugInfoEntryENS_8ArrayRefINS_5dwarf9AttributeEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !166, !noalias !321 ; 2 uses
  %.not18.i = icmp eq ptr %i.g, null
  br i1 %.not18.i, label %_ZNK4llvm12dwarf_linker8parallel11CompileUnit4findEPKNS_19DWARFDebugInfoEntryENS_8ArrayRefINS_5dwarf9AttributeEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.j = load i64, ptr %i.e, align 8, !tbaa !178, !noalias !321
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !130, !noalias !321
  call void @_ZNK4llvm28DWARFAbbreviationDeclaration17getAttributeValueEmNS_5dwarf9AttributeERKNS_9DWARFUnitE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.74") align 8 %3, ptr noundef nonnull align 8 dereferenceable(160) %i.g, i64 noundef %i.j, i16 noundef zeroext 58, ptr noundef nonnull align 8 dereferenceable(448) %i.k) #21
  %i.l = load i8, ptr %i.i, align 8, !tbaa !180, !range !150, !alias.scope !321, !noundef !151
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %_ZNK4llvm12dwarf_linker8parallel11CompileUnit4findEPKNS_19DWARFDebugInfoEntryENS_8ArrayRefINS_5dwarf9AttributeEEE.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.n = load ptr, ptr %1, align 8, !tbaa !197
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !154  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %.not.i9 = icmp eq ptr %i.o, null
  br i1 %.not.i9, label %_ZNK4llvm12dwarf_linker8parallel11CompileUnit4findEPKNS_19DWARFDebugInfoEntryENS_8ArrayRefINS_5dwarf9AttributeEEE.exit14, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !166, !noalias !322 ; 2 uses
  %.not18.i10 = icmp eq ptr %i.q, null
  br i1 %.not18.i10, label %_ZNK4llvm12dwarf_linker8parallel11CompileUnit4findEPKNS_19DWARFDebugInfoEntryENS_8ArrayRefINS_5dwarf9AttributeEEE.exit14, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.t = load i64, ptr %i.o, align 8, !tbaa !178, !noalias !322
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !130, !noalias !322
  call void @_ZNK4llvm28DWARFAbbreviationDeclaration17getAttributeValueEmNS_5dwarf9AttributeERKNS_9DWARFUnitE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.74") align 8 %4, ptr noundef nonnull align 8 dereferenceable(160) %i.q, i64 noundef %i.t, i16 noundef zeroext 59, ptr noundef nonnull align 8 dereferenceable(448) %i.u) #21
  %i.v = load i8, ptr %i.s, align 8, !tbaa !180, !range !150, !alias.scope !322, !noundef !151
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %_ZNK4llvm12dwarf_linker8parallel11CompileUnit4findEPKNS_19DWARFDebugInfoEntryENS_8ArrayRefINS_5dwarf9AttributeEEE.exit14

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.x = load ptr, ptr %1, align 8, !tbaa !197
  call void @_ZN4llvm12dwarf_linker8parallel11CompileUnit30getDirAndFilenameFromLineTableERKNS_14DWARFFormValueE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.113") align 8 %5, ptr noundef nonnull align 8 dereferenceable(1192) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %3) #21
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.z = load i8, ptr %i.y, align 8, !tbaa !324, !range !150, !noundef !151
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g
  %.sroa.01.0.copyload = load ptr, ptr %5, align 8, !tbaa !198
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !194 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !138 ; 2 uses
  %i.ad = add i64 %i.ac, %.sroa.22.0.copyload     ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !163
  %i.ag = icmp ult i64 %i.af, %i.ad
  br i1 %i.ag, label %bb.i, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %i.ah, i64 noundef %i.ad, i64 noundef 1) #21
  %.pre8.pre.i.i = load i64, ptr %i.ab, align 8, !tbaa !138
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i:  ; preds = %bb.i, %bb.h
  %.pre8.i.i = phi i64 [ %i.ac, %bb.h ], [ %.pre8.pre.i.i, %bb.i ] ; 2 uses
  %.not.i.i.i = icmp samesign eq i64 %.sroa.22.0.copyload, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallStringILj1000EEpLENS_9StringRefE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i
  %i.ai = load ptr, ptr %0, align 8, !tbaa !160
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.pre8.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, i1 false)
  %.pre.i.i = load i64, ptr %i.ab, align 8, !tbaa !138
  br label %_ZN4llvm11SmallStringILj1000EEpLENS_9StringRefE.exit

_ZN4llvm11SmallStringILj1000EEpLENS_9StringRefE.exit: ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i, %bb.j
  %i.ak = phi i64 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.j ]
  %i.al = add i64 %i.ak, %.sroa.22.0.copyload     ; 3 uses
  store i64 %i.al, ptr %i.ab, align 8, !tbaa !138
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.am, align 8, !tbaa !198
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !194 ; 4 uses
  %i.an = add i64 %.sroa.2.0.copyload, %i.al      ; 2 uses
  %i.ao = load i64, ptr %i.ae, align 8, !tbaa !163
  %i.ap = icmp ult i64 %i.ao, %i.an
  br i1 %i.ap, label %bb.k, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i15

bb.k:                                             ; preds = %_ZN4llvm11SmallStringILj1000EEpLENS_9StringRefE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %i.aq, i64 noundef %i.an, i64 noundef 1) #21
  %.pre8.pre.i.i19 = load i64, ptr %i.ab, align 8, !tbaa !138
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i15

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i15: ; preds = %bb.k, %_ZN4llvm11SmallStringILj1000EEpLENS_9StringRefE.exit
  %.pre8.i.i16 = phi i64 [ %i.al, %_ZN4llvm11SmallStringILj1000EEpLENS_9StringRefE.exit ], [ %.pre8.pre.i.i19, %bb.k ] ; 2 uses
  %.not.i.i.i17 = icmp samesign eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i17, label %_ZN4llvm5dwarf10toUnsignedERKSt8optionalINS_14DWARFFormValueEE.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i15
  %i.ar = load ptr, ptr %0, align 8, !tbaa !160
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.pre8.i.i16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i1 false)
  %.pre.i.i18 = load i64, ptr %i.ab, align 8, !tbaa !138
  br label %_ZN4llvm5dwarf10toUnsignedERKSt8optionalINS_14DWARFFormValueEE.exit

_ZN4llvm5dwarf10toUnsignedERKSt8optionalINS_14DWARFFormValueEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i15, %bb.l
  %i.at = phi i64 [ %.pre8.i.i16, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i15 ], [ %.pre.i.i18, %bb.l ]
  %i.au = add i64 %i.at, %.sroa.2.0.copyload
  store i64 %i.au, ptr %i.ab, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !331
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i8 1, ptr %i.av, align 8, !tbaa !180
  %i.aw = call { i64, i8 } @_ZNK4llvm14DWARFFormValue21getAsUnsignedConstantEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #21 ; 2 uses
  %i.ax = extractvalue { i64, i8 } %i.aw, 0       ; 2 uses
  %i.ay = extractvalue { i64, i8 } %i.aw, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.m, label %bb.t

bb.m:                                             ; preds = %_ZN4llvm5dwarf10toUnsignedERKSt8optionalINS_14DWARFFormValueEE.exit
  %i.ba = load i64, ptr %i.ab, align 8, !tbaa !138 ; 2 uses
  %i.bb = add i64 %i.ba, 1                        ; 2 uses
  %i.bc = load i64, ptr %i.ae, align 8, !tbaa !163
  %i.bd = icmp ult i64 %i.bc, %i.bb
  br i1 %i.bd, label %bb.n, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i22

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %i.be, i64 noundef %i.bb, i64 noundef 1) #21
  %.pre8.pre.i.i26 = load i64, ptr %i.ab, align 8, !tbaa !138
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i22

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i22: ; preds = %bb.m, %bb.n
  %.pre8.i.i23 = phi i64 [ %i.ba, %bb.m ], [ %.pre8.pre.i.i26, %bb.n ]
  %i.bf = load ptr, ptr %0, align 8, !tbaa !160
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.pre8.i.i23
  store i8 32, ptr %i.bg, align 1
  %.pre.i.i25 = load i64, ptr %i.ab, align 8, !tbaa !138
  %i.bh = add i64 %.pre.i.i25, 1
  store i64 %i.bh, ptr %i.ab, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21, !noalias !332
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 17 ; 2 uses
  %.not = icmp eq i64 %i.ax, 0
  br i1 %.not, label %.thread, label %.lr.ph.i

.thread:                                          ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i22
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i8 48, ptr %i.bj, align 16, !tbaa !185, !noalias !332
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.thread
  %.1.lcssa.i = phi ptr [ %i.bj, %.thread ], [ %i.bx, %.lr.ph.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store ptr %i.bk, ptr %7, align 8, !tbaa !182, !alias.scope !332
end_hunk_0
