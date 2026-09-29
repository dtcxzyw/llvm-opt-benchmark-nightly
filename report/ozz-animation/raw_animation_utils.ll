Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/raw_animation_utils?download=true
inline.NumInlined: 692
inline.NumDeleted: 361
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3ozz9animation7offline12_GLOBAL__N_122SampleTrack_NoValidateERKNS1_12RawAnimation10JointTrackEfPNS_4math9TransformE:bb.a
  %.fca.1.insert.i.i.i47 = insertvalue { <2 x float>, float } %.fca.0.insert.i.i.i46, float %i.fl, 1
  br label %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit

_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation8ScaleKeyENS_12StdAllocatorIS6_EEEFNS_4math6Float3ERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit: ; preds = %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEEFNS_4math10QuaternionERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit, %bb.o, %bb.q, %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation8ScaleKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i
  %.fca.1.insert.merged.i39 = phi { <2 x float>, float } [ %.fca.1.insert.i.i.i47, %_ZSt11lower_boundIPKN3ozz9animation7offline12RawAnimation8ScaleKeyES4_PFbRS5_S7_EET_SA_SA_RKT0_T1_.exit.i ], [ %i.dz, %bb.o ], [ %i.ef, %bb.q ], [ { <2 x float> splat (float 1.000000e+00), float 1.000000e+00 }, %_ZN3ozz9animation7offline12_GLOBAL__N_115SampleComponentISt6vectorINS1_12RawAnimation11RotationKeyENS_12StdAllocatorIS6_EEEFNS_4math10QuaternionERKSB_SD_fEEENT_10value_type5ValueERKSF_RKT0_f.exit ] ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %.fca.1.insert.merged.i39, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %.fca.1.insert.merged.i39, 1
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 28
  store <2 x float> %.fca.0.extract, ptr %i.fm, align 4, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 36
  store float %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN3ozz9animation7offline15SampleAnimationERKNS1_12RawAnimationEfRKNS_4spanINS_4math9TransformEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, float noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  br i1 %i.a, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !23     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 72
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !74   ; 2 uses
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %.loopexit, label %.preheader37

.preheader37:                                     ; preds = %bb.b
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %.preheader, label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %.pre = load i64, ptr %i.i, align 8, !tbaa !74
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader37
  %i.l = phi i64 [ %i.j, %.preheader37 ], [ %.pre, %.preheader.loopexit ] ; 4 uses
  %.lcssa = phi i64 [ 0, %.preheader37 ], [ %i.ad, %.preheader.loopexit ] ; 5 uses
  %i.m = icmp ult i64 %.lcssa, %i.l
  br i1 %i.m, label %.lr.ph40, label %.loopexit

.lr.ph40:                                         ; preds = %.preheader
  %i.n = load ptr, ptr %2, align 8, !tbaa !75     ; 5 uses
  %i.o = sub nuw i64 %i.l, %.lcssa
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph40, %.prol.preheader
  %.039.prol = phi i64 [ %i.q, %.prol.preheader ], [ %.lcssa, %.lr.ph40 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph40 ]
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.039.prol ; 4 uses
  %.sroa.6.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.p, i8 0, i64 20, i1 false)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.6.0..sroa_idx.prol, align 4, !tbaa !12
  %.sroa.7.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.7.0..sroa_idx.prol, align 4, !tbaa !12
  %.sroa.8.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  store float 1.000000e+00, ptr %.sroa.8.0..sroa_idx.prol, align 4, !tbaa !12
  %i.q = add nuw i64 %.039.prol, 1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !69

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph40
  %.039.unr = phi i64 [ %.lcssa, %.lr.ph40 ], [ %i.q, %.prol.preheader ]
  %i.r = sub i64 %.lcssa, %i.l
  %i.s = icmp ugt i64 %i.r, -4
  br i1 %i.s, label %.loopexit, label %.lr.ph40.new

.lr.ph:                                           ; preds = %.preheader37, %.lr.ph
  %i.t = phi ptr [ %i.z, %.lr.ph ], [ %i.d, %.preheader37 ]
  %.01738 = phi i64 [ %i.x, %.lr.ph ], [ 0, %.preheader37 ] ; 3 uses
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.t, i64 %.01738
  %i.v = load ptr, ptr %2, align 8, !tbaa !75
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.v, i64 %.01738
  tail call fastcc void @_ZN3ozz9animation7offline12_GLOBAL__N_122SampleTrack_NoValidateERKNS1_12RawAnimation10JointTrackEfPNS_4math9TransformE(ptr noundef nonnull align 8 dereferenceable(72) %i.u, float noundef %1, ptr noundef %i.w)
  %i.x = add nuw i64 %.01738, 1                   ; 2 uses
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.z = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 72                ; 2 uses
  %i.ae = icmp ult i64 %i.x, %i.ad
  br i1 %i.ae, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !70

