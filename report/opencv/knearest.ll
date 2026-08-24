Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/knearest?download=true
inline.NumInlined: 469
inline.NumDeleted: 236
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK2cv2ml14BruteForceImpl11findNearestERKNS_11_InputArrayEiRKNS_12_OutputArrayES7_S7_:bb.a
  br label %bb.ay

bb.ax:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit66
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #22
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn45 = phi { ptr, i32 } [ %i.bg, %bb.ax ], [ %i.bf, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.bc

bb.az:                                            ; preds = %bb.av, %bb.aq
  %.0 = phi ptr [ %i.be, %bb.av ], [ null, %bb.aq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv2ml14BruteForceImpl19findKNearestInvokerE, i64 16), ptr %17, align 8, !tbaa !26
  %i.bh = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %0, ptr %i.bh, align 8, !tbaa !100
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 %.sroa.speculated, ptr %i.bi, align 8, !tbaa !106
  %i.bj = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %8, ptr %i.bj, align 8, !tbaa !107
  %i.bk = getelementptr inbounds nuw i8, ptr %17, i64 32
  store ptr %.025, ptr %i.bk, align 8, !tbaa !108
  %i.bl = getelementptr inbounds nuw i8, ptr %17, i64 40
  store ptr %.024, ptr %i.bl, align 8, !tbaa !109
  %i.bm = getelementptr inbounds nuw i8, ptr %17, i64 48
  store ptr %.0, ptr %i.bm, align 8, !tbaa !110
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 56
  store ptr %i.a, ptr %i.bn, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  store i32 0, ptr %18, align 4, !tbaa !112
  %i.bo = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 %i.af, ptr %i.bo, align 4, !tbaa !114
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17, double noundef -1.000000e+00)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.bp = load float, ptr %i.a, align 4, !tbaa !79
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.bd

