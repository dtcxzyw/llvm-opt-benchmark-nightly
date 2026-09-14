Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/RaBitQuantizer?download=true
inline.NumInlined: 400
inline.NumDeleted: 220
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5faiss12_GLOBAL__N_123RaBitQDistanceComputerQILNS_9SIMDLevelE0EE19scan_codes_multibitEmPKhPKlmlbPKNS_10IDSelectorEbRNS_22ResultHandlerUnorderedIflEE:bb.a
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %_ZN5faiss12rabitq_utils23should_refine_candidateEffffb.exit.us63, %.lr.ph.split.split.split.us
  %.3.us65 = phi i64 [ %.04149.us61, %.lr.ph.split.split.split.us ], [ %.04149.us61, %_ZN5faiss12rabitq_utils23should_refine_candidateEffffb.exit.us63 ], [ %i.cl, %bb.r ], [ %.04149.us61, %bb.q ] ; 2 uses
  %.345.us66 = getelementptr inbounds nuw i8, ptr %.04248.us62, i64 %4
  %i.cm = add nuw i64 %.04050.us60, 1             ; 2 uses
  %exitcond73.not = icmp eq i64 %i.cm, %1
  br i1 %exitcond73.not, label %._crit_edge, label %.lr.ph.split.split.split.us, !llvm.loop !193

bb.t:                                             ; preds = %bb.a
  %i.cn = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.co = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cn, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.23, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_123RaBitQDistanceComputerQILNS_9SIMDLevelE0EE19scan_codes_multibitEmPKhPKlmlbPKNS_10IDSelectorEbRNS_22ResultHandlerUnorderedIflEE, ptr noundef nonnull @.str.2, i32 noundef 602) #29 ; 0 uses
  tail call void @abort() #27
  unreachable

._crit_edge:                                      ; preds = %bb.w, %bb.s, %bb.p, %bb.g, %.preheader
  %.041.lcssa = phi i64 [ 0, %.preheader ], [ %.3.us56, %bb.p ], [ %.3.us65, %bb.s ], [ %.3.us, %bb.g ], [ %.3, %bb.w ]
  ret i64 %.041.lcssa

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %bb.w
  %.04050 = phi i64 [ %i.do, %bb.w ], [ 0, %.lr.ph.split.split ] ; 2 uses
  %.04149 = phi i64 [ %.3, %bb.w ], [ 0, %.lr.ph.split.split ] ; 4 uses
  %.04248 = phi ptr [ %.345, %bb.w ], [ %2, %.lr.ph.split.split ] ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.04050 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !33
  %i.cr = load ptr, ptr %7, align 8, !tbaa !21
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %i.cq)
  br i1 %i.ct, label %_ZN5faiss12rabitq_utils23should_refine_candidateEffffb.exit, label %bb.w

_ZN5faiss12rabitq_utils23should_refine_candidateEffffb.exit: ; preds = %.lr.ph.split.split.split
  %i.cu = getelementptr inbounds nuw i8, ptr %.04248, i64 %i.d ; 2 uses
  %i.cv = tail call fastcc noundef float @_ZNK5faiss12_GLOBAL__N_123RaBitQDistanceComputerQILNS_9SIMDLevelE0EE26distance_to_code_1bit_implEPKhPKNS_12rabitq_utils14SignBitFactorsEm(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %.04248, ptr noundef %i.cu, i64 noundef %i.d)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cx = load float, ptr %i.cw, align 1, !tbaa !85
  %i.cy = load float, ptr %i.h, align 8, !tbaa !72
  %i.cz = load float, ptr %i.i, align 8, !tbaa !88
  %i.da = fmul float %i.cx, %i.cy
  %i.db = fsub float %i.cv, %i.da                 ; 2 uses
  %i.dc = fcmp ogt float %i.db, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.dc, float %i.db, float 0.000000e+00
  %i.dd = fcmp olt float %.sroa.speculated.i, %i.cz
  br i1 %i.dd, label %bb.u, label %bb.w