.lr.ph40.new:                                     ; preds = %.prol.loopexit, %.lr.ph40.new
  %.039 = phi i64 [ %i.am, %.lr.ph40.new ], [ %.039.unr, %.prol.loopexit ] ; 5 uses
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.039 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.af, i8 0, i64 20, i1 false)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !12
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !12
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 36
  store float 1.000000e+00, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !12
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.039 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.6.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ag, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ah, i8 0, i64 20, i1 false)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.6.0..sroa_idx.1, align 4, !tbaa !12
  %.sroa.7.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ag, i64 68
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.7.0..sroa_idx.1, align 4, !tbaa !12
  %.sroa.8.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ag, i64 76
  store float 1.000000e+00, ptr %.sroa.8.0..sroa_idx.1, align 4, !tbaa !12
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.039 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %.sroa.6.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.ai, i64 100
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aj, i8 0, i64 20, i1 false)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.6.0..sroa_idx.2, align 4, !tbaa !12
  %.sroa.7.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.ai, i64 108
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.7.0..sroa_idx.2, align 4, !tbaa !12
  %.sroa.8.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.ai, i64 116
  store float 1.000000e+00, ptr %.sroa.8.0..sroa_idx.2, align 4, !tbaa !12
  %i.ak = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.039 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  %.sroa.6.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.ak, i64 140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.al, i8 0, i64 20, i1 false)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.6.0..sroa_idx.3, align 4, !tbaa !12
  %.sroa.7.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.ak, i64 148
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.7.0..sroa_idx.3, align 4, !tbaa !12
  %.sroa.8.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.ak, i64 156
  store float 1.000000e+00, ptr %.sroa.8.0..sroa_idx.3, align 4, !tbaa !12
  %i.am = add nuw i64 %.039, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.am, %i.l
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph40.new, !llvm.loop !71

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph40.new, %.preheader, %bb.b, %bb.a
  %.018 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %.preheader ], [ true, %.lr.ph40.new ], [ true, %.prol.loopexit ]
  ret i1 %.018
}

declare noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3ozz9animation7offline21SampleTrackModelSpaceERKNS1_12RawAnimationERKNS0_8SkeletonEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2, i32 noundef %3) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.21", align 8    ; 13 uses
  %i.a = alloca i16, align 2                      ; 8 uses
  %5 = alloca %"struct.std::pair.26", align 8     ; 8 uses
  %6 = alloca %"struct.ozz::span.25", align 8     ; 6 uses
  %7 = alloca %"class.std::vector.14", align 8    ; 11 uses
  %8 = alloca %"struct.ozz::math::Transform", align 16 ; 12 uses
  %9 = alloca %"struct.std::pair.33", align 16    ; 10 uses
  %i.b = tail call noundef zeroext i1 @_ZNK3ozz9animation7offline12RawAnimation8ValidateEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
  br i1 %i.b, label %bb.b, label %_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  %i.e = load ptr, ptr %1, align 8, !tbaa !23
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 72
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !87
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = icmp eq i32 %i.j, %i.m
  %i.o = icmp sgt i32 %3, -1
  %or.cond.not116 = and i1 %i.o, %i.n
  %.not = icmp slt i32 %3, %i.m
  %or.cond113 = and i1 %.not, %or.cond.not116
  br i1 %or.cond113, label %bb.c, label %_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit

_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit: ; preds = %bb.b, %bb.a
  store i8 0, ptr %0, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  br label %bb.af

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.q = trunc i32 %3 to i16                      ; 3 uses
  store i16 %i.q, ptr %i.a, align 2, !tbaa !30
  %.not30123 = icmp eq i16 %i.q, -1
  br i1 %.not30123, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.loopexit119

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.d

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %4, align 8, !tbaa !93    ; 15 uses
  %.pre190 = ptrtoaddr ptr %.pre to i64           ; 6 uses
  %.pre152 = load ptr, ptr %i.s, align 8, !tbaa !93 ; 9 uses
  %.pre152189 = ptrtoaddr ptr %.pre152 to i64     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.w = icmp ne ptr %.pre, %.pre152
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.pre152, i64 -2 ; 7 uses
  %i.x = icmp ult ptr %.pre, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond.i.i, label %iter.check, label %.loopexit119

