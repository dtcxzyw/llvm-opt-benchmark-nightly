Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/HNSW?download=true
inline.NumInlined: 2707
inline.NumDeleted: 1075
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi:bb.a
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4, !tbaa !44
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4, !tbaa !44
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !304

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !44
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPiiEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !305

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !59    ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #33
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #31
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i32, ptr %3, align 4, !tbaa !44    ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec141, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert142 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat143 = shufflevector <4 x i32> %broadcast.splatinsert142, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cn = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x i32> %broadcast.splat143, ptr %next.gep146, align 4, !tbaa !44
  store <4 x i32> %broadcast.splat143, ptr %i.co, align 4, !tbaa !44
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cp, label %middle.block148, label %vector.body144, !llvm.loop !306

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.ck, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !44
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !307

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !308

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4, !tbaa !44
  store i32 %i.ct, ptr %i.ce, align 4, !tbaa !44
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !308

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4, !tbaa !44
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !44
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.dc) #32
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !59
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !58
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !108
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss4HNSW23add_links_starting_fromERNS_16DistanceComputerEiifiRNS_10LockVectorERNS_12VisitedTableEb(ptr noundef nonnull align 8 dereferenceable(5206) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i32 noundef %3, float noundef %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext %8) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5203
  %i.b = load i8, ptr %i.a, align 1, !tbaa !140, !range !118, !noundef !119
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5faiss12_GLOBAL__N_128add_links_starting_from_implINS_4CMinIflEEEEvRNS_4HNSWERNS_16DistanceComputerEiifiRNS_10LockVectorERNS_12VisitedTableEb(ptr noundef nonnull align 8 dereferenceable(5206) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i32 noundef %3, float noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext %8)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZN5faiss12_GLOBAL__N_128add_links_starting_from_implINS_4CMaxIflEEEEvRNS_4HNSWERNS_16DistanceComputerEiifiRNS_10LockVectorERNS_12VisitedTableEb(ptr noundef nonnull align 8 dereferenceable(5206) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i32 noundef %3, float noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext %8)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5faiss12_GLOBAL__N_128add_links_starting_from_implINS_4CMinIflEEEEvRNS_4HNSWERNS_16DistanceComputerEiifiRNS_10LockVectorERNS_12VisitedTableEb(ptr noundef nonnull align 8 dereferenceable(5206) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i32 noundef %3, float noundef %4, i32 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext %8) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"struct.std::__detail::_AllocNode.96", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"struct.std::__detail::_AllocNode.96", align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::priority_queue.6", align 8 ; 13 uses
  %12 = alloca %"struct.faiss::HNSW::NodeDistFartherT.8", align 4 ; 6 uses
  %13 = alloca %class.anon.84, align 8            ; 11 uses
  %i.c = alloca [4 x i32], align 16               ; 9 uses
  %i.d = alloca [4 x float], align 16             ; 8 uses
  %14 = alloca %"class.std::priority_queue.6", align 8 ; 13 uses
  %15 = alloca %"struct.faiss::HNSW::NodeDistFartherT.8", align 4 ; 6 uses
  %16 = alloca %class.anon.81, align 8            ; 11 uses
  %i.e = alloca [4 x i32], align 16               ; 9 uses
  %i.f = alloca [4 x float], align 16             ; 8 uses
  %17 = alloca %"class.std::priority_queue.47", align 8 ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %17, i8 0, i64 24, i1 false)
  %i.g = load ptr, ptr %7, align 8, !tbaa !46     ; 2 uses
  %.not.i = icmp eq ptr %i.g, getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5faiss18VisitedTableVectorE, i64 16)
  br i1 %.not.i, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %14, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  store float %4, ptr %15, align 4, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 %3, ptr %i.h, align 4, !tbaa !141
  invoke void @_ZNSt14priority_queueIN5faiss4HNSW16NodeDistFartherTINS0_4CMinIflEEEESt6vectorIS5_SaIS5_EESt4lessIS5_EE4pushERKS5_(ptr noundef nonnull align 8 dereferenceable(25) %14, ptr noundef nonnull align 4 dereferenceable(8) %15)
          to label %bb.c unwind label %.loopexit.split-lp189.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !144  ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !145
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %4, ptr %i.j, align 4, !tbaa !147
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %3, ptr %i.m, align 4, !tbaa !148
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.i, align 8, !tbaa !144
  %.pre.i.i.i = load ptr, ptr %17, align 8, !tbaa !149
  br label %.noexc.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %17, align 8, !tbaa !150   ; 5 uses
  %i.p = ptrtoint ptr %i.j to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %.invoke.i.i.i, label %_ZNKSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMinIflEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #33
          to label %.cont.i.i.i unwind label %.loopexit.split-lp189.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_ZNKSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMinIflEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.e
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i122.i.i.i = icmp ne i64 %i.x, 0
  call void @llvm.assume(i1 %.not.i.i.i122.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #31
          to label %.noexc126.i.i.i unwind label %.loopexit.split-lp189.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i ; 6 uses

.noexc126.i.i.i:                                  ; preds = %_ZNKSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMinIflEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r ; 2 uses
  store float %4, ptr %i.aa, align 4, !tbaa !147
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 %3, ptr %i.ab, align 4, !tbaa !148
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.j
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMinIflEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i.i.i.i, label %.lr.ph.i.i.i.i.i123.i.i.i

.lr.ph.i.i.i.i.i123.i.i.i:                        ; preds = %.noexc126.i.i.i, %.lr.ph.i.i.i.i.i123.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i123.i.i.i ], [ %i.z, %.noexc126.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i123.i.i.i ], [ %i.o, %.noexc126.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.ac = load i64, ptr %.0911.i.i.i.i.i.i.i.i, align 4, !alias.scope !321
  store i64 %i.ac, ptr %.012.i.i.i.i.i.i.i.i, align 4, !alias.scope !320
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.j
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMinIflEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i.i.i.i, label %.lr.ph.i.i.i.i.i123.i.i.i, !llvm.loop !7

_ZNSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMinIflEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i123.i.i.i, %.noexc126.i.i.i
  %.0.lcssa.i.i.i.i.i124.i.i.i = phi ptr [ %i.z, %.noexc126.i.i.i ], [ %i.ae, %.lr.ph.i.i.i.i.i123.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i124.i.i.i, i64 8 ; 2 uses
  %.not.i34.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i34.i.i.i.i.i, label %_ZNSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMinIflEEEESaIS5_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMinIflEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i.i.i.i
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !145
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.ai) #32
  br label %_ZNSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMinIflEEEESaIS5_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMinIflEEEESaIS5_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMinIflEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i.i.i.i
  store ptr %i.z, ptr %17, align 8, !tbaa !150
  store ptr %i.af, ptr %i.i, align 8, !tbaa !144
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.aj, ptr %i.k, align 8, !tbaa !145
  br label %.noexc.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMinIflEEEESaIS5_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i, %bb.d
  %i.ak = phi ptr [ %i.af, %_ZNSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMinIflEEEESaIS5_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.al = phi ptr [ %i.z, %_ZNSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMinIflEEEESaIS5_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i.i ], [ %.pre.i.i.i, %bb.d ] ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %.sroa.02.0.copyload.i.i.i.i.i = load i64, ptr %i.am, align 4 ; 2 uses
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3                 ; 2 uses
  %i.ar = add nsw i64 %i.aq, -1                   ; 2 uses
  %.sroa.012.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.02.0.copyload.i.i.i.i.i to i32
  %i.as = bitcast i32 %.sroa.012.0.extract.trunc.i.i.i.i.i.i to float
  %i.at = icmp sgt i64 %i.aq, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i.i, label %.loopexit193.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc.i.i.i, %bb.g
  %.020.i.i.i.i.i.i = phi i64 [ %.0921.i78.i.i.i.i.i, %bb.g ], [ %i.ar, %.noexc.i.i.i ] ; 3 uses
  %.0921.in.i.i.i.i.i.i = add nsw i64 %.020.i.i.i.i.i.i, -1
  %.0921.i78.i.i.i.i.i = lshr i64 %.0921.in.i.i.i.i.i.i, 1 ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0921.i78.i.i.i.i.i ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !147
  %i.aw = fcmp ogt float %i.av, %i.as
  br i1 %i.aw, label %bb.g, label %.loopexit193.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.al, i64 %.020.i.i.i.i.i.i
  %i.ay = load i64, ptr %i.au, align 4
  store i64 %i.ay, ptr %i.ax, align 4
  %.not.i.i.i.i.i = icmp eq i64 %.0921.i78.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit193.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !8

.loopexit193.i.i.i:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i, %.noexc.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %i.ar, %.noexc.i.i.i ], [ 0, %bb.g ], [ %.020.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.az = getelementptr inbounds [8 x i8], ptr %i.al, i64 %.0.lcssa.i.i.i.i.i.i
  store i64 %.sroa.02.0.copyload.i.i.i.i.i, ptr %i.az, align 4
  %i.ba = sext i32 %3 to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !152
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ba ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !66
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !158 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.be, %i.bg
  br i1 %.not.i.i.i, label %_ZN5faiss18VisitedTableVector3setEm.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.loopexit193.i.i.i
  store i8 %i.bg, ptr %i.bd, align 1, !tbaa !66
  br label %_ZN5faiss18VisitedTableVector3setEm.exit.i.i.i

_ZN5faiss18VisitedTableVector3setEm.exit.i.i.i:   ; preds = %bb.h, %.loopexit193.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.bi = load ptr, ptr %14, align 8, !tbaa !54   ; 2 uses
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !54 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZN5faiss18VisitedTableVector3setEm.exit81.thread181.i.i.i, label %.lr.ph208.i.i.i

.lr.ph208.i.i.i:                                  ; preds = %_ZN5faiss18VisitedTableVector3setEm.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bn = sext i32 %5 to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph208.i.i.i
  %i.bx = phi ptr [ %i.bj, %.lr.ph208.i.i.i ], [ %i.fp, %._crit_edge.i.i.i ] ; 3 uses
  %i.by = phi ptr [ %i.bi, %.lr.ph208.i.i.i ], [ %i.fo, %._crit_edge.i.i.i ] ; 13 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !53
  %i.ca = load ptr, ptr %17, align 8, !tbaa !149
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !147
  %i.cc = fcmp olt float %i.bz, %i.cb
  br i1 %i.cc, label %_ZN5faiss18VisitedTableVector3setEm.exit81.thread181.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !141
  %i.cf = ptrtoint ptr %i.bx to i64
  %i.cg = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = icmp sgt i64 %i.ch, 8
  br i1 %i.ci, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds i8, ptr %i.bx, i64 -8 ; 3 uses
  %.sroa.03.0.copyload.i.i.i.i.i.i = load i64, ptr %i.cj, align 4 ; 2 uses
  %i.ck = load i64, ptr %i.by, align 4
  store i64 %i.ck, ptr %i.cj, align 4
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.cl, %i.cg                    ; 2 uses
  %i.cn = ashr exact i64 %i.cm, 3                 ; 3 uses
  %i.co = add nsw i64 %i.cn, -1
  %i.cp = lshr i64 %i.co, 1
  %i.cq = icmp sgt i64 %i.cn, 2
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i
  %.036.i.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.k ] ; 2 uses
  %i.cr = shl i64 %.036.i.i.i.i.i.i.i, 1          ; 2 uses
  %i.cs = add i64 %i.cr, 2                        ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cs
  %i.cu = or disjoint i64 %i.cr, 1                ; 2 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cu
  %i.cw = load float, ptr %i.ct, align 4, !tbaa !53
  %i.cx = load float, ptr %i.cv, align 4, !tbaa !53
  %i.cy = fcmp olt float %i.cw, %i.cx
  %spec.select.i.i.i.i.i.i.i = select i1 %i.cy, i64 %i.cu, i64 %i.cs ; 4 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.by, i64 %spec.select.i.i.i.i.i.i.i
  %i.da = getelementptr inbounds [8 x i8], ptr %i.by, i64 %.036.i.i.i.i.i.i.i
  %i.db = load i64, ptr %i.cz, align 4
  store i64 %i.db, ptr %i.da, align 4
  %i.dc = icmp slt i64 %spec.select.i.i.i.i.i.i.i, %i.cp
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !3

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.k
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %bb.k ], [ %spec.select.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  %i.dd = and i64 %i.cm, 8
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.df = add nsw i64 %i.cn, -2
  %i.dg = ashr exact i64 %i.df, 1
  %i.dh = icmp eq i64 %.0.lcssa.i.i.i.i.i.i.i, %i.dg
  br i1 %i.dh, label %.thread.i.i.i.i.i.i, label %bb.m

.thread.i.i.i.i.i.i:                              ; preds = %bb.l
  %i.di = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i, 1
  %i.dj = or disjoint i64 %i.di, 1                ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.dj
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.dm = load i64, ptr %i.dk, align 4
  store i64 %i.dm, ptr %i.dl, align 4
  br label %.lr.ph.i.i.preheader.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss4HNSW16NodeDistFartherTINS2_4CMinIflEEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i.i.i.i.i, label %.lr.ph.i.i.preheader.i.i.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i.i.i:                 ; preds = %bb.m, %.thread.i.i.i.i.i.i
  %.1.i14.i.i.i.i.i.i = phi i64 [ %i.dj, %.thread.i.i.i.i.i.i ], [ %.0.lcssa.i.i.i.i.i.i.i, %bb.m ]
  %.in.i.i.i.i.i.i = trunc i64 %.sroa.03.0.copyload.i.i.i.i.i.i to i32
  %i.dn = bitcast i32 %.in.i.i.i.i.i.i to float
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.n, %.lr.ph.i.i.preheader.i.i.i.i.i.i
  %.020.i.i.i.i.i.i.i.i = phi i64 [ %.0921.i.i89.i.i.i.i.i.i, %bb.n ], [ %.1.i14.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i.i.i ] ; 3 uses
  %.0921.in.i.i.i.i.i.i.i.i = add nsw i64 %.020.i.i.i.i.i.i.i.i, -1
  %.0921.i.i89.i.i.i.i.i.i = lshr i64 %.0921.in.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.0921.i.i89.i.i.i.i.i.i ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !53
  %i.dq = fcmp olt float %i.dp, %i.dn
  br i1 %i.dq, label %bb.n, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss4HNSW16NodeDistFartherTINS2_4CMinIflEEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.by, i64 %.020.i.i.i.i.i.i.i.i
  %i.ds = load i64, ptr %i.do, align 4
  store i64 %i.ds, ptr %i.dr, align 4
  %.not10.i.i.i.i.i.i = icmp eq i64 %.0921.i.i89.i.i.i.i.i.i, 0
  br i1 %.not10.i.i.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss4HNSW16NodeDistFartherTINS2_4CMinIflEEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !4

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss4HNSW16NodeDistFartherTINS2_4CMinIflEEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i.i, %bb.m
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.m ], [ 0, %bb.n ], [ %.020.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.by, i64 %.0.lcssa.i.i.i.i.i.i.i.i
  store i64 %.sroa.03.0.copyload.i.i.i.i.i.i, ptr %i.dt, align 4
  %.pre.i.i.i.i = load ptr, ptr %i.bh, align 8, !tbaa !50
  br label %bb.o

.loopexit.split-lp189.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %_ZN5faiss18VisitedTableVector3setEm.exit81.thread181.i.i.i, %_ZNKSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMinIflEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i.i, %.invoke.i.i.i, %bb.b
  %lpad.loopexit.split-lp4.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp189.i.i.i

bb.o:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss4HNSW16NodeDistFartherTINS2_4CMinIflEEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i.i.i.i.i, %bb.j
  %i.du = phi ptr [ %i.bx, %bb.j ], [ %.pre.i.i.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss4HNSW16NodeDistFartherTINS2_4CMinIflEEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i.i.i.i.i ]
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -8
  store ptr %i.dv, ptr %i.bh, align 8, !tbaa !50
  %i.dw = sext i32 %i.ce to i64
  %i.dx = load ptr, ptr %i.bl, align 8, !tbaa !73
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !74 ; 2 uses
  %i.ea = load ptr, ptr %i.bm, align 8, !tbaa !59
  %i.eb = getelementptr [4 x i8], ptr %i.ea, i64 %i.bn ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !44
  %i.ed = sext i32 %i.ec to i64
  %i.ee = add i64 %i.dz, %i.ed                    ; 2 uses
  %i.ef = getelementptr i8, ptr %i.eb, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !44
  %i.eh = sext i32 %i.eg to i64
  %i.ei = add i64 %i.dz, %i.eh                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  store ptr %17, ptr %16, align 8, !tbaa !322
  store ptr %0, ptr %i.bo, align 8, !tbaa !161
  store ptr %14, ptr %i.bp, align 8, !tbaa !323
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.ej = icmp ult i64 %i.ee, %i.ei
  br i1 %i.ej, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %bb.t
  %.053200.i.i.i = phi i64 [ %i.fm, %bb.t ], [ %i.ee, %bb.o ] ; 2 uses
  %.054199.i.i.i = phi i32 [ %.2.ph.i.i.i, %bb.t ], [ 0, %bb.o ] ; 4 uses
  %i.ek = load ptr, ptr %i.bq, align 8, !tbaa !122
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.053200.i.i.i
  %i.em = load i32, ptr %i.el, align 4, !tbaa !44 ; 3 uses
  %i.en = icmp slt i32 %i.em, 0
  br i1 %i.en, label %_ZN5faiss18VisitedTableVector3setEm.exit119.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.eo = zext nneg i32 %i.em to i64
  %i.ep = load ptr, ptr %i.bb, align 8, !tbaa !152
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eo ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !66
  %i.es = load i8, ptr %i.bf, align 8, !tbaa !158 ; 2 uses
  %.not183.i.i.i = icmp eq i8 %i.er, %i.es
  br i1 %.not183.i.i.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 %i.es, ptr %i.eq, align 1, !tbaa !66
  %i.et = sext i32 %.054199.i.i.i to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.et
  store i32 %i.em, ptr %i.eu, align 4, !tbaa !44
  %i.ev = add nsw i32 %.054199.i.i.i, 1           ; 2 uses
  %i.ew = icmp eq i32 %i.ev, 4
  br i1 %i.ew, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.ex = load i32, ptr %i.e, align 16, !tbaa !44 ; 2 uses
  %i.ey = sext i32 %i.ex to i64
  %i.ez = load i32, ptr %i.br, align 4, !tbaa !44 ; 2 uses
  %i.fa = sext i32 %i.ez to i64
  %i.fb = load i32, ptr %i.bs, align 8, !tbaa !44 ; 2 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = load i32, ptr %i.bt, align 4, !tbaa !44 ; 2 uses
  %i.fe = sext i32 %i.fd to i64
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeImLb0EEEm:bb.a
_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeImLb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !182
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !182
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !184
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !68

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #33
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #33
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #31 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeImLb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !167  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !167
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !134 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !74
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !133  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !167
  store ptr %i.o, ptr %.02530, align 8, !tbaa !134
  store ptr %.02530, ptr %i.g, align 8, !tbaa !167
  store ptr %i.g, ptr %i.m, align 8, !tbaa !133
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !134
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !133
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !134
  store ptr %i.r, ptr %.02530, align 8, !tbaa !134
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !133
  store ptr %.02530, ptr %i.s, align 8, !tbaa !134
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !168    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !169
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #32
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !169
  store ptr %.0.i, ptr %0, align 8, !tbaa !168
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !139  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !182
  %i.f = add i64 %i.e, 1
  %i.g = uitofp i64 %i.f to double
  %i.h = load float, ptr %i.a, align 8, !tbaa !132
  %i.i = fpext float %i.h to double
  %i.j = fdiv double %i.g, %i.i
  %i.k = tail call double @llvm.ceil.f64(double %i.j)
  %i.l = fptoui double %i.k to i64
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.l)
  %i.m = tail call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %.sroa.speculated) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !169
  %.not = icmp eq i64 %i.m, %i.o
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.m)
          to label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #20 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !139
  invoke void @__cxa_rethrow() #33
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.s

