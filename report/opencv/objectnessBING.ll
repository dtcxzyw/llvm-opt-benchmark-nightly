Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/objectnessBING?download=true
inline.NumInlined: 1535
inline.NumDeleted: 530
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2cv8saliency14ObjectnessBING11gradientHSVERNS_3MatES3_:bb.a

bb.n:                                             ; preds = %bb.m, %bb.d
  %.pn71.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn, %bb.m ], [ %i.ai, %bb.d ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn71.pn.pn.pn
}

declare void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8saliency14ObjectnessBING10gradientXYERNS_3MatES3_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !101  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !102  ; 4 uses
  tail call void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %i.b, i32 noundef %i.d, i32 noundef 0)
  %i.e = icmp sgt i32 %i.b, 0
  br i1 %i.e, label %.lr.ph29, label %._crit_edge30.split

.lr.ph29:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.l = icmp sgt i32 %i.d, 0
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge30.split

.lr.ph.preheader:                                 ; preds = %.lr.ph29
  %wide.trip.count35 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 7 uses
  %i.m = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %min.iters.check = icmp ult i32 %i.d, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.n = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

._crit_edge30.split:                              ; preds = %._crit_edge, %.lr.ph29, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv32 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next33, %._crit_edge ] ; 4 uses
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !103  ; 2 uses
  %i.p = load i64, ptr %i.g, align 8, !tbaa !57
  %i.q = mul i64 %i.p, %indvars.iv32              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q ; 5 uses
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !103  ; 2 uses
  %i.t = load i64, ptr %i.i, align 8, !tbaa !57
  %i.u = mul i64 %i.t, %indvars.iv32              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u ; 5 uses
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !103  ; 2 uses
  %i.x = load i64, ptr %i.k, align 8, !tbaa !57
  %i.y = mul i64 %i.x, %indvars.iv32              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.aa = getelementptr i8, ptr %i.w, i64 %i.y
  %i.ab = getelementptr i8, ptr %i.aa, i64 %wide.trip.count ; 2 uses
  %i.ac = getelementptr i8, ptr %i.o, i64 %i.q
  %i.ad = getelementptr i8, ptr %i.ac, i64 %i.m
  %i.ae = getelementptr i8, ptr %i.s, i64 %i.u
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.m
  %bound0 = icmp ult ptr %i.z, %i.ad
  %bound1 = icmp ult ptr %i.r, %i.ab
  %found.conflict = and i1 %bound0, %bound1
  %bound046 = icmp ult ptr %i.z, %i.af
  %bound147 = icmp ult ptr %i.v, %i.ab
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx = or i1 %found.conflict, %found.conflict48
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <4 x i32>, ptr %i.ag, align 4, !tbaa !27, !alias.scope !320
  %wide.load49 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !27, !alias.scope !320
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load50 = load <4 x i32>, ptr %i.ai, align 4, !tbaa !27, !alias.scope !321
  %wide.load51 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !27, !alias.scope !321
  %i.ak = add nsw <4 x i32> %wide.load50, %wide.load
  %i.al = add nsw <4 x i32> %wide.load51, %wide.load49
  %i.am = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ak, <4 x i32> splat (i32 255))
  %i.an = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.al, <4 x i32> splat (i32 255))
  %i.ao = trunc <4 x i32> %i.am to <4 x i8>
  %i.ap = trunc <4 x i32> %i.an to <4 x i8>
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store <4 x i8> %i.ao, ptr %i.aq, align 1, !tbaa !24, !alias.scope !322, !noalias !323
  store <4 x i8> %i.ap, ptr %i.ar, align 1, !tbaa !24, !alias.scope !322, !noalias !323
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !318

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.ph
  %i.au = load i32, ptr %i.at, align 4, !tbaa !27
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.ph
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !27
  %i.ax = add nsw i32 %i.aw, %i.au
  %.sroa.speculated.prol = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 255)
  %i.ay = trunc i32 %.sroa.speculated.prol to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.ph
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !24
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ba = icmp eq i64 %indvars.iv.ph, %i.n
  br i1 %i.ba, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count35
  br i1 %exitcond36.not, label %._crit_edge30.split, label %.lr.ph, !llvm.loop !2

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !27
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !27
  %i.bf = add nsw i32 %i.be, %i.bc
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.bf, i32 255)
  %i.bg = trunc i32 %.sroa.speculated to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !27
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !27
  %i.bm = add nsw i32 %i.bl, %i.bj
  %.sroa.speculated.1 = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 255)
  %i.bn = trunc i32 %.sroa.speculated.1 to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.next
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !24
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !319
}