bb.u:                                             ; preds = %_ZN5faiss12rabitq_utils23should_refine_candidateEffffb.exit
  %i.de = load i64, ptr %i.j, align 8, !tbaa !89
  %i.df = add i64 %i.de, 1
  store i64 %i.df, ptr %i.j, align 8, !tbaa !89
  %i.dg = tail call noundef float @_ZN5faiss12_GLOBAL__N_123RaBitQDistanceComputerQILNS_9SIMDLevelE0EE21distance_to_code_fullEPKh(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull %.04248)
  %i.dh = load i64, ptr %i.cp, align 8, !tbaa !33
  %i.di = load ptr, ptr %9, align 8, !tbaa !21
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = tail call noundef zeroext i1 %i.dj(ptr noundef nonnull align 8 dereferenceable(32) %9, float noundef %i.dg, i64 noundef %i.dh)
  br i1 %i.dk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dl = load i64, ptr %i.k, align 8, !tbaa !90
  %i.dm = add i64 %i.dl, 1
  store i64 %i.dm, ptr %i.k, align 8, !tbaa !90
  %i.dn = add i64 %.04149, 1
  br label %bb.w

bb.w:                                             ; preds = %_ZN5faiss12rabitq_utils23should_refine_candidateEffffb.exit, %bb.v, %bb.u, %.lr.ph.split.split.split
  %.3 = phi i64 [ %.04149, %.lr.ph.split.split.split ], [ %.04149, %_ZN5faiss12rabitq_utils23should_refine_candidateEffffb.exit ], [ %i.dn, %bb.v ], [ %.04149, %bb.u ] ; 2 uses
  %.345 = getelementptr inbounds nuw i8, ptr %.04248, i64 %4
  %i.do = add nuw i64 %.04050, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.do, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.split, !llvm.loop !193
}

declare void @_ZN5faiss12rabitq_utils21compute_query_factorsEPKfmS2_hbNS_10MetricTypeERSt6vectorIfSaIfEERS4_IhSaIhEE(ptr dead_on_unwind writable sret(%"struct.faiss::rabitq_utils::QueryFactorsData") align 8, ptr noundef, i64 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !95     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.d                       ; 2 uses
  %i.k = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.m = icmp ule i64 %i.j, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %.not28 = icmp ult i64 %i.j, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = add nsw i64 %1, -1                       ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.b, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.n, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !94
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.l, %1
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #26
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %1)
  %i.s = add nuw i64 %.sroa.speculated.i, %i.f
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807) ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #28 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 3 uses
  store i8 0, ptr %i.v, align 1, !tbaa !29
  %i.w = add nsw i64 %1, -1                       ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.y, i8 0, i64 %i.w, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %.not35 = icmp eq ptr %i.b, %i.c
  br i1 %.not35, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31, %bb.h
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !96
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #25
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34: ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, %bb.i
  store ptr %i.u, ptr %0, align 8, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !94
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !96
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef float @_ZNK5faiss12_GLOBAL__N_123RaBitQDistanceComputerQILNS_9SIMDLevelE0EE26distance_to_code_1bit_implEPKhPKNS_12rabitq_utils14SignBitFactorsEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 201
  %i.b = load i8, ptr %i.a, align 1, !tbaa !66, !range !91, !noundef !92
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = load i8, ptr %i.d, align 8, !tbaa !65    ; 4 uses
  %i.f = zext nneg i8 %i.e to i32
  %notmask = shl nsw i32 -1, %i.f
  %i.g = xor i32 %notmask, -1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !55
  %i.k = mul i64 %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !95   ; 2 uses
  %i.n = zext i8 %i.e to i64                      ; 2 uses
  %.not45.i = icmp samesign ult i64 %3, 8
  br i1 %.not45.i, label %.preheader.i, label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %bb.b
  %.not64.i = icmp eq i8 %i.e, 0
  br i1 %.not64.i, label %_ZN5faiss6rabitq23bitwise_xor_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit, label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %.lr.ph48.i, %..loopexit_crit_edge.us.i
  %i.o = phi i64 [ %i.aa, %..loopexit_crit_edge.us.i ], [ 8, %.lr.ph48.i ] ; 2 uses
  %.047.us.i = phi i64 [ %i.z, %..loopexit_crit_edge.us.i ], [ 0, %.lr.ph48.i ]
  %.03546.us.i = phi i64 [ %i.o, %..loopexit_crit_edge.us.i ], [ 0, %.lr.ph48.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.03546.us.i
  %i.q = load i64, ptr %i.p, align 8, !tbaa !33
  %invariant.gep.us.i = getelementptr i8, ptr %i.m, i64 %.03546.us.i
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %.144.us.i = phi i64 [ %.047.us.i, %.lr.ph.us.i ], [ %i.z, %bb.c ]
  %i.r = mul i64 %indvars.iv.i, %3
  %gep.us.i = getelementptr i8, ptr %invariant.gep.us.i, i64 %i.r
  %i.s = load i64, ptr %gep.us.i, align 8, !tbaa !33
  %i.t = xor i64 %i.s, %i.q
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.t)
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.x = shl i32 %i.v, %i.w
  %i.y = sext i32 %i.x to i64
  %i.z = add i64 %.144.us.i, %i.y                 ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.n
  br i1 %exitcond.not.i, label %..loopexit_crit_edge.us.i, label %bb.c, !llvm.loop !194