bb.f:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #34
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

bb.h:                                             ; preds = %bb.a
  store i64 %i.c, ptr %i.b, align 8, !tbaa !139
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b, %bb.h
  ret void
}

declare noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #25

declare void @omp_unset_lock(ptr noundef) local_unnamed_addr #8

declare void @omp_set_lock(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5faiss12_GLOBAL__N_132search_neighbors_to_add_dispatchINS_4CMaxIflEEEEvRNS_4HNSWERNS_16DistanceComputerERSt14priority_queueINS4_15NodeDistCloserTIT_EESt6vectorISB_SaISB_EESt4lessINSE_10value_typeEEEifiRNS_12VisitedTableEb(ptr noundef nonnull align 8 dereferenceable(5206) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(25) %2, i32 noundef %3, float noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %6, i1 noundef zeroext %7) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.std::__detail::_AllocNode.96", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"struct.std::__detail::_AllocNode.96", align 8 ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"struct.std::__detail::_AllocNode.96", align 8 ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::priority_queue", align 8 ; 17 uses
  %12 = alloca %"struct.faiss::HNSW::NodeDistFartherT", align 4 ; 6 uses
  %13 = alloca %class.anon.115, align 8           ; 11 uses
  %i.d = alloca [4 x i32], align 16               ; 9 uses
  %i.e = alloca [4 x float], align 16             ; 8 uses
  %14 = alloca %"class.std::priority_queue", align 8 ; 17 uses
  %15 = alloca %"struct.faiss::HNSW::NodeDistFartherT", align 4 ; 6 uses
  %16 = alloca %class.anon.112, align 8           ; 11 uses
  %i.f = alloca [4 x i32], align 16               ; 9 uses
  %i.g = alloca [4 x float], align 16             ; 8 uses
  %i.h = load ptr, ptr %6, align 8, !tbaa !46     ; 2 uses
  %.not = icmp eq ptr %i.h, getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5faiss18VisitedTableVectorE, i64 16)
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %14, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  store float %4, ptr %15, align 4, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 %3, ptr %i.i, align 4, !tbaa !185
  invoke void @_ZNSt14priority_queueIN5faiss4HNSW16NodeDistFartherTINS0_4CMaxIflEEEESt6vectorIS5_SaIS5_EESt4lessIS5_EE4pushERKS5_(ptr noundef nonnull align 8 dereferenceable(25) %14, ptr noundef nonnull align 4 dereferenceable(8) %15)
          to label %bb.c unwind label %.loopexit.split-lp189.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !175  ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !181
  %.not.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %4, ptr %i.k, align 4, !tbaa !180
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %3, ptr %i.n, align 4, !tbaa !179
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.j, align 8, !tbaa !175
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !177
  br label %.noexc.i.i

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %2, align 8, !tbaa !176    ; 5 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %.invoke.i.i, label %_ZNKSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMaxIflEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