bb.bb:                                            ; preds = %bb.az
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ay, %bb.ao, %bb.ae, %bb.ab
  %.pn47 = phi { ptr, i32 } [ %i.bq, %bb.bb ], [ %.pn45, %bb.ay ], [ %i.ao, %bb.ab ], [ %.pn43, %bb.ao ], [ %.pn41, %bb.ae ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.be

bb.bd:                                            ; preds = %bb.s, %bb.ba
  %.036 = phi float [ %i.bp, %bb.ba ], [ 0.000000e+00, %bb.s ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret float %.036

bb.be:                                            ; preds = %bb.t, %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %.pn49.pn = phi { ptr, i32 } [ %.pn39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %i.ah, %bb.t ], [ %.pn47, %bb.bc ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn49.pn.pn = phi { ptr, i32 } [ %.pn49.pn, %bb.be ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  resume { ptr, i32 } %.pn49.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv2ml4Impl7doTrainERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv2ml4ImplD0Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #25
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

declare void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv2ml14BruteForceImpl19findKNearestInvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv2ml14BruteForceImpl19findKNearestInvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"class.cv::Range", align 4         ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !114  ; 3 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !112    ; 3 uses
  %i.d = sub nsw i32 %i.b, %i.c
  %.sroa.speculated14 = tail call i32 @llvm.smin.i32(i32 %i.d, i32 256)
  %i.e = icmp slt i32 %i.c, %i.b
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.n = phi i32 [ %i.b, %.lr.ph ], [ %i.w, %bb.b ]
  %.019 = phi i32 [ %i.c, %.lr.ph ], [ %i.r, %bb.b ] ; 2 uses
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !107
  %i.q = load i32, ptr %i.h, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.r = add nsw i32 %.019, %.sroa.speculated14   ; 3 uses
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.n, i32 %i.r)
  store i32 %.019, ptr %2, align 4, !tbaa !112
  store i32 %.sroa.speculated, ptr %i.i, align 4, !tbaa !114
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !108
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !109
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !110
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !111
  call void @_ZNK2cv2ml14BruteForceImpl15findNearestCoreERKNS_3MatEiRKNS_5RangeEPS2_S8_S8_Pf(ptr noundef nonnull align 8 dereferenceable(440) %i.o, ptr noundef nonnull align 8 dereferenceable(208) %i.p, i32 noundef %i.q, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef %i.s, ptr noundef %i.t, ptr noundef %i.u, ptr noundef %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.w = load i32, ptr %i.a, align 4, !tbaa !114  ; 2 uses
  %i.x = icmp slt i32 %i.r, %i.w
  br i1 %i.x, label %bb.b, label %._crit_edge, !llvm.loop !115
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv2ml14BruteForceImpl15findNearestCoreERKNS_3MatEiRKNS_5RangeEPS2_S8_S8_Pf(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !89   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !117  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !114
  %i.g = load i32, ptr %3, align 4, !tbaa !112
  %i.h = sub nsw i32 %i.f, %i.g                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.i = mul nsw i32 %i.h, %2                     ; 4 uses
  %i.j = shl nsw i32 %i.i, 1                      ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.l, ptr %8, align 8, !tbaa !118
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.not.i.i = icmp ugt i32 %i.j, 264
  store i64 %i.k, ptr %i.m, align 8, !tbaa !120
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.n = icmp slt i32 %i.i, 0
  %i.o = shl nuw nsw i64 %i.k, 2
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #23 ; 2 uses
  store ptr %i.q, ptr %8, align 8, !tbaa !118
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit

_ZN2cv10AutoBufferIfLm264EEC2Em.exit:             ; preds = %bb.a, %bb.b
  %i.r = phi ptr [ %i.l, %bb.a ], [ %i.q, %bb.b ] ; 10 uses
  %i.s = ptrtoaddr ptr %i.r to i64                ; 2 uses
  %i.t = sext i32 %i.i to i64                     ; 3 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.t ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !121
  %i.x = icmp sgt i32 %i.h, 0                     ; 3 uses
  %i.y = icmp sgt i32 %2, 0                       ; 5 uses
  %or.cond = and i1 %i.x, %i.y
  br i1 %or.cond, label %.preheader251.preheader, label %.preheader250

.preheader251.preheader:                          ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit
  %i.z = zext nneg i32 %2 to i64                  ; 6 uses
  %wide.trip.count316 = zext nneg i32 %i.h to i64
  %min.iters.check = icmp ult i32 %2, 8
  %diff.check = icmp ult i32 %i.i, 8
  %or.cond438 = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.z, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.z
  %xtraiter = and i64 %i.z, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader251

.preheader251:                                    ; preds = %.preheader251.preheader, %._crit_edge
  %indvars.iv313 = phi i64 [ 0, %.preheader251.preheader ], [ %indvars.iv.next314, %._crit_edge ] ; 2 uses
  %i.aa = mul nuw nsw i64 %indvars.iv313, %i.z    ; 6 uses
  br i1 %or.cond438, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader251, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader251 ] ; 2 uses
  %i.ab = add nuw nsw i64 %index, %i.aa           ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.ac, align 4, !tbaa !79
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.ad, align 4, !tbaa !79
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ab ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x float> zeroinitializer, ptr %i.ae, align 4, !tbaa !79
  store <4 x float> zeroinitializer, ptr %i.af, align 4, !tbaa !79
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader251, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader251 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ah = add nuw nsw i64 %indvars.iv.prol, %i.aa ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ah
  store float f0x7F7FFFFF, ptr %i.ai, align 4, !tbaa !79
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ah
  store float 0.000000e+00, ptr %i.aj, align 4, !tbaa !79
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !125

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ak = sub nsw i64 %indvars.iv.ph, %i.z
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %._crit_edge, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add nuw nsw i64 1, %i.aa
  %invariant.op464 = add nuw nsw i64 2, %i.aa
  %invariant.op466 = add nuw nsw i64 3, %i.aa
  br label %scalar.ph

.preheader250:                                    ; preds = %._crit_edge, %_ZN2cv10AutoBufferIfLm264EEC2Em.exit
  %i.am = icmp sgt i32 %i.d, 0
  br i1 %i.am, label %.preheader249.lr.ph, label %._crit_edge280.split

.preheader249.lr.ph:                              ; preds = %.preheader250
  %.not233254 = icmp slt i32 %i.b, 4
  %i.an = add i32 %2, -2                          ; 2 uses
  br i1 %i.x, label %.preheader249.preheader, label %._crit_edge308

.preheader249.preheader:                          ; preds = %.preheader249.lr.ph
  %i.ao = add i32 %i.b, -4                        ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = zext nneg i32 %i.ao to i64
  %i.au = and i32 %i.ao, -4
  %i.av = add i32 %i.au, 4
  %i.aw = sext i32 %i.an to i64                   ; 5 uses
  %i.ax = sext i32 %2 to i64
  %wide.trip.count337 = zext nneg i32 %i.d to i64
  %.pre.pre = load ptr, ptr %i.as, align 8, !tbaa !121
  %.pre365.pre = load i64, ptr %i.ar, align 8, !tbaa !12
  %.pre366.pre = load i32, ptr %3, align 4, !tbaa !112
  %.pre366.pre.a = load ptr, ptr %i.aq, align 8, !tbaa !121
  %.pre367.pre = load i64, ptr %i.ap, align 8, !tbaa !12
  %wide.trip.count332 = zext nneg i32 %i.h to i64
  %i.ay = sext i32 %.pre366.pre to i64
  %i.az = shl nsw i64 %i.t, 2
  %i.ba = add nsw i64 %i.aw, 1
  %diff.check395 = icmp ugt i64 %i.az, -36
  br label %.preheader249

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.3, %scalar.ph ] ; 5 uses
  %i.bb = add nuw nsw i64 %indvars.iv, %i.aa      ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bb
  store float f0x7F7FFFFF, ptr %i.bc, align 4, !tbaa !79
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bb
  store float 0.000000e+00, ptr %i.bd, align 4, !tbaa !79
  %.reass = add nuw nsw i64 %indvars.iv, %invariant.op ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.reass
  store float f0x7F7FFFFF, ptr %i.be, align 4, !tbaa !79
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.reass
  store float 0.000000e+00, ptr %i.bf, align 4, !tbaa !79
  %.reass465 = add nuw nsw i64 %indvars.iv, %invariant.op464 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.reass465
  store float f0x7F7FFFFF, ptr %i.bg, align 4, !tbaa !79
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.reass465
  store float 0.000000e+00, ptr %i.bh, align 4, !tbaa !79
  %.reass467 = add nuw nsw i64 %indvars.iv, %invariant.op466 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.reass467
  store float f0x7F7FFFFF, ptr %i.bi, align 4, !tbaa !79
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.reass467
  store float 0.000000e+00, ptr %i.bj, align 4, !tbaa !79
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.z
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !127

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1 ; 2 uses
  %exitcond317.not = icmp eq i64 %indvars.iv.next314, %wide.trip.count316
  br i1 %exitcond317.not, label %.preheader250, label %.preheader251, !llvm.loop !128

.preheader249:                                    ; preds = %.preheader249.preheader, %._crit_edge278
  %indvars.iv334 = phi i64 [ 0, %.preheader249.preheader ], [ %indvars.iv.next335, %._crit_edge278 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv334
  %i.bl = mul i64 %.pre365.pre, %indvars.iv334
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.bl ; 9 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader249, %._crit_edge267.thread
  %indvars.iv329 = phi i64 [ 0, %.preheader249 ], [ %indvars.iv.next330, %._crit_edge267.thread ] ; 3 uses
  %i.bn = add nsw i64 %indvars.iv329, %i.ay
  %i.bo = mul i64 %.pre367.pre, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre366.pre.a, i64 %i.bo ; 9 uses
  br i1 %.not233254, label %.preheader248, label %.lr.ph

.preheader248:                                    ; preds = %.lr.ph, %bb.c
  %.0211.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.dc, %.lr.ph ] ; 3 uses
  %.1204.lcssa = phi i32 [ 0, %bb.c ], [ %i.av, %.lr.ph ] ; 4 uses
  %i.bq = icmp slt i32 %.1204.lcssa, %i.b
  br i1 %i.bq, label %.lr.ph261.preheader, label %._crit_edge262

.lr.ph261.preheader:                              ; preds = %.preheader248
  %i.br = zext i32 %.1204.lcssa to i64            ; 2 uses
  %i.bs = sub i32 %i.b, %.1204.lcssa
  %xtraiter443 = and i32 %i.bs, 3                 ; 2 uses
  %lcmp.mod444.not = icmp eq i32 %xtraiter443, 0
  br i1 %lcmp.mod444.not, label %.lr.ph261.prol.loopexit, label %.lr.ph261.prol

.lr.ph261.prol:                                   ; preds = %.lr.ph261.preheader, %.lr.ph261.prol
  %indvars.iv321.prol = phi i64 [ %indvars.iv.next322.prol, %.lr.ph261.prol ], [ %i.br, %.lr.ph261.preheader ] ; 3 uses
  %.1212259.prol = phi float [ %i.by, %.lr.ph261.prol ], [ %.0211.lcssa, %.lr.ph261.preheader ]
  %prol.iter445 = phi i32 [ %prol.iter445.next, %.lr.ph261.prol ], [ 0, %.lr.ph261.preheader ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv321.prol
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !79
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv321.prol
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !79
  %i.bx = fsub float %i.bu, %i.bw                 ; 2 uses
  %i.by = call float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %.1212259.prol) ; 3 uses
  %indvars.iv.next322.prol = add nuw nsw i64 %indvars.iv321.prol, 1 ; 2 uses
  %prol.iter445.next = add i32 %prol.iter445, 1   ; 2 uses
  %prol.iter445.cmp.not = icmp eq i32 %prol.iter445.next, %xtraiter443
  br i1 %prol.iter445.cmp.not, label %.lr.ph261.prol.loopexit, label %.lr.ph261.prol, !llvm.loop !129

.lr.ph261.prol.loopexit:                          ; preds = %.lr.ph261.prol, %.lr.ph261.preheader
  %indvars.iv321.unr = phi i64 [ %i.br, %.lr.ph261.preheader ], [ %indvars.iv.next322.prol, %.lr.ph261.prol ]
  %.1212259.unr = phi float [ %.0211.lcssa, %.lr.ph261.preheader ], [ %i.by, %.lr.ph261.prol ]
  %.lcssa442.unr = phi float [ poison, %.lr.ph261.preheader ], [ %i.by, %.lr.ph261.prol ]
  %i.bz = sub i32 %.1204.lcssa, %i.b
  %i.ca = icmp ugt i32 %i.bz, -4
  br i1 %i.ca, label %._crit_edge262, label %.lr.ph261

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv318 = phi i64 [ %indvars.iv.next319, %.lr.ph ], [ 0, %bb.c ] ; 6 uses
  %.0211255 = phi float [ %i.dc, %.lr.ph ], [ 0.000000e+00, %bb.c ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv318
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !79
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv318
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !79
  %i.cf = fsub float %i.cc, %i.ce                 ; 2 uses
  %i.cg = or disjoint i64 %indvars.iv318, 1       ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !79
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cg
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !79
  %i.cl = fsub float %i.ci, %i.ck                 ; 2 uses
  %i.cm = or disjoint i64 %indvars.iv318, 2       ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cm
  %i.co = load float, ptr %i.cn, align 4, !tbaa !79
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cm
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !79
  %i.cr = fsub float %i.co, %i.cq                 ; 2 uses
  %i.cs = or disjoint i64 %indvars.iv318, 3       ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !79
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cs
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !79
  %i.cx = fsub float %i.cu, %i.cw                 ; 2 uses
  %i.cy = fmul float %i.cl, %i.cl
  %i.cz = call float @llvm.fmuladd.f32(float %i.cf, float %i.cf, float %i.cy)
  %i.da = call float @llvm.fmuladd.f32(float %i.cr, float %i.cr, float %i.cz)
  %i.db = call float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.da)
  %i.dc = fadd float %.0211255, %i.db             ; 2 uses
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 4 ; 2 uses
  %.not233 = icmp samesign ugt i64 %indvars.iv.next319, %i.at
  br i1 %.not233, label %.preheader248, label %.lr.ph, !llvm.loop !130

.lr.ph261:                                        ; preds = %.lr.ph261.prol.loopexit, %.lr.ph261
  %indvars.iv321 = phi i64 [ %indvars.iv.next322.3, %.lr.ph261 ], [ %indvars.iv321.unr, %.lr.ph261.prol.loopexit ] ; 6 uses
  %.1212259 = phi float [ %i.ea, %.lr.ph261 ], [ %.1212259.unr, %.lr.ph261.prol.loopexit ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv321
  %i.de = load float, ptr %i.dd, align 4, !tbaa !79
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv321
  %i.dg = load float, ptr %i.df, align 4, !tbaa !79
  %i.dh = fsub float %i.de, %i.dg                 ; 2 uses
  %i.di = call float @llvm.fmuladd.f32(float %i.dh, float %i.dh, float %.1212259)
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.next322
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !79
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next322
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !79
  %i.dn = fsub float %i.dk, %i.dm                 ; 2 uses
  %i.do = call float @llvm.fmuladd.f32(float %i.dn, float %i.dn, float %i.di)
  %indvars.iv.next322.1 = add nuw nsw i64 %indvars.iv321, 2 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.next322.1
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !79
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next322.1
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !79
  %i.dt = fsub float %i.dq, %i.ds                 ; 2 uses
  %i.du = call float @llvm.fmuladd.f32(float %i.dt, float %i.dt, float %i.do)
  %indvars.iv.next322.2 = add nuw nsw i64 %indvars.iv321, 3 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.next322.2
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !79
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next322.2
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !79
  %i.dz = fsub float %i.dw, %i.dy                 ; 2 uses
  %i.ea = call float @llvm.fmuladd.f32(float %i.dz, float %i.dz, float %i.du) ; 2 uses
  %indvars.iv.next322.3 = add nuw nsw i64 %indvars.iv321, 4 ; 2 uses
  %i.eb = trunc nuw i64 %indvars.iv.next322.3 to i32
  %i.ec = icmp sgt i32 %i.b, %i.eb
  br i1 %i.ec, label %.lr.ph261, label %._crit_edge262, !llvm.loop !131

._crit_edge262:                                   ; preds = %.lr.ph261.prol.loopexit, %.lr.ph261, %.preheader248
  %.1212.lcssa = phi float [ %.0211.lcssa, %.preheader248 ], [ %.lcssa442.unr, %.lr.ph261.prol.loopexit ], [ %i.ea, %.lr.ph261 ] ; 2 uses
  %i.ed = bitcast float %.1212.lcssa to i32
  %i.ee = mul nsw i64 %indvars.iv329, %i.ax       ; 2 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ee ; 6 uses
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ee ; 5 uses
  br i1 %i.y, label %.lr.ph266, label %._crit_edge267.thread

.lr.ph266:                                        ; preds = %._crit_edge262, %bb.d
  %.3206264 = phi i32 [ %i.el, %bb.d ], [ %2, %._crit_edge262 ] ; 4 uses
  %i.eh = zext nneg i32 %.3206264 to i64
  %i.ei = getelementptr [4 x i8], ptr %i.ef, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 -4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !16
  %.not234 = icmp sgt i32 %i.ek, %i.ed
  br i1 %.not234, label %bb.d, label %._crit_edge267

bb.d:                                             ; preds = %.lr.ph266
  %i.el = add nsw i32 %.3206264, -1
  %i.em = icmp sgt i32 %.3206264, 1
  br i1 %i.em, label %.lr.ph266, label %._crit_edge267, !llvm.loop !132

._crit_edge267:                                   ; preds = %bb.d, %.lr.ph266
  %.3206.lcssa = phi i32 [ %.3206264, %.lr.ph266 ], [ 0, %bb.d ] ; 3 uses
  %.not235 = icmp slt i32 %.3206.lcssa, %2
  br i1 %.not235, label %bb.e, label %._crit_edge267.thread

bb.e:                                             ; preds = %._crit_edge267
  %.not236271 = icmp slt i32 %i.an, %.3206.lcssa
  %.pre = zext i32 %.3206.lcssa to i64            ; 4 uses
  br i1 %.not236271, label %._crit_edge275, label %.lr.ph274.preheader

.lr.ph274.preheader:                              ; preds = %bb.e
  %i.en = call i64 @llvm.smin.i64(i64 %i.aw, i64 %.pre)
  %i.eo = sub i64 %i.ba, %i.en                    ; 3 uses
  %min.iters.check398 = icmp ult i64 %i.eo, 8
  %or.cond439 = select i1 %min.iters.check398, i1 true, i1 %diff.check395
  br i1 %or.cond439, label %.lr.ph274.preheader440, label %vector.ph399

vector.ph399:                                     ; preds = %.lr.ph274.preheader
  %n.vec400 = and i64 %i.eo, -8                   ; 3 uses
  %i.ep = sub i64 %i.aw, %n.vec400
  br label %vector.body401

end_hunk_0
