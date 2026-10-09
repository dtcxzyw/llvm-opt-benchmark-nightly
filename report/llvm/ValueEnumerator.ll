Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ValueEnumerator?download=true
inline.NumInlined: 4348
inline.NumDeleted: 2157
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN4llvm15ValueEnumerator22EnumerateNamedMetadataERKNS_6ModuleE:bb.a
  %.sroa.06.012 = phi ptr [ %.sroa.06.0, %_ZN4llvm15ValueEnumerator20EnumerateNamedMDNodeEPKNS_11NamedMDNodeE.exit ], [ %.sroa.06.010, %bb.a ] ; 3 uses
  %i.c = tail call noundef i32 @_ZNK4llvm11NamedMDNode14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.06.012) #23, !noalias !750 ; 2 uses
  %.not20.i = icmp eq i32 %i.c, 0
  br i1 %.not20.i, label %_ZN4llvm15ValueEnumerator20EnumerateNamedMDNodeEPKNS_11NamedMDNodeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.sroa.4.021.i = phi i32 [ %i.e, %.lr.ph.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.d = tail call noundef ptr @_ZNK4llvm11NamedMDNode10getOperandEj(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.06.012, i32 noundef %.sroa.4.021.i) #23
  tail call void @_ZN4llvm15ValueEnumerator17EnumerateMetadataEjPKNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(500) %0, i32 noundef 0, ptr noundef %i.d)
  %i.e = add nuw i32 %.sroa.4.021.i, 1            ; 2 uses
  %.not.i = icmp eq i32 %i.e, %i.c
  br i1 %.not.i, label %_ZN4llvm15ValueEnumerator20EnumerateNamedMDNodeEPKNS_11NamedMDNodeE.exit, label %.lr.ph.i

_ZN4llvm15ValueEnumerator20EnumerateNamedMDNodeEPKNS_11NamedMDNodeE.exit: ; preds = %.lr.ph.i, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.012, i64 8
  %.sroa.06.0 = load ptr, ptr %i.f, align 8, !tbaa !101 ; 2 uses
  %.not = icmp eq ptr %.sroa.06.0, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare void @_ZNK4llvm5Value14getAllMetadataERNS_15SmallVectorImplISt4pairIjPNS_6MDNodeEEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15ValueEnumerator17EnumerateMetadataEPKNS_8FunctionEPKNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(500) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZNK4llvm15ValueEnumerator21getMetadataFunctionIDEPKNS_8FunctionE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @_ZNK4llvm15ValueEnumerator10getValueIDEPKNS_5ValueE(ptr noundef nonnull readonly align 8 dereferenceable(500) %0, ptr noundef nonnull %1)
  %i.b = add i32 %i.a, 1
  br label %_ZNK4llvm15ValueEnumerator21getMetadataFunctionIDEPKNS_8FunctionE.exit

_ZNK4llvm15ValueEnumerator21getMetadataFunctionIDEPKNS_8FunctionE.exit: ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN4llvm15ValueEnumerator17EnumerateMetadataEjPKNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(500) %0, i32 noundef %i.c, ptr noundef %2)
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm11GlobalValue13isDeclarationEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZNK4llvm17DbgVariableRecord11getAssignIDEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15ValueEnumerator20EnumerateOperandTypeEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(500) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225
  tail call void @_ZN4llvm15ValueEnumerator13EnumerateTypeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(500) %0, ptr noundef %i.b)
  %i.c = load i8, ptr %1, align 8, !tbaa !176     ; 2 uses
  %i.d = icmp ugt i8 %i.c, 22
  br i1 %i.d, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5countES4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !247, !noalias !755
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !248, !noalias !755 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.j = load i32, ptr %i.i, align 4, !tbaa !249, !noalias !755 ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %i.j, -1                         ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.l, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !243
  %i.w = and i32 %i.r, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph.i.i.i, label %.loopexit, !prof !244

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %i.z = phi i64 [ %i.af, %bb.d ], [ %i.s, %bb.c ]
  %.017.i.i.i = phi i32 [ %i.ae, %bb.d ], [ %i.r, %bb.c ]
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !237
  %i.ac = icmp eq ptr %1, %i.ab
  br i1 %i.ac, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5countES4_.exit, label %bb.d, !prof !245

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = add nuw i32 %.017.i.i.i, 1
  %i.ae = and i32 %i.ad, %i.l                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = lshr i64 %i.af, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !243
  %i.aj = and i32 %i.ae, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i.i.i, label %.loopexit, !prof !246

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load i32, ptr %i.am, align 4            ; 3 uses
  %i.ao = and i32 %i.an, 1073741824
  %.not.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ap = getelementptr inbounds i8, ptr %1, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !165
  %.pre.i.i = and i32 %i.an, 268435455
  %.pre1.i.i = zext nneg i32 %.pre.i.i to i64
  br label %_ZNK4llvm4User8operandsEv.exit

