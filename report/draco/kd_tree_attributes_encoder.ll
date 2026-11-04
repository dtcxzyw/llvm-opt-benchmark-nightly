Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/kd_tree_attributes_encoder?download=true
inline.NumInlined: 2777
inline.NumDeleted: 1138
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZNSt6vectorIN5draco30AttributeQuantizationTransformESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  store ptr %i.p, ptr %0, align 8, !tbaa !139
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !97
  %i.cd = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cd, ptr %i.bz, align 8, !tbaa !98
  ret void

bb.i:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  %i.ch = tail call ptr @__cxa_begin_catch(ptr %i.cg) #19 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #20
  invoke void @__cxa_rethrow() #22
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ce

bb.l:                                             ; preds = %bb.i
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  tail call void @__clang_call_terminate(ptr %i.cj) #23
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNKSt14default_deleteIN5draco14PointAttributeEEclEPS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !438  ; 4 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !170  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5draco22AttributeTransformDataEEclEPS1_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !439
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #20
  br label %_ZNKSt14default_deleteIN5draco22AttributeTransformDataEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5draco22AttributeTransformDataEEclEPS1_.exit.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 48) #20
  br label %_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5draco22AttributeTransformDataEEclEPS1_.exit.i.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !440  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !441
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #20
  br label %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i

_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i: ; preds = %bb.e, %_ZNSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !442  ; 4 uses
  %.not.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i1.i, label %_ZN5draco14PointAttributeD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !170  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5draco10DataBufferEEclEPS1_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !439
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #20
  br label %_ZNKSt14default_deleteIN5draco10DataBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5draco10DataBufferEEclEPS1_.exit.i.i: ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 40) #20
  br label %_ZN5draco14PointAttributeD2Ev.exit

_ZN5draco14PointAttributeD2Ev.exit:               ; preds = %_ZN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEED2Ev.exit.i, %_ZNKSt14default_deleteIN5draco10DataBufferEEclEPS1_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 112) #20
  br label %bb.h

bb.h:                                             ; preds = %_ZN5draco14PointAttributeD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, i8 noundef signext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.draco::IndexType", align 4  ; 2 uses
  %5 = alloca %"class.draco::IndexType", align 4  ; 2 uses
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !77
  switch i32 %i.c, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit [
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.j
    i32 5, label %bb.m
    i32 6, label %bb.p
    i32 7, label %bb.t
    i32 8, label %bb.x
    i32 9, label %bb.ab
    i32 10, label %bb.ac
    i32 11, label %bb.ad
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !94    ; 2 uses
  %.sroa.speculated29.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.e)
  %.not30.i = icmp eq i8 %.sroa.speculated29.i, 0
  br i1 %.not30.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.f = load i32, ptr %1, align 4, !tbaa !132
  %i.g = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !170
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !167
  %i.k = zext i32 %i.f to i64
  %i.l = mul nsw i64 %i.j, %i.k
  %i.m = getelementptr i8, ptr %i.h, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !166
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !208  ; 2 uses
  %i.s = icmp ugt ptr %i.r, %i.p
  br i1 %i.s, label %.lr.ph207, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.d:                                             ; preds = %.lr.ph207
  %i.t = getelementptr inbounds nuw i8, ptr %.01731.i206, i64 1 ; 2 uses
  %i.u = icmp ugt ptr %i.r, %i.t
  br i1 %i.u, label %.lr.ph207, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !443

.lr.ph207:                                        ; preds = %.lr.ph.i, %bb.d
  %.01731.i206 = phi ptr [ %i.t, %bb.d ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i205 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.v = load i8, ptr %.01731.i206, align 1, !tbaa !94
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i205
  %i.x = sext i8 %i.v to i32
  store i32 %i.x, ptr %i.w, align 4, !tbaa !58
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i205, 1 ; 2 uses
  %i.y = load i8, ptr %i.d, align 8, !tbaa !94    ; 2 uses
  %.sroa.speculated.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.y)
  %i.z = zext i8 %.sroa.speculated.i to i64
  %.not.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.z
  br i1 %.not.not.i, label %bb.d, label %.critedge.i, !llvm.loop !443

.critedge.i:                                      ; preds = %.lr.ph207, %bb.c
  %.lcssa.i = phi i8 [ %i.e, %bb.c ], [ %i.y, %.lr.ph207 ] ; 2 uses
  %i.aa = icmp ult i8 %.lcssa.i, %2
  br i1 %i.aa, label %.lr.ph36.preheader.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i:                             ; preds = %.critedge.i
  %i.ab = zext i8 %2 to i64
  %i.ac = zext i8 %.lcssa.i to i64                ; 2 uses
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %scevgep.i = getelementptr i8, ptr %3, i64 %i.ad
  %i.ae = xor i64 %i.ac, -1
  %i.af = add nsw i64 %i.ae, %i.ab
  %i.ag = shl nsw i64 %i.af, 2
  %i.ah = and i64 %i.ag, 17179869180
  %i.ai = add nuw nsw i64 %i.ah, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 range(i64 0, 1021) %i.ai, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.e:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated29.i25 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ak)
  %.not30.i26 = icmp eq i8 %.sroa.speculated29.i25, 0
  br i1 %.not30.i26, label %.critedge.i34, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.e
  %i.al = load i32, ptr %1, align 4, !tbaa !132
  %i.am = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !170
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !167
  %i.aq = zext i32 %i.al to i64
  %i.ar = mul nsw i64 %i.ap, %i.aq
  %i.as = getelementptr i8, ptr %i.an, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i64, ptr %i.at, align 8, !tbaa !166
  %i.av = getelementptr i8, ptr %i.as, i64 %i.au  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !208 ; 2 uses
  %i.ay = icmp ugt ptr %i.ax, %i.av
  br i1 %i.ay, label %.lr.ph204, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.f:                                             ; preds = %.lr.ph204
  %i.az = getelementptr inbounds nuw i8, ptr %.01731.i29203, i64 1 ; 2 uses
  %i.ba = icmp ugt ptr %i.ax, %i.az
  br i1 %i.ba, label %.lr.ph204, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !444

.lr.ph204:                                        ; preds = %.lr.ph.i27, %bb.f
  %.01731.i29203 = phi ptr [ %i.az, %bb.f ], [ %i.av, %.lr.ph.i27 ] ; 2 uses
  %indvars.iv.i28202 = phi i64 [ %indvars.iv.next.i31, %bb.f ], [ 0, %.lr.ph.i27 ] ; 2 uses
  %i.bb = load i8, ptr %.01731.i29203, align 1, !tbaa !94
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i28202
  %i.bd = zext i8 %i.bb to i32
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !58
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i28202, 1 ; 2 uses
  %i.be = load i8, ptr %i.aj, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i32 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.be)
  %i.bf = zext i8 %.sroa.speculated.i32 to i64
  %.not.not.i33 = icmp samesign ult i64 %indvars.iv.next.i31, %i.bf
  br i1 %.not.not.i33, label %bb.f, label %.critedge.i34, !llvm.loop !444

.critedge.i34:                                    ; preds = %.lr.ph204, %bb.e
  %.lcssa.i35 = phi i8 [ %i.ak, %bb.e ], [ %i.be, %.lr.ph204 ] ; 2 uses
  %i.bg = icmp ult i8 %.lcssa.i35, %2
  br i1 %i.bg, label %.lr.ph36.preheader.i36, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i36:                           ; preds = %.critedge.i34
  %i.bh = zext i8 %2 to i64
  %i.bi = zext i8 %.lcssa.i35 to i64              ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %scevgep.i37 = getelementptr i8, ptr %3, i64 %i.bj
  %i.bk = xor i64 %i.bi, -1
  %i.bl = add nsw i64 %i.bk, %i.bh
  %i.bm = shl nsw i64 %i.bl, 2
  %i.bn = and i64 %i.bm, 17179869180
  %i.bo = add nuw nsw i64 %i.bn, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i37, i8 0, i64 range(i64 0, 1021) %i.bo, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.g:                                             ; preds = %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated29.i38 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.bq)
  %.not30.i39 = icmp eq i8 %.sroa.speculated29.i38, 0
  br i1 %.not30.i39, label %.critedge.i47, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.g
  %i.br = load i32, ptr %1, align 4, !tbaa !132
  %i.bs = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !170
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !167
  %i.bw = zext i32 %i.br to i64
  %i.bx = mul nsw i64 %i.bv, %i.bw
  %i.by = getelementptr i8, ptr %i.bt, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !166
  %i.cb = getelementptr i8, ptr %i.by, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !208
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i40
  %indvars.iv.i41 = phi i64 [ 0, %.lr.ph.i40 ], [ %indvars.iv.next.i44, %bb.i ] ; 2 uses
  %.01731.i42 = phi ptr [ %i.cb, %.lr.ph.i40 ], [ %i.ci, %bb.i ] ; 3 uses
  %i.ce = icmp ugt ptr %i.cd, %.01731.i42
  br i1 %i.ce, label %bb.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.i:                                             ; preds = %bb.h
  %i.cf = load i16, ptr %.01731.i42, align 2, !tbaa !210
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i41
  %i.ch = sext i16 %i.cf to i32
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !58
  %i.ci = getelementptr inbounds nuw i8, ptr %.01731.i42, i64 2
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i41, 1 ; 2 uses
  %i.cj = load i8, ptr %i.bp, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i45 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.cj)
  %i.ck = zext i8 %.sroa.speculated.i45 to i64
  %.not.not.i46 = icmp samesign ult i64 %indvars.iv.next.i44, %i.ck
  br i1 %.not.not.i46, label %bb.h, label %.critedge.i47, !llvm.loop !445

.critedge.i47:                                    ; preds = %bb.i, %bb.g
  %.lcssa.i48 = phi i8 [ %i.bq, %bb.g ], [ %i.cj, %bb.i ] ; 2 uses
  %i.cl = icmp ult i8 %.lcssa.i48, %2
  br i1 %i.cl, label %.lr.ph36.preheader.i49, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i49:                           ; preds = %.critedge.i47
  %i.cm = zext i8 %2 to i64
  %i.cn = zext i8 %.lcssa.i48 to i64              ; 2 uses
  %i.co = shl nuw nsw i64 %i.cn, 2
  %scevgep.i50 = getelementptr i8, ptr %3, i64 %i.co
  %i.cp = xor i64 %i.cn, -1
  %i.cq = add nsw i64 %i.cp, %i.cm
  %i.cr = shl nsw i64 %i.cq, 2
  %i.cs = and i64 %i.cr, 17179869180
  %i.ct = add nuw nsw i64 %i.cs, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i50, i8 0, i64 range(i64 0, 1021) %i.ct, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.j:                                             ; preds = %bb.b
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated29.i51 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.cv)
  %.not30.i52 = icmp eq i8 %.sroa.speculated29.i51, 0
  br i1 %.not30.i52, label %.critedge.i60, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %bb.j
  %i.cw = load i32, ptr %1, align 4, !tbaa !132
  %i.cx = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !170
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !167
  %i.db = zext i32 %i.cw to i64
  %i.dc = mul nsw i64 %i.da, %i.db
  %i.dd = getelementptr i8, ptr %i.cy, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.df = load i64, ptr %i.de, align 8, !tbaa !166
  %i.dg = getelementptr i8, ptr %i.dd, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !208
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i53
  %indvars.iv.i54 = phi i64 [ 0, %.lr.ph.i53 ], [ %indvars.iv.next.i57, %bb.l ] ; 2 uses
  %.01731.i55 = phi ptr [ %i.dg, %.lr.ph.i53 ], [ %i.dn, %bb.l ] ; 3 uses
  %i.dj = icmp ugt ptr %i.di, %.01731.i55
  br i1 %i.dj, label %bb.l, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.l:                                             ; preds = %bb.k
  %i.dk = load i16, ptr %.01731.i55, align 2, !tbaa !210
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i54
  %i.dm = zext i16 %i.dk to i32
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !58
  %i.dn = getelementptr inbounds nuw i8, ptr %.01731.i55, i64 2
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %i.do = load i8, ptr %i.cu, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i58 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.do)
  %i.dp = zext i8 %.sroa.speculated.i58 to i64
  %.not.not.i59 = icmp samesign ult i64 %indvars.iv.next.i57, %i.dp
  br i1 %.not.not.i59, label %bb.k, label %.critedge.i60, !llvm.loop !446