..loopexit_crit_edge.us.i:                        ; preds = %bb.c
  %i.aa = add nuw nsw i64 %i.o, 8                 ; 2 uses
  %.not.us.i = icmp samesign ugt i64 %i.aa, %3
  br i1 %.not.us.i, label %.preheader.i.loopexit, label %.lr.ph.us.i, !llvm.loop !195

.preheader.i.loopexit:                            ; preds = %..loopexit_crit_edge.us.i
  %i.ab = and i64 %3, 2305843009213693944
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.loopexit, %bb.b
  %.035.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.ab, %.preheader.i.loopexit ] ; 2 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.z, %.preheader.i.loopexit ] ; 2 uses
  %i.ac = icmp samesign uge i64 %.035.lcssa.i, %3
  %.not65.i = icmp eq i8 %i.e, 0
  %or.cond.i = or i1 %.not65.i, %i.ac
  br i1 %or.cond.i, label %_ZN5faiss6rabitq23bitwise_xor_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit, label %.lr.ph.us61.i

.lr.ph.us61.i:                                    ; preds = %.preheader.i, %._crit_edge.us.i
  %.255.us.i = phi i64 [ %i.an, %._crit_edge.us.i ], [ %.0.lcssa.i, %.preheader.i ]
  %.13654.us.i = phi i64 [ %i.ao, %._crit_edge.us.i ], [ %.035.lcssa.i, %.preheader.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.13654.us.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !29
  %invariant.gep.us59.i = getelementptr i8, ptr %i.m, i64 %.13654.us.i
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.us61.i
  %indvars.iv72.i = phi i64 [ 0, %.lr.ph.us61.i ], [ %indvars.iv.next73.i, %bb.d ] ; 3 uses
  %.353.us.i = phi i64 [ %.255.us.i, %.lr.ph.us61.i ], [ %i.an, %bb.d ]
  %i.af = mul i64 %indvars.iv72.i, %3
  %gep.us60.i = getelementptr i8, ptr %invariant.gep.us59.i, i64 %i.af
  %i.ag = load i8, ptr %gep.us60.i, align 1, !tbaa !29
  %i.ah = xor i8 %i.ag, %i.ae
  %i.ai = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.ah)
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = trunc nuw nsw i64 %indvars.iv72.i to i32
  %i.al = shl i32 %i.aj, %i.ak
  %i.am = sext i32 %i.al to i64
  %i.an = add i64 %.353.us.i, %i.am               ; 3 uses
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next73.i, %i.n
  br i1 %exitcond75.not.i, label %._crit_edge.us.i, label %bb.d, !llvm.loop !196

._crit_edge.us.i:                                 ; preds = %bb.d
  %i.ao = add nuw i64 %.13654.us.i, 1             ; 2 uses
  %exitcond76.not.i = icmp eq i64 %i.ao, %3
  br i1 %exitcond76.not.i, label %_ZN5faiss6rabitq23bitwise_xor_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit, label %.lr.ph.us61.i, !llvm.loop !197

