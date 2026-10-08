Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/mesh_edgebreaker_encoder_impl?download=true
inline.NumInlined: 5079
inline.NumDeleted: 1534
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5draco26MeshEdgebreakerEncoderImplINS_31MeshEdgebreakerTraversalEncoderEE17InitAttributeDataEv:bb.a
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #18
  br label %_ZSt8_DestroyIN5draco26MeshEdgebreakerEncoderImplINS0_31MeshEdgebreakerTraversalEncoderEE13AttributeDataEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5draco26MeshEdgebreakerEncoderImplINS0_31MeshEdgebreakerTraversalEncoderEE13AttributeDataEEvPT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  tail call void @_ZN5draco24MeshAttributeCornerTableD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %i.aq) #17
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 304 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5draco26MeshEdgebreakerEncoderImplINS0_31MeshEdgebreakerTraversalEncoderEE13AttributeDataES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN5draco26MeshEdgebreakerEncoderImplINS0_31MeshEdgebreakerTraversalEncoderEE13AttributeDataES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN5draco26MeshEdgebreakerEncoderImplINS0_31MeshEdgebreakerTraversalEncoderEE13AttributeDataEEvPT_.exit.i.i.i.i
  store ptr %i.ab, ptr %i.r, align 8, !tbaa !129
  br label %_ZNSt6vectorIN5draco26MeshEdgebreakerEncoderImplINS0_31MeshEdgebreakerTraversalEncoderEE13AttributeDataESaIS4_EE6resizeEm.exit

_ZNSt6vectorIN5draco26MeshEdgebreakerEncoderImplINS0_31MeshEdgebreakerTraversalEncoderEE13AttributeDataESaIS4_EE6resizeEm.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPN5draco26MeshEdgebreakerEncoderImplINS0_31MeshEdgebreakerTraversalEncoderEE13AttributeDataES4_EvT_S6_RSaIT0_E.exit.i.i
  %or.cond = icmp sgt i32 %i.n, 1
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5draco26MeshEdgebreakerEncoderImplINS0_31MeshEdgebreakerTraversalEncoderEE13AttributeDataESaIS4_EE6resizeEm.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %wide.trip.count = and i64 %i.m, 2147483647
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %.01823 = phi i32 [ 0, %.lr.ph ], [ %.119, %bb.m ] ; 3 uses
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !147 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !200
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !202 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !208
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = sext i32 %.01823 to i64                 ; 2 uses
  %i.bc = load ptr, ptr %i.o, align 8, !tbaa !128 ; 3 uses
  %i.bd = getelementptr inbounds nuw [304 x i8], ptr %i.bc, i64 %i.bb ; 4 uses
  %i.be = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.be, ptr %i.bd, align 8, !tbaa !183
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 240 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !126 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 248 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !210
  %.not.i.i20 = icmp eq ptr %i.bi, %i.bg
  br i1 %.not.i.i20, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.i
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !210
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE5clearEv.exit

_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE5clearEv.exit: ; preds = %bb.i, %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.bj = load ptr, ptr %i.as, align 8, !tbaa !134 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !259
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !260
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %sext22 = shl i64 %i.bp, 30
  %i.bq = ashr i64 %sext22, 32                    ; 4 uses
  %i.br = icmp ugt i64 %i.bq, 2305843009213693951
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE5clearEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #20
  unreachable

