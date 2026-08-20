inline.NumInlined: 8588
inline.NumDeleted: 2636
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 102
loop-unroll.NumUnrolled: 307
begin_hunk_0_@_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_:bb.a

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.061 = phi i64 [ %i.ba, %.lr.ph ], [ 0, %bb.a ] ; 7 uses
  %.sroa.047.060 = phi ptr [ %i.bb, %.lr.ph ], [ %i.a, %bb.a ] ; 7 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !93
  %i.p = ptrtoint ptr %.sroa.047.060 to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2
  %i.t = icmp eq i64 %.061, %i.s
  %i.u = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.137, i32 noundef 268, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.t) ; 0 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !93
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.061
  %i.x = load i32, ptr %i.w, align 4, !tbaa !18
  %i.y = load i32, ptr %.sroa.047.060, align 4, !tbaa !18
  %i.z = icmp eq i32 %i.x, %i.y
  %i.aa = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.137, i32 noundef 269, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.z) ; 0 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !93
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.061
  %i.ad = icmp eq ptr %i.ac, %.sroa.047.060
  %i.ae = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.137, i32 noundef 270, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.ad) ; 0 uses
  %i.af = load ptr, ptr %1, align 8, !tbaa !93
  %i.ag = icmp eq ptr %i.af, %i.a
  %i.ah = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.137, i32 noundef 271, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.ag) ; 0 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !93, !noalias !2569
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.061
  %i.ak = icmp eq ptr %i.aj, %.sroa.047.060
  %i.al = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.137, i32 noundef 272, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.ak) ; 0 uses
  %i.am = load ptr, ptr %1, align 8, !tbaa !221
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.061
  %i.ao = icmp eq ptr %i.an, %.sroa.047.060
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.137, i32 noundef 273, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.ao) ; 0 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !93
  %i.ar = icmp eq ptr %i.aq, %i.a
  %i.as = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.137, i32 noundef 274, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.ar) ; 0 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !221
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.061
  %i.av = icmp eq ptr %i.au, %.sroa.047.060
  %i.aw = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.137, i32 noundef 276, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.av) ; 0 uses
  %i.ax = load ptr, ptr %1, align 8, !tbaa !93
  %i.ay = icmp eq ptr %i.ax, %i.a
  %i.az = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.137, i32 noundef 278, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.ay) ; 0 uses
  %i.ba = add nuw nsw i64 %.061, 1                ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.047.060, i64 4
  %.not = icmp eq i64 %i.ba, %i.c
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !2572

.lr.ph65:                                         ; preds = %._crit_edge, %.lr.ph65
  %.sroa.020.064 = phi ptr [ %.sroa.020.0, %.lr.ph65 ], [ %.sroa.020.062, %._crit_edge ]
  %i.bc = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.137, i32 noundef 286, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.bd = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.137, i32 noundef 287, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.be = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.137, i32 noundef 288, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.bf = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.137, i32 noundef 289, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.bg = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.137, i32 noundef 290, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.bh = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.137, i32 noundef 291, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.bi = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.137, i32 noundef 292, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.bj = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.137, i32 noundef 293, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.bk = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.137, i32 noundef 294, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.bl = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.137, i32 noundef 295, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %.sroa.020.0 = getelementptr inbounds nuw i8, ptr %.sroa.020.064, i64 4 ; 2 uses
  %i.bm = load ptr, ptr %2, align 8, !tbaa !93
  %.not58 = icmp eq ptr %.sroa.020.0, %i.bm
  br i1 %.not58, label %.loopexit, label %.lr.ph65, !llvm.loop !2573

