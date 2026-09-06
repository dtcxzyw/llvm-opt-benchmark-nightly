Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/imgwarp?download=true
inline.NumInlined: 4250
inline.NumDeleted: 1030
loop-unroll.NumCompletelyUnrolled: 150
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 237
begin_hunk_0_@_ZN2cv11convertMapsERKNS_11_InputArrayES2_RKNS_12_OutputArrayES5_ib:bb.a
  %i.hi = and i16 %i.hh, 1023
  %i.hj = zext nneg i16 %i.hi to i32
  br label %bb.ch

bb.ch:                                            ; preds = %.lr.ph304, %bb.cg
  %i.hk = phi i32 [ %i.hj, %bb.cg ], [ 0, %.lr.ph304 ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv320, 2
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.idx ; 2 uses
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !56
  %i.hn = sitofp i16 %i.hm to float
  %i.ho = and i32 %i.hk, 31
  %i.hp = uitofp nneg i32 %i.ho to float
  %i.hq = call float @llvm.fmuladd.f32(float %i.hp, float 3.125000e-02, float %i.hn)
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv320
  store float %i.hq, ptr %i.hr, align 4, !tbaa !52
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !56
  %i.hu = sitofp i16 %i.ht to float
  %i.hv = lshr i32 %i.hk, 5
  %i.hw = uitofp nneg i32 %i.hv to float
  %i.hx = call float @llvm.fmuladd.f32(float %i.hw, float 3.125000e-02, float %i.hu)
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv320
  store float %i.hx, ptr %i.hy, align 4, !tbaa !52
  %indvars.iv.next321 = add nuw nsw i64 %indvars.iv320, 1 ; 2 uses
  %exitcond324.not = icmp eq i64 %indvars.iv.next321, %wide.trip.count323
  br i1 %exitcond324.not, label %.loopexit292, label %.lr.ph304, !llvm.loop !1863

bb.ci:                                            ; preds = %bb.cf
  br i1 %or.cond31, label %.preheader299, label %bb.cl

.preheader299:                                    ; preds = %bb.ci
  br i1 %i.ei, label %.lr.ph, label %.loopexit292

.lr.ph:                                           ; preds = %.preheader299, %bb.ck
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ck ], [ 0, %.preheader299 ] ; 3 uses
  br i1 %.not, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.em, i64 %indvars.iv
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !56
  %i.ib = and i16 %i.ia, 1023
  %i.ic = zext nneg i16 %i.ib to i32
  br label %bb.ck

bb.ck:                                            ; preds = %.lr.ph, %bb.cj
  %i.id = phi i32 [ %i.ic, %bb.cj ], [ 0, %.lr.ph ] ; 2 uses
  %i.ie = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.ek, i64 %i.ie
  %i.ig = and i32 %i.id, 31
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.ie
  %i.ii = lshr i32 %i.id, 5
  %i.ij = load <2 x i16>, ptr %i.if, align 2, !tbaa !56
  %i.ik = sitofp <2 x i16> %i.ij to <2 x float>
  %i.il = uitofp nneg i32 %i.ii to float
  %i.im = uitofp nneg i32 %i.ig to float
  %i.in = insertelement <2 x float> poison, float %i.im, i64 0
  %i.io = insertelement <2 x float> %i.in, float %i.il, i64 1
  %i.ip = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.io, <2 x float> splat (float 3.125000e-02), <2 x float> %i.ik)
  store <2 x float> %i.ip, ptr %i.ih, align 4, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit292, label %.lr.ph, !llvm.loop !1864

bb.cl:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.cm unwind label %bb.co

bb.cm:                                            ; preds = %bb.cl
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @__func__._ZN2cv11convertMapsERKNS_11_InputArrayES2_RKNS_12_OutputArrayES5_ib, ptr noundef nonnull @.str.1, i32 noundef 1972) #27
          to label %bb.cn unwind label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  unreachable

bb.co:                                            ; preds = %bb.cl
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

