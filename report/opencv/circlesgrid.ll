Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/circlesgrid?download=true
inline.NumInlined: 3211
inline.NumDeleted: 1104
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2cv17CirclesGridFinder22computeGraphConfidenceERKSt6vectorINS_5GraphESaIS2_EEbRKS1_ImSaImEESA_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.aa

.preheader.loopexit:                              ; preds = %bb.t
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !166
  %.pre70 = ptrtoint ptr %.pre to i64
  %.pre71 = ptrtoint ptr %i.bg to i64
  %.pre73 = sub i64 %.pre70, %.pre71
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader63
  %.pre-phi74 = phi i64 [ %.pre73, %.preheader.loopexit ], [ %i.f, %.preheader63 ]
  %i.al = phi ptr [ %i.bg, %.preheader.loopexit ], [ %i.c, %.preheader63 ]
  %.047.lcssa = phi float [ %.2, %.preheader.loopexit ], [ 0.000000e+00, %.preheader63 ] ; 2 uses
  %i.am = icmp ugt i64 %.pre-phi74, 8
  br i1 %i.am, label %.lr.ph68, label %._crit_edge

.lr.ph68:                                         ; preds = %.preheader
  %i.an = xor i1 %2, true
  %i.ao = zext i1 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.u

bb.m:                                             ; preds = %.lr.ph, %bb.t
  %i.ar = phi ptr [ %i.c, %.lr.ph ], [ %i.bg, %bb.t ]
  %i.as = phi ptr [ %i.i, %.lr.ph ], [ %i.bo, %bb.t ]
  %.04665 = phi i64 [ 0, %.lr.ph ], [ %i.bm, %bb.t ] ; 4 uses
  %.04764 = phi float [ 0.000000e+00, %.lr.ph ], [ %.2, %bb.t ] ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.04665
  %i.au = load i64, ptr %i.at, align 8, !tbaa !63 ; 2 uses
  %i.av = icmp ult i64 %i.au, %i.w
  br i1 %i.av, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.04665
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !63 ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.w
  br i1 %i.ay, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %1, align 8, !tbaa !155
  %i.ba = getelementptr inbounds nuw [48 x i8], ptr %i.az, i64 %i.aa
  %i.bb = tail call noundef zeroext i1 @_ZNK2cv5Graph19areVerticesAdjacentEmm(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 noundef %i.au, i64 noundef %i.ax)
  br i1 %i.bb, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = load float, ptr %i.ab, align 8, !tbaa !510
  %i.bd = fadd float %.04764, %i.bc
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.be = load float, ptr %i.ac, align 4, !tbaa !511
  %i.bf = fadd float %.04764, %i.be
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n, %bb.m
  %.1 = phi float [ %i.bf, %bb.q ], [ %i.bd, %bb.p ], [ %.04764, %bb.n ], [ %.04764, %bb.m ] ; 2 uses
  %i.bg = load ptr, ptr %3, align 8, !tbaa !149   ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.04665
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !63
  %i.bj = icmp ult i64 %i.bi, %i.w
  br i1 %i.bj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bk = load float, ptr %i.ad, align 4, !tbaa !167
  %i.bl = fadd float %.1, %i.bk
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.2 = phi float [ %i.bl, %bb.s ], [ %.1, %bb.r ] ; 2 uses
  %i.bm = add nuw i64 %.04665, 1                  ; 2 uses
  %i.bn = load ptr, ptr %i.g, align 8, !tbaa !166
  %i.bo = load ptr, ptr %4, align 8, !tbaa !149   ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 3
  %i.bt = icmp ult i64 %i.bm, %i.bs
  br i1 %i.bt, label %bb.m, label %.preheader.loopexit, !llvm.loop !508

._crit_edge:                                      ; preds = %bb.z, %.preheader
  %.3.lcssa = phi float [ %.047.lcssa, %.preheader ], [ %.4, %bb.z ]
  ret float %.3.lcssa