.invoke.i.i:                                      ; preds = %bb.z, %bb.v, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #33
          to label %.cont.i.i unwind label %.loopexit.split-lp189.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMaxIflEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i122.i.i = icmp ne i64 %i.y, 0
  call void @llvm.assume(i1 %.not.i.i.i122.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #31
          to label %.noexc126.i.i unwind label %.loopexit.split-lp189.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc126.i.i:                                    ; preds = %_ZNKSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMaxIflEEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s ; 2 uses
  store float %4, ptr %i.ab, align 4, !tbaa !180
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %3, ptr %i.ac, align 4, !tbaa !179
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.p, %i.k
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMaxIflEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i.i.i, label %.lr.ph.i.i.i.i.i123.i.i

.lr.ph.i.i.i.i.i123.i.i:                          ; preds = %.noexc126.i.i, %.lr.ph.i.i.i.i.i123.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i123.i.i ], [ %i.aa, %.noexc126.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i123.i.i ], [ %i.p, %.noexc126.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !403)
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.ad = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !404
  store i64 %i.ad, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !403
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.k
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMaxIflEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i.i.i, label %.lr.ph.i.i.i.i.i123.i.i, !llvm.loop !16

_ZNSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMaxIflEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i123.i.i, %.noexc126.i.i
  %.0.lcssa.i.i.i.i.i124.i.i = phi ptr [ %i.aa, %.noexc126.i.i ], [ %i.af, %.lr.ph.i.i.i.i.i123.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i124.i.i, i64 8 ; 2 uses
  %.not.i34.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i34.i.i.i.i, label %_ZNSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMaxIflEEEESaIS5_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMaxIflEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i.i.i
  %i.ah = load ptr, ptr %i.l, align 8, !tbaa !181
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.r
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.aj) #32
  br label %_ZNSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMaxIflEEEESaIS5_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMaxIflEEEESaIS5_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMaxIflEEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit33.i.i.i.i
  store ptr %i.aa, ptr %2, align 8, !tbaa !176
  store ptr %i.ag, ptr %i.j, align 8, !tbaa !175
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.ak, ptr %i.l, align 8, !tbaa !181
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %_ZNSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMaxIflEEEESaIS5_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, %bb.d
  %i.al = phi ptr [ %i.ag, %_ZNSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMaxIflEEEESaIS5_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.am = phi ptr [ %i.aa, %_ZNSt6vectorIN5faiss4HNSW15NodeDistCloserTINS0_4CMaxIflEEEESaIS5_EE17_M_realloc_insertIJRfRiEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i ], [ %.pre.i.i, %bb.d ] ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -8
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.an, align 4 ; 2 uses
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3                 ; 2 uses
  %i.as = add nsw i64 %i.ar, -1                   ; 2 uses
  %.sroa.012.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.02.0.copyload.i.i.i.i to i32
  %i.at = bitcast i32 %.sroa.012.0.extract.trunc.i.i.i.i.i to float
  %i.au = icmp sgt i64 %i.ar, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i, label %.loopexit193.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc.i.i, %bb.g
  %.020.i.i.i.i.i = phi i64 [ %.0921.i78.i.i.i.i, %bb.g ], [ %i.as, %.noexc.i.i ] ; 3 uses
  %.0921.in.i.i.i.i.i = add nsw i64 %.020.i.i.i.i.i, -1
  %.0921.i78.i.i.i.i = lshr i64 %.0921.in.i.i.i.i.i, 1 ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.0921.i78.i.i.i.i ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !180
  %i.ax = fcmp olt float %i.aw, %i.at
  br i1 %i.ax, label %bb.g, label %.loopexit193.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.am, i64 %.020.i.i.i.i.i
  %i.az = load i64, ptr %i.av, align 4
  store i64 %i.az, ptr %i.ay, align 4
  %.not.i.i.i.i = icmp eq i64 %.0921.i78.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.loopexit193.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !12

.loopexit193.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i, %.noexc.i.i
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.as, %.noexc.i.i ], [ %.020.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.g ]
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.am, i64 %.0.lcssa.i.i.i.i.i
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.ba, align 4
  %i.bb = sext i32 %3 to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !152
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !66
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !158 ; 2 uses
  %.not.i.i = icmp eq i8 %i.bf, %i.bh
  br i1 %.not.i.i, label %_ZN5faiss18VisitedTableVector3setEm.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.loopexit193.i.i
  store i8 %i.bh, ptr %i.be, align 1, !tbaa !66
  br label %_ZN5faiss18VisitedTableVector3setEm.exit.i.i

_ZN5faiss18VisitedTableVector3setEm.exit.i.i:     ; preds = %bb.h, %.loopexit193.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 7 uses
  %i.bj = load ptr, ptr %14, align 8, !tbaa !43   ; 2 uses
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !43 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN5faiss18VisitedTableVector3setEm.exit81.thread181.i.i, label %.lr.ph208.i.i

.lr.ph208.i.i:                                    ; preds = %_ZN5faiss18VisitedTableVector3setEm.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = sext i32 %5 to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 5188 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZN5faiss18VisitedTableVector3setEm.exit81.i.i, %.lr.ph208.i.i
  %i.ca = phi ptr [ %i.bk, %.lr.ph208.i.i ], [ %i.lw, %_ZN5faiss18VisitedTableVector3setEm.exit81.i.i ] ; 3 uses
  %i.cb = phi ptr [ %i.bj, %.lr.ph208.i.i ], [ %i.lv, %_ZN5faiss18VisitedTableVector3setEm.exit81.i.i ] ; 13 uses
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !41
  %i.cd = load ptr, ptr %2, align 8, !tbaa !177
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !180
  %i.cf = fcmp ogt float %i.cc, %i.ce
  br i1 %i.cf, label %_ZN5faiss18VisitedTableVector3setEm.exit81.thread181.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !185
  %i.ci = ptrtoint ptr %i.ca to i64
  %i.cj = ptrtoint ptr %i.cb to i64               ; 2 uses
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = icmp sgt i64 %i.ck, 8
  br i1 %i.cl, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.cm = getelementptr inbounds i8, ptr %i.ca, i64 -8 ; 3 uses
  %.sroa.03.0.copyload.i.i.i.i.i = load i64, ptr %i.cm, align 4 ; 2 uses
  %i.cn = load i64, ptr %i.cb, align 4
  store i64 %i.cn, ptr %i.cm, align 4
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.co, %i.cj                    ; 2 uses
  %i.cq = ashr exact i64 %i.cp, 3                 ; 3 uses
  %i.cr = add nsw i64 %i.cq, -1
  %i.cs = lshr i64 %i.cr, 1
  %i.ct = icmp sgt i64 %i.cq, 2
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i
  %.036.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.k ] ; 2 uses
  %i.cu = shl i64 %.036.i.i.i.i.i.i, 1            ; 2 uses
  %i.cv = add i64 %i.cu, 2                        ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cv
  %i.cx = or disjoint i64 %i.cu, 1                ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cx
  %i.cz = load float, ptr %i.cw, align 4, !tbaa !41
  %i.da = load float, ptr %i.cy, align 4, !tbaa !41
  %i.db = fcmp ogt float %i.cz, %i.da
  %spec.select.i.i.i.i.i.i = select i1 %i.db, i64 %i.cx, i64 %i.cv ; 4 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %spec.select.i.i.i.i.i.i
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %.036.i.i.i.i.i.i
  %i.de = load i64, ptr %i.dc, align 4
  store i64 %i.de, ptr %i.dd, align 4
  %i.df = icmp slt i64 %spec.select.i.i.i.i.i.i, %i.cs
  br i1 %i.df, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !0

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.k
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.k ], [ %spec.select.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 5 uses
  %i.dg = and i64 %i.cp, 8
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.di = add nsw i64 %i.cq, -2
  %i.dj = ashr exact i64 %i.di, 1
  %i.dk = icmp eq i64 %.0.lcssa.i.i.i.i.i.i, %i.dj
  br i1 %i.dk, label %.thread.i.i.i.i.i, label %bb.m

.thread.i.i.i.i.i:                                ; preds = %bb.l
  %i.dl = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i.i, 1
  %i.dm = or disjoint i64 %i.dl, 1                ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.dm
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.0.lcssa.i.i.i.i.i.i
  %i.dp = load i64, ptr %i.dn, align 4
  store i64 %i.dp, ptr %i.do, align 4
  br label %.lr.ph.i.i.preheader.i.i.i.i.i

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss4HNSW16NodeDistFartherTINS2_4CMaxIflEEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i.i.i.i, label %.lr.ph.i.i.preheader.i.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i.i:                   ; preds = %bb.m, %.thread.i.i.i.i.i
  %.1.i14.i.i.i.i.i = phi i64 [ %i.dm, %.thread.i.i.i.i.i ], [ %.0.lcssa.i.i.i.i.i.i, %bb.m ]
  %.in.i.i.i.i.i = trunc i64 %.sroa.03.0.copyload.i.i.i.i.i to i32
  %i.dq = bitcast i32 %.in.i.i.i.i.i to float
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.n, %.lr.ph.i.i.preheader.i.i.i.i.i
  %.020.i.i.i.i.i.i.i = phi i64 [ %.0921.i.i89.i.i.i.i.i, %bb.n ], [ %.1.i14.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i.i ] ; 3 uses
  %.0921.in.i.i.i.i.i.i.i = add nsw i64 %.020.i.i.i.i.i.i.i, -1
  %.0921.i.i89.i.i.i.i.i = lshr i64 %.0921.in.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.0921.i.i89.i.i.i.i.i ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !41
  %i.dt = fcmp ogt float %i.ds, %i.dq
  br i1 %i.dt, label %bb.n, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss4HNSW16NodeDistFartherTINS2_4CMaxIflEEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.du = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %.020.i.i.i.i.i.i.i
  %i.dv = load i64, ptr %i.dr, align 4
  store i64 %i.dv, ptr %i.du, align 4
  %.not10.i.i.i.i.i = icmp eq i64 %.0921.i.i89.i.i.i.i.i, 0
  br i1 %.not10.i.i.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss4HNSW16NodeDistFartherTINS2_4CMaxIflEEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss4HNSW16NodeDistFartherTINS2_4CMaxIflEEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i.i.i.i: ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i, %bb.m
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %bb.m ], [ %.020.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.n ]
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %.0.lcssa.i.i.i.i.i.i.i
  store i64 %.sroa.03.0.copyload.i.i.i.i.i, ptr %i.dw, align 4
  %.pre.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss4HNSW16NodeDistFartherTINS2_4CMaxIflEEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i.i.i.i, %bb.j
  %i.dx = phi ptr [ %i.ca, %bb.j ], [ %.pre.i.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss4HNSW16NodeDistFartherTINS2_4CMaxIflEEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterISt4lessIS7_EEEEvT_SI_SI_RT0_.exit.i.i.i.i ]
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -8
  store ptr %i.dy, ptr %i.bi, align 8, !tbaa !37
  %i.dz = sext i32 %i.ch to i64
  %i.ea = load ptr, ptr %i.bm, align 8, !tbaa !73
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dz
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !74 ; 2 uses
  %i.ed = load ptr, ptr %i.bn, align 8, !tbaa !59
  %i.ee = getelementptr [4 x i8], ptr %i.ed, i64 %i.bo ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !44
  %i.eg = sext i32 %i.ef to i64
  %i.eh = add i64 %i.ec, %i.eg                    ; 4 uses
  %i.ei = getelementptr i8, ptr %i.ee, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !44
  %i.ek = sext i32 %i.ej to i64
  %i.el = add i64 %i.ec, %i.ek                    ; 4 uses
  br i1 %7, label %.preheader187.i.i, label %bb.ai

.preheader187.i.i:                                ; preds = %bb.o
  %i.em = icmp ult i64 %i.eh, %i.el
  br i1 %i.em, label %.lr.ph206.i.i, label %_ZN5faiss18VisitedTableVector3setEm.exit81.i.i