declare void @_ZN2cv8cvtColorERKNS_11_InputArrayERKNS_12_OutputArrayEiiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

declare void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN2cv8saliency14ObjectnessBING28getObjBndBoxesForSingleImageENS_3MatERNS1_12ValStructVecIfNS_3VecIiLi4EEEEEi(ptr noundef nonnull align 8 dereferenceable(688) %0, ptr noundef align 8 %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.cv::saliency::ObjectnessBING::ValStructVec", align 8 ; 14 uses
  %5 = alloca %"class.cv::saliency::CmTimer", align 8 ; 16 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::basic_ofstream", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8saliency14ObjectnessBING12ValStructVecIfNS_3VecIiLi4EEEE7reserveEi(ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef 10000)
          to label %.preheader unwind label %.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 23
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 23
  br label %bb.c

bb.b:                                             ; preds = %bb.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.u = invoke noundef zeroext i1 @_ZN2cv8saliency6CmFile5MkDirERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %bb.s unwind label %.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.c:                                             ; preds = %.preheader, %bb.r
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %i.v = trunc nuw nsw i64 %indvars.iv to i32
  invoke void @_ZN2cv8saliency14ObjectnessBING13setColorSpaceEi(ptr noundef nonnull align 8 dereferenceable(688) %0, i32 noundef %i.v)
          to label %bb.d unwind label %.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.w = invoke noundef i32 @_ZN2cv8saliency14ObjectnessBING16loadTrainedModelEv(ptr noundef nonnull align 8 dereferenceable(688) %0)
          to label %bb.e unwind label %.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.r, label %_ZN2cv8saliency7CmTimer5StartEv.exit

.loopexit.split-lp160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.c, %bb.a, %bb.b
  %lpad.loopexit.split-lp282 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp160

_ZN2cv8saliency7CmTimer5StartEv.exit:             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %i.b, ptr %6, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str.14, i64 7, i1 false)
  store i64 7, ptr %i.c, align 8, !tbaa !23
  store i8 0, ptr %i.r, align 1, !tbaa !24
  store ptr %i.d, ptr %5, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.d, ptr noundef nonnull align 1 dereferenceable(7) @.str.14, i64 7, i1 false)
  store i64 7, ptr %i.e, align 8, !tbaa !23
  store i8 0, ptr %i.s, align 1, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.g, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.f, align 8, !tbaa !109
  store i32 1, ptr %i.h, align 8, !tbaa !348
  %i.x = call i64 @clock() #25
  store i64 %i.x, ptr %i.g, align 8, !tbaa !349
  invoke void @_ZN2cv8saliency14ObjectnessBING14getObjBndBoxesERNS_3MatERNS1_12ValStructVecIfNS_3VecIiLi4EEEEEi(ptr noundef nonnull align 8 dereferenceable(688) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(80) %4, i32 noundef %3)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %_ZN2cv8saliency7CmTimer5StartEv.exit
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2cv8saliency14ObjectnessBING28getObjBndBoxesForSingleImageENS_3MatERNS1_12ValStructVecIfNS_3VecIiLi4EEEEEi.scales, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !27
  %i.aa = load i32, ptr %i.i, align 8, !tbaa !100 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i, label %_ZN2cv8saliency14ObjectnessBING12ValStructVecIfNS_3VecIiLi4EEEE6appendERKS5_i.exit