bb.u:                                             ; preds = %.lr.ph68, %bb.z
  %i.bu = phi ptr [ %i.al, %.lr.ph68 ], [ %i.ck, %bb.z ]
  %.067 = phi i64 [ 1, %.lr.ph68 ], [ %i.ci, %bb.z ] ; 2 uses
  %.366 = phi float [ %.047.lcssa, %.lr.ph68 ], [ %.4, %bb.z ] ; 4 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %.067 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 -8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !63 ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.w
  br i1 %i.by, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.bz = load i64, ptr %i.bv, align 8, !tbaa !63 ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.w
  br i1 %i.ca, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.cb = load ptr, ptr %1, align 8, !tbaa !155
  %i.cc = getelementptr inbounds nuw [48 x i8], ptr %i.cb, i64 %i.ao
  %i.cd = tail call noundef zeroext i1 @_ZNK2cv5Graph19areVerticesAdjacentEmm(ptr noundef nonnull align 8 dereferenceable(48) %i.cc, i64 noundef %i.bx, i64 noundef %i.bz)
  br i1 %i.cd, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = load float, ptr %i.ap, align 4, !tbaa !512
  %i.cf = fadd float %.366, %i.ce
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cg = load float, ptr %i.aq, align 8, !tbaa !513
  %i.ch = fadd float %.366, %i.cg
  br label %bb.z

bb.z:                                             ; preds = %bb.u, %bb.v, %bb.y, %bb.x
  %.4 = phi float [ %i.ch, %bb.y ], [ %i.cf, %bb.x ], [ %.366, %bb.v ], [ %.366, %bb.u ] ; 2 uses
  %i.ci = add nuw i64 %.067, 1                    ; 2 uses
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !166
  %i.ck = load ptr, ptr %3, align 8, !tbaa !149   ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ashr exact i64 %i.cn, 3
  %i.cp = icmp ult i64 %i.ci, %i.co
  br i1 %i.cp, label %bb.u, label %._crit_edge, !llvm.loop !509

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn57.pn = phi { ptr, i32 } [ %.pn57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn57.pn
}

declare noundef double @_ZN2cv6kmeansERKNS_11_InputArrayEiRKNS_17_InputOutputArrayENS_12TermCriteriaEiiRKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), i64, double, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef double @_ZN2cv16pointPolygonTestERKNS_11_InputArrayENS_6Point_IfEEb(ptr noundef nonnull align 8 dereferenceable(24), <2 x float>, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), i64, i64, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv24computePredecessorMatrixERKNS_3MatEiRS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.14", align 1 ; 3 uses
  %5 = alloca %"class.cv::Scalar_", align 8       ; 5 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !94
  %i.b = and i32 %i.a, 4095
  %i.c = icmp eq i32 %i.b, 4
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv24computePredecessorMatrixERKNS_3MatEiRS0_, ptr noundef nonnull @.str.1, i32 noundef 1255) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %3, align 8, !tbaa !42     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !43
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %1, i32 noundef %1, i32 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store double -1.000000e+00, ptr %5, align 8, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.k = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !95   ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.preheader.lr.ph, label %._crit_edge50

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %6 = icmp sgt i32 %1, 0
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.v = load i32, ptr %i.o, align 4, !tbaa !96   ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.preheader.preheader, label %._crit_edge50

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count = zext nneg i32 %1 to i64
  %wide.trip.count61 = zext nneg i32 %1 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.x = phi i32 [ %i.m, %.preheader.preheader ], [ %7, %._crit_edge ] ; 2 uses
  %i.y = phi i32 [ %i.v, %.preheader.preheader ], [ %8, %._crit_edge ] ; 3 uses
  %i.z = phi i32 [ %i.v, %.preheader.preheader ], [ %9, %._crit_edge ] ; 3 uses
  %indvars.iv66 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next67, %._crit_edge ] ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph43, label %._crit_edge

.lr.ph43:                                         ; preds = %.preheader
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !59  ; 2 uses
  br i1 %6, label %.lr.ph.us, label %._crit_edge

.lr.ph.us:                                        ; preds = %.lr.ph43, %..loopexit_crit_edge.us
  %i.ac = phi i32 [ %i.bb, %..loopexit_crit_edge.us ], [ %i.y, %.lr.ph43 ] ; 2 uses
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %..loopexit_crit_edge.us ], [ 0, %.lr.ph43 ] ; 4 uses
  %i.ad = load i32, ptr %i.p, align 4, !tbaa !58
  %.fr = freeze i32 %i.ad
  %i.ae = icmp slt i32 %.fr, 2                    ; 2 uses
  %i.af = load i64, ptr %i.r, align 8             ; 2 uses
  %i.ag = mul i64 %i.af, %indvars.iv66
  %.sink.idx.i.us = select i1 %i.ae, i64 0, i64 %i.ag
  %.sink.i.us = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sink.idx.i.us ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.us, i64 %indvars.iv63
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !44
  %invariant.gep.us = getelementptr [4 x i8], ptr %i.ab, i64 %indvars.iv63 ; 2 uses
  %i.aj = add nsw i32 %i.ai, -1                   ; 2 uses
  br i1 %i.ae, label %.lr.ph.split.us.us, label %.lr.ph.split.us44