_ZN5faiss6rabitq23bitwise_xor_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit: ; preds = %._crit_edge.us.i, %.lr.ph48.i, %.preheader.i
  %.2.lcssa.i = phi i64 [ %.0.lcssa.i, %.preheader.i ], [ 0, %.lr.ph48.i ], [ %i.an, %._crit_edge.us.i ]
  %i.ap = shl i64 %.2.lcssa.i, 1
  %i.aq = sub i64 %i.k, %i.ap
  %i.ar = sitofp i64 %i.aq to float
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.at = load float, ptr %i.as, align 8, !tbaa !206
  %i.au = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.at, float 0.000000e+00)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !95 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !65  ; 3 uses
  %i.az = zext i8 %i.ay to i64                    ; 2 uses
  %.not52.i = icmp samesign ult i64 %3, 8
  br i1 %.not52.i, label %.preheader.i23, label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %bb.e
  %.not77.i = icmp eq i8 %i.ay, 0
  br i1 %.not77.i, label %.loopexit.i27.preheader, label %.lr.ph.us.i15

.loopexit.i27.preheader:                          ; preds = %.lr.ph56.i
  %i.ba = add nsw i64 %3, -8                      ; 2 uses
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ba, 24
  br i1 %min.iters.check, label %.loopexit.i27.preheader101, label %vector.ph

vector.ph:                                        ; preds = %.loopexit.i27.preheader
  %n.vec = and i64 %i.bc, 4611686018427387900     ; 3 uses
  %i.bd = shl i64 %n.vec, 3                       ; 2 uses
  %i.be = or disjoint i64 %i.bd, 8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi75 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %i.bf = shl i64 %index, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load = load <2 x i64>, ptr %i.bg, align 8, !tbaa !33
  %wide.load76 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !33
  %i.bi = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.bj = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load76)
  %i.bk = add <2 x i64> %i.bi, %vec.phi           ; 2 uses
  %i.bl = add <2 x i64> %i.bj, %vec.phi75         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bl, %i.bk
  %i.bn = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %.preheader.thread.i, label %.loopexit.i27.preheader101

.loopexit.i27.preheader101:                       ; preds = %.loopexit.i27.preheader, %middle.block
  %.ph = phi i64 [ 8, %.loopexit.i27.preheader ], [ %i.be, %middle.block ]
  %.04054.i.ph = phi i64 [ 0, %.loopexit.i27.preheader ], [ %i.bn, %middle.block ]
  %.04353.i.ph = phi i64 [ 0, %.loopexit.i27.preheader ], [ %i.bd, %middle.block ]
  br label %.loopexit.i27

.lr.ph.us.i15:                                    ; preds = %.lr.ph56.i, %..loopexit_crit_edge.us.i21
  %i.bo = phi i64 [ %i.cc, %..loopexit_crit_edge.us.i21 ], [ 8, %.lr.ph56.i ] ; 2 uses
  %.055.us.i = phi i64 [ %i.bz, %..loopexit_crit_edge.us.i21 ], [ 0, %.lr.ph56.i ]
  %.04054.us.i = phi i64 [ %i.cb, %..loopexit_crit_edge.us.i21 ], [ 0, %.lr.ph56.i ]
  %.04353.us.i = phi i64 [ %i.bo, %..loopexit_crit_edge.us.i21 ], [ 0, %.lr.ph56.i ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %.04353.us.i
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !33 ; 2 uses
  %invariant.gep.us.i16 = getelementptr i8, ptr %i.aw, i64 %.04353.us.i
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.us.i15
  %indvars.iv.i17 = phi i64 [ 0, %.lr.ph.us.i15 ], [ %indvars.iv.next.i19, %bb.f ] ; 3 uses
  %.151.us.i = phi i64 [ %.055.us.i, %.lr.ph.us.i15 ], [ %i.bz, %bb.f ]
  %i.br = mul i64 %indvars.iv.i17, %3
  %gep.us.i18 = getelementptr i8, ptr %invariant.gep.us.i16, i64 %i.br
  %i.bs = load i64, ptr %gep.us.i18, align 8, !tbaa !33
  %i.bt = and i64 %i.bs, %i.bq
  %i.bu = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bt)
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %i.bw = trunc nuw nsw i64 %indvars.iv.i17 to i32
  %i.bx = shl i32 %i.bv, %i.bw
  %i.by = sext i32 %i.bx to i64
  %i.bz = add i64 %.151.us.i, %i.by               ; 3 uses
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.i17, 1 ; 2 uses
  %exitcond.not.i20 = icmp eq i64 %indvars.iv.next.i19, %i.az
  br i1 %exitcond.not.i20, label %..loopexit_crit_edge.us.i21, label %bb.f, !llvm.loop !199