bb.cp:                                            ; preds = %bb.cm
  %i.ir = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.is = load ptr, ptr %24, align 8, !tbaa !61   ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %bb.cp
  %i.iv = load i64, ptr %i.it, align 8, !tbaa !53
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237, %bb.co
  %.pn197 = phi { ptr, i32 } [ %i.iq, %bb.co ], [ %i.ir, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237 ], [ %i.ir, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  br label %.body

.loopexit292:                                     ; preds = %bb.ck, %bb.ch, %.lr.ph306, %.lr.ph308, %.lr.ph310, %.preheader299, %.preheader297, %.preheader295, %.preheader293, %.preheader
  %indvars.iv.next341 = add nuw nsw i64 %indvars.iv340, 1 ; 2 uses
  %exitcond344.not = icmp eq i64 %indvars.iv.next341, %wide.trip.count343
  br i1 %exitcond344.not, label %.loopexit301, label %bb.cc, !llvm.loop !1865

.loopexit301:                                     ; preds = %.loopexit292, %bb.cb, %bb.bd, %bb.be, %bb.bg, %bb.bs, %bb.bn
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.ix = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !93
  %.not.i240 = icmp eq i32 %i.iy, 0
  br i1 %.not.i240, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.cq

bb.cq:                                            ; preds = %.loopexit301
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %8)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.iz = landingpad { ptr, i32 }
          catch ptr null
  %i.ja = extractvalue { ptr, i32 } %i.iz, 0
  call void @__clang_call_terminate(ptr %i.ja) #26
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %.loopexit301, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  ret void

.body:                                            ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, %bb.at, %bb.aw, %bb.bh, %bb.bi, %.loopexit, %.loopexit290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.pn213.pn.pn = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.as, %bb.u ], [ %i.ct, %bb.bi ], [ %i.at, %bb.v ], [ %i.cs, %bb.bh ], [ %.pn208.pn, %.loopexit ], [ %.pn206, %.loopexit290 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn195, %bb.aw ], [ %.pn192, %bb.at ], [ %.pn190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228 ], [ %.pn197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #24
  br label %bb.cs

bb.cs:                                            ; preds = %.body, %bb.t
  %.pn213.pn.pn.pn = phi { ptr, i32 } [ %.pn213.pn.pn, %.body ], [ %i.ar, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #24
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.s
  %.pn213.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn213.pn.pn.pn, %bb.cs ], [ %i.aq, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  resume { ptr, i32 } %.pn213.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #6

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #6

declare void @_ZN2cv5mergeEPKNS_3MatEmRKNS_12_OutputArrayE(ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare void @_ZN2cv5splitERKNS_3MatEPS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN2cv3hal21warpAffineBlocklineNNEPiS1_Psiii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %5 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %5, 4
  br i1 %min.iters.check, label %.lr.ph.preheader32, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splatinsert29 = insertelement <4 x i32> poison, i32 %4, i64 0
  %i.b = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> %broadcast.splatinsert29, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x i32>, ptr %i.c, align 4, !tbaa !16
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load31 = load <4 x i32>, ptr %i.d, align 4, !tbaa !16
  %6 = shl nuw nsw i64 %index, 2
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 %6
  %8 = shufflevector <4 x i32> %wide.load, <4 x i32> %wide.load31, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %9 = add nsw <8 x i32> %8, %i.b
  %10 = ashr <8 x i32> %9, splat (i32 10)
  %i.e = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %10, <8 x i32> splat (i32 -32768))
  %i.f = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.e, <8 x i32> splat (i32 32767))
  %interleaved.vec = trunc nsw <8 x i32> %i.f to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %7, align 2, !tbaa !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !1870

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader32

.lr.ph.preheader32:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader32, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader32 ] ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %i.j = add nsw i32 %i.i, %3
  %i.k = ashr i32 %i.j, 10
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  %i.n = add nsw i32 %i.m, %4
  %i.o = ashr i32 %i.n, 10
  %i.p = tail call i32 @llvm.smax.i32(i32 %i.k, i32 -32768)
  %i.q = tail call i32 @llvm.smin.i32(i32 %i.p, i32 32767)
  %i.r = trunc nsw i32 %i.q to i16
  %.idx = shl nuw nsw i64 %indvars.iv, 2
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  store i16 %i.r, ptr %i.s, align 2, !tbaa !56
  %i.t = tail call i32 @llvm.smax.i32(i32 %i.o, i32 -32768)
  %i.u = tail call i32 @llvm.smin.i32(i32 %i.t, i32 32767)
  %i.v = trunc nsw i32 %i.u to i16
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 %i.v, ptr %i.w, align 2, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1871

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN2cv3hal19warpAffineBlocklineEPiS1_PsS2_iii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i32 %6, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %6 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %6, 4
  br i1 %min.iters.check, label %.lr.ph.preheader38, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep = getelementptr i8, ptr %2, i64 %i.b
  %i.c = shl nuw nsw i64 %wide.trip.count, 1
  %scevgep34 = getelementptr i8, ptr %3, i64 %i.c
  %bound0 = icmp ult ptr %2, %scevgep34
  %bound1 = icmp ult ptr %3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader38, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert35 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat36 = shufflevector <4 x i32> %broadcast.splatinsert35, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  %wide.load = load <4 x i32>, ptr %i.d, align 4, !tbaa !16
  %i.e = add nsw <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.f = lshr <4 x i32> %i.e, splat (i32 5)
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load37 = load <4 x i32>, ptr %i.g, align 4, !tbaa !16
  %i.h = add nsw <4 x i32> %wide.load37, %broadcast.splat36 ; 2 uses
  %i.i = shl nuw nsw i64 %index, 2
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %i.i
  %i.k = shufflevector <4 x i32> %i.e, <4 x i32> %i.h, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.l = ashr <8 x i32> %i.k, splat (i32 10)
  %i.m = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.l, <8 x i32> splat (i32 -32768))
  %i.n = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.m, <8 x i32> splat (i32 32767))
  %interleaved.vec = trunc nsw <8 x i32> %i.n to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %i.j, align 2, !tbaa !56, !alias.scope !1877, !noalias !1878
  %i.o = and <4 x i32> %i.h, splat (i32 992)
  %i.p = and <4 x i32> %i.f, splat (i32 31)
  %i.q = or disjoint <4 x i32> %i.o, %i.p
  %i.r = trunc nuw nsw <4 x i32> %i.q to <4 x i16>
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index
  store <4 x i16> %i.r, ptr %i.s, align 2, !tbaa !56, !alias.scope !1878
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !1875

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader38