.lr.ph.split.us44:                                ; preds = %.lr.ph.us, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.lr.ph.us ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.us, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !44
  %i.am = icmp eq i32 %i.al, %i.aj
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.us44
  %i.an = mul i64 %i.af, %indvars.iv
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %i.an
  %i.ao = load i32, ptr %gep.us, align 4, !tbaa !44
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %.split.us47, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %.lr.ph.split.us44, !llvm.loop !514

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us, %bb.i
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %bb.i ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.us, i64 %indvars.iv58
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !44
  %i.as = icmp eq i32 %i.ar, %i.aj
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.us.us
  %i.at = load i32, ptr %invariant.gep.us, align 4, !tbaa !44
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %.split.us47, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.split.us.us
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61
  br i1 %exitcond62.not, label %..loopexit_crit_edge.us, label %.lr.ph.split.us.us, !llvm.loop !514

.split.us47:                                      ; preds = %bb.f, %bb.h
  %.us-phi.us.in = phi i64 [ %indvars.iv58, %bb.h ], [ %indvars.iv, %bb.f ]
  %.us-phi.us = trunc i64 %.us-phi.us.in to i32
  %i.av = load i32, ptr %i.s, align 4, !tbaa !58
  %i.aw = icmp slt i32 %i.av, 2
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !59
  %i.ay = load i64, ptr %i.u, align 8
  %i.az = mul i64 %i.ay, %indvars.iv66
  %.sink.idx.i38.us = select i1 %i.aw, i64 0, i64 %i.az
  %.sink.i39.us = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sink.idx.i38.us
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sink.i39.us, i64 %indvars.iv63
  store i32 %.us-phi.us, ptr %i.ba, align 4, !tbaa !44
  %.pre = load i32, ptr %i.o, align 4, !tbaa !96
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %bb.g, %bb.i, %.split.us47
  %i.bb = phi i32 [ %i.ac, %bb.i ], [ %.pre, %.split.us47 ], [ %i.ac, %bb.g ] ; 4 uses
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv.next64, %i.bc
  br i1 %i.bd, label %.lr.ph.us, label %._crit_edge.loopexit, !llvm.loop !515

._crit_edge50:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.e
  ret void