.lr.ph.i:                                         ; preds = %bb.f
  %wide.trip.count.i = zext nneg i32 %i.aa to i64
  %.pre = load i32, ptr %i.k, align 8, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %.noexc55, %.lr.ph.i
  %i.ac = phi i32 [ %.pre, %.lr.ph.i ], [ %i.ed, %.noexc55 ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc55 ] ; 3 uses
  %i.ad = trunc i64 %indvars.iv.i to i32
  %i.ae = add i32 %i.ad, 300
  %i.af = mul nsw i32 %i.ae, %i.z
  %i.ag = sitofp i32 %i.af to float
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !87
  %i.al = sext i32 %i.ak to i64
  %i.am = load ptr, ptr %4, align 8, !tbaa !95
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.al ; 8 uses
  %i.ao = bitcast float %i.ag to i32
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.ac to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.ao to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i ; 2 uses
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !88  ; 5 uses
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !83
  %.not.i.i.i140 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i.i.i140, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.ap, align 4
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !88
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.as, ptr %i.l, align 8, !tbaa !88
  br label %_ZNSt6vectorISt4pairIfiESaIS1_EE9push_backEOS1_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.at = load ptr, ptr %i.j, align 8, !tbaa !82  ; 7 uses
  %i.au = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64               ; 4 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %.invoke, label %_ZNKSt6vectorISt4pairIfiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

_ZNKSt6vectorISt4pairIfiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.i
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i.i.i.i.i142 = icmp ne i64 %i.bc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i142)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #28
          to label %.noexc144 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

.noexc144:                                        ; preds = %_ZNKSt6vectorISt4pairIfiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bf, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.at, %i.ap
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIfiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc144
  %i.bg = ptrtoaddr ptr %i.be to i64
  %i.bh = add i64 %i.au, -8
  %i.bi = sub i64 %i.bh, %i.av                    ; 2 uses
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bi, 24
  %i.bl = sub i64 %i.av, %i.bg
  %diff.check = icmp ugt i64 %i.bl, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader280, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bk, 4611686018427387900     ; 3 uses
  %i.bm = shl i64 %n.vec, 3                       ; 2 uses
  %i.bn = getelementptr i8, ptr %i.be, i64 %i.bm  ; 2 uses
  %i.bo = getelementptr i8, ptr %i.at, i64 %i.bm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bp ; 2 uses
  %next.gep266 = getelementptr i8, ptr %i.at, i64 %i.bp ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.bq = getelementptr i8, ptr %next.gep266, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep266, align 4, !alias.scope !351
  %wide.load267 = load <2 x i64>, ptr %i.bq, align 4, !alias.scope !351
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !350
  store <2 x i64> %wide.load267, ptr %i.br, align 4, !alias.scope !350
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !327

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIfiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader280

.lr.ph.i.i.i.i.i.i.i.preheader280:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader280, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader280 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader280 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.bt = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !351
  store i64 %i.bt, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !350
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bu, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIfiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !328

_ZNSt6vectorISt4pairIfiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc144
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.be, %.noexc144 ], [ %i.bn, %middle.block ], [ %i.bv, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorISt4pairIfiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt4pairIfiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  %i.bx = load ptr, ptr %i.m, align 8, !tbaa !83
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.av
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bz) #26
  br label %_ZNSt6vectorISt4pairIfiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt4pairIfiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.j, %_ZNSt6vectorISt4pairIfiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  store ptr %i.be, ptr %i.j, align 8, !tbaa !82
  store ptr %i.bw, ptr %i.l, align 8, !tbaa !88
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  store ptr %i.ca, ptr %i.m, align 8, !tbaa !83
  br label %_ZNSt6vectorISt4pairIfiESaIS1_EE9push_backEOS1_.exit.i

_ZNSt6vectorISt4pairIfiESaIS1_EE9push_backEOS1_.exit.i: ; preds = %_ZNSt6vectorISt4pairIfiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.h
  %i.cb = load ptr, ptr %i.n, align 8, !tbaa !93  ; 9 uses
  %i.cc = load ptr, ptr %i.o, align 8, !tbaa !94
  %.not.i.i141 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not.i.i141, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt4pairIfiESaIS1_EE9push_backEOS1_.exit.i
  %i.cd = load i32, ptr %i.an, align 4, !tbaa !27
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !27
  %i.ce = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !27
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !27
  %i.ch = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !27
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !27
  %i.ck = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !27
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !27
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr %i.cn, ptr %i.n, align 8, !tbaa !93
  br label %.noexc55