.lr.ph206.i.i:                                    ; preds = %.preheader187.i.i, %bb.ah
  %.055205.i.i = phi i64 [ %i.kh, %bb.ah ], [ %i.eh, %.preheader187.i.i ] ; 2 uses
  %i.en = load ptr, ptr %i.br, align 8, !tbaa !122
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %.055205.i.i
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !44 ; 6 uses
  %i.eq = icmp slt i32 %i.ep, 0
  br i1 %i.eq, label %_ZN5faiss18VisitedTableVector3setEm.exit81.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph206.i.i
  %i.er = zext nneg i32 %i.ep to i64              ; 2 uses
  %i.es = load ptr, ptr %i.bc, align 8, !tbaa !152
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.er ; 2 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !66
  %i.ev = load i8, ptr %i.bg, align 8, !tbaa !158 ; 2 uses
  %.not184.i.i = icmp eq i8 %i.eu, %i.ev
  br i1 %.not184.i.i, label %bb.ah, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 %i.ev, ptr %i.et, align 1, !tbaa !66
  %i.ew = load ptr, ptr %1, align 8, !tbaa !46
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = invoke noundef float %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.er)
          to label %bb.r unwind label %.loopexit.split-lp189.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.r:                                             ; preds = %bb.q
  %i.fa = load ptr, ptr %i.j, align 8, !tbaa !175 ; 7 uses
  %i.fb = load ptr, ptr %2, align 8, !tbaa !176   ; 7 uses
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = ptrtoint ptr %i.fb to i64               ; 3 uses
  %i.fe = sub i64 %i.fc, %i.fd                    ; 3 uses
  %i.ff = ashr exact i64 %i.fe, 3                 ; 4 uses
  %i.fg = load i32, ptr %i.by, align 4, !tbaa !103
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp ult i64 %i.ff, %i.fh
  br i1 %i.fi, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fj = load float, ptr %i.fb, align 4, !tbaa !180
  %i.fk = fcmp ogt float %i.fj, %i.ez
  br i1 %i.fk, label %bb.t, label %bb.ah

end_hunk_1
begin_hunk_2_@_ZN5faiss4HNSW14add_with_locksERNS_16DistanceComputerEiiRNS_10LockVectorERNS_12VisitedTableEb:bb.a
  %i.o = phi i32 [ %i.l, %bb.f ], [ %i.j, %bb.b ] ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %_ZN5faiss12_GLOBAL__N_119add_with_locks_implINS_4CMinIflEEEEvRNS_4HNSWERNS_16DistanceComputerEiiRNS_10LockVectorERNS_12VisitedTableEb.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = sext i32 %3 to i64                       ; 2 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !172
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  tail call void @omp_set_lock(ptr noundef %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !102  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.v = zext nneg i32 %i.o to i64
  %i.w = load ptr, ptr %1, align 8, !tbaa !46
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef float %i.y(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.v), !inline_history !471
  store float %i.z, ptr %i.d, align 4, !tbaa !163
  %i.aa = icmp sgt i32 %i.u, %2
  br i1 %i.aa, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.h
  %.0.lcssa.i = phi i32 [ %i.u, %bb.h ], [ %2, %.lr.ph.i ] ; 2 uses
  %i.ab = icmp sgt i32 %.0.lcssa.i, -1
  br i1 %i.ab, label %.lr.ph37.i, label %._crit_edge.i

.lr.ph37.i:                                       ; preds = %.preheader.i
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !44
  %i.ad = load float, ptr %i.d, align 4, !tbaa !163
  br label %bb.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.035.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.u, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call fastcc void @_ZN5faiss12_GLOBAL__N_126greedy_update_nearest_implINS_4CMinIflEEEENS_9HNSWStatsERKNS_4HNSWERNS_16DistanceComputerEiRiRf(ptr dead_on_unwind noalias nonnull writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(5206) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.035.i, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.ae = add nsw i32 %.035.i, -1                 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, %2
  br i1 %i.af, label %.lr.ph.i, label %.preheader.i, !llvm.loop !472

bb.i:                                             ; preds = %bb.i, %.lr.ph37.i
  %.136.i = phi i32 [ %.0.lcssa.i, %.lr.ph37.i ], [ %i.ag, %bb.i ] ; 3 uses
  tail call fastcc void @_ZN5faiss12_GLOBAL__N_128add_links_starting_from_implINS_4CMinIflEEEEvRNS_4HNSWERNS_16DistanceComputerEiifiRNS_10LockVectorERNS_12VisitedTableEb(ptr noundef nonnull align 8 dereferenceable(5206) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %3, i32 noundef %i.ac, float noundef %i.ad, i32 noundef %.136.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext %6)
  %i.ag = add nsw i32 %.136.i, -1
  %.not.i = icmp eq i32 %.136.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.i, !llvm.loop !473

._crit_edge.i:                                    ; preds = %bb.i, %.preheader.i
  %i.ah = load ptr, ptr %4, align 8, !tbaa !172
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.q
  tail call void @omp_unset_lock(ptr noundef %i.ai)
  tail call void @__kmpc_critical(ptr nonnull @3, i32 %i.h, ptr nonnull @.gomp_critical_user_.var)
  %i.aj = load i32, ptr %i.t, align 8, !tbaa !102
  %i.ak = icmp sgt i32 %2, %i.aj
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i
  store i32 %2, ptr %i.t, align 8, !tbaa !102
  store i32 %3, ptr %i.i, align 8, !tbaa !101
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  tail call void @__kmpc_end_critical(ptr nonnull @3, i32 %i.h, ptr nonnull @.gomp_critical_user_.var)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %_ZN5faiss12_GLOBAL__N_119add_with_locks_implINS_4CMinIflEEEEvRNS_4HNSWERNS_16DistanceComputerEiiRNS_10LockVectorERNS_12VisitedTableEb.exit

_ZN5faiss12_GLOBAL__N_119add_with_locks_implINS_4CMinIflEEEEvRNS_4HNSWERNS_16DistanceComputerEiiRNS_10LockVectorERNS_12VisitedTableEb.exit: ; preds = %bb.g, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.v

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.al = load i32, ptr %i.i, align 8, !tbaa !101 ; 3 uses
  store i32 %i.al, ptr %i.a, align 4, !tbaa !44
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  tail call void @__kmpc_critical(ptr nonnull @3, i32 %i.h, ptr nonnull @.gomp_critical_user_.var)
  %i.an = load i32, ptr %i.i, align 8, !tbaa !101 ; 3 uses
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 5184
  store i32 %2, ptr %i.ap, align 8, !tbaa !102
  store i32 %3, ptr %i.i, align 8, !tbaa !101
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store i32 %i.an, ptr %i.a, align 4, !tbaa !44
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @__kmpc_end_critical(ptr nonnull @3, i32 %i.h, ptr nonnull @.gomp_critical_user_.var)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %i.aq = phi i32 [ %i.an, %bb.p ], [ %i.al, %bb.l ] ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %_ZN5faiss12_GLOBAL__N_119add_with_locks_implINS_4CMaxIflEEEEvRNS_4HNSWERNS_16DistanceComputerEiiRNS_10LockVectorERNS_12VisitedTableEb.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = sext i32 %3 to i64                      ; 2 uses
  %i.at = load ptr, ptr %4, align 8, !tbaa !172
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  tail call void @omp_set_lock(ptr noundef %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !102 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ax = zext nneg i32 %i.aq to i64
  %i.ay = load ptr, ptr %1, align 8, !tbaa !46
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef float %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ax), !inline_history !474
  store float %i.bb, ptr %i.b, align 4, !tbaa !163
  %i.bc = icmp sgt i32 %i.aw, %2
  br i1 %i.bc, label %.lr.ph.i18, label %.preheader.i12

.preheader.i12:                                   ; preds = %.lr.ph.i18, %bb.r
  %.0.lcssa.i13 = phi i32 [ %i.aw, %bb.r ], [ %2, %.lr.ph.i18 ] ; 2 uses
  %i.bd = icmp sgt i32 %.0.lcssa.i13, -1
  br i1 %i.bd, label %.lr.ph37.i15, label %._crit_edge.i14

.lr.ph37.i15:                                     ; preds = %.preheader.i12
  %i.be = load i32, ptr %i.a, align 4, !tbaa !44
  %i.bf = load float, ptr %i.b, align 4, !tbaa !163
  br label %bb.s

.lr.ph.i18:                                       ; preds = %bb.r, %.lr.ph.i18
  %.035.i19 = phi i32 [ %i.bg, %.lr.ph.i18 ], [ %i.aw, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call fastcc void @_ZN5faiss12_GLOBAL__N_126greedy_update_nearest_implINS_4CMaxIflEEEENS_9HNSWStatsERKNS_4HNSWERNS_16DistanceComputerEiRiRf(ptr dead_on_unwind noalias nonnull writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(5206) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.035.i19, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.bg = add nsw i32 %.035.i19, -1               ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, %2
  br i1 %i.bh, label %.lr.ph.i18, label %.preheader.i12, !llvm.loop !475

bb.s:                                             ; preds = %bb.s, %.lr.ph37.i15
  %.136.i16 = phi i32 [ %.0.lcssa.i13, %.lr.ph37.i15 ], [ %i.bi, %bb.s ] ; 3 uses
  tail call fastcc void @_ZN5faiss12_GLOBAL__N_128add_links_starting_from_implINS_4CMaxIflEEEEvRNS_4HNSWERNS_16DistanceComputerEiifiRNS_10LockVectorERNS_12VisitedTableEb(ptr noundef nonnull align 8 dereferenceable(5206) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %3, i32 noundef %i.be, float noundef %i.bf, i32 noundef %.136.i16, ptr noundef nonnull readonly align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext %6)
  %i.bi = add nsw i32 %.136.i16, -1
  %.not.i17 = icmp eq i32 %.136.i16, 0
  br i1 %.not.i17, label %._crit_edge.i14, label %bb.s, !llvm.loop !476

._crit_edge.i14:                                  ; preds = %bb.s, %.preheader.i12
  %i.bj = load ptr, ptr %4, align 8, !tbaa !172
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.as
  tail call void @omp_unset_lock(ptr noundef %i.bk)
  tail call void @__kmpc_critical(ptr nonnull @3, i32 %i.h, ptr nonnull @.gomp_critical_user_.var)
  %i.bl = load i32, ptr %i.av, align 8, !tbaa !102
  %i.bm = icmp sgt i32 %2, %i.bl
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i14
  store i32 %2, ptr %i.av, align 8, !tbaa !102
  store i32 %3, ptr %i.i, align 8, !tbaa !101
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i14
  tail call void @__kmpc_end_critical(ptr nonnull @3, i32 %i.h, ptr nonnull @.gomp_critical_user_.var)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZN5faiss12_GLOBAL__N_119add_with_locks_implINS_4CMaxIflEEEEvRNS_4HNSWERNS_16DistanceComputerEiiRNS_10LockVectorERNS_12VisitedTableEb.exit

_ZN5faiss12_GLOBAL__N_119add_with_locks_implINS_4CMaxIflEEEEvRNS_4HNSWERNS_16DistanceComputerEiiRNS_10LockVectorERNS_12VisitedTableEb.exit: ; preds = %bb.q, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.v

bb.v:                                             ; preds = %_ZN5faiss12_GLOBAL__N_119add_with_locks_implINS_4CMaxIflEEEEvRNS_4HNSWERNS_16DistanceComputerEiiRNS_10LockVectorERNS_12VisitedTableEb.exit, %_ZN5faiss12_GLOBAL__N_119add_with_locks_implINS_4CMinIflEEEEvRNS_4HNSWERNS_16DistanceComputerEiiRNS_10LockVectorERNS_12VisitedTableEb.exit
  ret void
}

; Function Attrs: convergent nounwind
declare void @__kmpc_critical(ptr, i32, ptr) local_unnamed_addr #22

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #20

; Function Attrs: convergent nounwind
declare void @__kmpc_end_critical(ptr, i32, ptr) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5faiss11hnsw_detail22search_from_candidatesERKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINS_4CMaxIfiEEEERNS_12VisitedTableERNS_9HNSWStatsEiiPKNS_16SearchParametersE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5206) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN5faiss12_GLOBAL__N_131search_from_candidates_dispatchINS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT_6is_maxENS2_IfiEENS_4CMinIfiEEE4typeEEERNS_12VisitedTableERNS_9HNSWStatsEiiPKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(5206) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %6, i32 noundef %7, ptr noundef %8)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN5faiss12_GLOBAL__N_131search_from_candidates_dispatchINS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT_6is_maxENS2_IfiEENS_4CMinIfiEEE4typeEEERNS_12VisitedTableERNS_9HNSWStatsEiiPKNS_16SearchParametersE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5206) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly %8) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"struct.std::__detail::_AllocNode.96", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 10 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = alloca [4 x i64], align 16               ; 10 uses
  %i.d = alloca [4 x float], align 16             ; 7 uses
  %i.e = alloca float, align 4                    ; 6 uses
  %i.f = alloca [4 x i64], align 16               ; 10 uses
  %i.g = alloca [4 x float], align 16             ; 7 uses
  %i.h = load ptr, ptr %4, align 8, !tbaa !46     ; 2 uses
  %.not = icmp eq ptr %i.h, getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5faiss18VisitedTableVectorE, i64 16)
  br i1 %.not, label %bb.b, label %_ZZN5faiss12_GLOBAL__N_131search_from_candidates_dispatchINS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT_6is_maxENS2_IfiEENS_4CMinIfiEEE4typeEEERNS_12VisitedTableERNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlTyRSE_E_clINS_18VisitedTableVectorEEEiST_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5192
  %.val.i.i = load i32, ptr %i.i, align 8, !tbaa !104 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5200
  %.val100.i.i = load i8, ptr %i.j, align 8, !tbaa !191, !range !118, !noundef !119 ; 2 uses
  %.not.i.i.i = icmp eq ptr %8, null
  br i1 %.not.i.i.i, label %_ZN5faiss12_GLOBAL__N_121extract_search_paramsERKNS_4HNSWEPKNS_16SearchParametersERbRiRPKNS_10IDSelectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__dynamic_cast(ptr nonnull readonly %8, ptr nonnull @_ZTIN5faiss16SearchParametersE, ptr nonnull @_ZTIN5faiss20SearchParametersHNSWE, i64 0) #20 ; 3 uses
  %.not15.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not15.i.i.i, label %_ZN5faiss12_GLOBAL__N_121extract_search_paramsERKNS_4HNSWEPKNS_16SearchParametersERbRiRPKNS_10IDSelectorE.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.m = load i8, ptr %i.l, align 4, !tbaa !195, !range !118, !noundef !119
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !196
  br label %_ZN5faiss12_GLOBAL__N_121extract_search_paramsERKNS_4HNSWEPKNS_16SearchParametersERbRiRPKNS_10IDSelectorE.exit.i.i