.lr.ph.preheader38:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader38, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader38 ] ; 5 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !16
  %i.w = add nsw i32 %i.v, %4                     ; 2 uses
  %i.x = lshr i32 %i.w, 5
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !16
  %i.aa = add nsw i32 %i.z, %5                    ; 2 uses
  %i.ab = ashr i32 %i.w, 10
  %i.ac = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 -32768)
  %i.ad = tail call i32 @llvm.smin.i32(i32 %i.ac, i32 32767)
  %i.ae = trunc nsw i32 %i.ad to i16
  %.idx = shl nuw nsw i64 %indvars.iv, 2
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  store i16 %i.ae, ptr %i.af, align 2, !tbaa !56
  %i.ag = ashr i32 %i.aa, 10
  %i.ah = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 -32768)
  %i.ai = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 32767)
  %i.aj = trunc nsw i32 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !56
  %i.al = and i32 %i.aa, 992
  %i.am = and i32 %i.x, 31
  %i.an = or disjoint i32 %i.al, %i.am
  %i.ao = trunc nuw nsw i32 %i.an to i16
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1876

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv10warpAffineERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %7) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %10 = alloca %"class.cv::AutoBuffer.85", align 8 ; 9 uses
  %11 = alloca %"class.cv::Range", align 4        ; 6 uses
  %12 = alloca %"class.cv::WarpAffineInvoker", align 8 ; 18 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator", align 1   ; 3 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 19 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %22 = alloca %"class.std::allocator", align 1   ; 3 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %i.a = alloca [6 x double], align 16            ; 33 uses
  %24 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %26 = alloca %"class.std::allocator", align 1   ; 3 uses
  %27 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %28 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %29 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %.sroa.0.0.extract.trunc = trunc i64 %3 to i32
  %.sroa.3.0.extract.shift = lshr i64 %3, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %15, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv10warpAffineERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintEE26__cv_trace_location_fn2456)
  %i.b = icmp eq i32 %7, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef i32 @_ZN2cv23getDefaultAlgorithmHintEv()
          to label %bb.d unwind label %bb.c       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.e = and i32 %4, 7                            ; 3 uses
  %i.f = invoke noundef i32 @_ZNK2cv11_InputArray8channelsEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = icmp slt i32 %i.f, 5
  br i1 %i.g, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %i.e, label %bb.m [
    i32 4, label %bb.h
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@_ZNK2cv17WarpAffineInvokerclERKNS_5RangeE:bb.a
bb.a:
  %2 = alloca %"class.cv::AutoBuffer.86", align 8 ; 10 uses
  %3 = alloca %"class.cv::AutoBuffer.86", align 8 ; 9 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %6 = alloca %"class.cv::Rect_", align 4         ; 8 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 8 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %14 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !1977
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 8192, ptr %i.b, align 8, !tbaa !1978
  %i.c = call noalias noundef nonnull dereferenceable(16384) ptr @_Znam(i64 noundef 16384) #25
  store ptr %i.c, ptr %2, align 8, !tbaa !1977
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !1977
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 4096, ptr %i.e, align 8, !tbaa !1978
  %i.f = invoke noalias noundef nonnull dereferenceable(8192) ptr @_Znam(i64 noundef 8192) #25
          to label %bb.b unwind label %bb.e       ; 7 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.f, ptr %3, align 8, !tbaa !1977
  %i.g = load ptr, ptr %2, align 8, !tbaa !1977   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !110
  %i.j = icmp eq i32 %i.i, 0
  %i.k = select i1 %i.j, i32 512, i32 16          ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.n = load i32, ptr %i.m, align 8, !tbaa !16   ; 3 uses
  %.sroa.speculated121 = call i32 @llvm.smin.i32(i32 %i.n, i32 32)
  %i.o = sdiv i32 4096, %.sroa.speculated121      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16   ; 4 uses
  %.sroa.speculated113 = call i32 @llvm.smin.i32(i32 %i.q, i32 %i.o) ; 2 uses
  %i.r = sdiv i32 4096, %.sroa.speculated113      ; 2 uses
  %.sroa.speculated108 = call i32 @llvm.smin.i32(i32 %i.n, i32 %i.r)
  %i.s = load i32, ptr %1, align 4, !tbaa !20     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !21   ; 2 uses
  %i.v = icmp slt i32 %i.s, %i.u
  br i1 %i.v, label %.preheader.lr.ph, label %._crit_edge133

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 20
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %16, i64 20
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bb = icmp sgt i32 %i.q, 0
  br i1 %i.bb, label %.preheader.preheader, label %._crit_edge133

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bc = zext nneg i32 %i.q to i64
  %i.bd = sext i32 %i.o to i64
  %smin = call i64 @llvm.smin.i64(i64 %i.bc, i64 %i.bd)
  %i.be = sext i32 %i.s to i64
  %i.bf = call i32 @llvm.smin.i32(i32 %i.n, i32 %i.r)
  %smin142 = sext i32 %i.bf to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge131
  %i.bg = phi i32 [ %i.u, %.preheader.preheader ], [ %i.gu, %._crit_edge131 ]
  %i.bh = phi i32 [ %i.q, %.preheader.preheader ], [ %i.gv, %._crit_edge131 ] ; 3 uses
  %indvars.iv143 = phi i64 [ %i.be, %.preheader.preheader ], [ %indvars.iv.next144, %._crit_edge131 ] ; 4 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph130.preheader, label %._crit_edge131

.lr.ph130.preheader:                              ; preds = %.preheader
  %i.bj = trunc nsw i64 %indvars.iv143 to i32     ; 2 uses
  br label %.lr.ph130

.lr.ph130:                                        ; preds = %.lr.ph130.preheader, %bb.o
  %indvars.iv140 = phi i64 [ 0, %.lr.ph130.preheader ], [ %indvars.iv.next141, %bb.o ] ; 4 uses
  %i.bk = phi i32 [ %i.bh, %.lr.ph130.preheader ], [ %i.gp, %bb.o ]
  %i.bl = trunc nsw i64 %indvars.iv140 to i32     ; 2 uses
  %i.bm = sub nsw i32 %i.bk, %i.bl
  %.sroa.speculated104 = call i32 @llvm.smin.i32(i32 %i.bm, i32 %.sroa.speculated113) ; 7 uses
  %i.bn = load i32, ptr %i.t, align 4, !tbaa !21
  %i.bo = sub nsw i32 %i.bn, %i.bj
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bo, i32 %.sroa.speculated108) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef %.sroa.speculated, i32 noundef %.sroa.speculated104, i32 noundef 35, ptr noundef %i.g, i64 noundef 0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %.lr.ph130
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store i32 %i.bl, ptr %6, align 4, !tbaa !132
  store i32 %i.bj, ptr %i.w, align 4, !tbaa !133
  store i32 %.sroa.speculated104, ptr %i.x, align 4, !tbaa !134
  store i32 %.sroa.speculated, ptr %i.y, align 4, !tbaa !135
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.bp = icmp sgt i32 %.sroa.speculated, 0
  %.pre = load i32, ptr %i.h, align 8, !tbaa !110 ; 2 uses
  br i1 %i.bp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.bq = load ptr, ptr %i.z, align 8, !tbaa !114 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bv = load <2 x double>, ptr %i.br, align 8, !tbaa !58 ; 3 uses
  %i.bw = load double, ptr %i.bs, align 8, !tbaa !58
  %i.bx = load <2 x double>, ptr %i.bt, align 8, !tbaa !58 ; 3 uses
  %i.by = load double, ptr %i.bu, align 8, !tbaa !58
  %i.bz = icmp eq i32 %.pre, 0
  %wide.trip.count.i87 = zext i32 %.sroa.speculated104 to i64 ; 10 uses
  %i.ca = icmp sgt i32 %.sroa.speculated104, 0    ; 2 uses
  %i.cb = load ptr, ptr %i.aa, align 8, !tbaa !112
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %indvars.iv140 ; 4 uses
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !113
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %indvars.iv140 ; 4 uses
  br i1 %i.bz, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.ca, label %.lr.ph.preheader.i.us.preheader, label %._crit_edge.thread