bb.l:                                             ; preds = %_ZNSt6vectorISt4pairIfiESaIS1_EE9push_backEOS1_.exit.i
  %i.co = load ptr, ptr %2, align 8, !tbaa !95    ; 5 uses
  %i.cp = ptrtoint ptr %i.cb to i64
  %i.cq = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cr = sub i64 %i.cp, %i.cq                    ; 3 uses
  %i.cs = icmp eq i64 %i.cr, 9223372036854775792
  br i1 %i.cs, label %.invoke, label %_ZNKSt6vectorIN2cv3VecIiLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.l, %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #27
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN2cv3VecIiLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.l
  %i.ct = ashr exact i64 %i.cr, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ct, i64 1)
  %i.cu = add nsw i64 %.sroa.speculated.i.i, %i.ct ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ct
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cu, i64 576460752303423487)
  %i.cx = select i1 %i.cv, i64 576460752303423487, i64 %i.cw ; 3 uses
  %.not.i.i146 = icmp ne i64 %i.cx, 0
  call void @llvm.assume(i1 %.not.i.i146)
  %i.cy = shl nuw nsw i64 %i.cx, 4
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #28
          to label %.noexc148 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc148:                                        ; preds = %_ZNKSt6vectorIN2cv3VecIiLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cr ; 4 uses
  %i.db = load i32, ptr %i.an, align 4, !tbaa !27
  store i32 %i.db, ptr %i.da, align 4, !tbaa !27
  %i.dc = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !27
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !27
  %i.df = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !27
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !27
  %i.di = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !27
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !27
  %.not13.i.i.i.i.i.i = icmp eq ptr %i.co, %i.cb
  br i1 %.not13.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc148, %.lr.ph.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i ], [ %i.cz, %.noexc148 ] ; 5 uses
  %.01214.i.i.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i.i ], [ %i.co, %.noexc148 ] ; 5 uses
  %i.dl = load i32, ptr %.01214.i.i.i.i.i.i, align 4, !tbaa !27
  store i32 %i.dl, ptr %.015.i.i.i.i.i.i, align 4, !tbaa !27
  %i.dm = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !27
  %i.do = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 4
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !27
  %i.dp = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 8
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !27
  %i.dr = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 8
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !27
  %i.ds = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 12
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !27
  %i.du = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 12
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !27
  %i.dv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dv, %i.cb
  br i1 %.not.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc148
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cz, %.noexc148 ], [ %i.dw, %.lr.ph.i.i.i.i.i.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i35.i = icmp eq ptr %i.co, null
  br i1 %.not.i35.i, label %.noexc145, label %bb.m

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i
  %i.dy = load ptr, ptr %i.o, align 8, !tbaa !94
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = sub i64 %i.dz, %i.cq
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ea) #26
  br label %.noexc145

.noexc145:                                        ; preds = %bb.m, %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv3VecIiLi4EEES3_SaIS2_EET0_T_S6_S5_RT1_.exit34.i
  store ptr %i.cz, ptr %2, align 8, !tbaa !95
  store ptr %i.dx, ptr %i.n, align 8, !tbaa !93
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.cx
  store ptr %i.eb, ptr %i.o, align 8, !tbaa !94
  br label %.noexc55

.noexc55:                                         ; preds = %.noexc145, %bb.k
  %i.ec = load i32, ptr %i.k, align 8, !tbaa !100
  %i.ed = add nsw i32 %i.ec, 1                    ; 2 uses
  store i32 %i.ed, ptr %i.k, align 8, !tbaa !100
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN2cv8saliency14ObjectnessBING12ValStructVecIfNS_3VecIiLi4EEEE6appendERKS5_i.exit, label %bb.g, !llvm.loop !329

_ZN2cv8saliency14ObjectnessBING12ValStructVecIfNS_3VecIiLi4EEEE6appendERKS5_i.exit: ; preds = %.noexc55, %bb.f
  %i.ee = load i8, ptr %i.f, align 8, !tbaa !109, !range !110, !noundef !111
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %_ZN2cv8saliency7CmTimer4StopEv.exit.thread, label %_ZN2cv8saliency7CmTimer4StopEv.exit