.critedge.i60:                                    ; preds = %bb.l, %bb.j
  %.lcssa.i61 = phi i8 [ %i.cv, %bb.j ], [ %i.do, %bb.l ] ; 2 uses
  %i.dq = icmp ult i8 %.lcssa.i61, %2
  br i1 %i.dq, label %.lr.ph36.preheader.i62, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i62:                           ; preds = %.critedge.i60
  %i.dr = zext i8 %2 to i64
  %i.ds = zext i8 %.lcssa.i61 to i64              ; 2 uses
  %i.dt = shl nuw nsw i64 %i.ds, 2
  %scevgep.i63 = getelementptr i8, ptr %3, i64 %i.dt
  %i.du = xor i64 %i.ds, -1
  %i.dv = add nsw i64 %i.du, %i.dr
  %i.dw = shl nsw i64 %i.dv, 2
  %i.dx = and i64 %i.dw, 17179869180
  %i.dy = add nuw nsw i64 %i.dx, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i63, i8 0, i64 range(i64 0, 1021) %i.dy, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.m:                                             ; preds = %bb.b
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated29.i64 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ea)
  %.not30.i65 = icmp eq i8 %.sroa.speculated29.i64, 0
  br i1 %.not30.i65, label %.critedge.i73, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %bb.m
  %i.eb = load i32, ptr %1, align 4, !tbaa !132
  %i.ec = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !170
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !167
  %i.eg = zext i32 %i.eb to i64
  %i.eh = mul nsw i64 %i.ef, %i.eg
  %i.ei = getelementptr i8, ptr %i.ed, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !166
  %i.el = getelementptr i8, ptr %i.ei, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !208
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i66
  %indvars.iv.i67 = phi i64 [ 0, %.lr.ph.i66 ], [ %indvars.iv.next.i70, %bb.o ] ; 2 uses
  %.01731.i68 = phi ptr [ %i.el, %.lr.ph.i66 ], [ %i.er, %bb.o ] ; 3 uses
  %i.eo = icmp ugt ptr %i.en, %.01731.i68
  br i1 %i.eo, label %bb.o, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.o:                                             ; preds = %bb.n
  %i.ep = load i32, ptr %.01731.i68, align 4, !tbaa !58
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i67
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !58
  %i.er = getelementptr inbounds nuw i8, ptr %.01731.i68, i64 4
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i67, 1 ; 2 uses
  %i.es = load i8, ptr %i.dz, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i71 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.es)
  %i.et = zext i8 %.sroa.speculated.i71 to i64
  %.not.not.i72 = icmp samesign ult i64 %indvars.iv.next.i70, %i.et
  br i1 %.not.not.i72, label %bb.n, label %.critedge.i73, !llvm.loop !447

.critedge.i73:                                    ; preds = %bb.o, %bb.m
  %.lcssa.i74 = phi i8 [ %i.ea, %bb.m ], [ %i.es, %bb.o ] ; 2 uses
  %i.eu = icmp ult i8 %.lcssa.i74, %2
  br i1 %i.eu, label %.lr.ph36.preheader.i75, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i75:                           ; preds = %.critedge.i73
  %i.ev = zext i8 %2 to i64
  %i.ew = zext i8 %.lcssa.i74 to i64              ; 2 uses
  %i.ex = shl nuw nsw i64 %i.ew, 2
  %scevgep.i76 = getelementptr i8, ptr %3, i64 %i.ex
  %i.ey = xor i64 %i.ew, -1
  %i.ez = add nsw i64 %i.ey, %i.ev
  %i.fa = shl nsw i64 %i.ez, 2
  %i.fb = and i64 %i.fa, 17179869180
  %i.fc = add nuw nsw i64 %i.fb, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i76, i8 0, i64 range(i64 0, 1021) %i.fc, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.p:                                             ; preds = %bb.b
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated31.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.fe)
  %.not32.i = icmp eq i8 %.sroa.speculated31.i, 0
  br i1 %.not32.i, label %.critedge.i82, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %bb.p
  %i.ff = load i32, ptr %1, align 4, !tbaa !132
  %i.fg = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !170
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !167
  %i.fk = zext i32 %i.ff to i64
  %i.fl = mul nsw i64 %i.fj, %i.fk
  %i.fm = getelementptr i8, ptr %i.fh, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !166
  %i.fp = getelementptr i8, ptr %i.fm, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !208
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.i77
  %indvars.iv.i78 = phi i64 [ 0, %.lr.ph.i77 ], [ %indvars.iv.next.i79, %bb.s ] ; 2 uses
  %.01733.i = phi ptr [ %i.fp, %.lr.ph.i77 ], [ %i.fw, %bb.s ] ; 3 uses
  %i.fs = icmp ugt ptr %i.fr, %.01733.i
  br i1 %i.fs, label %bb.r, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.r:                                             ; preds = %bb.q
  %i.ft = load i32, ptr %.01733.i, align 4, !tbaa !58 ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, -1
  br i1 %i.fu, label %bb.s, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.s:                                             ; preds = %bb.r
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i78
  store i32 %i.ft, ptr %i.fv, align 4, !tbaa !58
  %i.fw = getelementptr inbounds nuw i8, ptr %.01733.i, i64 4
  %indvars.iv.next.i79 = add nuw nsw i64 %indvars.iv.i78, 1 ; 2 uses
  %i.fx = load i8, ptr %i.fd, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i80 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.fx)
  %i.fy = zext i8 %.sroa.speculated.i80 to i64
  %.not.not.i81 = icmp samesign ult i64 %indvars.iv.next.i79, %i.fy
  br i1 %.not.not.i81, label %bb.q, label %.critedge.i82, !llvm.loop !448

.critedge.i82:                                    ; preds = %bb.s, %bb.p
  %.lcssa.i83 = phi i8 [ %i.fe, %bb.p ], [ %i.fx, %bb.s ] ; 2 uses
  %i.fz = icmp ult i8 %.lcssa.i83, %2
  br i1 %i.fz, label %.lr.ph38.preheader.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph38.preheader.i:                             ; preds = %.critedge.i82
  %i.ga = zext i8 %2 to i64
  %i.gb = zext i8 %.lcssa.i83 to i64              ; 2 uses
  %i.gc = shl nuw nsw i64 %i.gb, 2
  %scevgep.i84 = getelementptr i8, ptr %3, i64 %i.gc
  %i.gd = xor i64 %i.gb, -1
  %i.ge = add nsw i64 %i.gd, %i.ga
  %i.gf = shl nsw i64 %i.ge, 2
  %i.gg = and i64 %i.gf, 17179869180
  %i.gh = add nuw nsw i64 %i.gg, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i84, i8 0, i64 range(i64 0, 1021) %i.gh, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.t:                                             ; preds = %bb.b
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated31.i85 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.gj)
  %.not32.i86 = icmp eq i8 %.sroa.speculated31.i85, 0
  br i1 %.not32.i86, label %.critedge.i94, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.t
  %i.gk = load i32, ptr %1, align 4, !tbaa !132
  %i.gl = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !170
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !167
  %i.gp = zext i32 %i.gk to i64
  %i.gq = mul nsw i64 %i.go, %i.gp
  %i.gr = getelementptr i8, ptr %i.gm, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !166
  %i.gu = getelementptr i8, ptr %i.gr, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !208
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.lr.ph.i87
  %indvars.iv.i88 = phi i64 [ 0, %.lr.ph.i87 ], [ %indvars.iv.next.i91, %bb.w ] ; 2 uses
  %.01733.i89 = phi ptr [ %i.gu, %.lr.ph.i87 ], [ %i.hc, %bb.w ] ; 3 uses
  %i.gx = icmp ugt ptr %i.gw, %.01733.i89
  br i1 %i.gx, label %bb.v, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.v:                                             ; preds = %bb.u
  %i.gy = load i64, ptr %.01733.i89, align 8, !tbaa !91 ; 2 uses
  %i.gz = add i64 %i.gy, 2147483648
  %or.cond.i.i = icmp ult i64 %i.gz, 4294967296
  br i1 %or.cond.i.i, label %bb.w, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.w:                                             ; preds = %bb.v
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i88
  %i.hb = trunc nsw i64 %i.gy to i32
  store i32 %i.hb, ptr %i.ha, align 4, !tbaa !58
  %i.hc = getelementptr inbounds nuw i8, ptr %.01733.i89, i64 8
  %indvars.iv.next.i91 = add nuw nsw i64 %indvars.iv.i88, 1 ; 2 uses
  %i.hd = load i8, ptr %i.gi, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i92 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.hd)
  %i.he = zext i8 %.sroa.speculated.i92 to i64
  %.not.not.i93 = icmp samesign ult i64 %indvars.iv.next.i91, %i.he
  br i1 %.not.not.i93, label %bb.u, label %.critedge.i94, !llvm.loop !449

.critedge.i94:                                    ; preds = %bb.w, %bb.t
  %.lcssa.i95 = phi i8 [ %i.gj, %bb.t ], [ %i.hd, %bb.w ] ; 2 uses
  %i.hf = icmp ult i8 %.lcssa.i95, %2
  br i1 %i.hf, label %.lr.ph38.preheader.i96, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph38.preheader.i96:                           ; preds = %.critedge.i94
  %i.hg = zext i8 %2 to i64
  %i.hh = zext i8 %.lcssa.i95 to i64              ; 2 uses
  %i.hi = shl nuw nsw i64 %i.hh, 2
  %scevgep.i97 = getelementptr i8, ptr %3, i64 %i.hi
  %i.hj = xor i64 %i.hh, -1
  %i.hk = add nsw i64 %i.hj, %i.hg
  %i.hl = shl nsw i64 %i.hk, 2
  %i.hm = and i64 %i.hl, 17179869180
  %i.hn = add nuw nsw i64 %i.hm, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i97, i8 0, i64 range(i64 0, 1021) %i.hn, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.x:                                             ; preds = %bb.b
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hp = load i8, ptr %i.ho, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated31.i98 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.hp)
  %.not32.i99 = icmp eq i8 %.sroa.speculated31.i98, 0
  br i1 %.not32.i99, label %.critedge.i107, label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %bb.x
  %i.hq = load i32, ptr %1, align 4, !tbaa !132
  %i.hr = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !170
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !167
  %i.hv = zext i32 %i.hq to i64
  %i.hw = mul nsw i64 %i.hu, %i.hv
  %i.hx = getelementptr i8, ptr %i.hs, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !166
  %i.ia = getelementptr i8, ptr %i.hx, i64 %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !208
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph.i100
  %indvars.iv.i101 = phi i64 [ 0, %.lr.ph.i100 ], [ %indvars.iv.next.i104, %bb.aa ] ; 2 uses
  %.01733.i102 = phi ptr [ %i.ia, %.lr.ph.i100 ], [ %i.ii, %bb.aa ] ; 3 uses
  %i.id = icmp ugt ptr %i.ic, %.01733.i102
  br i1 %i.id, label %bb.z, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.z:                                             ; preds = %bb.y
  %i.ie = load i64, ptr %.01733.i102, align 8, !tbaa !91 ; 2 uses
  %i.if = icmp ult i64 %i.ie, 2147483648
  br i1 %i.if, label %bb.aa, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.aa:                                            ; preds = %bb.z
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i101
  %i.ih = trunc nuw nsw i64 %i.ie to i32
  store i32 %i.ih, ptr %i.ig, align 4, !tbaa !58
  %i.ii = getelementptr inbounds nuw i8, ptr %.01733.i102, i64 8
  %indvars.iv.next.i104 = add nuw nsw i64 %indvars.iv.i101, 1 ; 2 uses
  %i.ij = load i8, ptr %i.ho, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i105 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ij)
  %i.ik = zext i8 %.sroa.speculated.i105 to i64
  %.not.not.i106 = icmp samesign ult i64 %indvars.iv.next.i104, %i.ik
  br i1 %.not.not.i106, label %bb.y, label %.critedge.i107, !llvm.loop !450

