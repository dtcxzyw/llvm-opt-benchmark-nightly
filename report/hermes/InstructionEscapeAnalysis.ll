Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/InstructionEscapeAnalysis?download=true
inline.NumInlined: 364
inline.NumDeleted: 155
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6hermes25InstructionEscapeAnalysis8addRangeEN4llvh14iterator_rangeINS1_14ilist_iteratorINS1_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEELb0ELb0EEEEE:bb.a
  %.val.i.i.i.i = phi i32 [ %.val.i.i.pre.i.i, %.sink.split.i.i.i ], [ %.val18.i.i.i, %bb.p ]
  %i.dd = add i32 %.val.i.i.i.i, 1
  store i32 %i.dd, ptr %i.t, align 8, !tbaa !36, !noalias !62
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !30, !noalias !62
  %i.df = icmp eq ptr %i.de, inttoptr (i64 -8 to ptr)
  br i1 %i.df, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E16InsertIntoBucketIRKS5_JSE_EEEPSJ_SP_OT_DpOT0_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val.i20.i.i.i = load i32, ptr %i.u, align 4, !tbaa !37, !noalias !62
  %i.dg = add i32 %.val.i20.i.i.i, -1
  store i32 %i.dg, ptr %i.u, align 4, !tbaa !37, !noalias !62
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E16InsertIntoBucketIRKS5_JSE_EEEPSJ_SP_OT_DpOT0_.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E16InsertIntoBucketIRKS5_JSE_EEEPSJ_SP_OT_DpOT0_.exit.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !62
  store ptr %.sroa.072.092, ptr %i.dc, align 8, !tbaa !30, !noalias !62
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 %.sroa.061.0.insert.insert, ptr %i.dh, align 8, !tbaa !10, !noalias !62
  %.val34.pre = load i32, ptr %i.t, align 8, !tbaa !36
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E11try_emplaceIJSE_EEESt4pairINS_16DenseMapIteratorIS5_SE_SG_SJ_Lb0EEEbERKS5_DpOT_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E11try_emplaceIJSE_EEESt4pairINS_16DenseMapIteratorIS5_SE_SG_SJ_Lb0EEEbERKS5_DpOT_.exit: ; preds = %bb.n, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E16InsertIntoBucketIRKS5_JSE_EEEPSJ_SP_OT_DpOT0_.exit.i, %bb.l, %._crit_edge
  %.val34 = phi i32 [ %.val34106, %._crit_edge ], [ %.val34.pre, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E16InsertIntoBucketIRKS5_JSE_EEEPSJ_SP_OT_DpOT0_.exit.i ], [ %.val34106, %bb.l ], [ %.val34106, %bb.n ] ; 3 uses
  %i.di = icmp ult i32 %.val34, 2
  br i1 %i.di, label %bb.s, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E11try_emplaceIJSE_EEESt4pairINS_16DenseMapIteratorIS5_SE_SG_SJ_Lb0EEEbERKS5_DpOT_.exit._crit_edge

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E11try_emplaceIJSE_EEESt4pairINS_16DenseMapIteratorIS5_SE_SG_SJ_Lb0EEEbERKS5_DpOT_.exit._crit_edge: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E11try_emplaceIJSE_EEESt4pairINS_16DenseMapIteratorIS5_SE_SG_SJ_Lb0EEEbERKS5_DpOT_.exit
  %.pre = add i32 %.093, 1
  br label %bb.ab

bb.s:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E11try_emplaceIJSE_EEESt4pairINS_16DenseMapIteratorIS5_SE_SG_SJ_Lb0EEEbERKS5_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.dj = add i32 %.093, 1                        ; 5 uses
  store i32 %i.dj, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.dk = icmp eq i32 %.val34, 0
  br i1 %i.dk, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val7.i43 = load ptr, ptr %4, align 8, !tbaa !38 ; 3 uses
  %.val8.i44 = load i32, ptr %i.s, align 8, !tbaa !39 ; 2 uses
  %i.dl = zext i32 %.val8.i44 to i64
  %.idx.i45 = shl nuw nsw i64 %i.dl, 4
  %i.dm = getelementptr i8, ptr %.val7.i43, i64 %.idx.i45 ; 2 uses
  %.not5.i5.i12.i10.i = icmp eq i32 %.val8.i44, 0
  br i1 %.not5.i5.i12.i10.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E5beginEv.exit, label %.lr.ph.i6.i14.i11.i