..loopexit_crit_edge.us.i21:                      ; preds = %bb.f
  %i.ca = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bq)
  %i.cb = add i64 %i.ca, %.04054.us.i             ; 2 uses
  %i.cc = add nuw nsw i64 %i.bo, 8                ; 2 uses
  %.not.us.i22 = icmp samesign ugt i64 %i.cc, %3
  br i1 %.not.us.i22, label %.preheader.i23.loopexit, label %.lr.ph.us.i15, !llvm.loop !200

.preheader.i23.loopexit:                          ; preds = %..loopexit_crit_edge.us.i21
  %i.cd = and i64 %3, 2305843009213693944
  br label %.preheader.i23

.preheader.i23:                                   ; preds = %.preheader.i23.loopexit, %bb.e
  %.043.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.cd, %.preheader.i23.loopexit ] ; 3 uses
  %.040.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.cb, %.preheader.i23.loopexit ] ; 3 uses
  %.0.lcssa.i24 = phi i64 [ 0, %bb.e ], [ %i.bz, %.preheader.i23.loopexit ] ; 3 uses
  %i.ce = icmp samesign ult i64 %.043.lcssa.i, %3
  br i1 %i.ce, label %.lr.ph67.i, label %_ZN5faiss6rabitq37bitwise_and_dot_product_with_popcountILNS_9SIMDLevelE0EEENS0_26BitwiseAndDotProductResultEPKhS5_mm.exit

.preheader.thread.i:                              ; preds = %.loopexit.i27, %middle.block
  %.lcssa72 = phi i64 [ %i.bn, %middle.block ], [ %i.dn, %.loopexit.i27 ] ; 2 uses
  %i.cf = and i64 %3, 2305843009213693944         ; 2 uses
  %.not = icmp eq i64 %i.cf, %3
  br i1 %.not, label %_ZN5faiss6rabitq37bitwise_and_dot_product_with_popcountILNS_9SIMDLevelE0EEENS0_26BitwiseAndDotProductResultEPKhS5_mm.exit, label %.lr.ph67.split.preheader.i

.lr.ph67.i:                                       ; preds = %.preheader.i23
  %.not78.i = icmp eq i8 %i.ay, 0
  br i1 %.not78.i, label %.lr.ph67.split.preheader.i, label %.lr.ph.us73.i

.lr.ph67.split.preheader.i:                       ; preds = %.lr.ph67.i, %.preheader.thread.i
  %.043.lcssa102111.i = phi i64 [ %.043.lcssa.i, %.lr.ph67.i ], [ %i.cf, %.preheader.thread.i ] ; 4 uses
  %.040.lcssa103110.i = phi i64 [ %.040.lcssa.i, %.lr.ph67.i ], [ %.lcssa72, %.preheader.thread.i ] ; 2 uses
  %.0.lcssa104109.i = phi i64 [ %.0.lcssa.i24, %.lr.ph67.i ], [ 0, %.preheader.thread.i ] ; 2 uses
  %i.cg = sub nsw i64 %3, %.043.lcssa102111.i     ; 3 uses
  %min.iters.check79 = icmp ult i64 %i.cg, 4
  br i1 %min.iters.check79, label %.lr.ph67.split.i.preheader, label %vector.ph80