.critedge.i107:                                   ; preds = %bb.aa, %bb.x
  %.lcssa.i108 = phi i8 [ %i.hp, %bb.x ], [ %i.ij, %bb.aa ] ; 2 uses
  %i.il = icmp ult i8 %.lcssa.i108, %2
  br i1 %i.il, label %.lr.ph38.preheader.i109, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph38.preheader.i109:                          ; preds = %.critedge.i107
  %i.im = zext i8 %2 to i64
  %i.in = zext i8 %.lcssa.i108 to i64             ; 2 uses
  %i.io = shl nuw nsw i64 %i.in, 2
  %scevgep.i110 = getelementptr i8, ptr %3, i64 %i.io
  %i.ip = xor i64 %i.in, -1
  %i.iq = add nsw i64 %i.ip, %i.im
  %i.ir = shl nsw i64 %i.iq, 2
  %i.is = and i64 %i.ir, 17179869180
  %i.it = add nuw nsw i64 %i.is, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i110, i8 0, i64 range(i64 0, 1021) %i.it, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ab:                                            ; preds = %bb.b
  %i.iu = load i32, ptr %1, align 4, !tbaa !132
  store i32 %i.iu, ptr %4, align 4, !tbaa !132
  %i.iv = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute17ConvertTypedValueIfiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef zeroext %2, ptr noundef nonnull %3)
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ac:                                            ; preds = %bb.b
  %i.iw = load i32, ptr %1, align 4, !tbaa !132
  store i32 %i.iw, ptr %5, align 4, !tbaa !132
  %i.ix = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute17ConvertTypedValueIdiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5, i8 noundef zeroext %2, ptr noundef nonnull %3)
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ad:                                            ; preds = %bb.b
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated29.i111 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.iz)
  %.not30.i112 = icmp eq i8 %.sroa.speculated29.i111, 0
  br i1 %.not30.i112, label %.critedge.i120, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.ad
  %i.ja = load i32, ptr %1, align 4, !tbaa !132
  %i.jb = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !170
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !167
  %i.jf = zext i32 %i.ja to i64
  %i.jg = mul nsw i64 %i.je, %i.jf
  %i.jh = getelementptr i8, ptr %i.jc, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !166
  %i.jk = getelementptr i8, ptr %i.jh, i64 %i.jj  ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !208 ; 2 uses
  %i.jn = icmp ugt ptr %i.jm, %i.jk
  br i1 %i.jn, label %.lr.ph, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ae:                                            ; preds = %.lr.ph
  %i.jo = getelementptr inbounds nuw i8, ptr %.01731.i115201, i64 1 ; 2 uses
  %i.jp = icmp ugt ptr %i.jm, %i.jo
  br i1 %i.jp, label %.lr.ph, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !451

.lr.ph:                                           ; preds = %.lr.ph.i113, %bb.ae
  %.01731.i115201 = phi ptr [ %i.jo, %bb.ae ], [ %i.jk, %.lr.ph.i113 ] ; 2 uses
  %indvars.iv.i114200 = phi i64 [ %indvars.iv.next.i117, %bb.ae ], [ 0, %.lr.ph.i113 ] ; 2 uses
  %i.jq = load i8, ptr %.01731.i115201, align 1, !tbaa !211, !range !164, !noundef !165
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i114200
  %i.js = zext nneg i8 %i.jq to i32
  store i32 %i.js, ptr %i.jr, align 4, !tbaa !58
  %indvars.iv.next.i117 = add nuw nsw i64 %indvars.iv.i114200, 1 ; 2 uses
  %i.jt = load i8, ptr %i.iy, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i118 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.jt)
  %i.ju = zext i8 %.sroa.speculated.i118 to i64
  %.not.not.i119 = icmp samesign ult i64 %indvars.iv.next.i117, %i.ju
  br i1 %.not.not.i119, label %bb.ae, label %.critedge.i120, !llvm.loop !451

.critedge.i120:                                   ; preds = %.lr.ph, %bb.ad
  %.lcssa.i121 = phi i8 [ %i.iz, %bb.ad ], [ %i.jt, %.lr.ph ] ; 2 uses
  %i.jv = icmp ult i8 %.lcssa.i121, %2
  br i1 %i.jv, label %.lr.ph36.preheader.i122, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i122:                          ; preds = %.critedge.i120
  %i.jw = zext i8 %2 to i64
  %i.jx = zext i8 %.lcssa.i121 to i64             ; 2 uses
  %i.jy = shl nuw nsw i64 %i.jx, 2
  %scevgep.i123 = getelementptr i8, ptr %3, i64 %i.jy
  %i.jz = xor i64 %i.jx, -1
  %i.ka = add nsw i64 %i.jz, %i.jw
  %i.kb = shl nsw i64 %i.ka, 2
  %i.kc = and i64 %i.kb, 17179869180
  %i.kd = add nuw nsw i64 %i.kc, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i123, i8 0, i64 range(i64 0, 1021) %i.kd, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

_ZNK5draco17GeometryAttribute17ConvertTypedValueIaiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit: ; preds = %bb.ae, %bb.z, %bb.y, %bb.v, %bb.u, %bb.r, %bb.q, %bb.n, %bb.k, %bb.h, %bb.f, %bb.d, %.lr.ph.i113, %.lr.ph.i27, %.lr.ph.i, %.lr.ph36.preheader.i122, %.critedge.i120, %.lr.ph38.preheader.i109, %.critedge.i107, %.lr.ph38.preheader.i96, %.critedge.i94, %.lr.ph38.preheader.i, %.critedge.i82, %.lr.ph36.preheader.i75, %.critedge.i73, %.lr.ph36.preheader.i62, %.critedge.i60, %.lr.ph36.preheader.i49, %.critedge.i47, %.lr.ph36.preheader.i36, %.critedge.i34, %.lr.ph36.preheader.i, %.critedge.i, %bb.b, %bb.a, %bb.ac, %bb.ab
  %.0 = phi i1 [ false, %bb.n ], [ false, %bb.a ], [ false, %bb.b ], [ false, %.lr.ph.i ], [ false, %.lr.ph.i27 ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ true, %.lr.ph36.preheader.i122 ], [ true, %.critedge.i120 ], [ %i.iv, %bb.ab ], [ %i.ix, %bb.ac ], [ true, %.critedge.i ], [ true, %.lr.ph36.preheader.i ], [ true, %.critedge.i34 ], [ true, %.lr.ph36.preheader.i36 ], [ true, %.critedge.i47 ], [ true, %.lr.ph36.preheader.i49 ], [ true, %.critedge.i60 ], [ true, %.lr.ph36.preheader.i62 ], [ true, %.critedge.i73 ], [ true, %.lr.ph36.preheader.i75 ], [ true, %.critedge.i82 ], [ true, %.lr.ph38.preheader.i ], [ false, %bb.v ], [ true, %.critedge.i94 ], [ true, %.lr.ph38.preheader.i96 ], [ false, %bb.r ], [ true, %.critedge.i107 ], [ true, %.lr.ph38.preheader.i109 ], [ false, %.lr.ph.i113 ], [ false, %bb.z ], [ false, %bb.k ], [ false, %bb.q ], [ false, %bb.u ], [ false, %bb.y ], [ false, %bb.ae ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco17GeometryAttribute17ConvertTypedValueIfiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !166
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !167
  %i.f = zext i32 %i.a to i64
  %i.g = mul nsw i64 %i.e, %i.f
  %i.h = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !170
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g
  %i.k = getelementptr i8, ptr %i.j, i64 %i.c     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !94    ; 2 uses
  %.sroa.speculated32 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.m)
  %.not33 = icmp eq i8 %.sroa.speculated32, 0
  br i1 %.not33, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !208  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i8, ptr %i.p, align 8, !range !164
  %.fr59 = freeze i8 %i.q
  %i.r = trunc i8 %.fr59 to i1
  %i.s = icmp ugt ptr %i.o, %i.k                  ; 2 uses
  br i1 %i.r, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph51, label %.loopexit

bb.b:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.01734.us50, i64 4 ; 2 uses
  %i.u = icmp ugt ptr %i.o, %i.t
  br i1 %i.u, label %.lr.ph51, label %.loopexit, !llvm.loop !452

.lr.ph51:                                         ; preds = %.lr.ph.split.us, %bb.b
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %bb.b ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.01734.us50 = phi ptr [ %i.t, %bb.b ], [ %i.k, %.lr.ph.split.us ] ; 2 uses
  %i.v = load float, ptr %.01734.us50, align 4, !tbaa !96 ; 6 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv66
  %i.x = tail call float @llvm.fabs.f32(float %i.v)
  %or.cond13.i.us = fcmp one float %i.x, +inf
  %i.y = fcmp uge float %i.v, f0xCF000000
  %or.cond14.not16.i.us = and i1 %i.y, %or.cond13.i.us
  %i.z = fcmp ult float %i.v, f0x4F000000
  %or.cond15.i.us = and i1 %i.z, %or.cond14.not16.i.us
  br i1 %or.cond15.i.us, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph51
  %i.aa = fcmp ogt float %i.v, 1.000000e+00
  %i.ab = fcmp olt float %i.v, 0.000000e+00
  %or.cond.i.us = or i1 %i.aa, %i.ab
  br i1 %or.cond.i.us, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = fpext float %i.v to double
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double f0x41DFFFFFFFC00000, double 5.000000e-01)
  %i.ae = tail call double @llvm.floor.f64(double %i.ad)
  %i.af = fptosi double %i.ae to i32
  store i32 %i.af, ptr %i.w, align 4, !tbaa !58
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.ag = load i8, ptr %i.l, align 8, !tbaa !94   ; 2 uses
  %.sroa.speculated.us = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ag)
  %i.ah = zext i8 %.sroa.speculated.us to i64
  %.not.us.not = icmp samesign ult i64 %indvars.iv.next67, %i.ah
  br i1 %.not.us.not, label %bb.b, label %.critedge, !llvm.loop !452

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph44, label %.loopexit

bb.e:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.0173443, i64 4 ; 2 uses
  %i.aj = icmp ugt ptr %i.o, %i.ai
  br i1 %i.aj, label %.lr.ph44, label %.loopexit, !llvm.loop !452

.lr.ph44:                                         ; preds = %.lr.ph.split, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph.split ] ; 2 uses
  %.0173443 = phi ptr [ %i.ai, %bb.e ], [ %i.k, %.lr.ph.split ] ; 2 uses
  %i.ak = load float, ptr %.0173443, align 4, !tbaa !96 ; 4 uses
  %i.al = tail call float @llvm.fabs.f32(float %i.ak)
  %or.cond13.i = fcmp one float %i.al, +inf
  %i.am = fcmp uge float %i.ak, f0xCF000000
  %or.cond14.not16.i = and i1 %i.am, %or.cond13.i
  %i.an = fcmp ult float %i.ak, f0x4F000000
  %or.cond15.i = and i1 %i.an, %or.cond14.not16.i
  br i1 %or.cond15.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph44
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ap = fptosi float %i.ak to i32
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i8, ptr %i.l, align 8, !tbaa !94   ; 2 uses
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.aq)
  %i.ar = zext i8 %.sroa.speculated to i64
  %.not.not = icmp samesign ult i64 %indvars.iv.next, %i.ar
  br i1 %.not.not, label %bb.e, label %.critedge, !llvm.loop !452

.critedge:                                        ; preds = %bb.f, %bb.d, %bb.a
  %.lcssa = phi i8 [ %i.m, %bb.a ], [ %i.ag, %bb.d ], [ %i.aq, %bb.f ] ; 3 uses
  %i.as = icmp ult i8 %.lcssa, %2
  br i1 %i.as, label %.lr.ph58.preheader, label %.loopexit

.lr.ph58.preheader:                               ; preds = %.critedge
  %i.at = zext i8 %2 to i64
  %i.au = zext i8 %.lcssa to i64
  %i.av = zext i8 %.lcssa to i64
  %i.aw = shl nuw nsw i64 %i.av, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.aw
  %i.ax = xor i64 %i.au, -1
  %i.ay = add nsw i64 %i.ax, %i.at
  %i.az = shl nsw i64 %i.ay, 2
  %i.ba = and i64 %i.az, 17179869180
  %i.bb = add nuw nsw i64 %i.ba, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 range(i64 0, 1021) %i.bb, i1 false), !tbaa !58
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.lr.ph44, %bb.b, %.lr.ph51, %bb.c, %.lr.ph58.preheader, %.lr.ph.split.us, %.lr.ph.split, %.critedge
  %.not30 = phi i1 [ true, %.critedge ], [ true, %.lr.ph58.preheader ], [ false, %.lr.ph.split ], [ false, %.lr.ph.split.us ], [ false, %bb.b ], [ false, %bb.c ], [ false, %.lr.ph51 ], [ false, %.lr.ph44 ], [ false, %bb.e ]
  ret i1 %.not30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco17GeometryAttribute17ConvertTypedValueIdiEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !166
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !167
  %i.f = zext i32 %i.a to i64
  %i.g = mul nsw i64 %i.e, %i.f
  %i.h = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !170
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g
  %i.k = getelementptr i8, ptr %i.j, i64 %i.c     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !94    ; 2 uses
  %.sroa.speculated32 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.m)
  %.not33 = icmp eq i8 %.sroa.speculated32, 0
  br i1 %.not33, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !208  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i8, ptr %i.p, align 8, !range !164
  %.fr59 = freeze i8 %i.q
  %i.r = trunc i8 %.fr59 to i1
  %i.s = icmp ugt ptr %i.o, %i.k                  ; 2 uses
  br i1 %i.r, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph51, label %.loopexit