_ZN5faiss12_GLOBAL__N_121extract_search_paramsERKNS_4HNSWEPKNS_16SearchParametersERbRiRPKNS_10IDSelectorE.exit.i.i: ; preds = %bb.d, %bb.c
  %.0154.i.i = phi i8 [ %.val100.i.i, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %.0152.i.i = phi i32 [ %.val.i.i, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !197
  %i.r = freeze ptr %i.q                          ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !204
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i, label %.loopexit.i.i

_ZN5faiss12_GLOBAL__N_121extract_search_paramsERKNS_4HNSWEPKNS_16SearchParametersERbRiRPKNS_10IDSelectorE.exit.thread.i.i: ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !204
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.thread.i.i, label %.loopexit.i.i

.lr.ph.thread.i.i:                                ; preds = %_ZN5faiss12_GLOBAL__N_121extract_search_paramsERKNS_4HNSWEPKNS_16SearchParametersERbRiRPKNS_10IDSelectorE.exit.thread.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = load float, ptr %i.z, align 8, !tbaa !207
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %.lr.ph.split.us.preheader.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5faiss12_GLOBAL__N_121extract_search_paramsERKNS_4HNSWEPKNS_16SearchParametersERbRiRPKNS_10IDSelectorE.exit.i.i
  %i.af = load float, ptr %i.s, align 8, !tbaa !207 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %.not99.i.i = icmp eq ptr %i.r, null
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  br i1 %.not99.i.i, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i, %.lr.ph.thread.i.i
  %i.ak = phi ptr [ %i.ae, %.lr.ph.thread.i.i ], [ %i.aj, %.lr.ph.i.i ]
  %i.al = phi ptr [ %i.ad, %.lr.ph.thread.i.i ], [ %i.ai, %.lr.ph.i.i ]
  %i.am = phi ptr [ %i.ac, %.lr.ph.thread.i.i ], [ %i.ah, %.lr.ph.i.i ]
  %i.an = phi ptr [ %i.ab, %.lr.ph.thread.i.i ], [ %i.ag, %.lr.ph.i.i ]
  %i.ao = phi float [ %i.aa, %.lr.ph.thread.i.i ], [ %i.af, %.lr.ph.i.i ]
  %.1155315323.i.i = phi i8 [ %.val100.i.i, %.lr.ph.thread.i.i ], [ %.0154.i.i, %.lr.ph.i.i ]
  %.1153317322.i.i = phi i32 [ %.val.i.i, %.lr.ph.thread.i.i ], [ %.0152.i.i, %.lr.ph.i.i ]
  %i.ap = phi ptr [ %i.z, %.lr.ph.thread.i.i ], [ %i.s, %.lr.ph.i.i ] ; 2 uses
  %i.aq = phi ptr [ %i.w, %.lr.ph.thread.i.i ], [ %i.t, %.lr.ph.i.i ] ; 2 uses
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i, %.lr.ph.split.us.preheader.i.i
  %indvars.iv262.i.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i.i ], [ %indvars.iv.next263.i.i, %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i ] ; 3 uses
  %.0169210.us.i.i = phi float [ %i.ao, %.lr.ph.split.us.preheader.i.i ], [ %.1170.us.i.i, %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i ] ; 3 uses
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !59
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv262.i.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !44 ; 2 uses
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !208
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv262.i.i
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !163 ; 2 uses
  %i.ay = icmp sgt i32 %i.at, -1
  br i1 %i.ay, label %bb.e, label %.split.us.i.i

bb.e:                                             ; preds = %.lr.ph.split.us.i.i
  %.old.us.i.i = fcmp ogt float %.0169210.us.i.i, %i.ax
  br i1 %.old.us.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.az = load ptr, ptr %2, align 8, !tbaa !46
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.ax, i64 noundef %i.au), !inline_history !477
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load float, ptr %i.ap, align 8, !tbaa !207
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.1170.us.i.i = phi float [ %i.bc, %bb.g ], [ %.0169210.us.i.i, %bb.f ], [ %.0169210.us.i.i, %bb.e ]
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !152
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.au ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !66
  %i.bg = load i8, ptr %i.ak, align 8, !tbaa !158 ; 2 uses
  %.not198.us.i.i = icmp eq i8 %i.bf, %i.bg
  br i1 %.not198.us.i.i, label %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !66
  br label %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i

_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i:  ; preds = %bb.i, %bb.h
  %indvars.iv.next263.i.i = add nuw nsw i64 %indvars.iv262.i.i, 1 ; 2 uses
  %i.bh = load i32, ptr %i.aq, align 8, !tbaa !204 ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next263.i.i, %i.bi
  br i1 %i.bj, label %.lr.ph.split.us.i.i, label %.preheader199.i.i, !llvm.loop !478

.preheader199.i.i:                                ; preds = %_ZN5faiss18VisitedTableVector3setEm.exit.i.i, %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i
  %i.bk = phi ptr [ %i.aq, %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i ], [ %i.t, %_ZN5faiss18VisitedTableVector3setEm.exit.i.i ] ; 12 uses
  %i.bl = phi ptr [ %i.ap, %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i ], [ %i.s, %_ZN5faiss18VisitedTableVector3setEm.exit.i.i ] ; 3 uses
  %.1153316.i.i = phi i32 [ %.1153317322.i.i, %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i ], [ %.0152.i.i, %_ZN5faiss18VisitedTableVector3setEm.exit.i.i ] ; 2 uses
  %.1155314.i.i = phi i8 [ %.1155315323.i.i, %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i ], [ %.0154.i.i, %_ZN5faiss18VisitedTableVector3setEm.exit.i.i ]
  %.0177312.i.i = phi ptr [ null, %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i ], [ %i.r, %_ZN5faiss18VisitedTableVector3setEm.exit.i.i ] ; 5 uses
  %.lcssa206.i.i = phi i32 [ %i.bh, %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i ], [ %i.cy, %_ZN5faiss18VisitedTableVector3setEm.exit.i.i ]
  %i.bm = icmp sgt i32 %.lcssa206.i.i, 0
  br i1 %i.bm, label %.lr.ph243.i.i, label %.loopexit.i.i

.lr.ph243.i.i:                                    ; preds = %.preheader199.i.i
  %i.bn = trunc nuw i8 %.1155314.i.i to i1        ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 9 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = sext i32 %6 to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.not.i102.i.i = icmp eq ptr %.0177312.i.i, null ; 2 uses
  %.phi.trans.insert9.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br label %bb.o

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_ZN5faiss18VisitedTableVector3setEm.exit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN5faiss18VisitedTableVector3setEm.exit.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %.0169210.i.i = phi float [ %.1170.i.i, %_ZN5faiss18VisitedTableVector3setEm.exit.i.i ], [ %i.af, %.lr.ph.i.i ] ; 3 uses
  %i.cc = load ptr, ptr %i.ag, align 8, !tbaa !59
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.i.i
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !44 ; 2 uses
  %i.cf = sext i32 %i.ce to i64                   ; 3 uses
  %i.cg = load ptr, ptr %i.ah, align 8, !tbaa !208
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.i.i
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !163 ; 2 uses
  %i.cj = icmp sgt i32 %i.ce, -1
  br i1 %i.cj, label %bb.j, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.lr.ph.split.i.i, %.lr.ph.split.us.i.i
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !121
  %i.cl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ck, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersE, ptr noundef nonnull @.str.3, i32 noundef 922) #35 ; 0 uses
  tail call void @abort() #34
  unreachable

bb.j:                                             ; preds = %.lr.ph.split.i.i
  %i.cm = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = tail call noundef zeroext i1 %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef %i.cf), !inline_history !477
  %i.cp = fcmp ogt float %.0169210.i.i, %i.ci
  %or.cond193.i.i = select i1 %i.co, i1 %i.cp, i1 false
  br i1 %or.cond193.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cq = load ptr, ptr %2, align 8, !tbaa !46
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = tail call noundef zeroext i1 %i.cr(ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.ci, i64 noundef %i.cf), !inline_history !477
  br i1 %i.cs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ct = load float, ptr %i.s, align 8, !tbaa !207
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1170.i.i = phi float [ %i.ct, %bb.l ], [ %.0169210.i.i, %bb.k ], [ %.0169210.i.i, %bb.j ]
  %i.cu = load ptr, ptr %i.ai, align 8, !tbaa !152
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cf ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !66
  %i.cx = load i8, ptr %i.aj, align 8, !tbaa !158 ; 2 uses
  %.not198.i.i = icmp eq i8 %i.cw, %i.cx
  br i1 %.not198.i.i, label %_ZN5faiss18VisitedTableVector3setEm.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !66
  br label %_ZN5faiss18VisitedTableVector3setEm.exit.i.i