.loopexit:                                        ; preds = %.lr.ph65, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !221    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89   ; 2 uses
  %.not59 = icmp eq i64 %i.c, 0
  br i1 %.not59, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i64, ptr %i.b, align 8, !tbaa !89
  %.pre66 = load ptr, ptr %1, align 8, !tbaa !101
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.d = phi ptr [ %.pre66, %._crit_edge.loopexit ], [ %i.a, %bb.a ]
  %i.e = phi i64 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.f = load ptr, ptr %2, align 8, !tbaa !101
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  %i.k = icmp eq i64 %i.e, %i.j
  %i.l = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.137, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.k) ; 0 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !221    ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !101    ; 2 uses
  %.not57 = icmp eq ptr %i.m, %i.n
  %.sroa.020.062 = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %.not5863 = icmp eq ptr %.sroa.020.062, %i.n
  %or.cond = select i1 %.not57, i1 true, i1 %.not5863
  br i1 %or.cond, label %.loopexit, label %.lr.ph65

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.061 = phi i64 [ %i.ba, %.lr.ph ], [ 0, %bb.a ] ; 7 uses
  %.sroa.047.060 = phi ptr [ %i.bb, %.lr.ph ], [ %i.a, %bb.a ] ; 7 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !101
  %i.p = ptrtoint ptr %.sroa.047.060 to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2
  %i.t = icmp eq i64 %.061, %i.s
  %i.u = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.137, i32 noundef 268, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.t) ; 0 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !101
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.061
  %i.x = load i32, ptr %i.w, align 4, !tbaa !18
  %i.y = load i32, ptr %.sroa.047.060, align 4, !tbaa !18
  %i.z = icmp eq i32 %i.x, %i.y
  %i.aa = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.137, i32 noundef 269, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.z) ; 0 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !101
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %.061
  %i.ad = icmp eq ptr %i.ac, %.sroa.047.060
  %i.ae = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.137, i32 noundef 270, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.ad) ; 0 uses
  %i.af = load ptr, ptr %1, align 8, !tbaa !101
  %i.ag = icmp eq ptr %i.af, %i.a
  %i.ah = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.137, i32 noundef 271, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.ag) ; 0 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !101, !noalias !2574
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.061
  %i.ak = icmp eq ptr %i.aj, %.sroa.047.060
  %i.al = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.137, i32 noundef 272, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.ak) ; 0 uses
  %i.am = load ptr, ptr %1, align 8, !tbaa !221
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.061
  %i.ao = icmp eq ptr %i.an, %.sroa.047.060
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.137, i32 noundef 273, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.ao) ; 0 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !101
  %i.ar = icmp eq ptr %i.aq, %i.a
  %i.as = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.137, i32 noundef 274, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.ar) ; 0 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !221
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.061
  %i.av = icmp eq ptr %i.au, %.sroa.047.060
  %i.aw = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.137, i32 noundef 276, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.av) ; 0 uses
  %i.ax = load ptr, ptr %1, align 8, !tbaa !101
  %i.ay = icmp eq ptr %i.ax, %i.a
  %i.az = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.137, i32 noundef 278, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.ay) ; 0 uses
  %i.ba = add nuw nsw i64 %.061, 1                ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.047.060, i64 4
  %.not = icmp eq i64 %i.ba, %i.c
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !2577

.lr.ph65:                                         ; preds = %._crit_edge, %.lr.ph65
  %.sroa.020.064 = phi ptr [ %.sroa.020.0, %.lr.ph65 ], [ %.sroa.020.062, %._crit_edge ]
  %i.bc = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.137, i32 noundef 286, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.bd = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.137, i32 noundef 287, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.be = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.137, i32 noundef 288, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.bf = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.137, i32 noundef 289, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.bg = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.137, i32 noundef 290, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.bh = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.137, i32 noundef 291, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.bi = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.137, i32 noundef 292, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.bj = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.137, i32 noundef 293, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.bk = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.137, i32 noundef 294, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.bl = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.137, i32 noundef 295, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %.sroa.020.0 = getelementptr inbounds nuw i8, ptr %.sroa.020.064, i64 4 ; 2 uses
  %i.bm = load ptr, ptr %2, align 8, !tbaa !101
  %.not58 = icmp eq ptr %.sroa.020.0, %i.bm
  br i1 %.not58, label %.loopexit, label %.lr.ph65, !llvm.loop !2578