bb.b:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.01734.us50, i64 8 ; 2 uses
  %i.u = icmp ugt ptr %i.o, %i.t
  br i1 %i.u, label %.lr.ph51, label %.loopexit, !llvm.loop !453

.lr.ph51:                                         ; preds = %.lr.ph.split.us, %bb.b
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %bb.b ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.01734.us50 = phi ptr [ %i.t, %bb.b ], [ %i.k, %.lr.ph.split.us ] ; 2 uses
  %i.v = load double, ptr %.01734.us50, align 8, !tbaa !213 ; 6 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv66
  %i.x = tail call double @llvm.fabs.f64(double %i.v)
  %or.cond13.i.us = fcmp one double %i.x, +inf
  %i.y = fcmp uge double %i.v, f0xC1E0000000000000
  %or.cond14.not16.i.us = and i1 %i.y, %or.cond13.i.us
  %i.z = fcmp ult double %i.v, f0x41DFFFFFFFC00000
  %or.cond15.i.us = and i1 %i.z, %or.cond14.not16.i.us
  br i1 %or.cond15.i.us, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph51
  %i.aa = fcmp ogt double %i.v, 1.000000e+00
  %i.ab = fcmp olt double %i.v, 0.000000e+00
  %or.cond.i.us = or i1 %i.aa, %i.ab
  br i1 %or.cond.i.us, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.v, double f0x41DFFFFFFFC00000, double 5.000000e-01)
  %i.ad = tail call double @llvm.floor.f64(double %i.ac)
  %storemerge.i.us = fptosi double %i.ad to i32
  store i32 %storemerge.i.us, ptr %i.w, align 4, !tbaa !58
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.ae = load i8, ptr %i.l, align 8, !tbaa !94   ; 2 uses
  %.sroa.speculated.us = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ae)
  %i.af = zext i8 %.sroa.speculated.us to i64
  %.not.us.not = icmp samesign ult i64 %indvars.iv.next67, %i.af
  br i1 %.not.us.not, label %bb.b, label %.critedge, !llvm.loop !453

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph44, label %.loopexit

bb.e:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.0173443, i64 8 ; 2 uses
  %i.ah = icmp ugt ptr %i.o, %i.ag
  br i1 %i.ah, label %.lr.ph44, label %.loopexit, !llvm.loop !453

.lr.ph44:                                         ; preds = %.lr.ph.split, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph.split ] ; 2 uses
  %.0173443 = phi ptr [ %i.ag, %bb.e ], [ %i.k, %.lr.ph.split ] ; 2 uses
  %i.ai = load double, ptr %.0173443, align 8, !tbaa !213 ; 4 uses
  %i.aj = tail call double @llvm.fabs.f64(double %i.ai)
  %or.cond13.i = fcmp one double %i.aj, +inf
  %i.ak = fcmp uge double %i.ai, f0xC1E0000000000000
  %or.cond14.not16.i = and i1 %i.ak, %or.cond13.i
  %i.al = fcmp ult double %i.ai, f0x41DFFFFFFFC00000
  %or.cond15.i = and i1 %i.al, %or.cond14.not16.i
  br i1 %or.cond15.i, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph44
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %storemerge.i = fptosi double %i.ai to i32
  store i32 %storemerge.i, ptr %i.am, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = load i8, ptr %i.l, align 8, !tbaa !94   ; 2 uses
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.an)
  %i.ao = zext i8 %.sroa.speculated to i64
  %.not.not = icmp samesign ult i64 %indvars.iv.next, %i.ao
  br i1 %.not.not, label %bb.e, label %.critedge, !llvm.loop !453

.critedge:                                        ; preds = %bb.f, %bb.d, %bb.a
  %.lcssa = phi i8 [ %i.m, %bb.a ], [ %i.ae, %bb.d ], [ %i.an, %bb.f ] ; 3 uses
  %i.ap = icmp ult i8 %.lcssa, %2
  br i1 %i.ap, label %.lr.ph58.preheader, label %.loopexit

.lr.ph58.preheader:                               ; preds = %.critedge
  %i.aq = zext i8 %2 to i64
  %i.ar = zext i8 %.lcssa to i64
  %i.as = zext i8 %.lcssa to i64
  %i.at = shl nuw nsw i64 %i.as, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.at
  %i.au = xor i64 %i.ar, -1
  %i.av = add nsw i64 %i.au, %i.aq
  %i.aw = shl nsw i64 %i.av, 2
  %i.ax = and i64 %i.aw, 17179869180
  %i.ay = add nuw nsw i64 %i.ax, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 range(i64 0, 1021) %i.ay, i1 false), !tbaa !58
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.lr.ph44, %bb.b, %.lr.ph51, %bb.c, %.lr.ph58.preheader, %.lr.ph.split.us, %.lr.ph.split, %.critedge
  %.not30 = phi i1 [ true, %.critedge ], [ true, %.lr.ph58.preheader ], [ false, %.lr.ph.split ], [ false, %.lr.ph.split.us ], [ false, %bb.b ], [ false, %bb.c ], [ false, %.lr.ph51 ], [ false, %.lr.ph44 ], [ false, %bb.e ]
  ret i1 %.not30
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = trunc i32 %0 to i8                       ; 2 uses
  %i.c = and i8 %i.b, 127
  store i8 %i.c, ptr %i.a, align 1, !tbaa !94
  %i.d = icmp ugt i32 %0, 127
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = or i8 %i.b, -128
  store i8 %i.e, ptr %i.a, align 1, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !152
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !153
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.l = load ptr, ptr %1, align 8, !tbaa !153    ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %i.o
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.k)
  %i.q = lshr i32 %0, 7
  %i.r = call noundef zeroext i1 @_ZN5draco12EncodeVarintIjEEbT_PNS_13EncoderBufferE(i32 noundef %i.q, ptr noundef nonnull %1)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !152
  %i.u = icmp slt i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !153
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.y = load ptr, ptr %1, align 8, !tbaa !153    ; 2 uses
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 %i.ab
  call void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.ac, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.x)
  br label %_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit

_ZN5draco13EncoderBuffer6EncodeIhEEbRKT_.exit:    ; preds = %bb.e, %bb.d, %bb.b, %bb.c
  %spec.select = phi i1 [ false, %bb.b ], [ %i.r, %bb.c ], [ false, %bb.d ], [ true, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i1 %spec.select
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 23 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !463
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !464  ; 12 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not54 = icmp ult i64 %i.j, %i.c
  br i1 %.not54, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.l = sub i64 %i.i, %i.k                       ; 18 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !104

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !94
  store i8 %i.s, ptr %i.g, align 1, !tbaa !94
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !464
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !464
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !104

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !94
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !94
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  %i.ac = icmp sgt i64 %i.c, 0
  br i1 %i.ac, label %iter.check162, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

iter.check162:                                    ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  %min.iters.check146 = icmp ult i64 %i.c, 4
  %i.ad = sub i64 %i.b, %i.k
  %diff.check148 = icmp ugt i64 %i.ad, -32
  %or.cond = or i1 %min.iters.check146, %diff.check148
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check149

vector.main.loop.iter.check149:                   ; preds = %iter.check162
  %min.iters.check150 = icmp ult i64 %i.c, 32
  br i1 %min.iters.check150, label %vec.epilog.ph166, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check149
  %i.ae = and i64 %i.c, 28
  %n.vec152 = and i64 %i.c, 9223372036854775776   ; 5 uses
  %i.af = and i64 %i.c, 31
  %i.ag = getelementptr i8, ptr %1, i64 %n.vec152
  %i.ah = getelementptr i8, ptr %2, i64 %n.vec152
  br label %vector.body153

vector.body153:                                   ; preds = %vector.ph151, %vector.body153
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body153 ] ; 3 uses
  %next.gep155 = getelementptr i8, ptr %1, i64 %index154 ; 2 uses
  %next.gep156 = getelementptr i8, ptr %2, i64 %index154 ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep156, i64 16
  %wide.load157 = load <16 x i8>, ptr %next.gep156, align 1, !tbaa !94
  %wide.load158 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !94
  %i.aj = getelementptr i8, ptr %next.gep155, i64 16
  store <16 x i8> %wide.load157, ptr %next.gep155, align 1, !tbaa !94
  store <16 x i8> %wide.load158, ptr %i.aj, align 1, !tbaa !94
  %index.next159 = add nuw i64 %index154, 32      ; 2 uses
  %i.ak = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.ak, label %middle.block160, label %vector.body153, !llvm.loop !454

middle.block160:                                  ; preds = %vector.body153
  %cmp.n161 = icmp eq i64 %i.c, %n.vec152
  br i1 %cmp.n161, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %vec.epilog.iter.check163

vec.epilog.iter.check163:                         ; preds = %middle.block160
  %min.epilog.iters.check165 = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check165, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph166, !prof !465

vec.epilog.ph166:                                 ; preds = %vector.main.loop.iter.check149, %vec.epilog.iter.check163
  %vec.epilog.resume.val167 = phi i64 [ %n.vec152, %vec.epilog.iter.check163 ], [ 0, %vector.main.loop.iter.check149 ]
  %n.vec168 = and i64 %i.c, 9223372036854775804   ; 4 uses
  %i.al = and i64 %i.c, 3
  %i.am = getelementptr i8, ptr %1, i64 %n.vec168
  %i.an = getelementptr i8, ptr %2, i64 %n.vec168
  br label %vec.epilog.vector.body169

vec.epilog.vector.body169:                        ; preds = %vec.epilog.vector.body169, %vec.epilog.ph166
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag:bb.a
  br i1 %cmp.n140, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i57.preheader:                     ; preds = %iter.check126, %vec.epilog.iter.check127, %vec.epilog.middle.block139
  %.012.i.i.i.i.i58.ph = phi i64 [ %i.l, %iter.check126 ], [ %i.ca, %vec.epilog.iter.check127 ], [ %i.cg, %vec.epilog.middle.block139 ]
  %.0811.i.i.i.i.i59.ph = phi ptr [ %1, %iter.check126 ], [ %i.cb, %vec.epilog.iter.check127 ], [ %i.ch, %vec.epilog.middle.block139 ]
  %.0910.i.i.i.i.i60.ph = phi ptr [ %2, %iter.check126 ], [ %i.cc, %vec.epilog.iter.check127 ], [ %i.ci, %vec.epilog.middle.block139 ]
  br label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i57
  %.012.i.i.i.i.i58 = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i57 ], [ %.012.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %.0811.i.i.i.i.i59 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i57 ], [ %.0811.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %.0910.i.i.i.i.i60 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i57 ], [ %.0910.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %i.ck = load i8, ptr %.0910.i.i.i.i.i60, align 1, !tbaa !94
  store i8 %i.ck, ptr %.0811.i.i.i.i.i59, align 1, !tbaa !94
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i60, i64 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i59, i64 1
  %i.cn = add nsw i64 %.012.i.i.i.i.i58, -1
  %i.co = icmp samesign ugt i64 %.012.i.i.i.i.i58, 1
  br i1 %i.co, label %.lr.ph.i.i.i.i.i57, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, !llvm.loop !462

bb.n:                                             ; preds = %bb.b
  %i.cp = load ptr, ptr %0, align 8, !tbaa !466   ; 5 uses
  %i.cq = ptrtoint ptr %i.cp to i64               ; 4 uses
  %i.cr = sub i64 %i.i, %i.cq                     ; 4 uses
  %i.cs = sub i64 9223372036854775807, %i.cr
  %i.ct = icmp ult i64 %i.cs, %i.c
  br i1 %i.ct, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #22
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit:    ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 %i.c)
  %i.cu = add i64 %.sroa.speculated.i, %i.cr      ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.cr
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 9223372036854775807)
  %i.cx = select i1 %i.cv, i64 9223372036854775807, i64 %i.cw ; 3 uses
  %.not.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #21
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit, %bb.p
  %i.cz = phi ptr [ %i.cy, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.da = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.db = sub i64 %i.da, %i.cq                    ; 4 uses
  %i.dc = icmp sgt i64 %i.db, 1
  br i1 %i.dc, label %bb.q, label %bb.r, !prof !104

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.cp, i64 %i.db, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  %i.dd = icmp eq i64 %i.db, 1
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.de = load i8, ptr %i.cp, align 1, !tbaa !94
  store i8 %i.de, ptr %i.cz, align 1, !tbaa !94
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.df = getelementptr i8, ptr %i.cz, i64 %i.db  ; 2 uses
  %i.dg = icmp sgt i64 %i.c, 0
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.i.i.i63.preheader, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67

.lr.ph.i.i.i.i.i.i.i.i63.preheader:               ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %2, i64 %i.c, i1 false), !tbaa !94
  %i.dh = add i64 %i.a, %i.da
  %i.di = add i64 %i.cq, %i.b
  %i.dj = sub i64 %i.dh, %i.di
  %scevgep = getelementptr i8, ptr %i.cz, i64 %i.dj
  br label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67