bb.f:                                             ; preds = %.loopexit
  %i.ar = and i32 %i.an, 268435455
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = sub nsw i64 0, %i.as
  %i.au = getelementptr inbounds [32 x i8], ptr %1, i64 %i.at
  br label %_ZNK4llvm4User8operandsEv.exit

_ZNK4llvm4User8operandsEv.exit:                   ; preds = %bb.e, %bb.f
  %i.av = phi ptr [ %i.aq, %bb.e ], [ %i.au, %bb.f ] ; 2 uses
  %.pre-phi2.i.i = phi i64 [ %.pre1.i.i, %bb.e ], [ %i.as, %bb.f ] ; 2 uses
  %.idx = shl nuw nsw i64 %.pre-phi2.i.i, 5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx
  %.not2129 = icmp eq i64 %.pre-phi2.i.i, 0
  br i1 %.not2129, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.h
  %.pre = load i8, ptr %1, align 8, !tbaa !176
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK4llvm4User8operandsEv.exit
  %i.ax = phi i8 [ %.pre, %._crit_edge.loopexit ], [ %i.c, %_ZNK4llvm4User8operandsEv.exit ]
  %.not = icmp eq i8 %i.ax, 19
  br i1 %.not, label %bb.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5countES4_.exit

.lr.ph:                                           ; preds = %_ZNK4llvm4User8operandsEv.exit, %bb.h
  %.030 = phi ptr [ %i.bb, %bb.h ], [ %i.av, %_ZNK4llvm4User8operandsEv.exit ] ; 2 uses
  %i.ay = load ptr, ptr %.030, align 8, !tbaa !194 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !176
  %i.ba = icmp eq i8 %i.az, 24
  br i1 %i.ba, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  tail call void @_ZN4llvm15ValueEnumerator20EnumerateOperandTypeEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(500) %0, ptr noundef nonnull %i.ay)
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %.030, i64 32 ; 2 uses
  %.not21 = icmp eq ptr %i.bb, %i.aw
  br i1 %.not21, label %._crit_edge.loopexit, label %.lr.ph

bb.i:                                             ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !111 ; 2 uses
  %i.be = icmp eq i16 %i.bd, 65
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bf = tail call noundef ptr @_ZNK4llvm12ConstantExpr24getShuffleMaskForBitcodeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #23
  tail call void @_ZN4llvm15ValueEnumerator20EnumerateOperandTypeEPKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(500) %0, ptr noundef %i.bf)
  %.pre31 = load i16, ptr %i.bc, align 2, !tbaa !111
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bg = phi i16 [ %.pre31, %bb.j ], [ %i.bd, %bb.i ]
  %i.bh = icmp eq i16 %i.bg, 35
  br i1 %i.bh, label %bb.l, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5countES4_.exit