iter.check:                                       ; preds = %._crit_edge
  %i.y = add i64 %.pre152189, -4
  %i.z = add i64 %.pre190, 2
  %umax192 = call i64 @llvm.umax.i64(i64 %i.y, i64 %i.z)
  %i.aa = add i64 %umax192, -2                    ; 2 uses
  %i.ab = icmp ne i64 %i.aa, %.pre190
  %umin193 = zext i1 %i.ab to i64                 ; 2 uses
  %i.ac = add i64 %.pre190, %umin193
  %i.ad = sub i64 %i.aa, %i.ac
  %i.ae = lshr i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, %umin193         ; 3 uses
  %i.ag = add nuw i64 %i.af, 1                    ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.af, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ah = add i64 %.pre152189, -4
  %i.ai = add i64 %.pre190, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ai)
  %i.aj = add i64 %umax, -2                       ; 2 uses
  %i.ak = icmp ne i64 %i.aj, %.pre190
  %umin = zext i1 %i.ak to i64                    ; 2 uses
  %i.al = add i64 %.pre190, %umin
  %i.am = sub i64 %i.aj, %i.al
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, %umin
  %i.ap = shl nuw i64 %i.ao, 1                    ; 2 uses
  %i.aq = getelementptr i8, ptr %.pre, i64 %i.ap
  %scevgep = getelementptr i8, ptr %i.aq, i64 2
  %i.ar = sub nuw nsw i64 -2, %i.ap
  %scevgep191 = getelementptr i8, ptr %.pre152, i64 %i.ar
  %bound0 = icmp ult ptr %.pre, %.pre152
  %bound1 = icmp ult ptr %scevgep191, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check194 = icmp samesign ult i64 %i.af, 31
  br i1 %min.iters.check194, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.ag, 24
  %n.vec = and i64 %i.ag, -32                     ; 5 uses
  %i.at = mul i64 %n.vec, -2
  %i.au = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.at
  %i.av = shl i64 %n.vec, 1
  %i.aw = getelementptr i8, ptr %.pre, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ax = mul i64 %index, -2
  %next.gep = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.ax ; 2 uses
  %i.ay = shl i64 %index, 1
  %next.gep195 = getelementptr i8, ptr %.pre, i64 %i.ay ; 3 uses
  %i.az = getelementptr i8, ptr %next.gep195, i64 32 ; 2 uses
  %wide.load = load <16 x i16>, ptr %next.gep195, align 2, !tbaa !30, !alias.scope !94, !noalias !95
  %wide.load196 = load <16 x i16>, ptr %i.az, align 2, !tbaa !30, !alias.scope !94, !noalias !95
  %i.ba = getelementptr i8, ptr %next.gep, i64 -30 ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 -62 ; 2 uses
  %wide.load197 = load <16 x i16>, ptr %i.ba, align 2, !tbaa !30, !alias.scope !95
  %wide.load198 = load <16 x i16>, ptr %i.bb, align 2, !tbaa !30, !alias.scope !95
  %reverse = shufflevector <16 x i16> %wide.load197, <16 x i16> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse199 = shufflevector <16 x i16> %wide.load198, <16 x i16> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i16> %reverse, ptr %next.gep195, align 2, !tbaa !30, !alias.scope !94, !noalias !95
  store <16 x i16> %reverse199, ptr %i.az, align 2, !tbaa !30, !alias.scope !94, !noalias !95
  %reverse200 = shufflevector <16 x i16> %wide.load, <16 x i16> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse201 = shufflevector <16 x i16> %wide.load196, <16 x i16> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i16> %reverse200, ptr %i.ba, align 2, !tbaa !30, !alias.scope !95
  store <16 x i16> %reverse201, ptr %i.bb, align 2, !tbaa !30, !alias.scope !95
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %.loopexit119, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec203 = and i64 %i.ag, -8                   ; 4 uses
  %i.bd = mul i64 %n.vec203, -2
  %i.be = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.bd
  %i.bf = shl i64 %n.vec203, 1
  %i.bg = getelementptr i8, ptr %.pre, i64 %i.bf
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index204 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next211, %vec.epilog.vector.body ] ; 3 uses
  %i.bh = mul i64 %index204, -2
  %next.gep205 = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.bh
  %i.bi = shl i64 %index204, 1
  %next.gep206 = getelementptr i8, ptr %.pre, i64 %i.bi ; 2 uses
  %wide.load207 = load <8 x i16>, ptr %next.gep206, align 2, !tbaa !30, !alias.scope !94, !noalias !95
  %i.bj = getelementptr i8, ptr %next.gep205, i64 -14 ; 2 uses
  %wide.load208 = load <8 x i16>, ptr %i.bj, align 2, !tbaa !30, !alias.scope !95
  %reverse209 = shufflevector <8 x i16> %wide.load208, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse209, ptr %next.gep206, align 2, !tbaa !30, !alias.scope !94, !noalias !95
  %reverse210 = shufflevector <8 x i16> %wide.load207, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse210, ptr %i.bj, align 2, !tbaa !30, !alias.scope !95
  %index.next211 = add nuw i64 %index204, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next211, %n.vec203
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !81

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n212 = icmp eq i64 %i.ag, %n.vec203
  br i1 %cmp.n212, label %.loopexit119, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.i.i.ph = phi ptr [ %.sroa.0.08.i.i, %iter.check ], [ %.sroa.0.08.i.i, %vector.memcheck ], [ %i.au, %vec.epilog.iter.check ], [ %i.be, %vec.epilog.middle.block ]
  %.sroa.05.09.i.i.ph = phi ptr [ %.pre, %iter.check ], [ %.pre, %vector.memcheck ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bg, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.bn, %.lr.ph.i.i ], [ %.sroa.05.09.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.bl = load i16, ptr %.sroa.05.09.i.i, align 2, !tbaa !30
  %i.bm = load i16, ptr %.sroa.0.010.i.i, align 2, !tbaa !30
  store i16 %i.bm, ptr %.sroa.05.09.i.i, align 2, !tbaa !30
  store i16 %i.bl, ptr %.sroa.0.010.i.i, align 2, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 2 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -2 ; 2 uses
  %i.bo = icmp ult ptr %i.bn, %.sroa.0.0.i.i
  br i1 %i.bo, label %.lr.ph.i.i, label %.loopexit119, !llvm.loop !82

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %storemerge124 = phi i16 [ %i.q, %.lr.ph ], [ %i.bw, %bb.g ]
  %i.bp = load ptr, ptr %i.s, align 8, !tbaa !35  ; 4 uses
  %i.bq = load ptr, ptr %i.t, align 8, !tbaa !36
  %.not.i = icmp eq ptr %i.bp, %i.bq
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i16 %storemerge124, ptr %i.bp, align 2, !tbaa !30
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  store ptr %i.br, ptr %i.s, align 8, !tbaa !35
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorIsN3ozz12StdAllocatorIsEEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.bp, ptr noundef nonnull align 2 dereferenceable(2) %i.a)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bs = load ptr, ptr %i.u, align 8, !tbaa !96
  %i.bt = load i16, ptr %i.a, align 2, !tbaa !30
  %i.bu = sext i16 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !30 ; 3 uses
  store i16 %i.bw, ptr %i.a, align 2, !tbaa !30
  %.not30 = icmp eq i16 %i.bw, -1
  br i1 %.not30, label %._crit_edge, label %bb.d, !llvm.loop !83