_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67: ; preds = %.lr.ph.i.i.i.i.i.i.i.i63.preheader, %bb.t
  %.08.lcssa.i.i.i.i.i.i.i.i62 = phi ptr [ %i.df, %bb.t ], [ %scevgep, %.lr.ph.i.i.i.i.i.i.i.i63.preheader ] ; 3 uses
  %i.dk = sub i64 %i.i, %i.da                     ; 4 uses
  %i.dl = icmp sgt i64 %i.dk, 1
  br i1 %i.dl, label %bb.u, label %bb.v, !prof !104

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i.i.i62, ptr align 1 %1, i64 %i.dk, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67
  %i.dm = icmp eq i64 %i.dk, 1
  br i1 %i.dm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dn = load i8, ptr %1, align 1, !tbaa !94
  store i8 %i.dn, ptr %.08.lcssa.i.i.i.i.i.i.i.i62, align 1, !tbaa !94
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.do = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i.i.i.i62, i64 %i.dk
  %.not.i69 = icmp eq ptr %i.cp, null
  br i1 %.not.i69, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = sub i64 %i.h, %i.cq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.dp) #20
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cz, ptr %0, align 8, !tbaa !466
  store ptr %i.do, ptr %i.f, align 8, !tbaa !464
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store ptr %i.dq, ptr %i.d, align 8, !tbaa !463
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i57, %.lr.ph.i.i.i.i.i, %middle.block124, %vec.epilog.middle.block139, %middle.block160, %vec.epilog.middle.block175, %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco17GeometryAttribute12ConvertValueIjEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEaPT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, i8 noundef signext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.draco::IndexType", align 4  ; 2 uses
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !77
  switch i32 %i.c, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit [
    i32 1, label %bb.c
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.j
    i32 5, label %bb.m
    i32 6, label %bb.p
    i32 7, label %bb.s
    i32 8, label %bb.w
    i32 9, label %bb.aa
    i32 10, label %bb.ab
    i32 11, label %bb.ag
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !94    ; 2 uses
  %.sroa.speculated29.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.e)
  %.not30.i = icmp eq i8 %.sroa.speculated29.i, 0
  br i1 %.not30.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.f = load i32, ptr %1, align 4, !tbaa !132
  %i.g = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !170
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !167
  %i.k = zext i32 %i.f to i64
  %i.l = mul nsw i64 %i.j, %i.k
  %i.m = getelementptr i8, ptr %i.h, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !166
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !208  ; 2 uses
  %i.s = icmp ugt ptr %i.r, %i.p
  br i1 %i.s, label %.lr.ph245, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.d:                                             ; preds = %.lr.ph245
  %i.t = getelementptr inbounds nuw i8, ptr %.01731.i244, i64 1 ; 2 uses
  %i.u = icmp ugt ptr %i.r, %i.t
  br i1 %i.u, label %.lr.ph245, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !467

.lr.ph245:                                        ; preds = %.lr.ph.i, %bb.d
  %.01731.i244 = phi ptr [ %i.t, %bb.d ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i243 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.v = load i8, ptr %.01731.i244, align 1, !tbaa !94
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i243
  %i.x = sext i8 %i.v to i32
  store i32 %i.x, ptr %i.w, align 4, !tbaa !58
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i243, 1 ; 2 uses
  %i.y = load i8, ptr %i.d, align 8, !tbaa !94    ; 2 uses
  %.sroa.speculated.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.y)
  %i.z = zext i8 %.sroa.speculated.i to i64
  %.not.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.z
  br i1 %.not.not.i, label %bb.d, label %.critedge.i, !llvm.loop !467

.critedge.i:                                      ; preds = %.lr.ph245, %bb.c
  %.lcssa.i = phi i8 [ %i.e, %bb.c ], [ %i.y, %.lr.ph245 ] ; 2 uses
  %i.aa = icmp ult i8 %.lcssa.i, %2
  br i1 %i.aa, label %.lr.ph36.preheader.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i:                             ; preds = %.critedge.i
  %i.ab = zext i8 %2 to i64
  %i.ac = zext i8 %.lcssa.i to i64                ; 2 uses
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %scevgep.i = getelementptr i8, ptr %3, i64 %i.ad
  %i.ae = xor i64 %i.ac, -1
  %i.af = add nsw i64 %i.ae, %i.ab
  %i.ag = shl nsw i64 %i.af, 2
  %i.ah = and i64 %i.ag, 17179869180
  %i.ai = add nuw nsw i64 %i.ah, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 range(i64 0, 1021) %i.ai, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.e:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated29.i25 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ak)
  %.not30.i26 = icmp eq i8 %.sroa.speculated29.i25, 0
  br i1 %.not30.i26, label %.critedge.i34, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.e
  %i.al = load i32, ptr %1, align 4, !tbaa !132
  %i.am = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !170
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !167
  %i.aq = zext i32 %i.al to i64
  %i.ar = mul nsw i64 %i.ap, %i.aq
  %i.as = getelementptr i8, ptr %i.an, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i64, ptr %i.at, align 8, !tbaa !166
  %i.av = getelementptr i8, ptr %i.as, i64 %i.au  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !208 ; 2 uses
  %i.ay = icmp ugt ptr %i.ax, %i.av
  br i1 %i.ay, label %.lr.ph242, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.f:                                             ; preds = %.lr.ph242
  %i.az = getelementptr inbounds nuw i8, ptr %.01731.i29241, i64 1 ; 2 uses
  %i.ba = icmp ugt ptr %i.ax, %i.az
  br i1 %i.ba, label %.lr.ph242, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !468

.lr.ph242:                                        ; preds = %.lr.ph.i27, %bb.f
  %.01731.i29241 = phi ptr [ %i.az, %bb.f ], [ %i.av, %.lr.ph.i27 ] ; 2 uses
  %indvars.iv.i28240 = phi i64 [ %indvars.iv.next.i31, %bb.f ], [ 0, %.lr.ph.i27 ] ; 2 uses
  %i.bb = load i8, ptr %.01731.i29241, align 1, !tbaa !94
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i28240
  %i.bd = zext i8 %i.bb to i32
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !58
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i28240, 1 ; 2 uses
  %i.be = load i8, ptr %i.aj, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i32 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.be)
  %i.bf = zext i8 %.sroa.speculated.i32 to i64
  %.not.not.i33 = icmp samesign ult i64 %indvars.iv.next.i31, %i.bf
  br i1 %.not.not.i33, label %bb.f, label %.critedge.i34, !llvm.loop !468

.critedge.i34:                                    ; preds = %.lr.ph242, %bb.e
  %.lcssa.i35 = phi i8 [ %i.ak, %bb.e ], [ %i.be, %.lr.ph242 ] ; 2 uses
  %i.bg = icmp ult i8 %.lcssa.i35, %2
  br i1 %i.bg, label %.lr.ph36.preheader.i36, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i36:                           ; preds = %.critedge.i34
  %i.bh = zext i8 %2 to i64
  %i.bi = zext i8 %.lcssa.i35 to i64              ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 2
  %scevgep.i37 = getelementptr i8, ptr %3, i64 %i.bj
  %i.bk = xor i64 %i.bi, -1
  %i.bl = add nsw i64 %i.bk, %i.bh
  %i.bm = shl nsw i64 %i.bl, 2
  %i.bn = and i64 %i.bm, 17179869180
  %i.bo = add nuw nsw i64 %i.bn, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i37, i8 0, i64 range(i64 0, 1021) %i.bo, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.g:                                             ; preds = %bb.b
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated29.i38 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.bq)
  %.not30.i39 = icmp eq i8 %.sroa.speculated29.i38, 0
  br i1 %.not30.i39, label %.critedge.i47, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %bb.g
  %i.br = load i32, ptr %1, align 4, !tbaa !132
  %i.bs = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !170
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !167
  %i.bw = zext i32 %i.br to i64
  %i.bx = mul nsw i64 %i.bv, %i.bw
  %i.by = getelementptr i8, ptr %i.bt, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !166
  %i.cb = getelementptr i8, ptr %i.by, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !208
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i40
  %indvars.iv.i41 = phi i64 [ 0, %.lr.ph.i40 ], [ %indvars.iv.next.i44, %bb.i ] ; 2 uses
  %.01731.i42 = phi ptr [ %i.cb, %.lr.ph.i40 ], [ %i.ci, %bb.i ] ; 3 uses
  %i.ce = icmp ugt ptr %i.cd, %.01731.i42
  br i1 %i.ce, label %bb.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.i:                                             ; preds = %bb.h
  %i.cf = load i16, ptr %.01731.i42, align 2, !tbaa !210
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i41
  %i.ch = sext i16 %i.cf to i32
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !58
  %i.ci = getelementptr inbounds nuw i8, ptr %.01731.i42, i64 2
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i41, 1 ; 2 uses
  %i.cj = load i8, ptr %i.bp, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i45 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.cj)
  %i.ck = zext i8 %.sroa.speculated.i45 to i64
  %.not.not.i46 = icmp samesign ult i64 %indvars.iv.next.i44, %i.ck
  br i1 %.not.not.i46, label %bb.h, label %.critedge.i47, !llvm.loop !469

.critedge.i47:                                    ; preds = %bb.i, %bb.g
  %.lcssa.i48 = phi i8 [ %i.bq, %bb.g ], [ %i.cj, %bb.i ] ; 2 uses
  %i.cl = icmp ult i8 %.lcssa.i48, %2
  br i1 %i.cl, label %.lr.ph36.preheader.i49, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i49:                           ; preds = %.critedge.i47
  %i.cm = zext i8 %2 to i64
  %i.cn = zext i8 %.lcssa.i48 to i64              ; 2 uses
  %i.co = shl nuw nsw i64 %i.cn, 2
  %scevgep.i50 = getelementptr i8, ptr %3, i64 %i.co
  %i.cp = xor i64 %i.cn, -1
  %i.cq = add nsw i64 %i.cp, %i.cm
  %i.cr = shl nsw i64 %i.cq, 2
  %i.cs = and i64 %i.cr, 17179869180
  %i.ct = add nuw nsw i64 %i.cs, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i50, i8 0, i64 range(i64 0, 1021) %i.ct, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.j:                                             ; preds = %bb.b
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated29.i51 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.cv)
  %.not30.i52 = icmp eq i8 %.sroa.speculated29.i51, 0
  br i1 %.not30.i52, label %.critedge.i60, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %bb.j
  %i.cw = load i32, ptr %1, align 4, !tbaa !132
  %i.cx = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !170
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !167
  %i.db = zext i32 %i.cw to i64
  %i.dc = mul nsw i64 %i.da, %i.db
  %i.dd = getelementptr i8, ptr %i.cy, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.df = load i64, ptr %i.de, align 8, !tbaa !166
  %i.dg = getelementptr i8, ptr %i.dd, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !208
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i53
  %indvars.iv.i54 = phi i64 [ 0, %.lr.ph.i53 ], [ %indvars.iv.next.i57, %bb.l ] ; 2 uses
  %.01731.i55 = phi ptr [ %i.dg, %.lr.ph.i53 ], [ %i.dn, %bb.l ] ; 3 uses
  %i.dj = icmp ugt ptr %i.di, %.01731.i55
  br i1 %i.dj, label %bb.l, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.l:                                             ; preds = %bb.k
  %i.dk = load i16, ptr %.01731.i55, align 2, !tbaa !210
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i54
  %i.dm = zext i16 %i.dk to i32
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !58
  %i.dn = getelementptr inbounds nuw i8, ptr %.01731.i55, i64 2
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %i.do = load i8, ptr %i.cu, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i58 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.do)
  %i.dp = zext i8 %.sroa.speculated.i58 to i64
  %.not.not.i59 = icmp samesign ult i64 %indvars.iv.next.i57, %i.dp
  br i1 %.not.not.i59, label %bb.k, label %.critedge.i60, !llvm.loop !470