_ZN2cv8saliency7CmTimer4StopEv.exit.thread:       ; preds = %_ZN2cv8saliency14ObjectnessBING12ValStructVecIfNS_3VecIiLi4EEEE6appendERKS5_i.exit
  %i.eg = call i64 @clock() #25
  %i.eh = load i64, ptr %i.g, align 8, !tbaa !349
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = load i64, ptr %i.p, align 8, !tbaa !352
  %i.ek = add nsw i64 %i.ei, %i.ej
  store i64 %i.ek, ptr %i.p, align 8, !tbaa !352
  store i8 0, ptr %i.f, align 8, !tbaa !109
  %i.el = load i32, ptr %i.q, align 4, !tbaa !48
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr @_ZN2cv8saliency14ObjectnessBING8_clrNameE, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !56
  br label %bb.o

_ZN2cv8saliency7CmTimer4StopEv.exit:              ; preds = %_ZN2cv8saliency14ObjectnessBING12ValStructVecIfNS_3VecIiLi4EEEE6appendERKS5_i.exit
  %i.ep = load ptr, ptr %5, align 8, !tbaa !53
  %i.eq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef %i.ep) ; 0 uses
  %.pre196.a = load i8, ptr %i.f, align 8, !tbaa !109, !range !110
  %14 = trunc nuw i8 %.pre196.a to i1
  %i.er = load i32, ptr %i.q, align 4, !tbaa !48
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr @_ZN2cv8saliency14ObjectnessBING8_clrNameE, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !56 ; 2 uses
  br i1 %14, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN2cv8saliency7CmTimer4StopEv.exit
  %i.ev = load ptr, ptr %5, align 8, !tbaa !53
  %i.ew = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef %i.ev) ; 0 uses
  br label %_ZN2cv8saliency7CmTimer13TimeInSecondsEv.exit

bb.o:                                             ; preds = %_ZN2cv8saliency7CmTimer4StopEv.exit.thread, %_ZN2cv8saliency7CmTimer4StopEv.exit
  %15 = phi ptr [ %i.eo, %_ZN2cv8saliency7CmTimer4StopEv.exit.thread ], [ %i.eu, %_ZN2cv8saliency7CmTimer4StopEv.exit ]
  %16 = load i64, ptr %i.p, align 8, !tbaa !352
  %i.ex = sitofp i64 %16 to float
  %i.ey = fdiv float %i.ex, 1.000000e+06
  %i.ez = fpext float %i.ey to double
  br label %_ZN2cv8saliency7CmTimer13TimeInSecondsEv.exit

_ZN2cv8saliency7CmTimer13TimeInSecondsEv.exit:    ; preds = %bb.o, %bb.n
  %i.fa = phi ptr [ %i.eu, %bb.n ], [ %15, %bb.o ]
  %.0.i = phi double [ 0.000000e+00, %bb.n ], [ %i.ez, %bb.o ]
  %i.fb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef %i.fa, double noundef %.0.i) ; 0 uses
  %i.fc = load i8, ptr %i.f, align 8, !tbaa !109, !range !110, !noundef !111
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN2cv8saliency7CmTimer13TimeInSecondsEv.exit
  %i.fe = load ptr, ptr %5, align 8, !tbaa !53
  %i.ff = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef %i.fe) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN2cv8saliency7CmTimer13TimeInSecondsEv.exit
  %i.fg = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.d
  br i1 %i.fh, label %_ZN2cv8saliency7CmTimerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.q
  %i.fi = load i64, ptr %i.d, align 8, !tbaa !24
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #26
  br label %_ZN2cv8saliency7CmTimerD2Ev.exit

_ZN2cv8saliency7CmTimerD2Ev.exit:                 ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.r

bb.r:                                             ; preds = %bb.e, %_ZN2cv8saliency7CmTimerD2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !330

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN2cv3VecIiLi4EEESaIS2_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorISt4pairIfiESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, %_ZN2cv8saliency7CmTimer5StartEv.exit, %.invoke
  %lpad.loopexit.split-lp285 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv8saliency7CmTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.loopexit.split-lp160