._crit_edge.loopexit:                             ; preds = %..loopexit_crit_edge.us
  %.pre69 = load i32, ptr %i.l, align 8, !tbaa !95
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph43, %._crit_edge.loopexit, %.preheader
  %7 = phi i32 [ %i.x, %.preheader ], [ %.pre69, %._crit_edge.loopexit ], [ %i.x, %.lr.ph43 ] ; 2 uses
  %8 = phi i32 [ %i.y, %.preheader ], [ %i.bb, %._crit_edge.loopexit ], [ %i.y, %.lr.ph43 ]
  %9 = phi i32 [ %i.z, %.preheader ], [ %i.bb, %._crit_edge.loopexit ], [ %i.z, %.lr.ph43 ]
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.be = sext i32 %7 to i64
  %i.bf = icmp slt i64 %indvars.iv.next67, %i.be
  br i1 %i.bf, label %.preheader, label %._crit_edge50, !llvm.loop !516
}

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL19computeShortestPathERNS_3MatEmmRSt6vectorImSaImEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, i64 noundef %1, i64 noundef range(i64 -2147483648, 2147483648) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !58
  %i.c = icmp slt i32 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.g = load i64, ptr %i.f, align 8
  %i.h = shl i64 %1, 32
  %i.i = ashr exact i64 %i.h, 32
  %i.j = mul i64 %i.g, %i.i
  %.sink.idx.i = select i1 %i.c, i64 0, i64 %i.j
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink.idx.i
  %i.k = getelementptr inbounds [4 x i8], ptr %.sink.i, i64 %2
  %i.l = load i32, ptr %i.k, align 4, !tbaa !44   ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !166  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !150
  %.not.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %1, ptr %i.o, align 8, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.r, ptr %i.n, align 8, !tbaa !166
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %3, align 8, !tbaa !149    ; 4 uses
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = sub i64 %i.t, %i.u                       ; 5 uses
  %i.w = icmp eq i64 %i.v, 9223372036854775800
  br i1 %i.w, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #29
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.x = ashr exact i64 %i.v, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.x, i64 1)
  %i.y = add nsw i64 %.sroa.speculated.i.i.i, %i.x ; 2 uses
  %i.z = icmp ult i64 %i.y, %i.x
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 1152921504606846975)
  %i.ab = select i1 %i.z, i64 1152921504606846975, i64 %i.aa ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #31 ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.v ; 2 uses
  store i64 %1, ptr %i.ae, align 8, !tbaa !63
  %i.af = icmp sgt i64 %i.v, 0
  br i1 %i.af, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr align 8 %i.s, i64 %i.v, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.not.i17.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !150
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.aj) #30
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.ad, ptr %3, align 8, !tbaa !149
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !166
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  store ptr %i.ak, ptr %i.p, align 8, !tbaa !150
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.h:                                             ; preds = %bb.a
  %i.al = zext nneg i32 %i.l to i64
  tail call fastcc void @_ZN2cvL19computeShortestPathERNS_3MatEmmRSt6vectorImSaImEE(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 noundef %1, i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !166 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !150
  %.not.i8 = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i8, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %2, ptr %i.an, align 8, !tbaa !63
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !166
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.j:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %3, align 8, !tbaa !149   ; 4 uses
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.au = sub i64 %i.as, %i.at                    ; 5 uses
  %i.av = icmp eq i64 %i.au, 9223372036854775800
  br i1 %i.av, label %bb.k, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i9

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #29
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i9: ; preds = %bb.j
  %i.aw = ashr exact i64 %i.au, 3                 ; 3 uses
  %.sroa.speculated.i.i.i10 = tail call i64 @llvm.umax.i64(i64 %i.aw, i64 1)
  %i.ax = add nsw i64 %.sroa.speculated.i.i.i10, %i.aw ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 1152921504606846975)
  %i.ba = select i1 %i.ay, i64 1152921504606846975, i64 %i.az ; 3 uses
  %.not.i.i.i11 = icmp ne i64 %i.ba, 0
  tail call void @llvm.assume(i1 %.not.i.i.i11)
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #31 ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.au ; 2 uses
  store i64 %2, ptr %i.bd, align 8, !tbaa !63
  %i.be = icmp sgt i64 %i.au, 0
  br i1 %i.be, label %bb.l, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i12

bb.l:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr align 8 %i.ar, i64 %i.au, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i12

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i12: ; preds = %bb.l, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.not.i17.i.i13 = icmp eq ptr %i.ar, null
  br i1 %.not.i17.i.i13, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i14, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i12
  %i.bg = load ptr, ptr %i.ao, align 8, !tbaa !150
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.bi) #30
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i14

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i14: ; preds = %bb.m, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i12
  store ptr %i.bc, ptr %3, align 8, !tbaa !149
  store ptr %i.bf, ptr %i.am, align 8, !tbaa !166
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ba
  store ptr %i.bj, ptr %i.ao, align 8, !tbaa !150
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i14, %bb.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv4PathESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !180    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !182  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv4PathES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN2cv4PathEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN2cv4PathEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !149  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2cv4PathEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !150
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #30
  br label %_ZSt8_DestroyIN2cv4PathEEvPT_.exit.i.i

_ZSt8_DestroyIN2cv4PathEEvPT_.exit.i.i:           ; preds = %bb.b, %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv4PathES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !12

_ZSt8_DestroyIPN2cv4PathES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN2cv4PathEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !180
  br label %_ZSt8_DestroyIPN2cv4PathES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN2cv4PathES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN2cv4PathES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.l = phi ptr [ %.pr, %_ZSt8_DestroyIPN2cv4PathES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2cv4PathESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN2cv4PathES1_EvT_S3_RSaIT0_E.exit
end_hunk_0