.critedge.i60:                                    ; preds = %bb.l, %bb.j
  %.lcssa.i61 = phi i8 [ %i.cv, %bb.j ], [ %i.do, %bb.l ] ; 2 uses
  %i.dq = icmp ult i8 %.lcssa.i61, %2
  br i1 %i.dq, label %.lr.ph36.preheader.i62, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i62:                           ; preds = %.critedge.i60
  %i.dr = zext i8 %2 to i64
  %i.ds = zext i8 %.lcssa.i61 to i64              ; 2 uses
  %i.dt = shl nuw nsw i64 %i.ds, 2
  %scevgep.i63 = getelementptr i8, ptr %3, i64 %i.dt
  %i.du = xor i64 %i.ds, -1
  %i.dv = add nsw i64 %i.du, %i.dr
  %i.dw = shl nsw i64 %i.dv, 2
  %i.dx = and i64 %i.dw, 17179869180
  %i.dy = add nuw nsw i64 %i.dx, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i63, i8 0, i64 range(i64 0, 1021) %i.dy, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.m:                                             ; preds = %bb.b
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated29.i64 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ea)
  %.not30.i65 = icmp eq i8 %.sroa.speculated29.i64, 0
  br i1 %.not30.i65, label %.critedge.i73, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %bb.m
  %i.eb = load i32, ptr %1, align 4, !tbaa !132
  %i.ec = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !170
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !167
  %i.eg = zext i32 %i.eb to i64
  %i.eh = mul nsw i64 %i.ef, %i.eg
  %i.ei = getelementptr i8, ptr %i.ed, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !166
  %i.el = getelementptr i8, ptr %i.ei, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !208
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i66
  %indvars.iv.i67 = phi i64 [ 0, %.lr.ph.i66 ], [ %indvars.iv.next.i70, %bb.o ] ; 2 uses
  %.01731.i68 = phi ptr [ %i.el, %.lr.ph.i66 ], [ %i.er, %bb.o ] ; 3 uses
  %i.eo = icmp ugt ptr %i.en, %.01731.i68
  br i1 %i.eo, label %bb.o, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.o:                                             ; preds = %bb.n
  %i.ep = load i32, ptr %.01731.i68, align 4, !tbaa !58
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i67
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !58
  %i.er = getelementptr inbounds nuw i8, ptr %.01731.i68, i64 4
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i67, 1 ; 2 uses
  %i.es = load i8, ptr %i.dz, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i71 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.es)
  %i.et = zext i8 %.sroa.speculated.i71 to i64
  %.not.not.i72 = icmp samesign ult i64 %indvars.iv.next.i70, %i.et
  br i1 %.not.not.i72, label %bb.n, label %.critedge.i73, !llvm.loop !471

.critedge.i73:                                    ; preds = %bb.o, %bb.m
  %.lcssa.i74 = phi i8 [ %i.ea, %bb.m ], [ %i.es, %bb.o ] ; 2 uses
  %i.eu = icmp ult i8 %.lcssa.i74, %2
  br i1 %i.eu, label %.lr.ph36.preheader.i75, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i75:                           ; preds = %.critedge.i73
  %i.ev = zext i8 %2 to i64
  %i.ew = zext i8 %.lcssa.i74 to i64              ; 2 uses
  %i.ex = shl nuw nsw i64 %i.ew, 2
  %scevgep.i76 = getelementptr i8, ptr %3, i64 %i.ex
  %i.ey = xor i64 %i.ew, -1
  %i.ez = add nsw i64 %i.ey, %i.ev
  %i.fa = shl nsw i64 %i.ez, 2
  %i.fb = and i64 %i.fa, 17179869180
  %i.fc = add nuw nsw i64 %i.fb, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i76, i8 0, i64 range(i64 0, 1021) %i.fc, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.p:                                             ; preds = %bb.b
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated29.i77 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.fe)
  %.not30.i78 = icmp eq i8 %.sroa.speculated29.i77, 0
  br i1 %.not30.i78, label %.critedge.i86, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.p
  %i.ff = load i32, ptr %1, align 4, !tbaa !132
  %i.fg = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !170
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !167
  %i.fk = zext i32 %i.ff to i64
  %i.fl = mul nsw i64 %i.fj, %i.fk
  %i.fm = getelementptr i8, ptr %i.fh, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !166
  %i.fp = getelementptr i8, ptr %i.fm, i64 %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !208
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i79
  %indvars.iv.i80 = phi i64 [ 0, %.lr.ph.i79 ], [ %indvars.iv.next.i83, %bb.r ] ; 2 uses
  %.01731.i81 = phi ptr [ %i.fp, %.lr.ph.i79 ], [ %i.fv, %bb.r ] ; 3 uses
  %i.fs = icmp ugt ptr %i.fr, %.01731.i81
  br i1 %i.fs, label %bb.r, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.r:                                             ; preds = %bb.q
  %i.ft = load i32, ptr %.01731.i81, align 4, !tbaa !58
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i80
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !58
  %i.fv = getelementptr inbounds nuw i8, ptr %.01731.i81, i64 4
  %indvars.iv.next.i83 = add nuw nsw i64 %indvars.iv.i80, 1 ; 2 uses
  %i.fw = load i8, ptr %i.fd, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i84 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.fw)
  %i.fx = zext i8 %.sroa.speculated.i84 to i64
  %.not.not.i85 = icmp samesign ult i64 %indvars.iv.next.i83, %i.fx
  br i1 %.not.not.i85, label %bb.q, label %.critedge.i86, !llvm.loop !472

.critedge.i86:                                    ; preds = %bb.r, %bb.p
  %.lcssa.i87 = phi i8 [ %i.fe, %bb.p ], [ %i.fw, %bb.r ] ; 2 uses
  %i.fy = icmp ult i8 %.lcssa.i87, %2
  br i1 %i.fy, label %.lr.ph36.preheader.i88, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i88:                           ; preds = %.critedge.i86
  %i.fz = zext i8 %2 to i64
  %i.ga = zext i8 %.lcssa.i87 to i64              ; 2 uses
  %i.gb = shl nuw nsw i64 %i.ga, 2
  %scevgep.i89 = getelementptr i8, ptr %3, i64 %i.gb
  %i.gc = xor i64 %i.ga, -1
  %i.gd = add nsw i64 %i.gc, %i.fz
  %i.ge = shl nsw i64 %i.gd, 2
  %i.gf = and i64 %i.ge, 17179869180
  %i.gg = add nuw nsw i64 %i.gf, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i89, i8 0, i64 range(i64 0, 1021) %i.gg, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.s:                                             ; preds = %bb.b
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated31.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.gi)
  %.not32.i = icmp eq i8 %.sroa.speculated31.i, 0
  br i1 %.not32.i, label %.critedge.i95, label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %bb.s
  %i.gj = load i32, ptr %1, align 4, !tbaa !132
  %i.gk = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !170
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !167
  %i.go = zext i32 %i.gj to i64
  %i.gp = mul nsw i64 %i.gn, %i.go
  %i.gq = getelementptr i8, ptr %i.gl, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !166
  %i.gt = getelementptr i8, ptr %i.gq, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !208
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %.lr.ph.i90
  %indvars.iv.i91 = phi i64 [ 0, %.lr.ph.i90 ], [ %indvars.iv.next.i92, %bb.v ] ; 2 uses
  %.01733.i = phi ptr [ %i.gt, %.lr.ph.i90 ], [ %i.ha, %bb.v ] ; 3 uses
  %i.gw = icmp ugt ptr %i.gv, %.01733.i
  br i1 %i.gw, label %bb.u, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.u:                                             ; preds = %bb.t
  %i.gx = load i64, ptr %.01733.i, align 8, !tbaa !91 ; 2 uses
  %or.cond.not.i.i = icmp ult i64 %i.gx, 4294967296
  br i1 %or.cond.not.i.i, label %bb.v, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.v:                                             ; preds = %bb.u
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i91
  %i.gz = trunc nuw i64 %i.gx to i32
  store i32 %i.gz, ptr %i.gy, align 4, !tbaa !58
  %i.ha = getelementptr inbounds nuw i8, ptr %.01733.i, i64 8
  %indvars.iv.next.i92 = add nuw nsw i64 %indvars.iv.i91, 1 ; 2 uses
  %i.hb = load i8, ptr %i.gh, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i93 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.hb)
  %i.hc = zext i8 %.sroa.speculated.i93 to i64
  %.not.not.i94 = icmp samesign ult i64 %indvars.iv.next.i92, %i.hc
  br i1 %.not.not.i94, label %bb.t, label %.critedge.i95, !llvm.loop !473

.critedge.i95:                                    ; preds = %bb.v, %bb.s
  %.lcssa.i96 = phi i8 [ %i.gi, %bb.s ], [ %i.hb, %bb.v ] ; 2 uses
  %i.hd = icmp ult i8 %.lcssa.i96, %2
  br i1 %i.hd, label %.lr.ph38.preheader.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph38.preheader.i:                             ; preds = %.critedge.i95
  %i.he = zext i8 %2 to i64
  %i.hf = zext i8 %.lcssa.i96 to i64              ; 2 uses
  %i.hg = shl nuw nsw i64 %i.hf, 2
  %scevgep.i97 = getelementptr i8, ptr %3, i64 %i.hg
  %i.hh = xor i64 %i.hf, -1
  %i.hi = add nsw i64 %i.hh, %i.he
  %i.hj = shl nsw i64 %i.hi, 2
  %i.hk = and i64 %i.hj, 17179869180
  %i.hl = add nuw nsw i64 %i.hk, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i97, i8 0, i64 range(i64 0, 1021) %i.hl, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.w:                                             ; preds = %bb.b
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated31.i98 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.hn)
  %.not32.i99 = icmp eq i8 %.sroa.speculated31.i98, 0
  br i1 %.not32.i99, label %.critedge.i107, label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %bb.w
  %i.ho = load i32, ptr %1, align 4, !tbaa !132
  %i.hp = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !170
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !167
  %i.ht = zext i32 %i.ho to i64
  %i.hu = mul nsw i64 %i.hs, %i.ht
  %i.hv = getelementptr i8, ptr %i.hq, i64 %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !166
  %i.hy = getelementptr i8, ptr %i.hv, i64 %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !208
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %.lr.ph.i100
  %indvars.iv.i101 = phi i64 [ 0, %.lr.ph.i100 ], [ %indvars.iv.next.i104, %bb.z ] ; 2 uses
  %.01733.i102 = phi ptr [ %i.hy, %.lr.ph.i100 ], [ %i.ig, %bb.z ] ; 3 uses
  %i.ib = icmp ugt ptr %i.ia, %.01733.i102
  br i1 %i.ib, label %bb.y, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.y:                                             ; preds = %bb.x
  %i.ic = load i64, ptr %.01733.i102, align 8, !tbaa !91 ; 2 uses
  %i.id = icmp ult i64 %i.ic, 4294967296
  br i1 %i.id, label %bb.z, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.z:                                             ; preds = %bb.y
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i101
  %i.if = trunc nuw i64 %i.ic to i32
  store i32 %i.if, ptr %i.ie, align 4, !tbaa !58
  %i.ig = getelementptr inbounds nuw i8, ptr %.01733.i102, i64 8
  %indvars.iv.next.i104 = add nuw nsw i64 %indvars.iv.i101, 1 ; 2 uses
  %i.ih = load i8, ptr %i.hm, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i105 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ih)
  %i.ii = zext i8 %.sroa.speculated.i105 to i64
  %.not.not.i106 = icmp samesign ult i64 %indvars.iv.next.i104, %i.ii
  br i1 %.not.not.i106, label %bb.x, label %.critedge.i107, !llvm.loop !474