bb.s:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.fk = load ptr, ptr %i.t, align 8, !tbaa !53, !noalias !353
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !23, !noalias !353 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.fn, ptr %7, align 8, !tbaa !20, !alias.scope !354
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 0, ptr %i.fo, align 8, !tbaa !23, !alias.scope !354
  store i8 0, ptr %i.fn, align 8, !tbaa !24, !alias.scope !354
  %i.fp = add i64 %i.fm, 2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.fp)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !23, !alias.scope !354
  %i.fr = sub i64 4611686018427387903, %i.fq
  %i.fs = icmp ult i64 %i.fr, %i.fm
  br i1 %i.fs, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.t
  %i.ft = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.fk, i64 noundef %i.fm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.u ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.fu = load i64, ptr %i.fo, align 8, !tbaa !23, !alias.scope !354
  %i.fv = and i64 %i.fu, -2
  %i.fw = icmp eq i64 %i.fv, 4611686018427387902
  br i1 %i.fw, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #27
          to label %.cont.i.i unwind label %bb.u

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.fx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.16, i64 noundef 2)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.s
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fz = load ptr, ptr %7, align 8, !tbaa !53, !alias.scope !354 ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.fn
  br i1 %i.ga, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.gc = load i32, ptr %i.k, align 8, !tbaa !100 ; 4 uses
  %i.gd = sext i32 %i.gc to i64                   ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !93 ; 2 uses
  %i.gg = load ptr, ptr %i.gb, align 8, !tbaa !95 ; 2 uses
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = ashr exact i64 %i.gj, 4                 ; 3 uses
  %i.gl = icmp ult i64 %i.gk, %i.gd
  br i1 %i.gl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.gm = sub nuw nsw i64 %i.gd, %i.gk
  invoke void @_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gb, i64 noundef %i.gm)
          to label %.noexc62 unwind label %bb.aj

.noexc62:                                         ; preds = %bb.v
  %.pre.i = load i32, ptr %i.k, align 8, !tbaa !100
  br label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE6resizeEm.exit.i

bb.w:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.gn = icmp ugt i64 %i.gk, %i.gd
  br i1 %i.gn, label %bb.x, label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE6resizeEm.exit.i

bb.x:                                             ; preds = %bb.w
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %i.gd ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gf, %i.go
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE6resizeEm.exit.i, label %_ZSt8_DestroyIPN2cv3VecIiLi4EEES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN2cv3VecIiLi4EEES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %bb.x
  store ptr %i.go, ptr %i.ge, align 8, !tbaa !93
  br label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE6resizeEm.exit.i: ; preds = %_ZSt8_DestroyIPN2cv3VecIiLi4EEES2_EvT_S4_RSaIT0_E.exit.i.i.i, %bb.x, %bb.w, %.noexc62
  %i.gp = phi i32 [ %.pre.i, %.noexc62 ], [ %i.gc, %bb.w ], [ %i.gc, %bb.x ], [ %i.gc, %_ZSt8_DestroyIPN2cv3VecIiLi4EEES2_EvT_S4_RSaIT0_E.exit.i.i.i ]
  %i.gq = icmp sgt i32 %i.gp, 0
  br i1 %i.gq, label %.lr.ph.i59, label %_ZN2cv8saliency14ObjectnessBING12ValStructVecIfNS_3VecIiLi4EEEE18getSortedStructValEv.exit

.lr.ph.i59:                                       ; preds = %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE6resizeEm.exit.i, %.lr.ph.i59
  %indvars.iv.i60 = phi i64 [ %indvars.iv.next.i61, %.lr.ph.i59 ], [ 0, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE6resizeEm.exit.i ] ; 3 uses
  %i.gr = load ptr, ptr %i.j, align 8, !tbaa !82
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.i60
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !87
  %i.gv = sext i32 %i.gu to i64
  %i.gw = load ptr, ptr %2, align 8, !tbaa !95
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.gw, i64 %i.gv
  %i.gy = load ptr, ptr %i.gb, align 8, !tbaa !95
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.gy, i64 %indvars.iv.i60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gz, ptr noundef nonnull align 4 dereferenceable(16) %i.gx, i64 16, i1 false)
  %indvars.iv.next.i61 = add nuw nsw i64 %indvars.iv.i60, 1 ; 2 uses
  %i.ha = load i32, ptr %i.k, align 8, !tbaa !100
  %i.hb = sext i32 %i.ha to i64
  %i.hc = icmp slt i64 %indvars.iv.next.i61, %i.hb
  br i1 %i.hc, label %.lr.ph.i59, label %_ZN2cv8saliency14ObjectnessBING12ValStructVecIfNS_3VecIiLi4EEEE18getSortedStructValEv.exit, !llvm.loop !3