.lr.ph.preheader.i.us.preheader:                  ; preds = %.lr.ph.split.us
  %i.cf = zext nneg i32 %.sroa.speculated to i64
  %i.cg = shufflevector <2 x double> %i.bv, <2 x double> %i.bx, <2 x i32> <i32 0, i32 2>
  %i.ch = shufflevector <2 x double> %i.bv, <2 x double> %i.bx, <2 x i32> <i32 1, i32 3>
  %min.iters.check = icmp ult i32 %.sroa.speculated104, 4
  %n.vec = and i64 %wide.trip.count.i87, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i87
  br label %.lr.ph.preheader.i.us

.lr.ph.preheader.i.us:                            ; preds = %.lr.ph.preheader.i.us.preheader, %_ZN2cv3hal21warpAffineBlocklineNNEPiS1_Psiii.exit.loopexit.us
  %indvars.iv137 = phi i64 [ 0, %.lr.ph.preheader.i.us.preheader ], [ %indvars.iv.next138, %_ZN2cv3hal21warpAffineBlocklineNNEPiS1_Psiii.exit.loopexit.us ] ; 3 uses
  %i.ci = mul nuw nsw i64 %indvars.iv137, %wide.trip.count.i87
  %.idx154 = shl nuw nsw i64 %i.ci, 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx154 ; 2 uses
  %i.ck = add nsw i64 %indvars.iv137, %indvars.iv143
  %i.cl = trunc nsw i64 %i.ck to i32
  %i.cm = sitofp i32 %i.cl to double
  %i.cn = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.co, <2 x double> %i.ch)
  %i.cq = fmul <2 x double> %i.cp, splat (double 1.024000e+03) ; 2 uses
  %i.cr = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.cq)
  %i.cs = add nsw i32 %i.cr, %i.k                 ; 2 uses
  %i.ct = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cu = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ct)
  %i.cv = add nsw i32 %i.cu, %i.k                 ; 2 uses
  br i1 %min.iters.check, label %.lr.ph.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cs, i64 0
  %broadcast.splatinsert158 = insertelement <4 x i32> poison, i32 %i.cv, i64 0
  %i.cw = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> %broadcast.splatinsert158, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %index
  %wide.load = load <4 x i32>, ptr %i.cx, align 4, !tbaa !16
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index
  %wide.load160 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !16
  %17 = shl nuw nsw i64 %index, 2
  %18 = getelementptr inbounds nuw i8, ptr %i.cj, i64 %17
  %19 = shufflevector <4 x i32> %wide.load, <4 x i32> %wide.load160, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %20 = add nsw <8 x i32> %19, %i.cw
  %21 = ashr <8 x i32> %20, splat (i32 10)
  %i.cz = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %21, <8 x i32> splat (i32 -32768))
  %i.da = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.cz, <8 x i32> splat (i32 32767))
  %interleaved.vec = trunc nsw <8 x i32> %i.da to <8 x i16>
  store <8 x i16> %interleaved.vec, ptr %18, align 2, !tbaa !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !1966

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN2cv3hal21warpAffineBlocklineNNEPiS1_Psiii.exit.loopexit.us, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %.lr.ph.preheader.i.us, %middle.block
  %indvars.iv.i.us.ph = phi i64 [ 0, %.lr.ph.preheader.i.us ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.lr.ph.i.us ], [ %indvars.iv.i.us.ph, %.lr.ph.i.us.preheader ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.i.us
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !16
  %i.de = add nsw i32 %i.dd, %i.cs
  %i.df = ashr i32 %i.de, 10
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.i.us
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !16
  %i.di = add nsw i32 %i.dh, %i.cv
  %i.dj = ashr i32 %i.di, 10
  %i.dk = call i32 @llvm.smax.i32(i32 %i.df, i32 -32768)
  %i.dl = call i32 @llvm.smin.i32(i32 %i.dk, i32 32767)
  %i.dm = trunc nsw i32 %i.dl to i16
  %.idx.i.us = shl nuw nsw i64 %indvars.iv.i.us, 2
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.idx.i.us ; 2 uses
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !56
  %i.do = call i32 @llvm.smax.i32(i32 %i.dj, i32 -32768)
  %i.dp = call i32 @llvm.smin.i32(i32 %i.do, i32 32767)
  %i.dq = trunc nsw i32 %i.dp to i16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  store i16 %i.dq, ptr %i.dr, align 2, !tbaa !56
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i87
  br i1 %exitcond.not.i.us, label %_ZN2cv3hal21warpAffineBlocklineNNEPiS1_Psiii.exit.loopexit.us, label %.lr.ph.i.us, !llvm.loop !1967

_ZN2cv3hal21warpAffineBlocklineNNEPiS1_Psiii.exit.loopexit.us: ; preds = %.lr.ph.i.us, %middle.block
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.ds = icmp samesign ult i64 %indvars.iv.next138, %i.cf
  br i1 %i.ds, label %.lr.ph.preheader.i.us, label %._crit_edge, !llvm.loop !1968

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.ca, label %.lr.ph.preheader.i86.preheader, label %._crit_edge.thread155

.lr.ph.preheader.i86.preheader:                   ; preds = %.lr.ph.split
  %i.dt = zext nneg i32 %.sroa.speculated to i64  ; 3 uses
  %i.du = shl nuw nsw i64 %i.dt, 2
  %i.dv = mul nuw i64 %i.du, %wide.trip.count.i87
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.dv
  %i.dw = shl nuw nsw i64 %i.dt, 1
  %i.dx = mul nuw nsw i64 %i.dw, %wide.trip.count.i87
  %scevgep161 = getelementptr i8, ptr %i.f, i64 %i.dx
  %i.dy = shufflevector <2 x double> %i.bv, <2 x double> %i.bx, <2 x i32> <i32 0, i32 2>
  %i.dz = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %i.by, i64 1
  %min.iters.check163 = icmp ult i32 %.sroa.speculated104, 4
  %bound0 = icmp ult ptr %i.g, %scevgep161
  %bound1 = icmp ult ptr %i.f, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec165 = and i64 %wide.trip.count.i87, 2147483644 ; 3 uses
  %cmp.n177 = icmp eq i64 %n.vec165, %wide.trip.count.i87
  br label %.lr.ph.preheader.i86

.lr.ph.preheader.i86:                             ; preds = %.lr.ph.preheader.i86.preheader, %_ZN2cv3hal21warpAffineBlocklineNNEPiS1_Psiii.exit.loopexit127
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.i86.preheader ], [ %indvars.iv.next, %_ZN2cv3hal21warpAffineBlocklineNNEPiS1_Psiii.exit.loopexit127 ] ; 3 uses
  %i.eb = mul nuw nsw i64 %indvars.iv, %wide.trip.count.i87 ; 2 uses
  %.idx = shl nuw nsw i64 %i.eb, 2
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx ; 2 uses
  %i.ed = add nsw i64 %indvars.iv, %indvars.iv143
  %i.ee = trunc nsw i64 %i.ed to i32
  %i.ef = sitofp i32 %i.ee to double
  %i.eg = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.eh, <2 x double> %i.ea)
  %i.ej = fmul <2 x double> %i.ei, splat (double 1.024000e+03) ; 2 uses
  %i.ek = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ej)
  %i.el = add nsw i32 %i.ek, %i.k                 ; 2 uses
  %i.em = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.en = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.em)
  %i.eo = add nsw i32 %i.en, %i.k                 ; 2 uses
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.eb ; 2 uses
  %brmerge = select i1 %min.iters.check163, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.lr.ph.i88.preheader, label %vector.ph164