.critedge.i107:                                   ; preds = %bb.z, %bb.w
  %.lcssa.i108 = phi i8 [ %i.hn, %bb.w ], [ %i.ih, %bb.z ] ; 2 uses
  %i.ij = icmp ult i8 %.lcssa.i108, %2
  br i1 %i.ij, label %.lr.ph38.preheader.i109, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph38.preheader.i109:                          ; preds = %.critedge.i107
  %i.ik = zext i8 %2 to i64
  %i.il = zext i8 %.lcssa.i108 to i64             ; 2 uses
  %i.im = shl nuw nsw i64 %i.il, 2
  %scevgep.i110 = getelementptr i8, ptr %3, i64 %i.im
  %i.in = xor i64 %i.il, -1
  %i.io = add nsw i64 %i.in, %i.ik
  %i.ip = shl nsw i64 %i.io, 2
  %i.iq = and i64 %i.ip, 17179869180
  %i.ir = add nuw nsw i64 %i.iq, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i110, i8 0, i64 range(i64 0, 1021) %i.ir, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.aa:                                            ; preds = %bb.b
  %i.is = load i32, ptr %1, align 4, !tbaa !132
  store i32 %i.is, ptr %4, align 4, !tbaa !132
  %i.it = call noundef zeroext i1 @_ZNK5draco17GeometryAttribute17ConvertTypedValueIfjEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %4, i8 noundef zeroext %2, ptr noundef nonnull %3)
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ab:                                            ; preds = %bb.b
  %i.iu = load i32, ptr %1, align 4, !tbaa !132
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !166
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !167
  %i.iz = zext i32 %i.iu to i64
  %i.ja = mul nsw i64 %i.iy, %i.iz
  %i.jb = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !170
  %i.jd = getelementptr i8, ptr %i.jc, i64 %i.ja
  %i.je = getelementptr i8, ptr %i.jd, i64 %i.iw  ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.jg = load i8, ptr %i.jf, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated32.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.jg)
  %.not33.i = icmp eq i8 %.sroa.speculated32.i, 0
  br i1 %.not33.i, label %.critedge.i117, label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %bb.ab
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !208 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jk = load i8, ptr %i.jj, align 8, !range !164
  %.fr59.i = freeze i8 %i.jk
  %i.jl = trunc i8 %.fr59.i to i1
  %i.jm = icmp ugt ptr %i.ji, %i.je               ; 2 uses
  br i1 %i.jl, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i111
  br i1 %i.jm, label %.lr.ph51.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ac:                                            ; preds = %bb.ad
  %i.jn = getelementptr inbounds nuw i8, ptr %.01734.us50.i, i64 8 ; 2 uses
  %i.jo = icmp ugt ptr %i.ji, %i.jn
  br i1 %i.jo, label %.lr.ph51.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !475

.lr.ph51.i:                                       ; preds = %.lr.ph.split.us.i, %bb.ac
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %bb.ac ], [ 0, %.lr.ph.split.us.i ] ; 2 uses
  %.01734.us50.i = phi ptr [ %i.jn, %bb.ac ], [ %i.je, %.lr.ph.split.us.i ] ; 2 uses
  %i.jp = load double, ptr %.01734.us50.i, align 8, !tbaa !213 ; 3 uses
  %or.cond13.i.us.i = tail call i1 @llvm.is.fpclass.f64(double %i.jp, /* (zero psub pnorm) */ i32 480)
  %i.jq = fcmp ule double %i.jp, 1.000000e+00
  %or.cond.not.i = and i1 %or.cond13.i.us.i, %i.jq
  br i1 %or.cond.not.i, label %bb.ad, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ad:                                            ; preds = %.lr.ph51.i
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv66.i
  %i.js = tail call double @llvm.fmuladd.f64(double %i.jp, double f0x41EFFFFFFFE00000, double 5.000000e-01)
  %i.jt = tail call double @llvm.floor.f64(double %i.js)
  %storemerge.i.us.i = fptoui double %i.jt to i32
  store i32 %storemerge.i.us.i, ptr %i.jr, align 4, !tbaa !58
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %i.ju = load i8, ptr %i.jf, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.us.i = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ju)
  %i.jv = zext i8 %.sroa.speculated.us.i to i64
  %.not.us.not.i = icmp samesign ult i64 %indvars.iv.next67.i, %i.jv
  br i1 %.not.us.not.i, label %bb.ac, label %.critedge.i117, !llvm.loop !475

.lr.ph.split.i:                                   ; preds = %.lr.ph.i111
  br i1 %i.jm, label %.lr.ph44.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ae:                                            ; preds = %bb.af
  %i.jw = getelementptr inbounds nuw i8, ptr %.0173443.i, i64 8 ; 2 uses
  %i.jx = icmp ugt ptr %i.ji, %i.jw
  br i1 %i.jx, label %.lr.ph44.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !475

.lr.ph44.i:                                       ; preds = %.lr.ph.split.i, %bb.ae
  %indvars.iv.i113 = phi i64 [ %indvars.iv.next.i114, %bb.ae ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %.0173443.i = phi ptr [ %i.jw, %bb.ae ], [ %i.je, %.lr.ph.split.i ] ; 2 uses
  %i.jy = load double, ptr %.0173443.i, align 8, !tbaa !213 ; 3 uses
  %or.cond13.i.i = tail call i1 @llvm.is.fpclass.f64(double %i.jy, /* (zero psub pnorm) */ i32 480)
  %i.jz = fcmp ult double %i.jy, f0x41EFFFFFFFE00000
  %or.cond14.i.i = and i1 %or.cond13.i.i, %i.jz
  br i1 %or.cond14.i.i, label %bb.af, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.af:                                            ; preds = %.lr.ph44.i
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i113
  %storemerge.i.i = fptoui double %i.jy to i32
  store i32 %storemerge.i.i, ptr %i.ka, align 4, !tbaa !58
  %indvars.iv.next.i114 = add nuw nsw i64 %indvars.iv.i113, 1 ; 2 uses
  %i.kb = load i8, ptr %i.jf, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i115 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.kb)
  %i.kc = zext i8 %.sroa.speculated.i115 to i64
  %.not.not.i116 = icmp samesign ult i64 %indvars.iv.next.i114, %i.kc
  br i1 %.not.not.i116, label %bb.ae, label %.critedge.i117, !llvm.loop !475

.critedge.i117:                                   ; preds = %bb.af, %bb.ad, %bb.ab
  %.lcssa.i118 = phi i8 [ %i.jg, %bb.ab ], [ %i.ju, %bb.ad ], [ %i.kb, %bb.af ] ; 2 uses
  %i.kd = icmp ult i8 %.lcssa.i118, %2
  br i1 %i.kd, label %.lr.ph58.preheader.i, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph58.preheader.i:                             ; preds = %.critedge.i117
  %i.ke = zext i8 %2 to i64
  %i.kf = zext i8 %.lcssa.i118 to i64             ; 2 uses
  %i.kg = shl nuw nsw i64 %i.kf, 2
  %scevgep.i119 = getelementptr i8, ptr %3, i64 %i.kg
  %i.kh = xor i64 %i.kf, -1
  %i.ki = add nsw i64 %i.kh, %i.ke
  %i.kj = shl nsw i64 %i.ki, 2
  %i.kk = and i64 %i.kj, 17179869180
  %i.kl = add nuw nsw i64 %i.kk, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i119, i8 0, i64 range(i64 0, 1021) %i.kl, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ag:                                            ; preds = %bb.b
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.kn = load i8, ptr %i.km, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated29.i120 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.kn)
  %.not30.i121 = icmp eq i8 %.sroa.speculated29.i120, 0
  br i1 %.not30.i121, label %.critedge.i129, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %bb.ag
  %i.ko = load i32, ptr %1, align 4, !tbaa !132
  %i.kp = load ptr, ptr %0, align 8, !tbaa !168   ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !170
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !167
  %i.kt = zext i32 %i.ko to i64
  %i.ku = mul nsw i64 %i.ks, %i.kt
  %i.kv = getelementptr i8, ptr %i.kq, i64 %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !166
  %i.ky = getelementptr i8, ptr %i.kv, i64 %i.kx  ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !208 ; 2 uses
  %i.lb = icmp ugt ptr %i.la, %i.ky
  br i1 %i.lb, label %.lr.ph, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

bb.ah:                                            ; preds = %.lr.ph
  %i.lc = getelementptr inbounds nuw i8, ptr %.01731.i124239, i64 1 ; 2 uses
  %i.ld = icmp ugt ptr %i.la, %i.lc
  br i1 %i.ld, label %.lr.ph, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit, !llvm.loop !476

.lr.ph:                                           ; preds = %.lr.ph.i122, %bb.ah
  %.01731.i124239 = phi ptr [ %i.lc, %bb.ah ], [ %i.ky, %.lr.ph.i122 ] ; 2 uses
  %indvars.iv.i123238 = phi i64 [ %indvars.iv.next.i126, %bb.ah ], [ 0, %.lr.ph.i122 ] ; 2 uses
  %i.le = load i8, ptr %.01731.i124239, align 1, !tbaa !211, !range !164, !noundef !165
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i123238
  %i.lg = zext nneg i8 %i.le to i32
  store i32 %i.lg, ptr %i.lf, align 4, !tbaa !58
  %indvars.iv.next.i126 = add nuw nsw i64 %indvars.iv.i123238, 1 ; 2 uses
  %i.lh = load i8, ptr %i.km, align 8, !tbaa !94  ; 2 uses
  %.sroa.speculated.i127 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.lh)
  %i.li = zext i8 %.sroa.speculated.i127 to i64
  %.not.not.i128 = icmp samesign ult i64 %indvars.iv.next.i126, %i.li
  br i1 %.not.not.i128, label %bb.ah, label %.critedge.i129, !llvm.loop !476

.critedge.i129:                                   ; preds = %.lr.ph, %bb.ag
  %.lcssa.i130 = phi i8 [ %i.kn, %bb.ag ], [ %i.lh, %.lr.ph ] ; 2 uses
  %i.lj = icmp ult i8 %.lcssa.i130, %2
  br i1 %i.lj, label %.lr.ph36.preheader.i131, label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

.lr.ph36.preheader.i131:                          ; preds = %.critedge.i129
  %i.lk = zext i8 %2 to i64
  %i.ll = zext i8 %.lcssa.i130 to i64             ; 2 uses
  %i.lm = shl nuw nsw i64 %i.ll, 2
  %scevgep.i132 = getelementptr i8, ptr %3, i64 %i.lm
  %i.ln = xor i64 %i.ll, -1
  %i.lo = add nsw i64 %i.ln, %i.lk
  %i.lp = shl nsw i64 %i.lo, 2
  %i.lq = and i64 %i.lp, 17179869180
  %i.lr = add nuw nsw i64 %i.lq, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i132, i8 0, i64 range(i64 0, 1021) %i.lr, i1 false), !tbaa !58
  br label %_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit

_ZNK5draco17GeometryAttribute17ConvertTypedValueIajEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_.exit: ; preds = %bb.ah, %.lr.ph44.i, %bb.ae, %.lr.ph51.i, %bb.ac, %bb.y, %bb.x, %bb.u, %bb.t, %bb.q, %bb.n, %bb.k, %bb.h, %bb.f, %bb.d, %.lr.ph.i122, %.lr.ph.i27, %.lr.ph.i, %.lr.ph36.preheader.i131, %.critedge.i129, %.lr.ph58.preheader.i, %.critedge.i117, %.lr.ph.split.i, %.lr.ph.split.us.i, %.lr.ph38.preheader.i109, %.critedge.i107, %.lr.ph38.preheader.i, %.critedge.i95, %.lr.ph36.preheader.i88, %.critedge.i86, %.lr.ph36.preheader.i75, %.critedge.i73, %.lr.ph36.preheader.i62, %.critedge.i60, %.lr.ph36.preheader.i49, %.critedge.i47, %.lr.ph36.preheader.i36, %.critedge.i34, %.lr.ph36.preheader.i, %.critedge.i, %bb.b, %bb.a, %bb.aa
  %.0 = phi i1 [ false, %.lr.ph.i ], [ false, %bb.a ], [ false, %bb.b ], [ false, %.lr.ph.i27 ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.d ], [ false, %bb.k ], [ false, %bb.q ], [ true, %.lr.ph36.preheader.i131 ], [ %i.it, %bb.aa ], [ true, %.critedge.i129 ], [ true, %.critedge.i ], [ true, %.lr.ph36.preheader.i ], [ true, %.critedge.i34 ], [ true, %.lr.ph36.preheader.i36 ], [ true, %.critedge.i47 ], [ true, %.lr.ph36.preheader.i49 ], [ true, %.critedge.i60 ], [ true, %.lr.ph36.preheader.i62 ], [ true, %.critedge.i73 ], [ true, %.lr.ph36.preheader.i75 ], [ true, %.critedge.i86 ], [ true, %.lr.ph36.preheader.i88 ], [ true, %.critedge.i95 ], [ true, %.lr.ph38.preheader.i ], [ false, %bb.u ], [ true, %.critedge.i107 ], [ true, %.lr.ph38.preheader.i109 ], [ false, %bb.y ], [ true, %.critedge.i117 ], [ true, %.lr.ph58.preheader.i ], [ false, %.lr.ph.split.i ], [ false, %.lr.ph.split.us.i ], [ false, %.lr.ph51.i ], [ false, %.lr.ph.i122 ], [ false, %.lr.ph44.i ], [ false, %bb.n ], [ false, %bb.t ], [ false, %bb.x ], [ false, %bb.ac ], [ false, %bb.ae ], [ false, %bb.ah ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5draco17GeometryAttribute17ConvertTypedValueIfjEEbNS_9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEEhPT0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !166
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !167
  %i.f = zext i32 %i.a to i64
  %i.g = mul nsw i64 %i.e, %i.f
  %i.h = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !170
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g
  %i.k = getelementptr i8, ptr %i.j, i64 %i.c     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !94    ; 2 uses
  %.sroa.speculated32 = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.m)
  %.not33 = icmp eq i8 %.sroa.speculated32, 0
  br i1 %.not33, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !208  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i8, ptr %i.p, align 8, !range !164
  %.fr59 = freeze i8 %i.q
  %i.r = trunc i8 %.fr59 to i1
  %i.s = icmp ugt ptr %i.o, %i.k                  ; 2 uses
  br i1 %i.r, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph51, label %.loopexit

bb.b:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.01734.us50, i64 4 ; 2 uses
  %i.u = icmp ugt ptr %i.o, %i.t
  br i1 %i.u, label %.lr.ph51, label %.loopexit, !llvm.loop !477

.lr.ph51:                                         ; preds = %.lr.ph.split.us, %bb.b
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %bb.b ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.01734.us50 = phi ptr [ %i.t, %bb.b ], [ %i.k, %.lr.ph.split.us ] ; 2 uses
  %i.v = load float, ptr %.01734.us50, align 4, !tbaa !96 ; 3 uses
  %or.cond13.i.us = tail call i1 @llvm.is.fpclass.f32(float %i.v, /* (zero psub pnorm) */ i32 480)
  %i.w = fcmp ule float %i.v, 1.000000e+00
  %or.cond.not = and i1 %or.cond13.i.us, %i.w
  br i1 %or.cond.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph51
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv66
  %i.y = fpext float %i.v to double
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double f0x41EFFFFFFFE00000, double 5.000000e-01)
  %i.aa = tail call double @llvm.floor.f64(double %i.z)
  %i.ab = fptoui double %i.aa to i32
  store i32 %i.ab, ptr %i.x, align 4, !tbaa !58
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.ac = load i8, ptr %i.l, align 8, !tbaa !94   ; 2 uses
  %.sroa.speculated.us = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ac)
  %i.ad = zext i8 %.sroa.speculated.us to i64
  %.not.us.not = icmp samesign ult i64 %indvars.iv.next67, %i.ad
  br i1 %.not.us.not, label %bb.b, label %.critedge, !llvm.loop !477

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.s, label %.lr.ph44, label %.loopexit

bb.d:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.0173443, i64 4 ; 2 uses
  %i.af = icmp ugt ptr %i.o, %i.ae
  br i1 %i.af, label %.lr.ph44, label %.loopexit, !llvm.loop !477

.lr.ph44:                                         ; preds = %.lr.ph.split, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.lr.ph.split ] ; 2 uses
  %.0173443 = phi ptr [ %i.ae, %bb.d ], [ %i.k, %.lr.ph.split ] ; 2 uses
  %i.ag = load float, ptr %.0173443, align 4, !tbaa !96 ; 3 uses
  %or.cond13.i = tail call i1 @llvm.is.fpclass.f32(float %i.ag, /* (zero psub pnorm) */ i32 480)
  %i.ah = fcmp ult float %i.ag, f0x4F800000
  %or.cond14.i = and i1 %or.cond13.i, %i.ah
  br i1 %or.cond14.i, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %.lr.ph44
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.aj = fptoui float %i.ag to i32
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load i8, ptr %i.l, align 8, !tbaa !94   ; 2 uses
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %2, i8 %i.ak)
  %i.al = zext i8 %.sroa.speculated to i64
  %.not.not = icmp samesign ult i64 %indvars.iv.next, %i.al
  br i1 %.not.not, label %bb.d, label %.critedge, !llvm.loop !477

.critedge:                                        ; preds = %bb.e, %bb.c, %bb.a
  %.lcssa = phi i8 [ %i.m, %bb.a ], [ %i.ac, %bb.c ], [ %i.ak, %bb.e ] ; 3 uses
  %i.am = icmp ult i8 %.lcssa, %2
  br i1 %i.am, label %.lr.ph58.preheader, label %.loopexit

.lr.ph58.preheader:                               ; preds = %.critedge
  %i.an = zext i8 %2 to i64
  %i.ao = zext i8 %.lcssa to i64
  %i.ap = zext i8 %.lcssa to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.aq
  %i.ar = xor i64 %i.ao, -1
  %i.as = add nsw i64 %i.ar, %i.an
  %i.at = shl nsw i64 %i.as, 2
  %i.au = and i64 %i.at, 17179869180
  %i.av = add nuw nsw i64 %i.au, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 range(i64 0, 1021) %i.av, i1 false), !tbaa !58
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.lr.ph44, %bb.b, %.lr.ph51, %.lr.ph58.preheader, %.lr.ph.split.us, %.lr.ph.split, %.critedge
  %.not30 = phi i1 [ true, %.critedge ], [ true, %.lr.ph58.preheader ], [ false, %.lr.ph.split ], [ false, %.lr.ph.split.us ], [ false, %bb.b ], [ false, %.lr.ph51 ], [ false, %.lr.ph44 ], [ false, %bb.d ]
  ret i1 %.not30
}

declare void @_ZN5draco16DirectBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNSt5arrayIN5draco14RAnsBitEncoderELm32EEC2Ev(ptr noundef nonnull align 8 dereferenceable(1792) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.1)
          to label %bb.b unwind label %.preheader.preheader

bb.b:                                             ; preds = %bb.a
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.2)
          to label %bb.c unwind label %.preheader.preheader

bb.c:                                             ; preds = %bb.b
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.3)
          to label %bb.d unwind label %.preheader.preheader

bb.d:                                             ; preds = %bb.c
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.4)
          to label %bb.e unwind label %.preheader.preheader

bb.e:                                             ; preds = %bb.d
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.5)
          to label %bb.f unwind label %.preheader.preheader

bb.f:                                             ; preds = %bb.e
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.6)
          to label %bb.g unwind label %.preheader.preheader

bb.g:                                             ; preds = %bb.f
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.7)
          to label %bb.h unwind label %.preheader.preheader

bb.h:                                             ; preds = %bb.g
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.8)
          to label %bb.i unwind label %.preheader.preheader

bb.i:                                             ; preds = %bb.h
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.9)
          to label %bb.j unwind label %.preheader.preheader

bb.j:                                             ; preds = %bb.i
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.10)
          to label %bb.k unwind label %.preheader.preheader

bb.k:                                             ; preds = %bb.j
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.11)
          to label %bb.l unwind label %.preheader.preheader

bb.l:                                             ; preds = %bb.k
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.12)
          to label %bb.m unwind label %.preheader.preheader

bb.m:                                             ; preds = %bb.l
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.13)
          to label %bb.n unwind label %.preheader.preheader

bb.n:                                             ; preds = %bb.m
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.14)
          to label %bb.o unwind label %.preheader.preheader

bb.o:                                             ; preds = %bb.n
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.15)
          to label %bb.p unwind label %.preheader.preheader

bb.p:                                             ; preds = %bb.o
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.16)
          to label %bb.q unwind label %.preheader.preheader

bb.q:                                             ; preds = %bb.p
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.17)
          to label %bb.r unwind label %.preheader.preheader

bb.r:                                             ; preds = %bb.q
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.18)
          to label %bb.s unwind label %.preheader.preheader

bb.s:                                             ; preds = %bb.r
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.19)
          to label %bb.t unwind label %.preheader.preheader

bb.t:                                             ; preds = %bb.s
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.20)
          to label %bb.u unwind label %.preheader.preheader

bb.u:                                             ; preds = %bb.t
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.21)
          to label %bb.v unwind label %.preheader.preheader

bb.v:                                             ; preds = %bb.u
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.22)
          to label %bb.w unwind label %.preheader.preheader

bb.w:                                             ; preds = %bb.v
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %0, i64 1288 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.23)
          to label %bb.x unwind label %.preheader.preheader

bb.x:                                             ; preds = %bb.w
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.24)
          to label %bb.y unwind label %.preheader.preheader

bb.y:                                             ; preds = %bb.x
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.25)
          to label %bb.z unwind label %.preheader.preheader

bb.z:                                             ; preds = %bb.y
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.26)
          to label %bb.aa unwind label %.preheader.preheader

bb.aa:                                            ; preds = %bb.z
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %0, i64 1512 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.27)
          to label %bb.ab unwind label %.preheader.preheader

bb.ab:                                            ; preds = %bb.aa
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %0, i64 1568 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.28)
          to label %bb.ac unwind label %.preheader.preheader

bb.ac:                                            ; preds = %bb.ab
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.29)
          to label %bb.ad unwind label %.preheader.preheader

bb.ad:                                            ; preds = %bb.ac
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.30)
          to label %bb.ae unwind label %.preheader.preheader

bb.ae:                                            ; preds = %bb.ad
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %0, i64 1736 ; 2 uses
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.31)
          to label %bb.af unwind label %.preheader.preheader

bb.af:                                            ; preds = %bb.ae
  ret void

.preheader.preheader:                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %.ptr.lcssa.ph = phi ptr [ %.ptr.31, %bb.ae ], [ %.ptr.30, %bb.ad ], [ %.ptr.29, %bb.ac ], [ %.ptr.28, %bb.ab ], [ %.ptr.27, %bb.aa ], [ %.ptr.26, %bb.z ], [ %.ptr.25, %bb.y ], [ %.ptr.24, %bb.x ], [ %.ptr.23, %bb.w ], [ %.ptr.22, %bb.v ], [ %.ptr.21, %bb.u ], [ %.ptr.20, %bb.t ], [ %.ptr.19, %bb.s ], [ %.ptr.18, %bb.r ], [ %.ptr.17, %bb.q ], [ %.ptr.16, %bb.p ], [ %.ptr.15, %bb.o ], [ %.ptr.14, %bb.n ], [ %.ptr.13, %bb.m ], [ %.ptr.12, %bb.l ], [ %.ptr.11, %bb.k ], [ %.ptr.10, %bb.j ], [ %.ptr.9, %bb.i ], [ %.ptr.8, %bb.h ], [ %.ptr.7, %bb.g ], [ %.ptr.6, %bb.f ], [ %.ptr.5, %bb.e ], [ %.ptr.4, %bb.d ], [ %.ptr.3, %bb.c ], [ %.ptr.2, %bb.b ], [ %.ptr.1, %bb.a ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.a = phi ptr [ %i.b, %.preheader ], [ %.ptr.lcssa.ph, %.preheader.preheader ]
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -56 ; 3 uses
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.b) #19
  %i.c = icmp eq ptr %i.b, %0
  br i1 %i.c, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader
  resume { ptr, i32 } %lpad.thr_comm
}

declare void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt18__do_uninit_fill_nIPSt6vectorIjSaIjEEmS2_ET_S4_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not16 = icmp eq i64 %1, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !160
  br label %bb.b

end_hunk_1