.loopexit:                                        ; preds = %.lr.ph65, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !221, !noalias !2579 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89   ; 2 uses
  %.not58 = icmp eq i64 %i.c, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i64, ptr %i.b, align 8, !tbaa !89
  %.pre65 = load ptr, ptr %1, align 8, !tbaa !93
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.d = phi ptr [ %.pre65, %._crit_edge.loopexit ], [ %i.a, %bb.a ]
  %i.e = phi i64 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.f = load ptr, ptr %2, align 8, !tbaa !93
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  %i.k = icmp eq i64 %i.e, %i.j
  %i.l = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.137, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.k) ; 0 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !221, !noalias !2582 ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !93     ; 2 uses
  %.not56 = icmp eq ptr %i.m, %i.n
  %.sroa.020.061 = getelementptr inbounds i8, ptr %i.m, i64 -4 ; 2 uses
  %.not5762 = icmp eq ptr %.sroa.020.061, %i.n
  %or.cond = select i1 %.not56, i1 true, i1 %.not5762
  br i1 %or.cond, label %.loopexit, label %.lr.ph64

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.060 = phi i64 [ %i.az, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %.sroa.046.059 = phi ptr [ %i.z, %.lr.ph ], [ %i.a, %bb.a ] ; 5 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !93
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %.sroa.046.059 to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2
  %i.t = icmp eq i64 %.060, %i.s
  %i.u = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.137, i32 noundef 268, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.t) ; 0 uses
  %i.v = xor i64 %.060, -1                        ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !93
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.v
  %i.y = load i32, ptr %i.x, align 4, !tbaa !18
  %i.z = getelementptr inbounds i8, ptr %.sroa.046.059, i64 -4 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !18
  %i.ab = icmp eq i32 %i.y, %i.aa
  %i.ac = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.137, i32 noundef 269, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.ab) ; 0 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !93
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.v
  %i.af = icmp eq ptr %i.ae, %i.z
  %i.ag = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.137, i32 noundef 270, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.af) ; 0 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !93
  %3 = sub nsw i64 0, %.060                       ; 3 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  %i.aj = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.137, i32 noundef 271, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.ai) ; 0 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !221, !noalias !2585
  %4 = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %3
  %i.al = icmp eq ptr %4, %.sroa.046.059
  %i.am = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.137, i32 noundef 272, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.al) ; 0 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !221, !noalias !2588
  %5 = getelementptr inbounds [4 x i8], ptr %i.an, i64 %3
  %i.ao = icmp eq ptr %5, %.sroa.046.059
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.137, i32 noundef 273, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.ao) ; 0 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !93
  %i.ar = icmp eq ptr %i.aq, %i.a
  %i.as = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.137, i32 noundef 274, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.ar) ; 0 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !221, !noalias !2591
  %6 = getelementptr inbounds [4 x i8], ptr %i.at, i64 %3
  %i.au = icmp eq ptr %6, %.sroa.046.059
  %i.av = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.137, i32 noundef 276, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.au) ; 0 uses
  %i.aw = load ptr, ptr %1, align 8, !tbaa !93
  %i.ax = icmp eq ptr %i.aw, %i.a
  %i.ay = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.137, i32 noundef 278, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.ax) ; 0 uses
  %i.az = add nuw nsw i64 %.060, 1                ; 2 uses
  %.not = icmp eq i64 %i.az, %i.c
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !2594

.lr.ph64:                                         ; preds = %._crit_edge, %.lr.ph64
  %.sroa.020.063 = phi ptr [ %.sroa.020.0, %.lr.ph64 ], [ %.sroa.020.061, %._crit_edge ]
  %i.ba = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.137, i32 noundef 286, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bb = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.137, i32 noundef 287, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bc = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.137, i32 noundef 288, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bd = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.137, i32 noundef 289, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.be = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.137, i32 noundef 290, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bf = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.137, i32 noundef 291, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bg = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.137, i32 noundef 292, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bh = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.137, i32 noundef 293, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bi = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.137, i32 noundef 294, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bj = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.137, i32 noundef 295, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %.sroa.020.0 = getelementptr inbounds i8, ptr %.sroa.020.063, i64 -4 ; 2 uses
  %i.bk = load ptr, ptr %2, align 8, !tbaa !93
  %.not57 = icmp eq ptr %.sroa.020.0, %i.bk
  br i1 %.not57, label %.loopexit, label %.lr.ph64, !llvm.loop !2595