vector.ph80:                                      ; preds = %.lr.ph67.split.preheader.i
  %n.vec81 = and i64 %i.cg, -4                    ; 3 uses
  %i.ch = add nsw i64 %.043.lcssa102111.i, %n.vec81
  %i.ci = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.040.lcssa103110.i, i64 0
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %.043.lcssa102111.i
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph80
  %index83 = phi i64 [ 0, %vector.ph80 ], [ %index.next88, %vector.body82 ] ; 2 uses
  %vec.phi84.a = phi <2 x i64> [ %i.ci, %vector.ph80 ], [ %i.cq, %vector.body82 ]
  %vec.phi85 = phi <2 x i64> [ zeroinitializer, %vector.ph80 ], [ %i.cr, %vector.body82 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %index83 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %wide.load86.a = load <2 x i8>, ptr %i.ck, align 1, !tbaa !29
  %wide.load87 = load <2 x i8>, ptr %i.cl, align 1, !tbaa !29
  %i.cm = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load86.a)
  %i.cn = tail call range(i8 0, 9) <2 x i8> @llvm.ctpop.v2i8(<2 x i8> %wide.load87)
  %i.co = zext nneg <2 x i8> %i.cm to <2 x i64>
  %i.cp = zext nneg <2 x i8> %i.cn to <2 x i64>
  %i.cq = add <2 x i64> %vec.phi84.a, %i.co       ; 2 uses
  %i.cr = add <2 x i64> %vec.phi85, %i.cp         ; 2 uses
  %index.next88 = add nuw i64 %index83, 4         ; 2 uses
  %i.cs = icmp eq i64 %index.next88, %n.vec81
  br i1 %i.cs, label %middle.block89, label %vector.body82, !llvm.loop !201

middle.block89:                                   ; preds = %vector.body82
  %bin.rdx90 = add <2 x i64> %i.cr, %i.cq
  %i.ct = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx90) ; 2 uses
  %cmp.n91 = icmp eq i64 %i.cg, %n.vec81
  br i1 %cmp.n91, label %_ZN5faiss6rabitq37bitwise_and_dot_product_with_popcountILNS_9SIMDLevelE0EEENS0_26BitwiseAndDotProductResultEPKhS5_mm.exit, label %.lr.ph67.split.i.preheader

.lr.ph67.split.i.preheader:                       ; preds = %.lr.ph67.split.preheader.i, %middle.block89
  %.14165.i.ph = phi i64 [ %.040.lcssa103110.i, %.lr.ph67.split.preheader.i ], [ %i.ct, %middle.block89 ]
  %.14464.i.ph = phi i64 [ %.043.lcssa102111.i, %.lr.ph67.split.preheader.i ], [ %i.ch, %middle.block89 ]
  br label %.lr.ph67.split.i

.lr.ph.us73.i:                                    ; preds = %.lr.ph67.i, %._crit_edge.us.i26
  %.266.us.i = phi i64 [ %i.de, %._crit_edge.us.i26 ], [ %.0.lcssa.i24, %.lr.ph67.i ]
  %.14165.us.i = phi i64 [ %i.dh, %._crit_edge.us.i26 ], [ %.040.lcssa.i, %.lr.ph67.i ]
  %.14464.us.i = phi i64 [ %i.di, %._crit_edge.us.i26 ], [ %.043.lcssa.i, %.lr.ph67.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %.14464.us.i
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !29  ; 2 uses
  %invariant.gep.us71.i = getelementptr i8, ptr %i.aw, i64 %.14464.us.i
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.us73.i
  %indvars.iv89.i = phi i64 [ 0, %.lr.ph.us73.i ], [ %indvars.iv.next90.i, %bb.g ] ; 3 uses
  %.363.us.i = phi i64 [ %.266.us.i, %.lr.ph.us73.i ], [ %i.de, %bb.g ]
  %i.cw = mul i64 %indvars.iv89.i, %3
  %gep.us72.i = getelementptr i8, ptr %invariant.gep.us71.i, i64 %i.cw
  %i.cx = load i8, ptr %gep.us72.i, align 1, !tbaa !29
  %i.cy = and i8 %i.cx, %i.cv
  %i.cz = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.cy)
  %i.da = zext nneg i8 %i.cz to i32
  %i.db = trunc nuw nsw i64 %indvars.iv89.i to i32
  %i.dc = shl i32 %i.da, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = add i64 %.363.us.i, %i.dd               ; 3 uses
  %indvars.iv.next90.i = add nuw nsw i64 %indvars.iv89.i, 1 ; 2 uses
  %exitcond92.not.i = icmp eq i64 %indvars.iv.next90.i, %i.az
  br i1 %exitcond92.not.i, label %._crit_edge.us.i26, label %bb.g, !llvm.loop !202