vector.ph164:                                     ; preds = %.lr.ph.preheader.i86
  %broadcast.splatinsert166 = insertelement <4 x i32> poison, i32 %i.el, i64 0
  %broadcast.splat167 = shufflevector <4 x i32> %broadcast.splatinsert166, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert168 = insertelement <4 x i32> poison, i32 %i.eo, i64 0
  %broadcast.splat169 = shufflevector <4 x i32> %broadcast.splatinsert168, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph164
  %index171 = phi i64 [ 0, %vector.ph164 ], [ %index.next175, %vector.body170 ] ; 5 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %index171
  %wide.load172 = load <4 x i32>, ptr %i.eq, align 4, !tbaa !16
  %i.er = add nsw <4 x i32> %wide.load172, %broadcast.splat167 ; 2 uses
  %i.es = lshr <4 x i32> %i.er, splat (i32 5)
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index171
  %wide.load173 = load <4 x i32>, ptr %i.et, align 4, !tbaa !16
  %i.eu = add nsw <4 x i32> %wide.load173, %broadcast.splat169 ; 2 uses
  %i.ev = shl nuw nsw i64 %index171, 2
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ev
  %i.ex = shufflevector <4 x i32> %i.er, <4 x i32> %i.eu, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.ey = ashr <8 x i32> %i.ex, splat (i32 10)
  %i.ez = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ey, <8 x i32> splat (i32 -32768))
  %i.fa = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ez, <8 x i32> splat (i32 32767))
  %interleaved.vec174 = trunc nsw <8 x i32> %i.fa to <8 x i16>
  store <8 x i16> %interleaved.vec174, ptr %i.ew, align 2, !tbaa !56, !alias.scope !1979, !noalias !1980
  %i.fb = and <4 x i32> %i.eu, splat (i32 992)
  %i.fc = and <4 x i32> %i.es, splat (i32 31)
  %i.fd = or disjoint <4 x i32> %i.fb, %i.fc
  %i.fe = trunc nuw nsw <4 x i32> %i.fd to <4 x i16>
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %index171
  store <4 x i16> %i.fe, ptr %i.ff, align 2, !tbaa !56, !alias.scope !1980
  %index.next175 = add nuw i64 %index171, 4       ; 2 uses
  %i.fg = icmp eq i64 %index.next175, %n.vec165
  br i1 %i.fg, label %middle.block176, label %vector.body170, !llvm.loop !1972