bb.h:                                             ; preds = %bb.f
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ae

.loopexit119:                                     ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %._crit_edge.thread, %._crit_edge
  %i.by = phi ptr [ %i.r, %._crit_edge.thread ], [ %i.v, %._crit_edge ], [ %i.v, %middle.block ], [ %i.v, %vec.epilog.middle.block ], [ %i.v, %.lr.ph.i.i ]
  %i.bz = phi ptr [ null, %._crit_edge.thread ], [ %.pre, %._crit_edge ], [ %.pre, %middle.block ], [ %.pre, %vec.epilog.middle.block ], [ %.pre, %.lr.ph.i.i ] ; 2 uses
  %i.ca = phi ptr [ null, %._crit_edge.thread ], [ %.pre152, %._crit_edge ], [ %.pre152, %middle.block ], [ %.pre152, %vec.epilog.middle.block ], [ %.pre152, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 1
  store ptr %i.bz, ptr %6, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ce, ptr %i.cf, align 8
  invoke void @_ZN3ozz9animation7offline17ExtractTimePointsERKNS1_12RawAnimationERKNS_4spanIKsEE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.26") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.loopexit119
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ch = load i8, ptr %5, align 8, !tbaa !97, !range !98, !noundef !99
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.k, label %_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit58

_ZNSt6vectorISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEED2Ev.exit58: ; preds = %bb.i
  store i8 0, ptr %0, align 8, !tbaa !92
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i8 0, i64 24, i1 false)
  br label %bb.w

bb.j:                                             ; preds = %.loopexit119
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.ad

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.cl = load ptr, ptr %i.cg, align 8, !tbaa !38 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !38 ; 2 uses
  %.not117136 = icmp eq ptr %i.cl, %i.cn
  br i1 %.not117136, label %._crit_edge140.thread, label %.lr.ph139

._crit_edge140.thread:                            ; preds = %bb.k
  store i8 1, ptr %0, align 8, !tbaa !92
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.co, align 8
  br label %_ZNSt12_Vector_baseISt4pairIfN3ozz4math8Float4x4EENS1_12StdAllocatorIS4_EEEC2EmRKS6_.exit.i.i60.thread

.lr.ph139:                                        ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 28 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.1090.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 48
end_hunk_0