_ZN2cv8saliency14ObjectnessBING12ValStructVecIfNS_3VecIiLi4EEEE18getSortedStructValEv.exit: ; preds = %.lr.ph.i59, %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EE6resizeEm.exit.i
  %i.hd = load ptr, ptr %i.ge, align 8, !tbaa !93 ; 3 uses
  %i.he = load ptr, ptr %i.gb, align 8, !tbaa !95 ; 3 uses
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.hd, %i.he
  br i1 %.not.i.i.i.i, label %.noexc65, label %bb.y

bb.y:                                             ; preds = %_ZN2cv8saliency14ObjectnessBING12ValStructVecIfNS_3VecIiLi4EEEE18getSortedStructValEv.exit
  %i.hi = icmp ugt i64 %i.hh, 9223372036854775792
  br i1 %i.hi, label %.noexc.i.i63, label %_ZNSt15__new_allocatorIN2cv3VecIiLi4EEEE8allocateEmPKv.exit.i.i.i.i, !prof !112

.noexc.i.i63:                                     ; preds = %bb.y
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc64 unwind label %bb.aj

.noexc64:                                         ; preds = %.noexc.i.i63
  unreachable

_ZNSt15__new_allocatorIN2cv3VecIiLi4EEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.y
  %i.hj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hh) #28
          to label %_ZNSt15__new_allocatorIN2cv3VecIiLi4EEEE8allocateEmPKv.exit.i.i.i.i..noexc65_crit_edge unwind label %bb.aj

_ZNSt15__new_allocatorIN2cv3VecIiLi4EEEE8allocateEmPKv.exit.i.i.i.i..noexc65_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv3VecIiLi4EEEE8allocateEmPKv.exit.i.i.i.i
  %.pre197 = load ptr, ptr %i.gb, align 8, !tbaa !113
  %.pre198 = load ptr, ptr %i.ge, align 8, !tbaa !113
  br label %.noexc65

.noexc65:                                         ; preds = %_ZNSt15__new_allocatorIN2cv3VecIiLi4EEEE8allocateEmPKv.exit.i.i.i.i..noexc65_crit_edge, %_ZN2cv8saliency14ObjectnessBING12ValStructVecIfNS_3VecIiLi4EEEE18getSortedStructValEv.exit
  %i.hk = phi ptr [ %i.hd, %_ZN2cv8saliency14ObjectnessBING12ValStructVecIfNS_3VecIiLi4EEEE18getSortedStructValEv.exit ], [ %.pre198, %_ZNSt15__new_allocatorIN2cv3VecIiLi4EEEE8allocateEmPKv.exit.i.i.i.i..noexc65_crit_edge ] ; 2 uses
  %i.hl = phi ptr [ %i.he, %_ZN2cv8saliency14ObjectnessBING12ValStructVecIfNS_3VecIiLi4EEEE18getSortedStructValEv.exit ], [ %.pre197, %_ZNSt15__new_allocatorIN2cv3VecIiLi4EEEE8allocateEmPKv.exit.i.i.i.i..noexc65_crit_edge ] ; 2 uses
  %i.hm = phi ptr [ null, %_ZN2cv8saliency14ObjectnessBING12ValStructVecIfNS_3VecIiLi4EEEE18getSortedStructValEv.exit ], [ %i.hj, %_ZNSt15__new_allocatorIN2cv3VecIiLi4EEEE8allocateEmPKv.exit.i.i.i.i..noexc65_crit_edge ] ; 9 uses
  %.not11.i.i.i.i.i = icmp eq ptr %i.hl, %i.hk
  br i1 %.not11.i.i.i.i.i, label %_ZNSt6vectorIN2cv3VecIiLi4EEESaIS2_EEC2ERKS4_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc65, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.hy, %.lr.ph.i.i.i.i.i ], [ %i.hm, %.noexc65 ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.hx, %.lr.ph.i.i.i.i.i ], [ %i.hl, %.noexc65 ] ; 5 uses
  %i.hn = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !27
  store i32 %i.hn, ptr %.013.i.i.i.i.i, align 4, !tbaa !27
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !27
  %i.hq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !27
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !27
  %i.ht = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i32 %i.hs, ptr %i.ht, align 4, !tbaa !27
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 12
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !27
  %i.hw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 12
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !27
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 16 ; 2 uses
end_hunk_0