middle.block176:                                  ; preds = %vector.body170
  br i1 %cmp.n177, label %_ZN2cv3hal21warpAffineBlocklineNNEPiS1_Psiii.exit.loopexit127, label %.lr.ph.i88.preheader

.lr.ph.i88.preheader:                             ; preds = %.lr.ph.preheader.i86, %middle.block176
  %indvars.iv.i89.ph = phi i64 [ %n.vec165, %middle.block176 ], [ 0, %.lr.ph.preheader.i86 ]
  br label %.lr.ph.i88

bb.e:                                             ; preds = %bb.a
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv10AutoBufferIsLm0EED2Ev.exit

bb.f:                                             ; preds = %.lr.ph130
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.g:                                             ; preds = %bb.c
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.q

.lr.ph.i88:                                       ; preds = %.lr.ph.i88.preheader, %.lr.ph.i88
  %indvars.iv.i89 = phi i64 [ %indvars.iv.next.i91, %.lr.ph.i88 ], [ %indvars.iv.i89.ph, %.lr.ph.i88.preheader ] ; 5 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.i89
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !16
  %i.fm = add nsw i32 %i.fl, %i.el                ; 2 uses
  %i.fn = lshr i32 %i.fm, 5
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.i89
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !16
  %i.fq = add nsw i32 %i.fp, %i.eo                ; 2 uses
  %i.fr = ashr i32 %i.fm, 10
  %i.fs = call i32 @llvm.smax.i32(i32 %i.fr, i32 -32768)
  %i.ft = call i32 @llvm.smin.i32(i32 %i.fs, i32 32767)
  %i.fu = trunc nsw i32 %i.ft to i16
  %.idx.i90 = shl nuw nsw i64 %indvars.iv.i89, 2
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.idx.i90 ; 2 uses
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !56
  %i.fw = ashr i32 %i.fq, 10
  %i.fx = call i32 @llvm.smax.i32(i32 %i.fw, i32 -32768)
  %i.fy = call i32 @llvm.smin.i32(i32 %i.fx, i32 32767)
  %i.fz = trunc nsw i32 %i.fy to i16
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !56
  %i.gb = and i32 %i.fq, 992
  %i.gc = and i32 %i.fn, 31
  %i.gd = or disjoint i32 %i.gb, %i.gc
  %i.ge = trunc nuw nsw i32 %i.gd to i16
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %indvars.iv.i89
  store i16 %i.ge, ptr %i.gf, align 2, !tbaa !56
  %indvars.iv.next.i91 = add nuw nsw i64 %indvars.iv.i89, 1 ; 2 uses
  %exitcond.not.i92 = icmp eq i64 %indvars.iv.next.i91, %wide.trip.count.i87
  br i1 %exitcond.not.i92, label %_ZN2cv3hal21warpAffineBlocklineNNEPiS1_Psiii.exit.loopexit127, label %.lr.ph.i88, !llvm.loop !1973