bb.k:                                             ; preds = %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE5clearEv.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 256 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !127
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.bg to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = ashr exact i64 %i.bw, 2
  %i.by = icmp ult i64 %i.bx, %i.bq
  br i1 %i.by, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.i: ; preds = %bb.k
  %i.bz = shl nuw nsw i64 %i.bq, 2
  %i.ca = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #19 ; 3 uses
  %.not.i.i21 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i21, label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bw) #18
  %.pre.pre = load ptr, ptr %i.o, align 8, !tbaa !128
  %.pre26.pre = load ptr, ptr %i.d, align 8, !tbaa !147
  %.pre27.pre = load ptr, ptr %i.as, align 8, !tbaa !134
  br label %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.i
  %.pre27 = phi ptr [ %.pre27.pre, %bb.l ], [ %i.bj, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.i ]
  %.pre26 = phi ptr [ %.pre26.pre, %bb.l ], [ %i.at, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.i ]
  %.pre = phi ptr [ %.pre.pre, %bb.l ], [ %i.bc, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.i ]
  store ptr %i.ca, ptr %i.bf, align 8, !tbaa !126
  store ptr %i.ca, ptr %i.bh, align 8, !tbaa !210
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bq
  store ptr %i.cb, ptr %i.bs, align 8, !tbaa !127
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE7reserveEm.exit: ; preds = %bb.k, %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.cc = phi ptr [ %i.bj, %bb.k ], [ %.pre27, %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit.i ]
  %i.cd = phi ptr [ %i.at, %bb.k ], [ %.pre26, %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit.i ]
  %i.ce = phi ptr [ %i.bc, %bb.k ], [ %.pre, %_ZNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE13_M_deallocateEPS3_m.exit.i ]
  %i.cf = getelementptr inbounds nuw [304 x i8], ptr %i.ce, i64 %i.bb ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 288
  store i32 0, ptr %i.cg, align 8, !tbaa !495
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = tail call noundef zeroext i1 @_ZN5draco24MeshAttributeCornerTable17InitFromAttributeEPKNS_4MeshEPKNS_11CornerTableEPKNS_14PointAttributeE(ptr noundef nonnull align 8 dereferenceable(224) %i.ch, ptr noundef %i.cd, ptr noundef %i.cc, ptr noundef nonnull %i.ax) ; 0 uses
  %i.cj = add nsw i32 %.01823, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE7reserveEm.exit
  %.119 = phi i32 [ %i.cj, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE7reserveEm.exit ], [ %.01823, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.h, !llvm.loop !494

.loopexit:                                        ; preds = %bb.m, %_ZNSt6vectorIN5draco26MeshEdgebreakerEncoderImplINS0_31MeshEdgebreakerTraversalEncoderEE13AttributeDataESaIS4_EE6resizeEm.exit, %bb.a
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5draco31MeshEdgebreakerTraversalEncoder5StartEv(ptr noundef nonnull align 8 dereferenceable(148) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !284  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64                ; 2 uses
  %i.e = mul nuw nsw i64 %i.d, 56                 ; 2 uses
  %i.f = add nuw nsw i64 %i.e, 8                  ; 2 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #19 ; 5 uses
  store i64 %i.d, ptr %i.g, align 16
  %.ptr9 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.idx = phi i64 [ 8, %bb.b ], [ %.add, %bb.d ]  ; 5 uses
  %.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  invoke void @_ZN5draco14RAnsBitEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.ptr.ptr)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %.add = add nuw nsw i64 %.idx, 56
  %i.h = add nuw nsw i64 %.idx, 48
  %i.i = icmp eq i64 %i.h, %i.e
  br i1 %i.i, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !292  ; 4 uses
  store ptr %.ptr9, ptr %i.j, align 8, !tbaa !292
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_N5draco14RAnsBitEncoderESt14default_deleteIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %.idx.i.i.i.i.i = mul i64 %i.m, 56              ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNKSt14default_deleteIA_N5draco14RAnsBitEncoderEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, label %.preheader.preheader.i.i.i.i.i

.preheader.preheader.i.i.i.i.i:                   ; preds = %bb.f
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %.idx.i.i.i.i.i
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i
  %i.p = phi ptr [ %i.q, %.preheader.i.i.i.i.i ], [ %i.o, %.preheader.preheader.i.i.i.i.i ]
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -56 ; 3 uses
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.q) #17
  %i.r = icmp eq ptr %i.q, %i.k
  br i1 %i.r, label %_ZNKSt14default_deleteIA_N5draco14RAnsBitEncoderEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, label %.preheader.i.i.i.i.i

_ZNKSt14default_deleteIA_N5draco14RAnsBitEncoderEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i: ; preds = %.preheader.i.i.i.i.i, %bb.f
  %i.s = add i64 %.idx.i.i.i.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.l, i64 noundef %i.s) #18
  br label %_ZNSt10unique_ptrIA_N5draco14RAnsBitEncoderESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_N5draco14RAnsBitEncoderESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_N5draco14RAnsBitEncoderEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, %bb.e
  %i.t = load i32, ptr %i.a, align 8, !tbaa !284
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %.loopexit