.loopexit:                                        ; preds = %.lr.ph64, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !221, !noalias !2596 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89   ; 2 uses
  %.not58 = icmp eq i64 %i.c, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i64, ptr %i.b, align 8, !tbaa !89
  %.pre65 = load ptr, ptr %1, align 8, !tbaa !101
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.d = phi ptr [ %.pre65, %._crit_edge.loopexit ], [ %i.a, %bb.a ]
  %i.e = phi i64 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.f = load ptr, ptr %2, align 8, !tbaa !101
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2
  %i.k = icmp eq i64 %i.e, %i.j
  %i.l = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.137, i32 noundef 280, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.k) ; 0 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !221, !noalias !2599 ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !101    ; 2 uses
  %.not56 = icmp eq ptr %i.m, %i.n
  %.sroa.020.061 = getelementptr inbounds i8, ptr %i.m, i64 -4 ; 2 uses
  %.not5762 = icmp eq ptr %.sroa.020.061, %i.n
  %or.cond = select i1 %.not56, i1 true, i1 %.not5762
  br i1 %or.cond, label %.loopexit, label %.lr.ph64

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.060 = phi i64 [ %i.az, %.lr.ph ], [ 0, %bb.a ] ; 4 uses
  %.sroa.046.059 = phi ptr [ %i.z, %.lr.ph ], [ %i.a, %bb.a ] ; 5 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !101
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %.sroa.046.059 to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 2
  %i.t = icmp eq i64 %.060, %i.s
  %i.u = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.137, i32 noundef 268, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.t) ; 0 uses
  %i.v = xor i64 %.060, -1                        ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !101
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.v
  %i.y = load i32, ptr %i.x, align 4, !tbaa !18
  %i.z = getelementptr inbounds i8, ptr %.sroa.046.059, i64 -4 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !18
  %i.ab = icmp eq i32 %i.y, %i.aa
  %i.ac = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.137, i32 noundef 269, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.ab) ; 0 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !101
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.v
  %i.af = icmp eq ptr %i.ae, %i.z
  %i.ag = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.137, i32 noundef 270, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.af) ; 0 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !101
  %3 = sub nsw i64 0, %.060                       ; 3 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  %i.aj = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.137, i32 noundef 271, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.ai) ; 0 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !221, !noalias !2602
  %4 = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %3
  %i.al = icmp eq ptr %4, %.sroa.046.059
  %i.am = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.137, i32 noundef 272, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.al) ; 0 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !221, !noalias !2605
  %5 = getelementptr inbounds [4 x i8], ptr %i.an, i64 %3
  %i.ao = icmp eq ptr %5, %.sroa.046.059
  %i.ap = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.137, i32 noundef 273, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.ao) ; 0 uses
  %i.aq = load ptr, ptr %1, align 8, !tbaa !101
  %i.ar = icmp eq ptr %i.aq, %i.a
  %i.as = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.137, i32 noundef 274, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.ar) ; 0 uses
  %i.at = load ptr, ptr %1, align 8, !tbaa !221, !noalias !2608
  %6 = getelementptr inbounds [4 x i8], ptr %i.at, i64 %3
  %i.au = icmp eq ptr %6, %.sroa.046.059
  %i.av = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.137, i32 noundef 276, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.au) ; 0 uses
  %i.aw = load ptr, ptr %1, align 8, !tbaa !101
  %i.ax = icmp eq ptr %i.aw, %i.a
  %i.ay = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.137, i32 noundef 278, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.ax) ; 0 uses
  %i.az = add nuw nsw i64 %.060, 1                ; 2 uses
  %.not = icmp eq i64 %i.az, %i.c
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !2611

.lr.ph64:                                         ; preds = %._crit_edge, %.lr.ph64
  %.sroa.020.063 = phi ptr [ %.sroa.020.0, %.lr.ph64 ], [ %.sroa.020.061, %._crit_edge ]
  %i.ba = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.137, i32 noundef 286, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bb = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.137, i32 noundef 287, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bc = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.137, i32 noundef 288, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bd = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.137, i32 noundef 289, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.be = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.137, i32 noundef 290, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bf = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.137, i32 noundef 291, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bg = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.137, i32 noundef 292, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bh = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.137, i32 noundef 293, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bi = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.137, i32 noundef 294, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.bj = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.137, i32 noundef 295, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test30test_iterator_random_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %.sroa.020.0 = getelementptr inbounds i8, ptr %.sroa.020.063, i64 -4 ; 2 uses
  %i.bk = load ptr, ptr %2, align 8, !tbaa !101
  %.not57 = icmp eq ptr %.sroa.020.0, %i.bk
  br i1 %.not57, label %.loopexit, label %.lr.ph64, !llvm.loop !2612