.lr.ph.i6.i14.i11.i:                              ; preds = %bb.t, %.critedge2.i8.i16.i14.i
  %.sroa.0.2.i12.i = phi ptr [ %i.do, %.critedge2.i8.i16.i14.i ], [ %.val7.i43, %bb.t ] ; 3 uses
  %i.dn = load ptr, ptr %.sroa.0.2.i12.i, align 8, !tbaa !30
  %magicptr.i7.i15.i13.i = ptrtoint ptr %i.dn to i64
  switch i64 %magicptr.i7.i15.i13.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E5beginEv.exit [
    i64 -8, label %.critedge2.i8.i16.i14.i
    i64 -16, label %.critedge2.i8.i16.i14.i
  ]

.critedge2.i8.i16.i14.i:                          ; preds = %.lr.ph.i6.i14.i11.i, %.lr.ph.i6.i14.i11.i
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i12.i, i64 16 ; 2 uses
  %.not.i9.i17.i15.i = icmp eq ptr %i.do, %i.dm
  br i1 %.not.i9.i17.i15.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E5beginEv.exit, label %.lr.ph.i6.i14.i11.i, !llvm.loop !45

_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E5beginEv.exit: ; preds = %.lr.ph.i6.i14.i11.i, %.critedge2.i8.i16.i14.i, %bb.t
  %.pn22.i = phi ptr [ %.val7.i43, %bb.t ], [ %i.dm, %.critedge2.i8.i16.i14.i ], [ %.sroa.0.2.i12.i, %.lr.ph.i6.i14.i11.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.pn22.i, i64 8
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !10
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E5beginEv.exit
  %i.dr = phi i32 [ %i.dq, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E5beginEv.exit ], [ 0, %bb.s ] ; 2 uses
  %i.ds = phi i8 [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E5beginEv.exit ], [ 0, %bb.s ] ; 2 uses
  store i32 %i.dr, ptr %5, align 8, !tbaa !63
  store i8 %i.ds, ptr %i.v, align 4, !tbaa !41
  %i.dt = load ptr, ptr %i.w, align 8, !tbaa !16  ; 4 uses
  %i.du = load i32, ptr %i.x, align 8, !tbaa !15  ; 4 uses
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dw = mul i32 %i.dj, 37
  %i.dx = add i32 %i.du, -1                       ; 2 uses
  %.02544.i.i.i = and i32 %i.dx, %i.dw            ; 2 uses
  %i.dy = zext i32 %.02544.i.i.i to i64
  %i.dz = getelementptr inbounds nuw [12 x i8], ptr %i.dt, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !10 ; 2 uses
  %i.eb = icmp eq i32 %i.dj, %i.ea
  br i1 %i.eb, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit, label %.lr.ph.i.i.i47, !prof !31

.lr.ph.i.i.i47:                                   ; preds = %bb.v, %bb.w
  %i.ec = phi i32 [ %i.ei, %bb.w ], [ %i.ea, %bb.v ]
  %.02547.i.i.i = phi i32 [ %.025.i.i.i, %bb.w ], [ %.02544.i.i.i, %bb.v ]
  %.046.i.i.i = phi i32 [ %i.ee, %bb.w ], [ 1, %bb.v ] ; 2 uses
  %i.ed = icmp eq i32 %i.ec, -1
  br i1 %i.ed, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit.i, label %bb.w, !prof !32

bb.w:                                             ; preds = %.lr.ph.i.i.i47
  %i.ee = add i32 %.046.i.i.i, 1
  %i.ef = add i32 %.046.i.i.i, %.02547.i.i.i
  %.025.i.i.i = and i32 %i.ef, %i.dx              ; 2 uses
  %i.eg = zext i32 %.025.i.i.i to i64
  %i.eh = getelementptr inbounds nuw [12 x i8], ptr %i.dt, i64 %i.eg ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !10 ; 2 uses
  %i.ej = icmp eq i32 %i.dj, %i.ei
  br i1 %i.ej, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit, label %.lr.ph.i.i.i47, !prof !33, !llvm.loop !2

_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit.i: ; preds = %.lr.ph.i.i.i47, %bb.u
  %i.ek = zext i32 %i.du to i64
  %i.el = getelementptr inbounds nuw [12 x i8], ptr %i.dt, i64 %i.ek
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit: ; preds = %bb.w, %bb.v, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit.i
  %.sink.i.i.ph.pn.i50 = phi ptr [ %i.el, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit.i ], [ %i.dz, %bb.v ], [ %i.eh, %bb.w ] ; 2 uses
  %i.em = load i32, ptr %0, align 8, !tbaa !27
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %.critedge, label %bb.x

bb.x:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit
  %i.eo = zext i32 %i.du to i64
  %i.ep = getelementptr inbounds nuw [12 x i8], ptr %i.dt, i64 %i.eo
  %.not83 = icmp eq ptr %.sink.i.i.ph.pn.i50, %i.ep
  br i1 %.not83, label %.critedge2, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eq = getelementptr inbounds nuw i8, ptr %.sink.i.i.ph.pn.i50, i64 4
  %.sroa.03.0.copyload = load i64, ptr %i.eq, align 4 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.03.0.copyload to i32 ; 2 uses
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.03.0.copyload, 32 ; 2 uses
  %i.er = trunc nuw i8 %i.ds to i1
  br i1 %i.er, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.3.0.extract.trunc.i = trunc i64 %.sroa.3.0.extract.shift.i to i8
  store i32 %.sroa.0.0.extract.trunc.i, ptr %5, align 8, !tbaa !10
  store i8 %.sroa.3.0.extract.trunc.i, ptr %i.v, align 4, !tbaa !21
  br label %.critedge

bb.aa:                                            ; preds = %bb.y
  %i.es = trunc i64 %.sroa.3.0.extract.shift.i to i1
  %i.et = icmp ne i32 %i.dr, %.sroa.0.0.extract.trunc.i
  %or.cond81.not = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond81.not, label %.critedge2, label %.critedge

.critedge:                                        ; preds = %bb.aa, %bb.z, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4findERKj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E11try_emplaceIJRS4_EEESt4pairINS_16DenseMapIteratorIjS4_S6_S9_Lb0EEEbERKjDpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.16") align 8 %6, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(5) %5)
  %i.eu = load i32, ptr %i.b, align 4, !tbaa !10
  %.sroa.0.0.copyload = load i64, ptr %5, align 8
  store i32 %i.eu, ptr %i.y, align 8, !tbaa !10
  store i64 %.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %.critedge2

.critedge2:                                       ; preds = %bb.aa, %bb.x, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E11try_emplaceIJSE_EEESt4pairINS_16DenseMapIteratorIS5_SE_SG_SJ_Lb0EEEbERKS5_DpOT_.exit._crit_edge, %.critedge2
  %.pre-phi = phi i32 [ %.pre, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN6hermes11InstructionEZNS2_25InstructionEscapeAnalysis8addRangeENS_14iterator_rangeINS_14ilist_iteratorINS_12ilist_detail12node_optionsIS3_Lb0ELb0EvEELb0ELb0EEEEEE6EscapeNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_SE_EEEES5_SE_SG_SJ_E11try_emplaceIJSE_EEESt4pairINS_16DenseMapIteratorIS5_SE_SG_SJ_Lb0EEEbERKS5_DpOT_.exit._crit_edge ], [ %i.dj, %.critedge2 ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.072.092, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !66 ; 2 uses
  %.not82 = icmp eq ptr %i.ew, %2
  br i1 %.not82, label %._crit_edge95.loopexit, label %bb.e, !llvm.loop !46
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

declare noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef i32 @_ZNK6hermes5Value11getNumUsersEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN6hermes25InstructionEscapeAnalysis15tryMergeOffsetsERNS_8OptValueIjEES2_(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(5) %0, i64 %1) local_unnamed_addr #3 align 2 !guid !67 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 2 uses
  %.sroa.3.0.extract.shift = lshr i64 %1, 32      ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !41, !range !68, !noundef !69
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.3.0.extract.trunc = trunc i64 %.sroa.3.0.extract.shift to i8
  store i32 %.sroa.0.0.extract.trunc, ptr %0, align 4, !tbaa !10
  store i8 %.sroa.3.0.extract.trunc, ptr %i.a, align 4, !tbaa !21
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = trunc i64 %.sroa.3.0.extract.shift to i1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %0, align 4
  %i.f = icmp eq i32 %i.e, %.sroa.0.0.extract.trunc
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %i.f, %bb.d ], [ true, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E11try_emplaceIJRS4_EEESt4pairINS_16DenseMapIteratorIjS4_S6_S9_Lb0EEEbERKjDpOT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.16") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(5) %3) local_unnamed_addr #0 comdat align 2 !guid !70 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !16     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15   ; 9 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %2, align 4, !tbaa !10     ; 3 uses
  %i.g = mul i32 %i.f, 37
  %i.h = add i32 %i.d, -1                         ; 2 uses
  %.02544.i.i = and i32 %i.g, %i.h                ; 2 uses
  %i.i = zext i32 %.02544.i.i to i64
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.i ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !10   ; 2 uses
  %i.l = icmp eq i32 %i.f, %i.k
  br i1 %i.l, label %.loopexit, label %.lr.ph.i.i, !prof !31

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.m = phi i32 [ %i.w, %bb.d ], [ %i.k, %bb.b ] ; 2 uses
  %i.n = phi ptr [ %i.v, %bb.d ], [ %i.j, %bb.b ] ; 2 uses
  %.02547.i.i = phi i32 [ %.025.i.i, %bb.d ], [ %.02544.i.i, %bb.b ]
  %.046.i.i = phi i32 [ %i.s, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02745.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.o = icmp eq i32 %i.m, -1
  br i1 %i.o, label %bb.c, label %bb.d, !prof !32

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02745.i.i, null
  %i.p = select i1 %.not.i.i, ptr %i.n, ptr %.02745.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.q = icmp eq i32 %i.m, -2
  %i.r = icmp eq ptr %.02745.i.i, null
  %or.cond.not.i.i = select i1 %i.q, i1 %i.r, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.n, ptr %.02745.i.i
  %i.s = add i32 %.046.i.i, 1
  %i.t = add i32 %.046.i.i, %.02547.i.i
  %.025.i.i = and i32 %i.t, %i.h                  ; 2 uses
  %i.u = zext i32 %.025.i.i to i64
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.u ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !10   ; 2 uses
  %i.x = icmp eq i32 %i.f, %i.w
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i, !prof !33, !llvm.loop !2

_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.p, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !14   ; 3 uses
  %i.aa = shl i32 %i.z, 2
  %i.ab = add i32 %i.aa, 4
  %i.ac = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.ab, %i.ac
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !32

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit
  %i.ad = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !17
  %.neg.i.i = xor i32 %i.z, -1
  %.neg11.i.i = add i32 %i.d, %.neg.i.i
  %i.ag = sub i32 %.neg11.i.i, %i.af
  %i.ah = lshr i32 %i.d, 3
  %.not9.i.i = icmp ugt i32 %i.ag, %i.ah
  br i1 %.not9.i.i, label %bb.g, label %.sink.split.i.i, !prof !32

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ad, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef %.sink.i.i5)
  %i.ai = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.y, align 8, !tbaa !14
  %.pre9.i = load ptr, ptr %i.a, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.aj = phi ptr [ %.pre9.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 4 uses
  %i.ak = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.z, %bb.f ]
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.y, align 8, !tbaa !14
  %i.am = load i32, ptr %i.aj, align 4, !tbaa !10
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E16InsertIntoBucketIRKjJRS4_EEEPS9_SG_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !17
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !17
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E16InsertIntoBucketIRKjJRS4_EEEPS9_SG_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E16InsertIntoBucketIRKjJRS4_EEEPS9_SG_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ar = load i32, ptr %2, align 4, !tbaa !10
  store i32 %i.ar, ptr %i.aj, align 4, !tbaa !10
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.at = load i64, ptr %3, align 4
  store i64 %i.at, ptr %i.as, align 4
  %i.au = load ptr, ptr %1, align 8, !tbaa !16
  %i.av = load i32, ptr %i.c, align 8, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E16InsertIntoBucketIRKjJRS4_EEEPS9_SG_OT_DpOT0_.exit
  %.sink34 = phi i32 [ %i.av, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E16InsertIntoBucketIRKjJRS4_EEEPS9_SG_OT_DpOT0_.exit ], [ %i.d, %bb.b ], [ %i.d, %bb.d ]
  %.sink32 = phi ptr [ %i.au, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E16InsertIntoBucketIRKjJRS4_EEEPS9_SG_OT_DpOT0_.exit ], [ %i.b, %bb.b ], [ %i.b, %bb.d ]
  %.sink31 = phi ptr [ %i.aj, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E16InsertIntoBucketIRKjJRS4_EEEPS9_SG_OT_DpOT0_.exit ], [ %i.j, %bb.b ], [ %i.v, %bb.d ]
  %.sink = phi i8 [ 1, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E16InsertIntoBucketIRKjJRS4_EEEPS9_SG_OT_DpOT0_.exit ], [ 0, %bb.b ], [ 0, %bb.d ]
  %i.aw = zext i32 %.sink34 to i64
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %.sink32, i64 %i.aw
  store ptr %.sink31, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ay, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes25InstructionEscapeAnalysis15removeLastRangeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 !guid !74 {
bb.a:
  %1 = alloca %"struct.hermes::InstructionEscapeAnalysis::Prefix", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !19
  store ptr null, ptr %i.a, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !10
  store i32 0, ptr %i.f, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.k = load <2 x i32>, ptr %i.d, align 8, !tbaa !10
  store i32 0, ptr %i.d, align 8, !tbaa !10
  store i32 0, ptr %i.e, align 4, !tbaa !10
  tail call void @_ZdlPv(ptr noundef null) #12
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !19
  store ptr %i.l, ptr %i.a, align 8, !tbaa !19
  store ptr null, ptr %i.b, align 8, !tbaa !19
  %i.m = load <2 x i32>, ptr %i.h, align 8, !tbaa !10
  store i32 0, ptr %i.h, align 8, !tbaa !10
  store <2 x i32> %i.m, ptr %i.d, align 8, !tbaa !10
  store i32 0, ptr %i.i, align 4, !tbaa !10
  %i.n = load i32, ptr %i.j, align 8, !tbaa !10
  store i32 %i.n, ptr %i.f, align 8, !tbaa !10
  store i32 0, ptr %i.j, align 8, !tbaa !10
  tail call void @_ZdlPv(ptr noundef null) #12
  store ptr %i.c, ptr %i.b, align 8, !tbaa !19
  store <2 x i32> %i.k, ptr %i.h, align 8, !tbaa !10
  store i32 %i.g, ptr %i.j, align 8, !tbaa !10
  tail call void @_ZdlPv(ptr noundef null) #12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %i.o, i64 12, i1 false), !tbaa.struct !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.o, ptr noundef nonnull align 8 dereferenceable(12) %i.p, i64 12, i1 false), !tbaa.struct !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.p, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !22
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.q = load i32, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = load i32, ptr %i.i, align 4, !tbaa !17
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.u = shl i32 %i.q, 2
  %i.v = load i32, ptr %i.j, align 8, !tbaa !15   ; 4 uses
  %i.w = icmp ult i32 %i.u, %i.v
  %i.x = icmp ugt i32 %i.v, 64
  %or.cond.i = and i1 %i.w, %i.x
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS3_EEE16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(20) %i.b)
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjN6hermes8OptValueIjEENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5clearEv.exit

bb.e:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.z = zext i32 %i.v to i64
  %.idx.i = mul nuw nsw i64 %i.z, 12
end_hunk_0