bb.g:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = icmp eq i64 %.idx, 8
  br i1 %i.w, label %.loopexit16, label %.preheader

.preheader:                                       ; preds = %bb.g, %.preheader
  %.idx10 = phi i64 [ %.add11, %.preheader ], [ %.idx, %bb.g ] ; 2 uses
  %.add11 = add nsw i64 %.idx10, -56              ; 2 uses
  %1 = getelementptr i8, ptr %i.g, i64 %.idx10
  %.ptr13 = getelementptr i8, ptr %1, i64 -56
  tail call void @_ZN5draco14RAnsBitEncoderD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.ptr13) #17
  %i.x = icmp eq i64 %.add11, 8
  br i1 %i.x, label %.loopexit16, label %.preheader

.loopexit16:                                      ; preds = %.preheader, %bb.g
  tail call void @_ZdaPvm(ptr noundef nonnull %i.g, i64 noundef %i.f) #18
  resume { ptr, i32 } %i.v

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIA_N5draco14RAnsBitEncoderESt14default_deleteIS2_EED2Ev.exit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %_ZNSt10unique_ptrIA_N5draco14RAnsBitEncoderESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !292
  %i.z = getelementptr inbounds nuw [56 x i8], ptr %i.y, i64 %indvars.iv
  tail call void @_ZN5draco14RAnsBitEncoder13StartEncodingEv(ptr noundef nonnull align 8 dereferenceable(56) %i.z)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aa = load i32, ptr %i.a, align 8, !tbaa !284
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv.next, %i.ab
  br i1 %i.ac, label %.lr.ph, label %.loopexit, !llvm.loop !496