_ZN5faiss18VisitedTableVector3setEm.exit.i.i:     ; preds = %bb.n, %bb.m
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cy = load i32, ptr %i.t, align 8, !tbaa !204 ; 2 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next.i.i, %i.cz
  br i1 %i.da, label %.lr.ph.split.i.i, label %.preheader199.i.i, !llvm.loop !478

bb.o:                                             ; preds = %.thread180.i.i, %.lr.ph243.i.i
  %.0242.i.i = phi i32 [ 0, %.lr.ph243.i.i ], [ %.3.lcssa.i.i, %.thread180.i.i ] ; 4 uses
  %.090241.i.i = phi i32 [ 0, %.lr.ph243.i.i ], [ %i.jj, %.thread180.i.i ] ; 3 uses
  %.0163240.i.i = phi i32 [ %7, %.lr.ph243.i.i ], [ %.4167.lcssa.i.i, %.thread180.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !163
  %i.db = call noundef i32 @_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE7pop_minEPf(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.e)
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dc = load float, ptr %i.e, align 4, !tbaa !163 ; 2 uses
  %i.dd = load i32, ptr %i.bo, align 4, !tbaa !209 ; 3 uses
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i.i.i, label %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE11count_belowEf.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p
  %i.df = load ptr, ptr %i.bp, align 8, !tbaa !208 ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.dd to i64 ; 3 uses
  %min.iters.check397 = icmp ult i32 %i.dd, 8
  br i1 %min.iters.check397, label %scalar.ph396.preheader, label %vector.ph398

vector.ph398:                                     ; preds = %.lr.ph.i.i.i
  %n.vec399 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert400 = insertelement <4 x float> poison, float %i.dc, i64 0
  %broadcast.splat401 = shufflevector <4 x float> %broadcast.splatinsert400, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body402

vector.body402:                                   ; preds = %vector.body402, %vector.ph398
  %index403 = phi i64 [ 0, %vector.ph398 ], [ %index.next408, %vector.body402 ] ; 2 uses
  %vec.phi404 = phi <4 x i32> [ zeroinitializer, %vector.ph398 ], [ %i.dm, %vector.body402 ]
  %vec.phi405 = phi <4 x i32> [ zeroinitializer, %vector.ph398 ], [ %i.dn, %vector.body402 ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %index403 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load406 = load <4 x float>, ptr %i.dg, align 4, !tbaa !163
  %wide.load407 = load <4 x float>, ptr %i.dh, align 4, !tbaa !163
  %i.di = fcmp ogt <4 x float> %broadcast.splat401, %wide.load406
  %i.dj = fcmp ogt <4 x float> %broadcast.splat401, %wide.load407
  %i.dk = zext <4 x i1> %i.di to <4 x i32>
  %i.dl = zext <4 x i1> %i.dj to <4 x i32>
  %i.dm = add <4 x i32> %vec.phi404, %i.dk        ; 2 uses
  %i.dn = add <4 x i32> %vec.phi405, %i.dl        ; 2 uses
  %index.next408 = add nuw i64 %index403, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next408, %n.vec399
  br i1 %i.do, label %middle.block409, label %vector.body402, !llvm.loop !479

middle.block409:                                  ; preds = %vector.body402
  %bin.rdx410 = add <4 x i32> %i.dn, %i.dm
  %i.dp = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx410) ; 2 uses
  %cmp.n411 = icmp eq i64 %n.vec399, %wide.trip.count.i.i.i
  br i1 %cmp.n411, label %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE11count_belowEf.exit.i.i, label %scalar.ph396.preheader

scalar.ph396.preheader:                           ; preds = %.lr.ph.i.i.i, %middle.block409
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec399, %middle.block409 ]
  %.067.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.dp, %middle.block409 ]
  br label %scalar.ph396