._crit_edge.us.i26:                               ; preds = %bb.g
  %i.df = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.cv)
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = add i64 %.14165.us.i, %i.dg             ; 2 uses
  %i.di = add nuw i64 %.14464.us.i, 1             ; 2 uses
  %exitcond93.not.i = icmp eq i64 %i.di, %3
  br i1 %exitcond93.not.i, label %_ZN5faiss6rabitq37bitwise_and_dot_product_with_popcountILNS_9SIMDLevelE0EEENS0_26BitwiseAndDotProductResultEPKhS5_mm.exit, label %.lr.ph.us73.i, !llvm.loop !203

.loopexit.i27:                                    ; preds = %.loopexit.i27.preheader101, %.loopexit.i27
  %i.dj = phi i64 [ %i.do, %.loopexit.i27 ], [ %.ph, %.loopexit.i27.preheader101 ] ; 2 uses
  %.04054.i = phi i64 [ %i.dn, %.loopexit.i27 ], [ %.04054.i.ph, %.loopexit.i27.preheader101 ]
  %.04353.i = phi i64 [ %i.dj, %.loopexit.i27 ], [ %.04353.i.ph, %.loopexit.i27.preheader101 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 %.04353.i
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !33
  %i.dm = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.dl)
  %i.dn = add i64 %i.dm, %.04054.i                ; 2 uses
  %i.do = add nuw nsw i64 %i.dj, 8                ; 2 uses
  %.not.i28 = icmp samesign ugt i64 %i.do, %3
  br i1 %.not.i28, label %.preheader.thread.i, label %.loopexit.i27, !llvm.loop !204

.lr.ph67.split.i:                                 ; preds = %.lr.ph67.split.i.preheader, %.lr.ph67.split.i
  %.14165.i = phi i64 [ %i.dt, %.lr.ph67.split.i ], [ %.14165.i.ph, %.lr.ph67.split.i.preheader ]
  %.14464.i = phi i64 [ %i.du, %.lr.ph67.split.i ], [ %.14464.i.ph, %.lr.ph67.split.i.preheader ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %.14464.i
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !29
  %i.dr = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.dq)
  %i.ds = zext nneg i8 %i.dr to i64
  %i.dt = add i64 %.14165.i, %i.ds                ; 2 uses
  %i.du = add nuw i64 %.14464.i, 1                ; 2 uses
  %exitcond94.not.i = icmp eq i64 %i.du, %3
  br i1 %exitcond94.not.i, label %_ZN5faiss6rabitq37bitwise_and_dot_product_with_popcountILNS_9SIMDLevelE0EEENS0_26BitwiseAndDotProductResultEPKhS5_mm.exit, label %.lr.ph67.split.i, !llvm.loop !205

_ZN5faiss6rabitq37bitwise_and_dot_product_with_popcountILNS_9SIMDLevelE0EEENS0_26BitwiseAndDotProductResultEPKhS5_mm.exit: ; preds = %._crit_edge.us.i26, %.lr.ph67.split.i, %middle.block89, %.preheader.i23, %.preheader.thread.i
  %.141.lcssa.i = phi i64 [ %.040.lcssa.i, %.preheader.i23 ], [ %.lcssa72, %.preheader.thread.i ], [ %i.dt, %.lr.ph67.split.i ], [ %i.ct, %middle.block89 ], [ %i.dh, %._crit_edge.us.i26 ]
  %.2.lcssa.i25 = phi i64 [ %.0.lcssa.i24, %.preheader.i23 ], [ 0, %.preheader.thread.i ], [ %.0.lcssa104109.i, %.lr.ph67.split.i ], [ %.0.lcssa104109.i, %middle.block89 ], [ %i.de, %._crit_edge.us.i26 ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dw = load float, ptr %i.dv, align 8, !tbaa !207
  %i.dx = uitofp i64 %.2.lcssa.i25 to float
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.dx, float 0.000000e+00)
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !208
  %i.eb = uitofp i64 %.141.lcssa.i to float
  %i.ec = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.eb, float %i.dy)
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ee = load float, ptr %i.ed, align 8, !tbaa !209
  %i.ef = fsub float %i.ec, %i.ee
  br label %bb.h