bb.l:                                             ; preds = %bb.k
  %i.bi = tail call noundef ptr @_ZNK4llvm11GEPOperator20getSourceElementTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #23
  tail call void @_ZN4llvm15ValueEnumerator13EnumerateTypeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(500) %0, ptr noundef %i.bi)
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5countES4_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E5countES4_.exit: ; preds = %.lr.ph.i.i.i, %._crit_edge, %bb.l, %bb.k, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm15ValueEnumerator17OptimizeConstantsEjj(ptr noundef nonnull align 8 dereferenceable(500) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, %2
  %i.b = add i32 %1, 1
  %i.c = icmp eq i32 %i.b, %2
  %or.cond = or i1 %i.a, %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.e = load i8, ptr %i.d, align 8, !range !260
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond23 = select i1 %or.cond, i1 true, i1 %i.f
  br i1 %or.cond23, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !261  ; 2 uses
  %i.i = zext i32 %1 to i64
  %.idx53 = shl nuw nsw i64 %i.i, 4               ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx53 ; 8 uses
  %i.k = zext i32 %2 to i64
  %.idx = shl nuw nsw i64 %i.k, 4                 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx ; 4 uses
  %gepdiff = sub nsw i64 %.idx, %.idx53           ; 4 uses
  %i.m = ashr exact i64 %gepdiff, 4               ; 2 uses
  %i.n = add nsw i64 %i.m, 1
  %i.o = sdiv i64 %i.n, 2                         ; 4 uses
  %i.p = icmp sgt i64 %i.m, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEES7_EC2ESC_l.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %select.unfold.i.i.i.i
  %.010.i.i.i.i = phi i64 [ %i.u, %select.unfold.i.i.i.i ], [ %i.o, %bb.b ] ; 5 uses
  %i.q = shl nuw nsw i64 %.010.i.i.i.i, 4         ; 3 uses
  %i.r = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.q, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #27 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i, label %bb.c

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i
  %i.s = icmp eq i64 %.010.i.i.i.i, 1
  %i.t = add nuw nsw i64 %.010.i.i.i.i, 1
  %i.u = lshr i64 %i.t, 1
  br i1 %i.s, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEES7_EC2ESC_l.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !756

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  %.not18.i.i.i.i.i = icmp eq i64 %.010.i.i.i.i, 1
  br i1 %.not18.i.i.i.i.i, label %_ZSt29__uninitialized_construct_bufIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEEvT_SD_T0_.exit.i.i.i, label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.c
  %.01317.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.w = add nsw i64 %i.q, -32                    ; 2 uses
  %i.x = lshr exact i64 %i.w, 4
  %i.y = add nuw nsw i64 %i.x, 1
  %xtraiter = and i64 %i.y, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.preheader.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.01320.i.i.i.i.i.prol = phi ptr [ %.013.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i.prol = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.prol ], [ %i.r, %.lr.ph.i.i.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.preheader.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01320.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.i.i.i.i.prol, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i.prol, i64 16 ; 3 uses
  %.013.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !757

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.preheader.i.i.i
  %.lcssa152.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i.i.i ], [ %i.z, %.lr.ph.i.i.i.i.i.prol ]
  %.01320.i.i.i.i.i.unr = phi ptr [ %.01317.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i ], [ %.013.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.019.i.i.i.i.i.unr = phi ptr [ %i.r, %.lr.ph.i.i.preheader.i.i.i ], [ %i.z, %.lr.ph.i.i.i.i.i.prol ]
  %i.aa = icmp ult i64 %i.w, 48
  br i1 %i.aa, label %_ZSt29__uninitialized_construct_bufIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEEvT_SD_T0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.01320.i.i.i.i.i = phi ptr [ %.013.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i ], [ %.01320.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.019.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %.019.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01320.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.i.i.i.i, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 16
  %.013.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 32
  %.013.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 48
  %.013.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i.2, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 64 ; 2 uses
  %.013.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq ptr %.013.i.i.i.i.i.3, %i.v
  br i1 %.not.i.i.i.i.i.3, label %_ZSt29__uninitialized_construct_bufIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEEvT_SD_T0_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !758

_ZSt29__uninitialized_construct_bufIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEEvT_SD_T0_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %bb.c ], [ %.lcssa152.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ae, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.af = load ptr, ptr %.0.lcssa.i.i.i.i.i, align 8, !tbaa !237
  store ptr %i.af, ptr %i.j, align 8, !tbaa !263
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !243
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !251
  br label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEES7_EC2ESC_l.exit.i.i

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEES7_EC2ESC_l.exit.i.i: ; preds = %select.unfold.i.i.i.i, %_ZSt29__uninitialized_construct_bufIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEEvT_SD_T0_.exit.i.i.i, %bb.b
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.b ], [ %.010.i.i.i.i, %_ZSt29__uninitialized_construct_bufIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEEvT_SD_T0_.exit.i.i.i ], [ 0, %select.unfold.i.i.i.i ] ; 3 uses
  %.sroa.10.0.i.i = phi ptr [ null, %bb.b ], [ %i.r, %_ZSt29__uninitialized_construct_bufIPSt4pairIPKN4llvm5ValueEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEEvT_SD_T0_.exit.i.i.i ], [ null, %select.unfold.i.i.i.i ] ; 6 uses
  %i.aj = icmp eq i64 %i.o, %.sroa.4.0.i.i
  br i1 %i.aj, label %bb.d, label %bb.e, !prof !245

bb.d:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEES7_EC2ESC_l.exit.i.i
  %.idx54 = shl nsw i64 %i.o, 4                   ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.j, i64 %.idx54 ; 3 uses
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS3_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEEvT_SI_T0_T1_"(ptr %i.j, ptr %i.ak, ptr noundef %.sroa.10.0.i.i, ptr nonnull %0)
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS3_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEEvT_SI_T0_T1_"(ptr %i.ak, ptr %i.l, ptr noundef %.sroa.10.0.i.i, ptr nonnull %0)
  %3 = add nsw i64 %.idx53, %.idx54
  %gepdiff55 = sub nsw i64 %.idx, %3
  %i.al = ashr exact i64 %gepdiff55, 4
  %i.am = ptrtoint ptr %0 to i64
  tail call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS3_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEEvT_SI_SI_T0_SJ_T1_T2_"(ptr %i.j, ptr %i.ak, ptr %i.l, i64 noundef %i.o, i64 noundef %i.al, ptr noundef %.sroa.10.0.i.i, i64 %i.am)
  br label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEEZNS3_15ValueEnumerator17OptimizeConstantsEjjE3$_0EvT_SF_T0_.exit"

bb.e:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEES7_EC2ESC_l.exit.i.i
  %i.an = icmp eq ptr %.sroa.10.0.i.i, null
  br i1 %i.an, label %bb.f, label %bb.g, !prof !762

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEEvT_SI_T0_"(ptr %i.j, ptr %i.l, ptr nonnull %0)
  br label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEEZNS3_15ValueEnumerator17OptimizeConstantsEjjE3$_0EvT_SF_T0_.exit"

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS3_15ValueEnumerator17OptimizeConstantsEjjE3$_0EEEvT_SI_T0_T1_T2_"(ptr %i.j, ptr %i.l, ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %.sroa.4.0.i.i, ptr nonnull %0)
  br label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEEZNS3_15ValueEnumerator17OptimizeConstantsEjjE3$_0EvT_SF_T0_.exit"

"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEEZNS3_15ValueEnumerator17OptimizeConstantsEjjE3$_0EvT_SF_T0_.exit": ; preds = %bb.g, %bb.f, %bb.d
  %i.ao = shl i64 %.sroa.4.0.i.i, 4
  tail call void @_ZdlPvm(ptr noundef %.sroa.10.0.i.i, i64 noundef %i.ao) #23
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !261 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx53 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx ; 4 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ashr i64 %gepdiff, 6                    ; 2 uses
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph.i.i.i.preheader, label %._crit_edge.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEEZNS3_15ValueEnumerator17OptimizeConstantsEjjE3$_0EvT_SF_T0_.exit"
  %i.av = and i64 %gepdiff, -64
  %i.aw = add nsw i64 %i.av, %.idx53              ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ap, i64 %i.aw
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.o
  %.043.i.i.i = phi i64 [ %i.cx, %bb.o ], [ %i.at, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.032.042.i.i.i = phi ptr [ %i.cw, %bb.o ], [ %i.aq, %.lr.ph.i.i.i.preheader ] ; 9 uses
  %i.ax = load ptr, ptr %.sroa.032.042.i.i.i, align 8, !tbaa !263
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !225 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 8            ; 2 uses
  %i.bc = and i32 %i.bb, 254
  %spec.select.i.i.i.i46 = icmp eq i32 %i.bc, 18
  br i1 %spec.select.i.i.i.i46, label %bb.h, label %_ZL21isIntOrIntVectorValueRKSt4pairIPKN4llvm5ValueEjE.exit49

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !257
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !256
  %.phi.trans.insert.i.i47 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.pre.i.i48 = load i32, ptr %.phi.trans.insert.i.i47, align 8
  br label %_ZL21isIntOrIntVectorValueRKSt4pairIPKN4llvm5ValueEjE.exit49

_ZL21isIntOrIntVectorValueRKSt4pairIPKN4llvm5ValueEjE.exit49: ; preds = %.lr.ph.i.i.i, %bb.h
  %i.bg = phi i32 [ %.pre.i.i48, %bb.h ], [ %i.bb, %.lr.ph.i.i.i ]
  %i.bh = and i32 %i.bg, 255
  %i.bi = icmp eq i32 %i.bh, 12
  br i1 %i.bi, label %bb.i, label %_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEENS0_5__ops10_Iter_predIPFbRKS7_EEEET_SK_SK_T0_.exit.i

bb.i:                                             ; preds = %_ZL21isIntOrIntVectorValueRKSt4pairIPKN4llvm5ValueEjE.exit49
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !263
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !225 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8            ; 2 uses
  %i.bp = and i32 %i.bo, 254
  %spec.select.i.i.i.i42 = icmp eq i32 %i.bp, 18
  br i1 %spec.select.i.i.i.i42, label %bb.j, label %_ZL21isIntOrIntVectorValueRKSt4pairIPKN4llvm5ValueEjE.exit45

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !257
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !256
  %.phi.trans.insert.i.i43 = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.pre.i.i44 = load i32, ptr %.phi.trans.insert.i.i43, align 8
  br label %_ZL21isIntOrIntVectorValueRKSt4pairIPKN4llvm5ValueEjE.exit45

_ZL21isIntOrIntVectorValueRKSt4pairIPKN4llvm5ValueEjE.exit45: ; preds = %bb.i, %bb.j
  %i.bt = phi i32 [ %.pre.i.i44, %bb.j ], [ %i.bo, %bb.i ]
  %i.bu = and i32 %i.bt, 255
  %i.bv = icmp eq i32 %i.bu, 12
  br i1 %i.bv, label %bb.k, label %_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEENS0_5__ops10_Iter_predIPFbRKS7_EEEET_SK_SK_T0_.exit.i.loopexit.split.loop.exit

bb.k:                                             ; preds = %_ZL21isIntOrIntVectorValueRKSt4pairIPKN4llvm5ValueEjE.exit45
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !263
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !225 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 8            ; 2 uses
  %i.cc = and i32 %i.cb, 254
  %spec.select.i.i.i.i38 = icmp eq i32 %i.cc, 18
  br i1 %spec.select.i.i.i.i38, label %bb.l, label %_ZL21isIntOrIntVectorValueRKSt4pairIPKN4llvm5ValueEjE.exit41

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !257
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !256
  %.phi.trans.insert.i.i39 = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.pre.i.i40 = load i32, ptr %.phi.trans.insert.i.i39, align 8
  br label %_ZL21isIntOrIntVectorValueRKSt4pairIPKN4llvm5ValueEjE.exit41

_ZL21isIntOrIntVectorValueRKSt4pairIPKN4llvm5ValueEjE.exit41: ; preds = %bb.k, %bb.l
  %i.cg = phi i32 [ %.pre.i.i40, %bb.l ], [ %i.cb, %bb.k ]
  %i.ch = and i32 %i.cg, 255
  %i.ci = icmp eq i32 %i.ch, 12
  br i1 %i.ci, label %bb.m, label %_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEENS0_5__ops10_Iter_predIPFbRKS7_EEEET_SK_SK_T0_.exit.i.loopexit.split.loop.exit120

bb.m:                                             ; preds = %_ZL21isIntOrIntVectorValueRKSt4pairIPKN4llvm5ValueEjE.exit41
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !263
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !225 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i32, ptr %i.cn, align 8            ; 2 uses
  %i.cp = and i32 %i.co, 254
  %spec.select.i.i.i.i34 = icmp eq i32 %i.cp, 18
  br i1 %spec.select.i.i.i.i34, label %bb.n, label %_ZL21isIntOrIntVectorValueRKSt4pairIPKN4llvm5ValueEjE.exit37

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !257
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !256
  %.phi.trans.insert.i.i35 = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.pre.i.i36 = load i32, ptr %.phi.trans.insert.i.i35, align 8
  br label %_ZL21isIntOrIntVectorValueRKSt4pairIPKN4llvm5ValueEjE.exit37

_ZL21isIntOrIntVectorValueRKSt4pairIPKN4llvm5ValueEjE.exit37: ; preds = %bb.m, %bb.n
  %i.ct = phi i32 [ %.pre.i.i36, %bb.n ], [ %i.co, %bb.m ]
  %i.cu = and i32 %i.ct, 255
  %i.cv = icmp eq i32 %i.cu, 12
  br i1 %i.cv, label %bb.o, label %_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEENS0_5__ops10_Iter_predIPFbRKS7_EEEET_SK_SK_T0_.exit.i.loopexit.split.loop.exit122

bb.o:                                             ; preds = %_ZL21isIntOrIntVectorValueRKSt4pairIPKN4llvm5ValueEjE.exit37
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i, i64 64
  %i.cx = add nsw i64 %.043.i.i.i, -1
  %i.cy = icmp sgt i64 %.043.i.i.i, 1
  br i1 %i.cy, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !759

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.o
  %gepdiff108 = sub nsw i64 %.idx, %i.aw
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEEZNS3_15ValueEnumerator17OptimizeConstantsEjjE3$_0EvT_SF_T0_.exit"
  %.pre-phi45.i.i.i = phi i64 [ %gepdiff108, %._crit_edge.loopexit.i.i.i ], [ %gepdiff, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEEZNS3_15ValueEnumerator17OptimizeConstantsEjjE3$_0EvT_SF_T0_.exit" ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep, %._crit_edge.loopexit.i.i.i ], [ %i.aq, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEEZNS3_15ValueEnumerator17OptimizeConstantsEjjE3$_0EvT_SF_T0_.exit" ] ; 5 uses
  %i.cz = ashr exact i64 %.pre-phi45.i.i.i, 4
  switch i64 %i.cz, label %.lr.ph [
    i64 3, label %bb.p
    i64 2, label %bb.s
    i64 1, label %bb.v
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.da = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !263
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !225 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i32, ptr %i.dd, align 8            ; 2 uses
  %i.df = and i32 %i.de, 254
  %spec.select.i.i.i.i30 = icmp eq i32 %i.df, 18
  br i1 %spec.select.i.i.i.i30, label %bb.q, label %_ZL21isIntOrIntVectorValueRKSt4pairIPKN4llvm5ValueEjE.exit33

bb.q:                                             ; preds = %bb.p
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !257
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !256
  %.phi.trans.insert.i.i31 = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %.pre.i.i32 = load i32, ptr %.phi.trans.insert.i.i31, align 8
  br label %_ZL21isIntOrIntVectorValueRKSt4pairIPKN4llvm5ValueEjE.exit33

_ZL21isIntOrIntVectorValueRKSt4pairIPKN4llvm5ValueEjE.exit33: ; preds = %bb.p, %bb.q
  %i.dj = phi i32 [ %.pre.i.i32, %bb.q ], [ %i.de, %bb.p ]
  %i.dk = and i32 %i.dj, 255
  %i.dl = icmp eq i32 %i.dk, 12
  br i1 %i.dl, label %bb.r, label %_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm5ValueEjESt6vectorIS7_SaIS7_EEEENS0_5__ops10_Iter_predIPFbRKS7_EEEET_SK_SK_T0_.exit.i

bb.r:                                             ; preds = %_ZL21isIntOrIntVectorValueRKSt4pairIPKN4llvm5ValueEjE.exit33
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i
  %.sroa.032.1.i.i.i = phi ptr [ %i.dm, %bb.r ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.dn = load ptr, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !263
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !225 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.dq, align 8            ; 2 uses
  %i.ds = and i32 %i.dr, 254
  %spec.select.i.i.i.i26 = icmp eq i32 %i.ds, 18
  br i1 %spec.select.i.i.i.i26, label %bb.t, label %_ZL21isIntOrIntVectorValueRKSt4pairIPKN4llvm5ValueEjE.exit29

bb.t:                                             ; preds = %bb.s
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !257
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !256
  %.phi.trans.insert.i.i27 = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.pre.i.i28 = load i32, ptr %.phi.trans.insert.i.i27, align 8
end_hunk_0