.loopexit:                                        ; preds = %.lr.ph, %_ZNSt10unique_ptrIA_N5draco14RAnsBitEncoderESt14default_deleteIS2_EED2Ev.exit, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZNK5draco11CornerTable13IsDegeneratedENS_9IndexTypeIjNS_19FaceIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(168), ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define weak_odr noundef zeroext i1 @_ZNK5draco26MeshEdgebreakerEncoderImplINS_31MeshEdgebreakerTraversalEncoderEE25FindInitFaceConfigurationENS_9IndexTypeIjNS_19FaceIndex_tag_type_EEEPNS3_IjNS_21CornerIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(601) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !286    ; 2 uses
  %i.b = mul i32 %i.a, 3                          ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp eq i32 %i.a, 1431655765
  br i1 %i.g, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.i = zext i32 %i.b to i64                     ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !126, !noalias !508 ; 4 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !288, !noalias !508
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !260, !noalias !509 ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !290, !noalias !509
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !211
  %.not = icmp eq i32 %i.s, -1
  br i1 %.not, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.1, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.2
  %.sroa.017.042.ph = phi i32 [ %spec.select.i.1, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.2 ], [ %spec.select.i, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.1 ], [ %i.b, %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %.sroa.017.042 = phi i32 [ %i.ac, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %.sroa.017.042.ph, %.lr.ph.preheader ] ; 5 uses
  %i.t = urem i32 %.sroa.017.042, 3
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i: ; preds = %.lr.ph
  %i.u = add i32 %.sroa.017.042, -1
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %.lr.ph
  %i.v = add i32 %.sroa.017.042, 2                ; 2 uses
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i
  %.sink.i9.i = phi i32 [ %i.u, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread7.i ], [ %i.v, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i ]
  %i.x = zext i32 %.sink.i9.i to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !288, !noalias !510 ; 3 uses
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit

_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i
  %i.ab = urem i32 %i.z, 3
  %.not.i1.i = icmp eq i32 %i.ab, 0
  %. = select i1 %.not.i1.i, i32 2, i32 -1
  %i.ac = add i32 %i.z, %.                        ; 2 uses
  %.not32 = icmp eq i32 %i.ac, -1
  br i1 %.not32, label %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, label %.lr.ph, !llvm.loop !507

_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.i, %_ZNK5draco11CornerTable10SwingRightENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.ad = urem i32 %.sroa.017.042, 3
  %.not.i = icmp eq i32 %i.ad, 0
  %.sink.i.v = select i1 %.not.i, i32 2, i32 -1
  %.sink.i = add i32 %.sink.i.v, %.sroa.017.042
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit: ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.ae = add nuw i32 %i.b, 1                     ; 2 uses
  %i.af = urem i32 %i.ae, 3
  %.not.i10 = icmp eq i32 %i.af, 0
  %i.ag = add i32 %i.b, -2
  %spec.select.i = select i1 %.not.i10, i32 %i.ag, i32 %i.ae ; 6 uses
  %i.ah = icmp eq i32 %spec.select.i, -1
  br i1 %i.ah, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.1

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.1: ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit
  %i.ai = zext i32 %spec.select.i to i64          ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !288, !noalias !508
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.1

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.1: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.1
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ai
  %i.an = load i32, ptr %i.am, align 4, !tbaa !290, !noalias !509
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !211
  %.not.1 = icmp eq i32 %i.aq, -1
  br i1 %.not.1, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.1, label %.lr.ph.preheader

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.1: ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.1
  %i.ar = add nuw i32 %spec.select.i, 1           ; 2 uses
  %i.as = urem i32 %i.ar, 3
  %.not.i10.1 = icmp eq i32 %i.as, 0
  %i.at = add i32 %spec.select.i, -2
  %spec.select.i.1 = select i1 %.not.i10.1, i32 %i.at, i32 %i.ar ; 6 uses
  %i.au = icmp eq i32 %spec.select.i.1, -1
  br i1 %i.au, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.2

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.2: ; preds = %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.1
  %i.av = zext i32 %spec.select.i.1 to i64        ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !288, !noalias !508
  %i.ay = icmp eq i32 %i.ax, -1
  br i1 %i.ay, label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread, label %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.2

_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.2: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.2
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.av
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !290, !noalias !509
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !211
  %.not.2 = icmp eq i32 %i.bd, -1
  br i1 %.not.2, label %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.2, label %.lr.ph.preheader

_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.2: ; preds = %_ZNK5draco11CornerTable6VertexENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.2
  %i.be = add nuw i32 %spec.select.i.1, 1         ; 2 uses
  %i.bf = urem i32 %i.be, 3
  %.not.i10.2 = icmp eq i32 %i.bf, 0
  %i.bg = add i32 %spec.select.i.1, -2
  %spec.select.i.2 = select i1 %.not.i10.2, i32 %i.bg, i32 %i.be
  br label %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread

_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.thread: ; preds = %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %bb.a, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.1, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.1, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.2, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.2
  %.sroa.024.039.lcssa.sink = phi i32 [ %spec.select.i.2, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.2 ], [ %.sink.i, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ -1, %bb.a ], [ %i.b, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ -1, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ %spec.select.i, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.1 ], [ -1, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.1 ], [ %spec.select.i.1, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.2 ]
  %i.bh = phi i1 [ true, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.2 ], [ false, %_ZNK5draco11CornerTable8PreviousENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ false, %bb.a ], [ false, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ false, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit ], [ false, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.1 ], [ false, %_ZNK5draco11CornerTable4NextENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.1 ], [ false, %_ZNK5draco11CornerTable8OppositeENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE.exit.2 ]
  store i32 %.sroa.024.039.lcssa.sink, ptr %2, align 4, !tbaa !288
  ret i1 %i.bh
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef zeroext i1 @_ZN5draco26MeshEdgebreakerEncoderImplINS_31MeshEdgebreakerTraversalEncoderEE28EncodeConnectivityFromCornerENS_9IndexTypeIjNS_21CornerIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(601) %0, ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.draco::IndexType", align 4  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !126  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 12 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !210  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !210
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE5clearEv.exit

_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.e = phi ptr [ %i.d, %bb.a ], [ %i.b, %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i.i ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !127
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE5clearEv.exit
  %i.h = load i32, ptr %1, align 4, !tbaa !288
  store i32 %i.h, ptr %i.e, align 4, !tbaa !288
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !210
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE9push_backERKS3_.exit

bb.c:                                             ; preds = %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE5clearEv.exit
  %i.j = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775804
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
end_hunk_0