_ZN2cv3hal21warpAffineBlocklineNNEPiS1_Psiii.exit.loopexit127: ; preds = %.lr.ph.i88, %middle.block176
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gg = icmp samesign ult i64 %indvars.iv.next, %i.dt
  br i1 %i.gg, label %.lr.ph.preheader.i86, label %._crit_edge, !llvm.loop !1968

._crit_edge:                                      ; preds = %_ZN2cv3hal21warpAffineBlocklineNNEPiS1_Psiii.exit.loopexit127, %_ZN2cv3hal21warpAffineBlocklineNNEPiS1_Psiii.exit.loopexit.us, %bb.d
  %i.gh = icmp eq i32 %.pre, 0
  br i1 %i.gh, label %._crit_edge.thread, label %._crit_edge.thread155

._crit_edge.thread:                               ; preds = %.lr.ph.split.us, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i32 0, ptr %i.aq, align 8, !tbaa !116
  store i32 0, ptr %i.ar, align 4, !tbaa !117
  store i32 16842752, ptr %7, align 8, !tbaa !94
  store ptr %i.ac, ptr %i.as, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store i64 0, ptr %i.au, align 8
  store i32 33619968, ptr %8, align 8, !tbaa !94
  store ptr %5, ptr %i.at, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store i32 0, ptr %i.av, align 8, !tbaa !116
  store i32 0, ptr %i.aw, align 4, !tbaa !117
  store i32 16842752, ptr %9, align 8, !tbaa !94
  store ptr %4, ptr %i.ax, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #24
end_hunk_1