bb.h:                                             ; preds = %_ZN5faiss6rabitq37bitwise_and_dot_product_with_popcountILNS_9SIMDLevelE0EEENS0_26BitwiseAndDotProductResultEPKhS5_mm.exit, %_ZN5faiss6rabitq23bitwise_xor_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit
  %.014 = phi float [ %i.au, %_ZN5faiss6rabitq23bitwise_xor_dot_productILNS_9SIMDLevelE0EEEmPKhS4_mm.exit ], [ %i.ef, %_ZN5faiss6rabitq37bitwise_and_dot_product_with_popcountILNS_9SIMDLevelE0EEENS0_26BitwiseAndDotProductResultEPKhS5_mm.exit ]
  %i.eg = load float, ptr %2, align 1, !tbaa !80
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !93
  %i.ej = fadd float %i.eg, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.el = load float, ptr %i.ek, align 1, !tbaa !43
  %i.em = fmul float %i.el, -2.000000e+00
  %i.en = tail call float @llvm.fmuladd.f32(float %i.em, float %.014, float %i.ej) ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !54
  %i.eq = icmp eq i32 %i.ep, 1
  br i1 %i.eq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.er = fcmp ogt float %i.en, 0.000000e+00
  %.sroa.speculated = select i1 %i.er, float %i.en, float 0.000000e+00
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.et = load float, ptr %i.es, align 8, !tbaa !210
  %i.eu = fsub float %i.en, %i.et
  %i.ev = fmul float %i.eu, -5.000000e-01
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi float [ %.sroa.speculated, %bb.i ], [ %i.ev, %bb.j ]
  ret float %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i8> @llvm.ctpop.v2i8(<2 x i8>) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline norecurse nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { noinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { cold nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !39}
!1 = distinct !{!1, !39}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!"_ZTSN5faiss9QuantizerE", !11, i64 8, !11, i64 16}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 float", !13, i64 0}
!15 = !{!"_ZTSN5faiss10MetricTypeE", !7, i64 0}
!16 = !{!"_ZTSN5faiss14RaBitQuantizerE", !12, i64 0, !14, i64 24, !15, i64 32, !11, i64 40}
!17 = !{!16, !14, i64 24}
!18 = !{!12, !11, i64 8}
!19 = !{!12, !11, i64 16}
!20 = !{!"vtable pointer", !6, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!16, !15, i64 32}
!23 = !{!16, !11, i64 40}
!24 = !{!"p1 omnipotent char", !13, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !11, i64 8, !7, i64 16}
!28 = !{!27, !11, i64 8}
!29 = !{!7, !7, i64 0}
!30 = !{!27, !24, i64 0}
!31 = !{!14, !14, i64 0}
!32 = !{!24, !24, i64 0}
!33 = !{!11, !11, i64 0}
!34 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!8, !8, i64 0}
!37 = !{!"float", !7, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{i64 2, i64 -1, i64 -1, i1 true}
!41 = !{!40}
!42 = !{!"_ZTSN5faiss12rabitq_utils14SignBitFactorsE", !37, i64 0, !37, i64 4}
!43 = !{!42, !37, i64 4}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!47 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !46, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorIfSaIfEE", !48, i64 0}
!50 = !{!"_ZTSN5faiss12rabitq_utils16QueryFactorsDataE", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !49, i64 32}
!51 = !{!"_ZTSN5faiss16DistanceComputerE"}
!52 = !{!"_ZTSN5faiss25FlatCodesDistanceComputerE", !51, i64 0, !24, i64 8, !11, i64 16, !14, i64 24}
!53 = !{!"_ZTSN5faiss22RaBitQDistanceComputerE", !52, i64 0, !11, i64 32, !14, i64 40, !15, i64 48, !11, i64 56, !37, i64 64}
!54 = !{!53, !15, i64 48}
!55 = !{!53, !11, i64 32}
!56 = !{!53, !14, i64 40}
!57 = !{!53, !11, i64 56}
!58 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!59 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !58, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !59, i64 0}
!61 = !{!"_ZTSSt6vectorIhSaIhEE", !60, i64 0}
end_hunk_0