.loopexit:                                        ; preds = %.lr.ph64, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !221    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89
  %.not12 = icmp eq i64 %i.c, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.07.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.h, %.lr.ph ]
  %i.d = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.137, i32 noundef 245, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !93
  %i.f = icmp eq ptr %.sroa.07.0.lcssa, %i.e
  %i.g = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.137, i32 noundef 246, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.f) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi i64 [ %i.m, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.07.014 = phi ptr [ %i.h, %.lr.ph ], [ %i.a, %bb.a ]
  %i.h = getelementptr i8, ptr %.sroa.07.014, i64 -4 ; 2 uses
  %i.i = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.137, i32 noundef 238, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.j = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.137, i32 noundef 241, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.k = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.137, i32 noundef 242, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.l = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.137, i32 noundef 243, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.m = add i64 %.015, 1                         ; 2 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !89
  %.not = icmp eq i64 %i.m, %i.n
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2613
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !221    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89
  %.not12 = icmp eq i64 %i.c, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.07.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.h, %.lr.ph ]
  %i.d = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.137, i32 noundef 245, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !101
  %i.f = icmp eq ptr %.sroa.07.0.lcssa, %i.e
  %i.g = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.137, i32 noundef 246, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.f) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi i64 [ %i.m, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.07.014 = phi ptr [ %i.h, %.lr.ph ], [ %i.a, %bb.a ]
  %i.h = getelementptr i8, ptr %.sroa.07.014, i64 -4 ; 2 uses
  %i.i = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.137, i32 noundef 238, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.j = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.137, i32 noundef 241, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.k = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.137, i32 noundef 242, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.l = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.137, i32 noundef 243, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.m = add i64 %.015, 1                         ; 2 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !89
  %.not = icmp eq i64 %i.m, %i.n
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2614
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !221, !noalias !2615 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89
  %.not12 = icmp eq i64 %i.c, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.07.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.h, %.lr.ph ]
  %i.d = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.137, i32 noundef 245, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !93
  %i.f = icmp eq ptr %.sroa.07.0.lcssa, %i.e
  %i.g = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.137, i32 noundef 246, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.f) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi i64 [ %i.m, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.07.014 = phi ptr [ %i.h, %.lr.ph ], [ %i.a, %bb.a ]
  %i.h = getelementptr i8, ptr %.sroa.07.014, i64 4 ; 2 uses
  %i.i = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.137, i32 noundef 238, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.j = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.137, i32 noundef 241, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.k = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.137, i32 noundef 242, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.l = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.137, i32 noundef 243, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb0EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.m = add i64 %.015, 1                         ; 2 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !89
  %.not = icmp eq i64 %i.m, %i.n
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2618
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !221, !noalias !2619 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89
  %.not12 = icmp eq i64 %i.c, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.07.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.h, %.lr.ph ]
  %i.d = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.137, i32 noundef 245, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !101
  %i.f = icmp eq ptr %.sroa.07.0.lcssa, %i.e
  %i.g = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.137, i32 noundef 246, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext %i.f) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi i64 [ %i.m, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.07.014 = phi ptr [ %i.h, %.lr.ph ], [ %i.a, %bb.a ]
  %i.h = getelementptr i8, ptr %.sroa.07.014, i64 4 ; 2 uses
  %i.i = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.137, i32 noundef 238, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.j = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.137, i32 noundef 241, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.k = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.137, i32 noundef 242, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.l = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.137, i32 noundef 243, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test37test_iterator_bidirectional_functionsINS_9container13static_vectorIiLm3EvEENS_7movelib16reverse_iteratorINS3_12vec_iteratorIPiLb1EEEEEEEvRKT_T0_SF_, i1 noundef zeroext true) ; 0 uses
  %i.m = add i64 %.015, 1                         ; 2 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !89
  %.not = icmp eq i64 %i.m, %i.n
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2622
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !221    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89
  %.not11 = icmp eq i64 %i.c, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.07.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.h, %.lr.ph ]
  %i.d = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.137, i32 noundef 215, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !93
  %i.f = icmp eq ptr %.sroa.07.0.lcssa, %i.e
  %i.g = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.137, i32 noundef 216, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.f) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi i64 [ %i.l, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.07.013 = phi ptr [ %i.h, %.lr.ph ], [ %i.a, %bb.a ]
  %i.h = getelementptr i8, ptr %.sroa.07.013, i64 4 ; 2 uses
  %i.i = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.137, i32 noundef 209, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.j = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.137, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.k = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.137, i32 noundef 213, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb0EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.l = add i64 %.014, 1                         ; 2 uses
  %i.m = load i64, ptr %i.b, align 8, !tbaa !89
  %.not = icmp eq i64 %i.l, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2623
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !221    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89
  %.not11 = icmp eq i64 %i.c, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.07.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.h, %.lr.ph ]
  %i.d = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.137, i32 noundef 215, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext true) ; 0 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !101
  %i.f = icmp eq ptr %.sroa.07.0.lcssa, %i.e
  %i.g = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.137, i32 noundef 216, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9intrusive4test31test_iterator_forward_functionsINS_9container13static_vectorIiLm3EvEENS3_12vec_iteratorIPiLb1EEEEEvRKT_T0_SC_, i1 noundef zeroext %i.f) ; 0 uses
  ret void

end_hunk_0