scalar.ph396:                                     ; preds = %scalar.ph396.preheader, %scalar.ph396
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph396 ], [ %indvars.iv.i.i.i.ph, %scalar.ph396.preheader ] ; 2 uses
  %.067.i.i.i = phi i32 [ %spec.select.i.i.i, %scalar.ph396 ], [ %.067.i.i.i.ph, %scalar.ph396.preheader ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i.i.i
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !163
  %i.ds = fcmp ogt float %i.dc, %i.dr
  %i.dt = zext i1 %i.ds to i32
  %spec.select.i.i.i = add nuw nsw i32 %.067.i.i.i, %i.dt ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE11count_belowEf.exit.i.i, label %scalar.ph396, !llvm.loop !480

_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE11count_belowEf.exit.i.i: ; preds = %scalar.ph396, %middle.block409, %bb.p
  %.06.lcssa.i.i.i = phi i32 [ 0, %bb.p ], [ %i.dp, %middle.block409 ], [ %spec.select.i.i.i, %scalar.ph396 ]
  %.not.i.i = icmp slt i32 %.06.lcssa.i.i.i, %.1153316.i.i
  br i1 %.not.i.i, label %bb.q, label %.loopexit.sink.split.i.i

bb.q:                                             ; preds = %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE11count_belowEf.exit.i.i, %bb.o
  %i.du = sext i32 %i.db to i64
  %i.dv = load ptr, ptr %i.bq, align 8, !tbaa !73
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.du
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !74 ; 2 uses
  %i.dy = load ptr, ptr %i.br, align 8, !tbaa !59
  %i.dz = getelementptr [4 x i8], ptr %i.dy, i64 %i.bs ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !44
  %i.eb = sext i32 %i.ea to i64
  %i.ec = add i64 %i.dx, %i.eb                    ; 4 uses
  %i.ed = getelementptr i8, ptr %i.dz, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !44
  %i.ef = sext i32 %i.ee to i64
  %i.eg = add i64 %i.dx, %i.ef                    ; 3 uses
  %i.eh = icmp ult i64 %i.ec, %i.eg
  br i1 %i.eh, label %.lr.ph214.i.i, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  br label %._crit_edge237.i.i

.lr.ph214.i.i:                                    ; preds = %bb.q
  %i.ei = load ptr, ptr %i.bt, align 8, !tbaa !122
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.lr.ph214.i.i
  %.082213.i.i = phi i64 [ %i.ec, %.lr.ph214.i.i ], [ %i.ep, %bb.s ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.082213.i.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !44 ; 2 uses
  %i.el = icmp sgt i32 %i.ek, -1
  br i1 %i.el, label %bb.s, label %._crit_edge.i.i

bb.s:                                             ; preds = %bb.r
  %i.em = zext nneg i32 %i.ek to i64
  %i.en = load ptr, ptr %i.bu, align 8, !tbaa !152
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.em
  call void @llvm.prefetch.p0(ptr nonnull %i.eo, i32 0, i32 2, i32 1)
  %i.ep = add nuw i64 %.082213.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ep, %i.eg
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.r, !llvm.loop !481

._crit_edge.i.i:                                  ; preds = %bb.s, %bb.r
  %.083.lcssa.i.i = phi i64 [ %.082213.i.i, %bb.r ], [ %i.eg, %bb.s ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.eq = icmp ult i64 %i.ec, %.083.lcssa.i.i
  br i1 %i.eq, label %.lr.ph227.i.outer.preheader.i, label %._crit_edge237.i.i

.lr.ph227.i.outer.preheader.i:                    ; preds = %._crit_edge.i.i
  %i.er = load float, ptr %i.bl, align 8, !tbaa !207
  br label %.lr.ph227.i.outer.i

.preheader.i.i:                                   ; preds = %bb.ai
  %.not.i = icmp eq i32 %i.fh, 0
  br i1 %.not.i, label %._crit_edge237.i.i, label %.lr.ph236.preheader.i.i

.lr.ph236.preheader.i.i:                          ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.fh to i64
  br label %.lr.ph236.i.i

.lr.ph227.i.i:                                    ; preds = %.lr.ph227.i.outer.i, %bb.ai
end_hunk_2
begin_hunk_3_@_ZNK5faiss4HNSW6searchERNS_16DistanceComputerEPKNS_9IndexHNSWERNS_22ResultHandlerUnorderedIflEERNS_12VisitedTableEPKNS_16SearchParametersE:bb.a

_ZN5faiss12_GLOBAL__N_111search_implINS_4CMinIflEEEENS_9HNSWStatsERKNS_4HNSWERNS_16DistanceComputerEPKNS_9IndexHNSWERNS_22ResultHandlerUnorderedIflEERNS_12VisitedTableEPKNS_16SearchParametersE.exit: ; preds = %bb.dl, %bb.ce, %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit102.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE4pushEif(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = fcmp uno float %2, 0.000000e+00
  %.0 = select i1 %i.a, float f0xFF7FFFFF, float %2 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !233  ; 5 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !232
  %i.e = icmp eq i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !208  ; 4 uses
  br i1 %i.e, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre10 = load ptr, ptr %.phi.trans.insert9, align 8, !tbaa !59
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = load float, ptr %i.g, align 4, !tbaa !163
  %i.i = fcmp olt float %i.h, %.0
  br i1 %i.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59   ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !44
  %.not = icmp eq i32 %i.l, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !234
  %i.o = add nsw i32 %i.n, -1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !234
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = add nsw i32 %i.c, -1
  store i32 %i.p, ptr %i.b, align 4, !tbaa !233
  %i.q = sext i32 %i.c to i64                     ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.g, i64 -4 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.k, i64 -4 ; 5 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.q ; 3 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !163 ; 5 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.q ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !44   ; 3 uses
  %i.x = icmp ult i32 %i.c, 2
  br i1 %i.x, label %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.h
  %i.y = phi i64 [ %i.bb, %bb.h ], [ 3, %bb.e ]
  %i.z = phi i64 [ %i.ba, %bb.h ], [ 2, %bb.e ]   ; 7 uses
  %.062.i = phi i64 [ %.1.i, %bb.h ], [ 1, %bb.e ] ; 6 uses
  %i.aa = icmp eq i64 %i.z, %i.q
  br i1 %i.aa, label %.lr.ph._ZN5faiss4CMinIfiE4cmp2Effii.exit.thread_crit_edge.i, label %bb.f

.lr.ph._ZN5faiss4CMinIfiE4cmp2Effii.exit.thread_crit_edge.i: ; preds = %.lr.ph.i
  %.pre.i = load float, ptr %i.t, align 4, !tbaa !163
  br label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.z
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !163 ; 4 uses
  %i.ad = getelementptr [4 x i8], ptr %i.g, i64 %i.z
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !163 ; 5 uses
  %i.af = getelementptr [4 x i8], ptr %i.k, i64 %i.z
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !44 ; 3 uses
  %i.ah = fcmp olt float %i.ac, %i.ae
  br i1 %i.ah, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i

_ZN5faiss4CMinIfiE4cmp2Effii.exit.i:              ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.z
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !44
  %i.ak = fcmp oeq float %i.ac, %i.ae
  %i.al = icmp slt i32 %i.aj, %i.ag
  %i.am = and i1 %i.ak, %i.al
  br i1 %i.am, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i, label %bb.g

_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i:       ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i, %bb.f, %.lr.ph._ZN5faiss4CMinIfiE4cmp2Effii.exit.thread_crit_edge.i
  %i.an = phi float [ %.pre.i, %.lr.ph._ZN5faiss4CMinIfiE4cmp2Effii.exit.thread_crit_edge.i ], [ %i.ac, %bb.f ], [ %i.ac, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i ] ; 3 uses
  %i.ao = fcmp olt float %i.u, %i.an
  br i1 %i.ao, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i

_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i:            ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.z
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !44 ; 2 uses
  %i.ar = fcmp oeq float %i.u, %i.an
  %i.as = icmp slt i32 %i.w, %i.aq
  %i.at = and i1 %i.ar, %i.as
  br i1 %i.at, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i, label %bb.h

bb.g:                                             ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i
  %i.au = fcmp olt float %i.u, %i.ae
  br i1 %i.au, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i

_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i:            ; preds = %bb.g
  %i.av = fcmp oeq float %i.u, %i.ae
  %i.aw = icmp slt i32 %i.w, %i.ag
  %i.ax = and i1 %i.av, %i.aw
  br i1 %i.ax, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i, label %bb.h

bb.h:                                             ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i
  %.sink79.i = phi float [ %i.an, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i ], [ %i.ae, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i ]
  %.sink.i = phi i32 [ %i.aq, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i ], [ %i.ag, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i ]
  %.1.i = phi i64 [ %i.z, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i ], [ %i.y, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.062.i
  store float %.sink79.i, ptr %i.ay, align 4, !tbaa !163
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.062.i
  store i32 %.sink.i, ptr %i.az, align 4, !tbaa !44
  %i.ba = shl i64 %.1.i, 1                        ; 3 uses
  %i.bb = or disjoint i64 %i.ba, 1
  %i.bc = icmp ugt i64 %i.ba, %i.q
  br i1 %i.bc, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i, label %.lr.ph.i, !llvm.loop !22

_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i: ; preds = %bb.h, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i, %bb.g, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i
  %.0.lcssa.ph.i = phi i64 [ %.1.i, %bb.h ], [ %.062.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i ], [ %.062.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i ], [ %.062.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i ], [ %.062.i, %bb.g ]
  %.pre68.i = load float, ptr %i.t, align 4, !tbaa !163
  %.pre69.i = load i32, ptr %i.v, align 4, !tbaa !44
  br label %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit

_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit: ; preds = %bb.e, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i
  %i.bd = phi i32 [ %i.w, %bb.e ], [ %.pre69.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i ]
  %i.be = phi float [ %i.u, %bb.e ], [ %.pre68.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i ]
  %.0.lcssa.i = phi i64 [ 1, %bb.e ], [ %.0.lcssa.ph.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.0.lcssa.i
  store float %i.be, ptr %i.bf, align 4, !tbaa !163
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0.lcssa.i
  store i32 %i.bd, ptr %i.bg, align 4, !tbaa !44
  %.pre = load i32, ptr %i.b, align 4, !tbaa !233
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit
  %i.bh = phi ptr [ %i.k, %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit ], [ %.pre10, %._crit_edge ]
  %i.bi = phi i32 [ %.pre, %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit ], [ %i.c, %._crit_edge ]
  %i.bj = add nsw i32 %i.bi, 1                    ; 3 uses
  store i32 %i.bj, ptr %i.b, align 4, !tbaa !233
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.g, i64 -4 ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bh, i64 -4 ; 3 uses
  %i.bn = icmp ugt i32 %i.bj, 1
  br i1 %i.bn, label %.lr.ph.i5, label %_ZN5faiss9heap_pushINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit

.lr.ph.i5:                                        ; preds = %bb.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7
  %.025.i = phi i64 [ %i.bo, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7 ], [ %i.bk, %bb.i ] ; 5 uses
  %i.bo = lshr i64 %.025.i, 1                     ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !163 ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !44 ; 2 uses
  %i.bt = fcmp olt float %.0, %i.bq
  br i1 %i.bt, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i6

_ZN5faiss4CMinIfiE4cmp2Effii.exit.i6:             ; preds = %.lr.ph.i5
  %i.bu = fcmp oeq float %.0, %i.bq
  %i.bv = icmp slt i32 %1, %i.bs
  %i.bw = and i1 %i.bu, %i.bv
  br i1 %i.bw, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7, label %_ZN5faiss9heap_pushINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit

_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7:      ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i6, %.lr.ph.i5
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.025.i
  store float %i.bq, ptr %i.bx, align 4, !tbaa !163
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.025.i
  store i32 %i.bs, ptr %i.by, align 4, !tbaa !44
  %i.bz = icmp ugt i64 %.025.i, 3
  br i1 %i.bz, label %.lr.ph.i5, label %_ZN5faiss9heap_pushINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit, !llvm.loop !23

_ZN5faiss9heap_pushINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit: ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i6, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7, %bb.i
  %.0.lcssa.i4 = phi i64 [ %i.bk, %bb.i ], [ %i.bo, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7 ], [ %.025.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i6 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.0.lcssa.i4
  store float %.0, ptr %i.ca, align 4, !tbaa !163
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %.0.lcssa.i4
  store i32 %1, ptr %i.cb, align 4, !tbaa !44
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !234
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !234
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %_ZN5faiss9heap_pushINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN5faiss12_GLOBAL__N_131search_from_candidates_dispatchINS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT_6is_maxENS_4CMaxIfiEENS2_IfiEEE4typeEEERNS_12VisitedTableERNS_9HNSWStatsEiiPKNS_16SearchParametersE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5206) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %5, i32 noundef %6, ptr nofree noundef readonly %7) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.std::__detail::_AllocNode.96", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 10 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = alloca [4 x i64], align 16               ; 10 uses
  %i.d = alloca [4 x float], align 16             ; 7 uses
  %i.e = alloca float, align 4                    ; 6 uses
  %i.f = alloca [4 x i64], align 16               ; 10 uses
  %i.g = alloca [4 x float], align 16             ; 7 uses
  %i.h = load ptr, ptr %4, align 8, !tbaa !46     ; 2 uses
  %.not = icmp eq ptr %i.h, getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5faiss18VisitedTableVectorE, i64 16)
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5192
  %.val.i.i = load i32, ptr %i.i, align 8, !tbaa !104 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5200
  %.val100.i.i = load i8, ptr %i.j, align 8, !tbaa !191, !range !118, !noundef !119 ; 2 uses
  %.not.i.i.i = icmp eq ptr %7, null
  br i1 %.not.i.i.i, label %_ZN5faiss12_GLOBAL__N_121extract_search_paramsERKNS_4HNSWEPKNS_16SearchParametersERbRiRPKNS_10IDSelectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__dynamic_cast(ptr nonnull readonly %7, ptr nonnull @_ZTIN5faiss16SearchParametersE, ptr nonnull @_ZTIN5faiss20SearchParametersHNSWE, i64 0) #20 ; 3 uses
  %.not15.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not15.i.i.i, label %_ZN5faiss12_GLOBAL__N_121extract_search_paramsERKNS_4HNSWEPKNS_16SearchParametersERbRiRPKNS_10IDSelectorE.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.m = load i8, ptr %i.l, align 4, !tbaa !195, !range !118, !noundef !119
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !196
  br label %_ZN5faiss12_GLOBAL__N_121extract_search_paramsERKNS_4HNSWEPKNS_16SearchParametersERbRiRPKNS_10IDSelectorE.exit.i.i

_ZN5faiss12_GLOBAL__N_121extract_search_paramsERKNS_4HNSWEPKNS_16SearchParametersERbRiRPKNS_10IDSelectorE.exit.i.i: ; preds = %bb.d, %bb.c
  %.0154.i.i = phi i8 [ %.val100.i.i, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %.0152.i.i = phi i32 [ %.val.i.i, %bb.c ], [ %i.o, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !197
  %i.r = freeze ptr %i.q                          ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !234  ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i, label %.loopexit.i.i

_ZN5faiss12_GLOBAL__N_121extract_search_paramsERKNS_4HNSWEPKNS_16SearchParametersERbRiRPKNS_10IDSelectorE.exit.thread.i.i: ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !234  ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.thread.i.i, label %.loopexit.i.i

.lr.ph.thread.i.i:                                ; preds = %_ZN5faiss12_GLOBAL__N_121extract_search_paramsERKNS_4HNSWEPKNS_16SearchParametersERbRiRPKNS_10IDSelectorE.exit.thread.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = load float, ptr %i.z, align 8, !tbaa !207
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %.lr.ph.split.us.preheader.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5faiss12_GLOBAL__N_121extract_search_paramsERKNS_4HNSWEPKNS_16SearchParametersERbRiRPKNS_10IDSelectorE.exit.i.i
  %i.af = load float, ptr %i.s, align 8, !tbaa !207 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %.not99.i.i = icmp eq ptr %i.r, null
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  br i1 %.not99.i.i, label %.lr.ph.split.us.preheader.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.lr.ph.i.i, %.lr.ph.thread.i.i
  %i.ak = phi ptr [ %i.ae, %.lr.ph.thread.i.i ], [ %i.aj, %.lr.ph.i.i ]
  %i.al = phi ptr [ %i.ad, %.lr.ph.thread.i.i ], [ %i.ai, %.lr.ph.i.i ]
  %i.am = phi ptr [ %i.ac, %.lr.ph.thread.i.i ], [ %i.ah, %.lr.ph.i.i ]
  %i.an = phi ptr [ %i.ab, %.lr.ph.thread.i.i ], [ %i.ag, %.lr.ph.i.i ]
  %i.ao = phi float [ %i.aa, %.lr.ph.thread.i.i ], [ %i.af, %.lr.ph.i.i ]
  %.1155315323.i.i = phi i8 [ %.val100.i.i, %.lr.ph.thread.i.i ], [ %.0154.i.i, %.lr.ph.i.i ]
  %.1153317322.i.i = phi i32 [ %.val.i.i, %.lr.ph.thread.i.i ], [ %.0152.i.i, %.lr.ph.i.i ]
  %i.ap = phi ptr [ %i.z, %.lr.ph.thread.i.i ], [ %i.s, %.lr.ph.i.i ] ; 2 uses
  %i.aq = phi ptr [ %i.w, %.lr.ph.thread.i.i ], [ %i.t, %.lr.ph.i.i ] ; 2 uses
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i, %.lr.ph.split.us.preheader.i.i
  %indvars.iv262.i.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i.i ], [ %indvars.iv.next263.i.i, %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i ] ; 3 uses
  %.0169210.us.i.i = phi float [ %i.ao, %.lr.ph.split.us.preheader.i.i ], [ %.1170.us.i.i, %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i ] ; 3 uses
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !59
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv262.i.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !44 ; 2 uses
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !208
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv262.i.i
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !163 ; 2 uses
  %i.ay = icmp sgt i32 %i.at, -1
  br i1 %i.ay, label %bb.e, label %.split.us.i.i

bb.e:                                             ; preds = %.lr.ph.split.us.i.i
  %.old.us.i.i = fcmp olt float %.0169210.us.i.i, %i.ax
  br i1 %.old.us.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.az = load ptr, ptr %2, align 8, !tbaa !46
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.ax, i64 noundef %i.au), !inline_history !803
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load float, ptr %i.ap, align 8, !tbaa !207
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.1170.us.i.i = phi float [ %i.bc, %bb.g ], [ %.0169210.us.i.i, %bb.f ], [ %.0169210.us.i.i, %bb.e ]
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !152
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.au ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !66
  %i.bg = load i8, ptr %i.ak, align 8, !tbaa !158 ; 2 uses
  %.not198.us.i.i = icmp eq i8 %i.bf, %i.bg
  br i1 %.not198.us.i.i, label %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !66
  br label %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i

_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i:  ; preds = %bb.i, %bb.h
  %indvars.iv.next263.i.i = add nuw nsw i64 %indvars.iv262.i.i, 1 ; 2 uses
  %i.bh = load i32, ptr %i.aq, align 8, !tbaa !234 ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next263.i.i, %i.bi
  br i1 %i.bj, label %.lr.ph.split.us.i.i, label %.preheader199.i.i, !llvm.loop !804

.preheader199.i.i:                                ; preds = %_ZN5faiss18VisitedTableVector3setEm.exit.i.i, %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i
  %i.bk = phi ptr [ %i.aq, %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i ], [ %i.t, %_ZN5faiss18VisitedTableVector3setEm.exit.i.i ] ; 10 uses
  %i.bl = phi ptr [ %i.ap, %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i ], [ %i.s, %_ZN5faiss18VisitedTableVector3setEm.exit.i.i ] ; 3 uses
  %.1153316.i.i = phi i32 [ %.1153317322.i.i, %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i ], [ %.0152.i.i, %_ZN5faiss18VisitedTableVector3setEm.exit.i.i ] ; 2 uses
  %.1155314.i.i = phi i8 [ %.1155315323.i.i, %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i ], [ %.0154.i.i, %_ZN5faiss18VisitedTableVector3setEm.exit.i.i ]
  %.0177312.i.i = phi ptr [ null, %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i ], [ %i.r, %_ZN5faiss18VisitedTableVector3setEm.exit.i.i ] ; 5 uses
  %.lcssa206.i.i = phi i32 [ %i.bh, %_ZN5faiss18VisitedTableVector3setEm.exit.us.i.i ], [ %i.cx, %_ZN5faiss18VisitedTableVector3setEm.exit.i.i ] ; 2 uses
  %i.bm = icmp sgt i32 %.lcssa206.i.i, 0
  br i1 %i.bm, label %.lr.ph243.i.i, label %.loopexit.i.i

.lr.ph243.i.i:                                    ; preds = %.preheader199.i.i
  %i.bn = trunc nuw i8 %.1155314.i.i to i1        ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 9 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.not.i102.i.i = icmp eq ptr %.0177312.i.i, null ; 2 uses
  %.phi.trans.insert9.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  br label %bb.o

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_ZN5faiss18VisitedTableVector3setEm.exit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN5faiss18VisitedTableVector3setEm.exit.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %.0169210.i.i = phi float [ %.1170.i.i, %_ZN5faiss18VisitedTableVector3setEm.exit.i.i ], [ %i.af, %.lr.ph.i.i ] ; 3 uses
  %i.cb = load ptr, ptr %i.ag, align 8, !tbaa !59
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.i.i
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !44 ; 2 uses
  %i.ce = sext i32 %i.cd to i64                   ; 3 uses
  %i.cf = load ptr, ptr %i.ah, align 8, !tbaa !208
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i.i
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !163 ; 2 uses
  %i.ci = icmp sgt i32 %i.cd, -1
  br i1 %i.ci, label %bb.j, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.lr.ph.split.i.i, %.lr.ph.split.us.i.i
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !121
  %i.ck = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cj, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.22, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersE, ptr noundef nonnull @.str.3, i32 noundef 922) #35 ; 0 uses
  tail call void @abort() #34
  unreachable

bb.j:                                             ; preds = %.lr.ph.split.i.i
  %i.cl = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef zeroext i1 %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i64 noundef %i.ce), !inline_history !803
  %i.co = fcmp olt float %.0169210.i.i, %i.ch
  %or.cond193.i.i = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %or.cond193.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cp = load ptr, ptr %2, align 8, !tbaa !46
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = tail call noundef zeroext i1 %i.cq(ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.ch, i64 noundef %i.ce), !inline_history !803
  br i1 %i.cr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cs = load float, ptr %i.s, align 8, !tbaa !207
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1170.i.i = phi float [ %i.cs, %bb.l ], [ %.0169210.i.i, %bb.k ], [ %.0169210.i.i, %bb.j ]
  %i.ct = load ptr, ptr %i.ai, align 8, !tbaa !152
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ce ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !66
  %i.cw = load i8, ptr %i.aj, align 8, !tbaa !158 ; 2 uses
  %.not198.i.i = icmp eq i8 %i.cv, %i.cw
  br i1 %.not198.i.i, label %_ZN5faiss18VisitedTableVector3setEm.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !66
  br label %_ZN5faiss18VisitedTableVector3setEm.exit.i.i

_ZN5faiss18VisitedTableVector3setEm.exit.i.i:     ; preds = %bb.n, %bb.m
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cx = load i32, ptr %i.t, align 8, !tbaa !234 ; 2 uses
  %i.cy = sext i32 %i.cx to i64
  %i.cz = icmp slt i64 %indvars.iv.next.i.i, %i.cy
  br i1 %i.cz, label %.lr.ph.split.i.i, label %.preheader199.i.i, !llvm.loop !804

bb.o:                                             ; preds = %.thread180.i.i, %.lr.ph243.i.i
  %.0242.i.i = phi i32 [ 0, %.lr.ph243.i.i ], [ %.3.lcssa.i.i, %.thread180.i.i ] ; 4 uses
  %.090241.i.i = phi i32 [ 0, %.lr.ph243.i.i ], [ %i.jh, %.thread180.i.i ] ; 3 uses
  %.0163240.i.i = phi i32 [ %6, %.lr.ph243.i.i ], [ %.4167.lcssa.i.i, %.thread180.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !163
  %i.da = call noundef i32 @_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE7pop_minEPf(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.e)
  br i1 %i.bn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.db = load float, ptr %i.e, align 4, !tbaa !163 ; 2 uses
  %i.dc = load i32, ptr %i.bo, align 4, !tbaa !233 ; 3 uses
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.i.i.i, label %_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE11count_belowEf.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p
  %i.de = load ptr, ptr %i.bp, align 8, !tbaa !208 ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.dc to i64 ; 3 uses
  %min.iters.check66 = icmp ult i32 %i.dc, 8
  br i1 %min.iters.check66, label %scalar.ph65.preheader, label %vector.ph67

vector.ph67:                                      ; preds = %.lr.ph.i.i.i
  %n.vec68 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert69 = insertelement <4 x float> poison, float %i.db, i64 0
  %broadcast.splat70 = shufflevector <4 x float> %broadcast.splatinsert69, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph67
  %index72 = phi i64 [ 0, %vector.ph67 ], [ %index.next77, %vector.body71 ] ; 2 uses
  %vec.phi73 = phi <4 x i32> [ zeroinitializer, %vector.ph67 ], [ %i.dl, %vector.body71 ]
  %vec.phi74 = phi <4 x i32> [ zeroinitializer, %vector.ph67 ], [ %i.dm, %vector.body71 ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %index72 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load75 = load <4 x float>, ptr %i.df, align 4, !tbaa !163
  %wide.load76 = load <4 x float>, ptr %i.dg, align 4, !tbaa !163
  %i.dh = fcmp olt <4 x float> %broadcast.splat70, %wide.load75
  %i.di = fcmp olt <4 x float> %broadcast.splat70, %wide.load76
  %i.dj = zext <4 x i1> %i.dh to <4 x i32>
  %i.dk = zext <4 x i1> %i.di to <4 x i32>
  %i.dl = add <4 x i32> %vec.phi73, %i.dj         ; 2 uses
  %i.dm = add <4 x i32> %vec.phi74, %i.dk         ; 2 uses
  %index.next77 = add nuw i64 %index72, 8         ; 2 uses
  %i.dn = icmp eq i64 %index.next77, %n.vec68
  br i1 %i.dn, label %middle.block78, label %vector.body71, !llvm.loop !805

middle.block78:                                   ; preds = %vector.body71
  %bin.rdx79 = add <4 x i32> %i.dm, %i.dl
  %i.do = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx79) ; 2 uses
  %cmp.n80 = icmp eq i64 %n.vec68, %wide.trip.count.i.i.i
  br i1 %cmp.n80, label %_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE11count_belowEf.exit.i.i, label %scalar.ph65.preheader

scalar.ph65.preheader:                            ; preds = %.lr.ph.i.i.i, %middle.block78
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec68, %middle.block78 ]
  %.067.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.do, %middle.block78 ]
  br label %scalar.ph65

scalar.ph65:                                      ; preds = %scalar.ph65.preheader, %scalar.ph65
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph65 ], [ %indvars.iv.i.i.i.ph, %scalar.ph65.preheader ] ; 2 uses
  %.067.i.i.i = phi i32 [ %spec.select.i.i.i, %scalar.ph65 ], [ %.067.i.i.i.ph, %scalar.ph65.preheader ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i.i.i
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !163
  %i.dr = fcmp olt float %i.db, %i.dq
  %i.ds = zext i1 %i.dr to i32
  %spec.select.i.i.i = add nuw nsw i32 %.067.i.i.i, %i.ds ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE11count_belowEf.exit.i.i, label %scalar.ph65, !llvm.loop !806

_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE11count_belowEf.exit.i.i: ; preds = %scalar.ph65, %middle.block78, %bb.p
  %.06.lcssa.i.i.i = phi i32 [ 0, %bb.p ], [ %i.do, %middle.block78 ], [ %spec.select.i.i.i, %scalar.ph65 ]
  %.not.i.i = icmp slt i32 %.06.lcssa.i.i.i, %.1153316.i.i
  br i1 %.not.i.i, label %bb.q, label %.loopexit.sink.split.i.i

bb.q:                                             ; preds = %_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE11count_belowEf.exit.i.i, %bb.o
  %i.dt = sext i32 %i.da to i64
  %i.du = load ptr, ptr %i.bq, align 8, !tbaa !73
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dt
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !74 ; 2 uses
  %i.dx = load ptr, ptr %i.br, align 8, !tbaa !59 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !44
  %i.dz = sext i32 %i.dy to i64
  %i.ea = add i64 %i.dw, %i.dz                    ; 4 uses
  %i.eb = getelementptr i8, ptr %i.dx, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !44
  %i.ed = sext i32 %i.ec to i64
  %i.ee = add i64 %i.dw, %i.ed                    ; 3 uses
  %i.ef = icmp ult i64 %i.ea, %i.ee
  br i1 %i.ef, label %.lr.ph214.i.i, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  br label %._crit_edge237.i.i

.lr.ph214.i.i:                                    ; preds = %bb.q
  %i.eg = load ptr, ptr %i.bs, align 8, !tbaa !122
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.lr.ph214.i.i
  %.082213.i.i = phi i64 [ %i.ea, %.lr.ph214.i.i ], [ %i.en, %bb.s ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.082213.i.i
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !44 ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, -1
  br i1 %i.ej, label %bb.s, label %._crit_edge.i.i

bb.s:                                             ; preds = %bb.r
  %i.ek = zext nneg i32 %i.ei to i64
  %i.el = load ptr, ptr %i.bt, align 8, !tbaa !152
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ek
  call void @llvm.prefetch.p0(ptr nonnull %i.em, i32 0, i32 2, i32 1)
  %i.en = add nuw i64 %.082213.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.en, %i.ee
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.r, !llvm.loop !807

._crit_edge.i.i:                                  ; preds = %bb.s, %bb.r
  %.083.lcssa.i.i = phi i64 [ %.082213.i.i, %bb.r ], [ %i.ee, %bb.s ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.eo = icmp ult i64 %i.ea, %.083.lcssa.i.i
  br i1 %i.eo, label %.lr.ph227.i.outer.preheader.i, label %._crit_edge237.i.i

.lr.ph227.i.outer.preheader.i:                    ; preds = %._crit_edge.i.i
  %i.ep = load float, ptr %i.bl, align 8, !tbaa !207
  br label %.lr.ph227.i.outer.i

.preheader.i.i:                                   ; preds = %bb.ai
  %.not.i = icmp eq i32 %i.ff, 0
  br i1 %.not.i, label %._crit_edge237.i.i, label %.lr.ph236.preheader.i.i

.lr.ph236.preheader.i.i:                          ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.ff to i64
  br label %.lr.ph236.i.i

.lr.ph227.i.i:                                    ; preds = %.lr.ph227.i.outer.i, %bb.ai
  %i.eq = phi i8 [ %i.fb, %bb.ai ], [ %.pre39.i, %.lr.ph227.i.outer.i ] ; 3 uses
end_hunk_3
