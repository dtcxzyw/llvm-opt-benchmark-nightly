Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/knearest?download=true
inline.NumInlined: 469
inline.NumDeleted: 236
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK2cv2ml14BruteForceImpl11findNearestERKNS_11_InputArrayEiRKNS_12_OutputArrayES7_S7_:bb.a
bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.as
  %i.bf = landingpad { ptr, i32 }
          cleanup
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv2ml14BruteForceImpl19findKNearestInvokerE, i64 16), ptr %17, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %0, ptr %i.bh, align 8, !tbaa !66
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i32 %.sroa.speculated, ptr %i.bi, align 8, !tbaa !67
  %i.bj = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %8, ptr %i.bj, align 8, !tbaa !68
  %i.bk = getelementptr inbounds nuw i8, ptr %17, i64 32
  store ptr %.025, ptr %i.bk, align 8, !tbaa !69
  %i.bl = getelementptr inbounds nuw i8, ptr %17, i64 40
  store ptr %.024, ptr %i.bl, align 8, !tbaa !70
  %i.bm = getelementptr inbounds nuw i8, ptr %17, i64 48
  store ptr %.0, ptr %i.bm, align 8, !tbaa !71
  %i.bn = getelementptr inbounds nuw i8, ptr %17, i64 56
  store ptr %i.a, ptr %i.bn, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  store i32 0, ptr %18, align 4, !tbaa !74
  %i.bo = getelementptr inbounds nuw i8, ptr %18, i64 4
  store i32 %i.af, ptr %i.bo, align 4, !tbaa !75
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17, double noundef -1.000000e+00)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.bp = load float, ptr %i.a, align 4, !tbaa !53
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !75   ; 3 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !74     ; 3 uses
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
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !66
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.q = load i32, ptr %i.h, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.r = add nsw i32 %.019, %.sroa.speculated14   ; 3 uses
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.n, i32 %i.r)
  store i32 %.019, ptr %2, align 4, !tbaa !74
  store i32 %.sroa.speculated, ptr %i.i, align 4, !tbaa !75
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !69
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !70
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !72
  call void @_ZNK2cv2ml14BruteForceImpl15findNearestCoreERKNS_3MatEiRKNS_5RangeEPS2_S8_S8_Pf(ptr noundef nonnull align 8 dereferenceable(440) %i.o, ptr noundef nonnull align 8 dereferenceable(208) %i.p, i32 noundef %i.q, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef %i.s, ptr noundef %i.t, ptr noundef %i.u, ptr noundef %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.w = load i32, ptr %i.a, align 4, !tbaa !75   ; 2 uses
  %i.x = icmp slt i32 %i.r, %i.w
  br i1 %i.x, label %bb.b, label %._crit_edge, !llvm.loop !134
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv2ml14BruteForceImpl15findNearestCoreERKNS_3MatEiRKNS_5RangeEPS2_S8_S8_Pf(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !59   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !160  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !75
  %i.g = load i32, ptr %3, align 4, !tbaa !74
  %i.h = sub nsw i32 %i.f, %i.g                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.i = mul nsw i32 %i.h, %2                     ; 4 uses
  %i.j = shl nsw i32 %i.i, 1                      ; 2 uses
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.l, ptr %8, align 8, !tbaa !162
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.not.i.i = icmp ugt i32 %i.j, 264
  store i64 %i.k, ptr %i.m, align 8, !tbaa !163
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.n = icmp slt i32 %i.i, 0
  %i.o = shl nuw nsw i64 %i.k, 2
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #23 ; 2 uses
  store ptr %i.q, ptr %8, align 8, !tbaa !162
  br label %_ZN2cv10AutoBufferIfLm264EEC2Em.exit

_ZN2cv10AutoBufferIfLm264EEC2Em.exit:             ; preds = %bb.a, %bb.b
  %i.r = phi ptr [ %i.l, %bb.a ], [ %i.q, %bb.b ] ; 14 uses
  %i.s = ptrtoaddr ptr %i.r to i64                ; 2 uses
  %i.t = sext i32 %i.i to i64                     ; 3 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.t ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !164
  %i.x = icmp sgt i32 %i.h, 0                     ; 3 uses
  %i.y = icmp sgt i32 %2, 0                       ; 5 uses
  %or.cond = and i1 %i.x, %i.y
  br i1 %or.cond, label %.preheader251.preheader, label %.preheader250

.preheader251.preheader:                          ; preds = %_ZN2cv10AutoBufferIfLm264EEC2Em.exit
  %i.z = zext nneg i32 %2 to i64                  ; 6 uses
  %wide.trip.count316 = zext nneg i32 %i.h to i64
  %min.iters.check = icmp ult i32 %2, 8
  %diff.check = icmp ult i32 %i.i, 8
  %or.cond448 = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.z, 2147483640               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.z
  %xtraiter = and i64 %i.z, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader251

.preheader251:                                    ; preds = %.preheader251.preheader, %._crit_edge
  %indvars.iv313 = phi i64 [ 0, %.preheader251.preheader ], [ %indvars.iv.next314, %._crit_edge ] ; 2 uses
  %i.aa = mul nuw nsw i64 %indvars.iv313, %i.z    ; 6 uses
  br i1 %or.cond448, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader251, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader251 ] ; 2 uses
  %i.ab = add nuw nsw i64 %index, %i.aa           ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.ac, align 4, !tbaa !53
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.ad, align 4, !tbaa !53
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ab ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x float> zeroinitializer, ptr %i.ae, align 4, !tbaa !53
  store <4 x float> zeroinitializer, ptr %i.af, align 4, !tbaa !53
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !135

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
  store float f0x7F7FFFFF, ptr %i.ai, align 4, !tbaa !53
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ah
  store float 0.000000e+00, ptr %i.aj, align 4, !tbaa !53
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !136

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ak = sub nsw i64 %indvars.iv.ph, %i.z
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %._crit_edge, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add nuw nsw i64 1, %i.aa
  %invariant.op474 = add nuw nsw i64 2, %i.aa
  %invariant.op476 = add nuw nsw i64 3, %i.aa
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
  %i.aw = sext i32 %i.an to i64                   ; 7 uses
  %i.ax = sext i32 %2 to i64                      ; 2 uses
  %wide.trip.count337 = zext nneg i32 %i.d to i64
  %.pre.pre = load ptr, ptr %i.as, align 8, !tbaa !164
  %.pre365.pre = load i64, ptr %i.ar, align 8, !tbaa !16
  %.pre366.pre = load i32, ptr %3, align 4, !tbaa !74
  %.pre367.pre = load ptr, ptr %i.aq, align 8, !tbaa !164
  %.pre368.pre = load i64, ptr %i.ap, align 8, !tbaa !16
  %wide.trip.count332 = zext nneg i32 %i.h to i64
  %i.ay = sext i32 %.pre366.pre to i64
  %i.az = shl nsw i64 %i.t, 2                     ; 2 uses
  %9 = shl nsw i64 %i.aw, 2                       ; 2 uses
  %10 = shl nsw i64 %i.ax, 2
  %i.ba = add nsw i64 %i.aw, 1
  %11 = getelementptr i8, ptr %i.r, i64 %9
  %12 = getelementptr i8, ptr %11, i64 8
  %13 = getelementptr i8, ptr %i.r, i64 %i.az
  %14 = getelementptr i8, ptr %i.r, i64 %i.az
  %15 = getelementptr i8, ptr %14, i64 %9
  %16 = getelementptr i8, ptr %15, i64 8
  br label %.preheader249

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.3, %scalar.ph ] ; 5 uses
  %i.bb = add nuw nsw i64 %indvars.iv, %i.aa      ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bb
  store float f0x7F7FFFFF, ptr %i.bc, align 4, !tbaa !53
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bb
  store float 0.000000e+00, ptr %i.bd, align 4, !tbaa !53
  %.reass = add nuw nsw i64 %indvars.iv, %invariant.op ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.reass
  store float f0x7F7FFFFF, ptr %i.be, align 4, !tbaa !53
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.reass
  store float 0.000000e+00, ptr %i.bf, align 4, !tbaa !53
  %.reass475 = add nuw nsw i64 %indvars.iv, %invariant.op474 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.reass475
  store float f0x7F7FFFFF, ptr %i.bg, align 4, !tbaa !53
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.reass475
  store float 0.000000e+00, ptr %i.bh, align 4, !tbaa !53
  %.reass477 = add nuw nsw i64 %indvars.iv, %invariant.op476 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.reass477
  store float f0x7F7FFFFF, ptr %i.bi, align 4, !tbaa !53
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.reass477
  store float 0.000000e+00, ptr %i.bj, align 4, !tbaa !53
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.z
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !137

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1 ; 2 uses
  %exitcond317.not = icmp eq i64 %indvars.iv.next314, %wide.trip.count316
  br i1 %exitcond317.not, label %.preheader250, label %.preheader251, !llvm.loop !138

.preheader249:                                    ; preds = %.preheader249.preheader, %._crit_edge278
  %indvars.iv334 = phi i64 [ 0, %.preheader249.preheader ], [ %indvars.iv.next335, %._crit_edge278 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv334
  %i.bl = mul i64 %.pre365.pre, %indvars.iv334
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.bl ; 9 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader249, %._crit_edge267.thread
  %indvars.iv329 = phi i64 [ 0, %.preheader249 ], [ %indvars.iv.next330, %._crit_edge267.thread ] ; 4 uses
  %i.bn = add nsw i64 %indvars.iv329, %i.ay
  %i.bo = mul i64 %.pre368.pre, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre367.pre, i64 %i.bo ; 9 uses
  br i1 %.not233254, label %.preheader248, label %.lr.ph

.preheader248:                                    ; preds = %.lr.ph, %bb.c
  %.0211.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.dc, %.lr.ph ] ; 3 uses
  %.1204.lcssa = phi i32 [ 0, %bb.c ], [ %i.av, %.lr.ph ] ; 4 uses
  %i.bq = icmp slt i32 %.1204.lcssa, %i.b
  br i1 %i.bq, label %.lr.ph261.preheader, label %._crit_edge262

.lr.ph261.preheader:                              ; preds = %.preheader248
  %i.br = zext i32 %.1204.lcssa to i64            ; 2 uses
  %i.bs = sub i32 %i.b, %.1204.lcssa
  %xtraiter453.a = and i32 %i.bs, 3               ; 2 uses
  %lcmp.mod454.not.a = icmp eq i32 %xtraiter453.a, 0
  br i1 %lcmp.mod454.not.a, label %.lr.ph261.prol.loopexit, label %.lr.ph261.prol

.lr.ph261.prol:                                   ; preds = %.lr.ph261.preheader, %.lr.ph261.prol
  %indvars.iv321.prol = phi i64 [ %indvars.iv.next322.prol, %.lr.ph261.prol ], [ %i.br, %.lr.ph261.preheader ] ; 3 uses
  %.1212259.prol = phi float [ %i.by, %.lr.ph261.prol ], [ %.0211.lcssa, %.lr.ph261.preheader ]
  %prol.iter455.a = phi i32 [ %prol.iter455.next.a, %.lr.ph261.prol ], [ 0, %.lr.ph261.preheader ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv321.prol
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !53
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv321.prol
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !53
  %i.bx = fsub float %i.bu, %i.bw                 ; 2 uses
  %i.by = call float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %.1212259.prol) ; 3 uses
  %indvars.iv.next322.prol = add nuw nsw i64 %indvars.iv321.prol, 1 ; 2 uses
  %prol.iter455.next.a = add i32 %prol.iter455.a, 1 ; 2 uses
  %prol.iter455.cmp.not.a = icmp eq i32 %prol.iter455.next.a, %xtraiter453.a
  br i1 %prol.iter455.cmp.not.a, label %.lr.ph261.prol.loopexit, label %.lr.ph261.prol, !llvm.loop !139

.lr.ph261.prol.loopexit:                          ; preds = %.lr.ph261.prol, %.lr.ph261.preheader
  %indvars.iv321.unr = phi i64 [ %i.br, %.lr.ph261.preheader ], [ %indvars.iv.next322.prol, %.lr.ph261.prol ]
  %.1212259.unr = phi float [ %.0211.lcssa, %.lr.ph261.preheader ], [ %i.by, %.lr.ph261.prol ]
  %.lcssa452.unr = phi float [ poison, %.lr.ph261.preheader ], [ %i.by, %.lr.ph261.prol ]
  %i.bz = sub i32 %.1204.lcssa, %i.b
  %i.ca = icmp ugt i32 %i.bz, -4
  br i1 %i.ca, label %._crit_edge262, label %.lr.ph261

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv318 = phi i64 [ %indvars.iv.next319, %.lr.ph ], [ 0, %bb.c ] ; 6 uses
  %.0211255 = phi float [ %i.dc, %.lr.ph ], [ 0.000000e+00, %bb.c ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv318
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !53
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv318
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !53
  %i.cf = fsub float %i.cc, %i.ce                 ; 2 uses
  %i.cg = or disjoint i64 %indvars.iv318, 1       ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !53
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cg
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !53
  %i.cl = fsub float %i.ci, %i.ck                 ; 2 uses
  %i.cm = or disjoint i64 %indvars.iv318, 2       ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cm
  %i.co = load float, ptr %i.cn, align 4, !tbaa !53
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cm
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !53
  %i.cr = fsub float %i.co, %i.cq                 ; 2 uses
  %i.cs = or disjoint i64 %indvars.iv318, 3       ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !53
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.cs
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !53
  %i.cx = fsub float %i.cu, %i.cw                 ; 2 uses
  %i.cy = fmul float %i.cl, %i.cl
  %i.cz = call float @llvm.fmuladd.f32(float %i.cf, float %i.cf, float %i.cy)
  %i.da = call float @llvm.fmuladd.f32(float %i.cr, float %i.cr, float %i.cz)
  %i.db = call float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.da)
  %i.dc = fadd float %.0211255, %i.db             ; 2 uses
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 4 ; 2 uses
  %.not233 = icmp samesign ugt i64 %indvars.iv.next319, %i.at
  br i1 %.not233, label %.preheader248, label %.lr.ph, !llvm.loop !140

.lr.ph261:                                        ; preds = %.lr.ph261.prol.loopexit, %.lr.ph261
  %indvars.iv321 = phi i64 [ %indvars.iv.next322.3, %.lr.ph261 ], [ %indvars.iv321.unr, %.lr.ph261.prol.loopexit ] ; 6 uses
  %.1212259 = phi float [ %i.ea, %.lr.ph261 ], [ %.1212259.unr, %.lr.ph261.prol.loopexit ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv321
  %i.de = load float, ptr %i.dd, align 4, !tbaa !53
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv321
  %i.dg = load float, ptr %i.df, align 4, !tbaa !53
  %i.dh = fsub float %i.de, %i.dg                 ; 2 uses
  %i.di = call float @llvm.fmuladd.f32(float %i.dh, float %i.dh, float %.1212259)
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.next322
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !53
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next322
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !53
  %i.dn = fsub float %i.dk, %i.dm                 ; 2 uses
  %i.do = call float @llvm.fmuladd.f32(float %i.dn, float %i.dn, float %i.di)
  %indvars.iv.next322.1 = add nuw nsw i64 %indvars.iv321, 2 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.next322.1
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !53
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next322.1
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !53
  %i.dt = fsub float %i.dq, %i.ds                 ; 2 uses
  %i.du = call float @llvm.fmuladd.f32(float %i.dt, float %i.dt, float %i.do)
  %indvars.iv.next322.2 = add nuw nsw i64 %indvars.iv321, 3 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.next322.2
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !53
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next322.2
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !53
  %i.dz = fsub float %i.dw, %i.dy                 ; 2 uses
  %i.ea = call float @llvm.fmuladd.f32(float %i.dz, float %i.dz, float %i.du) ; 2 uses
  %indvars.iv.next322.3 = add nuw nsw i64 %indvars.iv321, 4 ; 2 uses
  %i.eb = trunc nuw i64 %indvars.iv.next322.3 to i32
  %i.ec = icmp sgt i32 %i.b, %i.eb
  br i1 %i.ec, label %.lr.ph261, label %._crit_edge262, !llvm.loop !141

._crit_edge262:                                   ; preds = %.lr.ph261.prol.loopexit, %.lr.ph261, %.preheader248
  %.1212.lcssa = phi float [ %.0211.lcssa, %.preheader248 ], [ %.lcssa452.unr, %.lr.ph261.prol.loopexit ], [ %i.ea, %.lr.ph261 ] ; 2 uses
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
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !19
  %.not234 = icmp sgt i32 %i.ek, %i.ed
  br i1 %.not234, label %bb.d, label %._crit_edge267

bb.d:                                             ; preds = %.lr.ph266
  %i.el = add nsw i32 %.3206264, -1
  %i.em = icmp sgt i32 %.3206264, 1
  br i1 %i.em, label %.lr.ph266, label %._crit_edge267, !llvm.loop !142

._crit_edge267:                                   ; preds = %bb.d, %.lr.ph266
  %.3206.lcssa = phi i32 [ %.3206264, %.lr.ph266 ], [ 0, %bb.d ] ; 3 uses
  %.not235 = icmp slt i32 %.3206.lcssa, %2
  br i1 %.not235, label %bb.e, label %._crit_edge267.thread

bb.e:                                             ; preds = %._crit_edge267
  %.not236271 = icmp slt i32 %i.an, %.3206.lcssa
  %.pre = zext i32 %.3206.lcssa to i64            ; 4 uses
  br i1 %.not236271, label %._crit_edge275, label %.lr.ph274.preheader

.lr.ph274.preheader:                              ; preds = %bb.e
  %17 = call i64 @llvm.smin.i64(i64 %i.aw, i64 %.pre) ; 2 uses
  %18 = sub i64 %i.ba, %17                        ; 3 uses
  %min.iters.check398 = icmp ult i64 %18, 8
  br i1 %min.iters.check398, label %.lr.ph274.preheader450, label %.lr.ph274.preheader.a

.lr.ph274.preheader.a:                            ; preds = %.lr.ph274.preheader
  %19 = mul i64 %indvars.iv329, %10               ; 4 uses
  %20 = shl nsw i64 %17, 2                        ; 2 uses
  %21 = getelementptr i8, ptr %i.r, i64 %19
  %22 = getelementptr i8, ptr %21, i64 %20
  %23 = getelementptr i8, ptr %12, i64 %19
  %24 = getelementptr i8, ptr %13, i64 %19
  %25 = getelementptr i8, ptr %24, i64 %20
  %26 = getelementptr i8, ptr %16, i64 %19
  %bound0 = icmp ult ptr %22, %26
  %min.iters.check399 = icmp ult ptr %25, %23
  %found.conflict = and i1 %bound0, %min.iters.check399
  br i1 %found.conflict, label %.lr.ph274.preheader450, label %vector.ph405

vector.ph405:                                     ; preds = %.lr.ph274.preheader.a
  %n.vec406 = and i64 %18, -8                     ; 3 uses
  %i.en = sub i64 %i.aw, %n.vec406
  br label %vector.body407

vector.body407:                                   ; preds = %vector.body407, %vector.ph405
  %index408 = phi i64 [ 0, %vector.ph405 ], [ %index.next412, %vector.body407 ] ; 2 uses
  %i.eo = sub i64 %i.aw, %index408                ; 3 uses
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.eo ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -12
  %i.er = getelementptr inbounds i8, ptr %i.ep, i64 -28
  %wide.load = load <4 x i32>, ptr %i.eq, align 4, !tbaa !19, !alias.scope !168, !noalias !169
  %wide.load409 = load <4 x i32>, ptr %i.er, align 4, !tbaa !19, !alias.scope !168, !noalias !169
  %i.es = add nsw i64 %i.eo, 1                    ; 2 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.es ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -12
  %i.ev = getelementptr inbounds i8, ptr %i.et, i64 -28
  store <4 x i32> %wide.load, ptr %i.eu, align 4, !tbaa !19, !alias.scope !168, !noalias !169
  store <4 x i32> %wide.load409, ptr %i.ev, align 4, !tbaa !19, !alias.scope !168, !noalias !169
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.eo ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 -12
  %i.ey = getelementptr inbounds i8, ptr %i.ew, i64 -28
  %wide.load410 = load <4 x float>, ptr %i.ex, align 4, !tbaa !53, !alias.scope !169
  %wide.load411 = load <4 x float>, ptr %i.ey, align 4, !tbaa !53, !alias.scope !169
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.es ; 2 uses
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -12
  %i.fb = getelementptr inbounds i8, ptr %i.ez, i64 -28
  store <4 x float> %wide.load410, ptr %i.fa, align 4, !tbaa !53, !alias.scope !169
  store <4 x float> %wide.load411, ptr %i.fb, align 4, !tbaa !53, !alias.scope !169
  %index.next412 = add nuw i64 %index408, 8       ; 2 uses
  %i.fc = icmp eq i64 %index.next412, %n.vec406
  br i1 %i.fc, label %middle.block413, label %vector.body407, !llvm.loop !146

middle.block413:                                  ; preds = %vector.body407
  %cmp.n414 = icmp eq i64 %18, %n.vec406
  br i1 %cmp.n414, label %._crit_edge275, label %.lr.ph274.preheader450

.lr.ph274.preheader450:                           ; preds = %.lr.ph274.preheader.a, %.lr.ph274.preheader, %middle.block413
  %indvars.iv326.ph = phi i64 [ %i.aw, %.lr.ph274.preheader.a ], [ %i.aw, %.lr.ph274.preheader ], [ %i.en, %middle.block413 ]
  br label %.lr.ph274

.lr.ph274:                                        ; preds = %.lr.ph274.preheader450, %.lr.ph274
  %indvars.iv326 = phi i64 [ %indvars.iv.next327, %.lr.ph274 ], [ %indvars.iv326.ph, %.lr.ph274.preheader450 ] ; 5 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %indvars.iv326
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !19
  %i.ff = add nsw i64 %indvars.iv326, 1           ; 2 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.ff
  store i32 %i.fe, ptr %i.fg, align 4, !tbaa !19
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %indvars.iv326
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !53
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ff
  store float %i.fi, ptr %i.fj, align 4, !tbaa !53
  %indvars.iv.next327 = add nsw i64 %indvars.iv326, -1
  %.not236.not = icmp sgt i64 %indvars.iv326, %.pre
  br i1 %.not236.not, label %.lr.ph274, label %._crit_edge275, !llvm.loop !147

._crit_edge275:                                   ; preds = %.lr.ph274, %middle.block413, %bb.e
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %.pre
  store float %.1212.lcssa, ptr %i.fk, align 4, !tbaa !19
  %i.fl = load float, ptr %i.bk, align 4, !tbaa !53
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %.pre
  store float %i.fl, ptr %i.fm, align 4, !tbaa !53
  br label %._crit_edge267.thread

._crit_edge267.thread:                            ; preds = %._crit_edge262, %._crit_edge267, %._crit_edge275
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1 ; 2 uses
  %exitcond333.not = icmp eq i64 %indvars.iv.next330, %wide.trip.count332
  br i1 %exitcond333.not, label %._crit_edge278, label %bb.c, !llvm.loop !148

._crit_edge278:                                   ; preds = %._crit_edge267.thread
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1 ; 2 uses
  %exitcond338.not = icmp eq i64 %indvars.iv.next335, %wide.trip.count337
  br i1 %exitcond338.not, label %._crit_edge280.split, label %.preheader249, !llvm.loop !149

._crit_edge280.split:                             ; preds = %._crit_edge278, %.preheader250
  %i.fn = sitofp i32 %2 to float
  %i.fo = fdiv nnan float 1.000000e+00, %i.fn
  br i1 %i.x, label %.lr.ph307, label %._crit_edge308

.lr.ph307:                                        ; preds = %._crit_edge280.split
  %.not227 = icmp eq ptr %5, null
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 128
  %.not228 = icmp eq ptr %6, null                 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 2 uses
  %.not229 = icmp eq ptr %4, null                 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fu = icmp ne i32 %2, 1
  %i.fv = sext i32 %2 to i64                      ; 3 uses
  %.idx = shl nsw i64 %i.fv, 2
  %.not.i.i237 = icmp eq i32 %2, 0
  %i.fw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.fv, i1 true)
  %i.fx = shl nuw nsw i64 %i.fw, 1
  %i.fy = xor i64 %i.fx, 126
  %.not298 = icmp slt i32 %2, 1
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %.not232 = icmp eq ptr %7, null
  %i.gf = zext i32 %2 to i64                      ; 14 uses
  %i.gg = add i32 %2, 1                           ; 2 uses
  %wide.trip.count363 = zext nneg i32 %i.h to i64
  %wide.trip.count358 = zext i32 %i.gg to i64
  %min.iters.check435 = icmp ult i32 %2, 8
  %n.vec439 = and i64 %i.gf, 2147483640           ; 3 uses
  %cmp.n446 = icmp eq i64 %n.vec439, %i.gf
  %xtraiter456.a = and i64 %i.gf, 3               ; 2 uses
  %lcmp.mod457.not.a = icmp eq i64 %xtraiter456.a, 0
  %min.iters.check419 = icmp ult i32 %2, 8
  %n.vec423 = and i64 %i.gf, 4294967288           ; 3 uses
  %cmp.n430 = icmp eq i64 %n.vec423, %i.gf
  %xtraiter459 = and i64 %i.gf, 3                 ; 2 uses
  %lcmp.mod460.not = icmp eq i64 %xtraiter459, 0
  %xtraiter462 = and i64 %i.gf, 7                 ; 3 uses
  %i.gh = icmp ult i32 %2, 8
  %unroll_iter = and i64 %i.gf, 2147483640
  %lcmp.mod463.not = icmp eq i64 %xtraiter462, 0
  %lcmp.mod465 = icmp ne i64 %xtraiter462, 0
  %.not = icmp eq i32 %i.gg, 2
  %i.gi = add nsw i64 %wide.trip.count358, -2
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph307, %bb.ag
  %indvars.iv360 = phi i64 [ 0, %.lr.ph307 ], [ %indvars.iv.next361, %bb.ag ] ; 11 uses
  br i1 %.not227, label %.preheader246, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.gj = load i32, ptr %3, align 4, !tbaa !74
  %i.gk = sext i32 %i.gj to i64
  %i.gl = add i64 %indvars.iv360, %i.gk
  %i.gm = load ptr, ptr %i.fp, align 8, !tbaa !164 ; 2 uses
  %i.gn = ptrtoaddr ptr %i.gm to i64
  %i.go = load i64, ptr %i.fq, align 8, !tbaa !16
  %i.gp = mul i64 %i.go, %i.gl                    ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gp ; 6 uses
  br i1 %i.y, label %.lr.ph283, label %.preheader244

.lr.ph283:                                        ; preds = %bb.g
  %i.gr = trunc i64 %indvars.iv360 to i32
  %i.gs = mul i32 %2, %i.gr
  %i.gt = zext i32 %i.gs to i64                   ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.gt ; 6 uses
  br i1 %min.iters.check435, label %scalar.ph434.preheader, label %vector.memcheck436

vector.memcheck436:                               ; preds = %.lr.ph283
  %i.gu = add nuw nsw i64 %i.t, %i.gt
  %i.gv = shl nuw nsw i64 %i.gu, 2
  %i.gw = add i64 %i.gv, %i.s
  %i.gx = add i64 %i.gp, %i.gn
  %i.gy = sub i64 %i.gw, %i.gx
  %diff.check437 = icmp ugt i64 %i.gy, -32
  br i1 %diff.check437, label %scalar.ph434.preheader, label %vector.body440

vector.body440:                                   ; preds = %vector.memcheck436, %vector.body440
  %index441 = phi i64 [ %index.next444, %vector.body440 ], [ 0, %vector.memcheck436 ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index441 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %wide.load442 = load <4 x float>, ptr %i.gz, align 4, !tbaa !53
  %wide.load443 = load <4 x float>, ptr %i.ha, align 4, !tbaa !53
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %index441 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store <4 x float> %wide.load442, ptr %i.hb, align 4, !tbaa !53
  store <4 x float> %wide.load443, ptr %i.hc, align 4, !tbaa !53
  %index.next444 = add nuw i64 %index441, 8       ; 2 uses
  %i.hd = icmp eq i64 %index.next444, %n.vec439
  br i1 %i.hd, label %middle.block445, label %vector.body440, !llvm.loop !150

middle.block445:                                  ; preds = %vector.body440
  br i1 %cmp.n446, label %.preheader246.thread383, label %scalar.ph434.preheader

scalar.ph434.preheader:                           ; preds = %vector.memcheck436, %.lr.ph283, %middle.block445
  %indvars.iv340.ph = phi i64 [ 0, %vector.memcheck436 ], [ 0, %.lr.ph283 ], [ %n.vec439, %middle.block445 ] ; 3 uses
  br i1 %lcmp.mod457.not.a, label %scalar.ph434.prol.loopexit, label %scalar.ph434.prol

scalar.ph434.prol:                                ; preds = %scalar.ph434.preheader, %scalar.ph434.prol
  %indvars.iv340.prol = phi i64 [ %indvars.iv.next341.prol, %scalar.ph434.prol ], [ %indvars.iv340.ph, %scalar.ph434.preheader ] ; 3 uses
  %prol.iter458 = phi i64 [ %prol.iter458.next, %scalar.ph434.prol ], [ 0, %scalar.ph434.preheader ]
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv340.prol
  %i.he = load float, ptr %gep.prol, align 4, !tbaa !53
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv340.prol
  store float %i.he, ptr %i.hf, align 4, !tbaa !53
  %indvars.iv.next341.prol = add nuw nsw i64 %indvars.iv340.prol, 1 ; 2 uses
  %prol.iter458.next = add i64 %prol.iter458, 1   ; 2 uses
  %prol.iter458.cmp.not = icmp eq i64 %prol.iter458.next, %xtraiter456.a
  br i1 %prol.iter458.cmp.not, label %scalar.ph434.prol.loopexit, label %scalar.ph434.prol, !llvm.loop !151

scalar.ph434.prol.loopexit:                       ; preds = %scalar.ph434.prol, %scalar.ph434.preheader
  %indvars.iv340.unr = phi i64 [ %indvars.iv340.ph, %scalar.ph434.preheader ], [ %indvars.iv.next341.prol, %scalar.ph434.prol ]
  %i.hg = sub nsw i64 %indvars.iv340.ph, %i.gf
  %i.hh = icmp ugt i64 %i.hg, -4
  br i1 %i.hh, label %.preheader246.thread383, label %scalar.ph434

scalar.ph434:                                     ; preds = %scalar.ph434.prol.loopexit, %scalar.ph434
  %indvars.iv340 = phi i64 [ %indvars.iv.next341.3, %scalar.ph434 ], [ %indvars.iv340.unr, %scalar.ph434.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv340
  %i.hi = load float, ptr %gep, align 4, !tbaa !53
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv340
  store float %i.hi, ptr %i.hj, align 4, !tbaa !53
  %indvars.iv.next341 = add nuw nsw i64 %indvars.iv340, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next341
  %i.hk = load float, ptr %gep.1, align 4, !tbaa !53
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.next341
  store float %i.hk, ptr %i.hl, align 4, !tbaa !53
  %indvars.iv.next341.1 = add nuw nsw i64 %indvars.iv340, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next341.1
  %i.hm = load float, ptr %gep.2, align 4, !tbaa !53
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.next341.1
  store float %i.hm, ptr %i.hn, align 4, !tbaa !53
  %indvars.iv.next341.2 = add nuw nsw i64 %indvars.iv340, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next341.2
  %i.ho = load float, ptr %gep.3, align 4, !tbaa !53
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv.next341.2
  store float %i.ho, ptr %i.hp, align 4, !tbaa !53
  %indvars.iv.next341.3 = add nuw nsw i64 %indvars.iv340, 4 ; 2 uses
  %exitcond344.not.3 = icmp eq i64 %indvars.iv.next341.3, %i.gf
  br i1 %exitcond344.not.3, label %.preheader246.thread383, label %scalar.ph434, !llvm.loop !152

.preheader246:                                    ; preds = %bb.f
  br i1 %.not228, label %.preheader244, label %bb.h

.preheader246.thread383:                          ; preds = %scalar.ph434.prol.loopexit, %scalar.ph434, %middle.block445
  br i1 %.not228, label %.preheader244, label %.thread384

.thread384:                                       ; preds = %.preheader246.thread383
  %i.hq = load i32, ptr %3, align 4, !tbaa !74
  %i.hr = sext i32 %i.hq to i64
  %i.hs = add nsw i64 %indvars.iv360, %i.hr
  %i.ht = load ptr, ptr %i.fr, align 8, !tbaa !164
  %i.hu = load i64, ptr %i.fs, align 8, !tbaa !16
  %i.hv = mul i64 %i.hu, %i.hs
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hv
  br label %.lr.ph289

bb.h:                                             ; preds = %.preheader246
  %i.hx = load i32, ptr %3, align 4, !tbaa !74
  %i.hy = sext i32 %i.hx to i64
  %i.hz = add nsw i64 %indvars.iv360, %i.hy
  %i.ia = load ptr, ptr %i.fr, align 8, !tbaa !164
  %i.ib = load i64, ptr %i.fs, align 8, !tbaa !16
  %i.ic = mul i64 %i.ib, %i.hz
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ic
  br i1 %i.y, label %.lr.ph289, label %.preheader244

.lr.ph289:                                        ; preds = %.thread384, %bb.h
  %i.ie = phi ptr [ %i.hw, %.thread384 ], [ %i.id, %bb.h ] ; 7 uses
  %i.if = trunc i64 %indvars.iv360 to i32
  %i.ig = mul i32 %2, %i.if
  %i.ih = zext i32 %i.ig to i64                   ; 2 uses
  %invariant.gep387 = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ih ; 6 uses
  br i1 %min.iters.check419, label %scalar.ph418.preheader, label %vector.memcheck420

vector.memcheck420:                               ; preds = %.lr.ph289
  %i.ii = ptrtoaddr ptr %i.ie to i64
  %i.ij = shl nuw nsw i64 %i.ih, 2
  %i.ik = add i64 %i.ij, %i.s
  %i.il = sub i64 %i.ik, %i.ii
  %diff.check421 = icmp ugt i64 %i.il, -32
  br i1 %diff.check421, label %scalar.ph418.preheader, label %vector.body424

vector.body424:                                   ; preds = %vector.memcheck420, %vector.body424
  %index425 = phi i64 [ %index.next428, %vector.body424 ], [ 0, %vector.memcheck420 ] ; 3 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep387, i64 %index425 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %wide.load426 = load <4 x float>, ptr %i.im, align 4, !tbaa !53
  %wide.load427 = load <4 x float>, ptr %i.in, align 4, !tbaa !53
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %index425 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  store <4 x float> %wide.load426, ptr %i.io, align 4, !tbaa !53
  store <4 x float> %wide.load427, ptr %i.ip, align 4, !tbaa !53
  %index.next428 = add nuw i64 %index425, 8       ; 2 uses
  %i.iq = icmp eq i64 %index.next428, %n.vec423
  br i1 %i.iq, label %middle.block429, label %vector.body424, !llvm.loop !153

middle.block429:                                  ; preds = %vector.body424
  br i1 %cmp.n430, label %.preheader244, label %scalar.ph418.preheader

scalar.ph418.preheader:                           ; preds = %vector.memcheck420, %.lr.ph289, %middle.block429
  %indvars.iv345.ph = phi i64 [ 0, %vector.memcheck420 ], [ 0, %.lr.ph289 ], [ %n.vec423, %middle.block429 ] ; 3 uses
  br i1 %lcmp.mod460.not, label %scalar.ph418.prol.loopexit, label %scalar.ph418.prol

scalar.ph418.prol:                                ; preds = %scalar.ph418.preheader, %scalar.ph418.prol
  %indvars.iv345.prol = phi i64 [ %indvars.iv.next346.prol, %scalar.ph418.prol ], [ %indvars.iv345.ph, %scalar.ph418.preheader ] ; 3 uses
  %prol.iter461 = phi i64 [ %prol.iter461.next, %scalar.ph418.prol ], [ 0, %scalar.ph418.preheader ]
  %gep388.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep387, i64 %indvars.iv345.prol
  %i.ir = load float, ptr %gep388.prol, align 4, !tbaa !53
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv345.prol
  store float %i.ir, ptr %i.is, align 4, !tbaa !53
  %indvars.iv.next346.prol = add nuw nsw i64 %indvars.iv345.prol, 1 ; 2 uses
  %prol.iter461.next = add i64 %prol.iter461, 1   ; 2 uses
  %prol.iter461.cmp.not = icmp eq i64 %prol.iter461.next, %xtraiter459
  br i1 %prol.iter461.cmp.not, label %scalar.ph418.prol.loopexit, label %scalar.ph418.prol, !llvm.loop !154

scalar.ph418.prol.loopexit:                       ; preds = %scalar.ph418.prol, %scalar.ph418.preheader
  %indvars.iv345.unr = phi i64 [ %indvars.iv345.ph, %scalar.ph418.preheader ], [ %indvars.iv.next346.prol, %scalar.ph418.prol ]
  %i.it = sub nsw i64 %indvars.iv345.ph, %i.gf
  %i.iu = icmp ugt i64 %i.it, -4
  br i1 %i.iu, label %.preheader244, label %scalar.ph418

scalar.ph418:                                     ; preds = %scalar.ph418.prol.loopexit, %scalar.ph418
  %indvars.iv345 = phi i64 [ %indvars.iv.next346.3, %scalar.ph418 ], [ %indvars.iv345.unr, %scalar.ph418.prol.loopexit ] ; 6 uses
  %gep388 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep387, i64 %indvars.iv345
  %i.iv = load float, ptr %gep388, align 4, !tbaa !53
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv345
  store float %i.iv, ptr %i.iw, align 4, !tbaa !53
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 1 ; 2 uses
  %gep388.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep387, i64 %indvars.iv.next346
  %i.ix = load float, ptr %gep388.1, align 4, !tbaa !53
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.next346
  store float %i.ix, ptr %i.iy, align 4, !tbaa !53
  %indvars.iv.next346.1 = add nuw nsw i64 %indvars.iv345, 2 ; 2 uses
  %gep388.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep387, i64 %indvars.iv.next346.1
  %i.iz = load float, ptr %gep388.2, align 4, !tbaa !53
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.next346.1
  store float %i.iz, ptr %i.ja, align 4, !tbaa !53
  %indvars.iv.next346.2 = add nuw nsw i64 %indvars.iv345, 3 ; 2 uses
  %gep388.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep387, i64 %indvars.iv.next346.2
  %i.jb = load float, ptr %gep388.3, align 4, !tbaa !53
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv.next346.2
  store float %i.jb, ptr %i.jc, align 4, !tbaa !53
  %indvars.iv.next346.3 = add nuw nsw i64 %indvars.iv345, 4 ; 2 uses
  %exitcond349.not.3 = icmp eq i64 %indvars.iv.next346.3, %i.gf
  br i1 %exitcond349.not.3, label %.preheader244, label %scalar.ph418, !llvm.loop !155

.preheader244:                                    ; preds = %scalar.ph418.prol.loopexit, %scalar.ph418, %middle.block429, %bb.g, %.preheader246.thread383, %bb.h, %.preheader246
  br i1 %.not229, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.preheader244
  %i.jd = load i32, ptr %3, align 4, !tbaa !74
  %i.je = sub i32 0, %i.jd
  %i.jf = zext i32 %i.je to i64
  %i.jg = icmp eq i64 %indvars.iv360, %i.jf
  br i1 %i.jg, label %bb.j, label %bb.ag

bb.j:                                             ; preds = %bb.i, %.preheader244
  %i.jh = load i8, ptr %i.ft, align 4, !tbaa !46, !range !77, !noundef !78
  %i.ji = trunc nuw i8 %i.jh to i1
  %or.cond.not = and i1 %i.fu, %i.ji
  br i1 %or.cond.not, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.j
  br i1 %i.y, label %.lr.ph295, label %._crit_edge296

.lr.ph295:                                        ; preds = %.preheader
  %i.jj = trunc i64 %indvars.iv360 to i32
  %i.jk = mul i32 %2, %i.jj
  %i.jl = zext i32 %i.jk to i64
  %invariant.gep389 = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.jl ; 9 uses
  br i1 %i.gh, label %.epil.preheader, label %.lr.ph295.new

.lr.ph295.new:                                    ; preds = %.lr.ph295, %.lr.ph295.new
  %indvars.iv350 = phi i64 [ %indvars.iv.next351.7, %.lr.ph295.new ], [ 0, %.lr.ph295 ] ; 9 uses
  %.0195294 = phi float [ %i.ki, %.lr.ph295.new ], [ 0.000000e+00, %.lr.ph295 ]
  %niter = phi i64 [ %niter.next.7, %.lr.ph295.new ], [ 0, %.lr.ph295 ]
  %gep390 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep389, i64 %indvars.iv350
  %i.jm = load float, ptr %gep390, align 4, !tbaa !53
  %i.jn = fadd float %.0195294, %i.jm
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep389, i64 %indvars.iv350
  %gep390.1 = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %i.jp = load float, ptr %gep390.1, align 4, !tbaa !53
  %i.jq = fadd float %i.jn, %i.jp
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep389, i64 %indvars.iv350
  %gep390.2 = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.js = load float, ptr %gep390.2, align 4, !tbaa !53
  %i.jt = fadd float %i.jq, %i.js
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep389, i64 %indvars.iv350
  %gep390.3 = getelementptr inbounds nuw i8, ptr %i.ju, i64 12
  %i.jv = load float, ptr %gep390.3, align 4, !tbaa !53
  %i.jw = fadd float %i.jt, %i.jv
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep389, i64 %indvars.iv350
  %gep390.4 = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jy = load float, ptr %gep390.4, align 4, !tbaa !53
  %i.jz = fadd float %i.jw, %i.jy
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep389, i64 %indvars.iv350
  %gep390.5 = getelementptr inbounds nuw i8, ptr %i.ka, i64 20
  %i.kb = load float, ptr %gep390.5, align 4, !tbaa !53
  %i.kc = fadd float %i.jz, %i.kb
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep389, i64 %indvars.iv350
  %gep390.6 = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.ke = load float, ptr %gep390.6, align 4, !tbaa !53
  %i.kf = fadd float %i.kc, %i.ke
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep389, i64 %indvars.iv350
  %gep390.7 = getelementptr inbounds nuw i8, ptr %i.kg, i64 28
  %i.kh = load float, ptr %gep390.7, align 4, !tbaa !53
  %i.ki = fadd float %i.kf, %i.kh                 ; 3 uses
  %indvars.iv.next351.7 = add nuw nsw i64 %indvars.iv350, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge296.loopexit.unr-lcssa, label %.lr.ph295.new, !llvm.loop !156

._crit_edge296.loopexit.unr-lcssa:                ; preds = %.lr.ph295.new
  br i1 %lcmp.mod463.not, label %._crit_edge296, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge296.loopexit.unr-lcssa, %.lr.ph295
  %indvars.iv350.epil.init = phi i64 [ 0, %.lr.ph295 ], [ %indvars.iv.next351.7, %._crit_edge296.loopexit.unr-lcssa ]
  %.0195294.epil.init = phi float [ 0.000000e+00, %.lr.ph295 ], [ %i.ki, %._crit_edge296.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod465)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %indvars.iv350.epil = phi i64 [ %indvars.iv350.epil.init, %.epil.preheader ], [ %indvars.iv.next351.epil, %bb.k ] ; 2 uses
  %.0195294.epil = phi float [ %.0195294.epil.init, %.epil.preheader ], [ %i.kk, %bb.k ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %gep390.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep389, i64 %indvars.iv350.epil
  %i.kj = load float, ptr %gep390.epil, align 4, !tbaa !53
  %i.kk = fadd float %.0195294.epil, %i.kj        ; 2 uses
  %indvars.iv.next351.epil = add nuw nsw i64 %indvars.iv350.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter462
  br i1 %epil.iter.cmp.not, label %._crit_edge296, label %bb.k, !llvm.loop !157

._crit_edge296:                                   ; preds = %._crit_edge296.loopexit.unr-lcssa, %bb.k, %.preheader
  %.0195.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.ki, %._crit_edge296.loopexit.unr-lcssa ], [ %i.kk, %bb.k ]
  %i.kl = fmul float %i.fo, %.0195.lcssa
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.km = mul nsw i64 %indvars.iv360, %i.fv
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.km ; 9 uses
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 %.idx ; 2 uses
  br i1 %.not.i.i237, label %_ZSt4sortIPfEvT_S1_.exit.thread, label %bb.m

_ZSt4sortIPfEvT_S1_.exit.thread:                  ; preds = %bb.l
  %i.kp = load float, ptr %i.kn, align 4, !tbaa !53
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.kn, ptr noundef nonnull %i.ko, i64 noundef %i.fy)
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.m
  invoke void @_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.kn, ptr noundef nonnull %i.ko)
          to label %_ZSt4sortIPfEvT_S1_.exit unwind label %bb.ab

_ZSt4sortIPfEvT_S1_.exit:                         ; preds = %.noexc
  %i.kq = load float, ptr %i.kn, align 4, !tbaa !53 ; 3 uses
  br i1 %.not298, label %.loopexit, label %.lr.ph303.preheader

.lr.ph303.preheader:                              ; preds = %_ZSt4sortIPfEvT_S1_.exit
  br i1 %.not, label %.lr.ph303.peel, label %.lr.ph303

.lr.ph303:                                        ; preds = %.lr.ph303.preheader, %bb.q
  %indvars.iv355 = phi i64 [ %indvars.iv.next356, %bb.q ], [ 1, %.lr.ph303.preheader ] ; 6 uses
  %.0302 = phi i32 [ %.2, %bb.q ], [ 0, %.lr.ph303.preheader ] ; 3 uses
  %.0193301 = phi i32 [ %.1194, %bb.q ], [ 0, %.lr.ph303.preheader ] ; 2 uses
  %.0196300 = phi float [ %.2198, %bb.q ], [ %i.kq, %.lr.ph303.preheader ] ; 2 uses
  %i.kr = icmp eq i64 %indvars.iv355, %i.gf
  br i1 %i.kr, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph303
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv355 ; 2 uses
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !53
  %i.ku = getelementptr i8, ptr %i.ks, i64 -4
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !53
  %i.kw = fcmp une float %i.kt, %i.kv
  br i1 %i.kw, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n, %.lr.ph303
  %i.kx = trunc nuw nsw i64 %indvars.iv355 to i32 ; 3 uses
  %i.ky = sub nsw i32 %i.kx, %.0193301            ; 2 uses
  %i.kz = icmp slt i32 %.0302, %i.ky
  br i1 %i.kz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.la = getelementptr [4 x i8], ptr %i.kn, i64 %indvars.iv355
  %i.lb = getelementptr i8, ptr %i.la, i64 -4
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !53
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.2198 = phi float [ %.0196300, %bb.n ], [ %i.lc, %bb.p ], [ %.0196300, %bb.o ] ; 2 uses
  %.1194 = phi i32 [ %.0193301, %bb.n ], [ %i.kx, %bb.p ], [ %i.kx, %bb.o ] ; 2 uses
  %.2 = phi i32 [ %.0302, %bb.n ], [ %i.ky, %bb.p ], [ %.0302, %bb.o ] ; 2 uses
  %indvars.iv.next356 = add nuw nsw i64 %indvars.iv355, 1 ; 2 uses
  %exitcond359.not = icmp eq i64 %indvars.iv355, %i.gi
  br i1 %exitcond359.not, label %.lr.ph303.peel, label %.lr.ph303, !llvm.loop !158

.lr.ph303.peel:                                   ; preds = %.lr.ph303.preheader, %bb.q
  %i.ld = phi i64 [ 1, %.lr.ph303.preheader ], [ %indvars.iv.next356, %bb.q ] ; 5 uses
  %i.le = phi i32 [ 0, %.lr.ph303.preheader ], [ %.2, %bb.q ] ; 2 uses
  %i.lf = phi i32 [ 0, %.lr.ph303.preheader ], [ %.1194, %bb.q ] ; 2 uses
  %i.lg = phi float [ %i.kq, %.lr.ph303.preheader ], [ %.2198, %bb.q ] ; 2 uses
  %i.lh = icmp eq i64 %i.ld, %i.gf
  br i1 %i.lh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph303.peel
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %i.ld ; 2 uses
  %i.lj = load float, ptr %i.li, align 4, !tbaa !53
  %i.lk = getelementptr i8, ptr %i.li, i64 -4
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !53
  %i.lm = fcmp une float %i.lj, %i.ll
  %i.ln = trunc nuw nsw i64 %i.ld to i32
  %i.lo = sub nsw i32 %i.ln, %i.lf
  %i.lp = icmp slt i32 %i.le, %i.lo
  %or.cond480 = select i1 %i.lm, i1 %i.lp, i1 false
  br i1 %or.cond480, label %bb.t, label %.loopexit

bb.s:                                             ; preds = %.lr.ph303.peel
  %.old = trunc nuw nsw i64 %i.ld to i32
  %.old478 = sub nsw i32 %.old, %i.lf
  %.old479 = icmp slt i32 %i.le, %.old478
  br i1 %.old479, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.lq = getelementptr [4 x i8], ptr %i.kn, i64 %i.ld
  %i.lr = getelementptr i8, ptr %i.lq, i64 -4
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !53
  br label %.loopexit

.loopexit:                                        ; preds = %bb.t, %bb.s, %bb.r, %_ZSt4sortIPfEvT_S1_.exit.thread, %_ZSt4sortIPfEvT_S1_.exit, %._crit_edge296
  %.3 = phi float [ %i.kl, %._crit_edge296 ], [ %i.kq, %_ZSt4sortIPfEvT_S1_.exit ], [ %i.kp, %_ZSt4sortIPfEvT_S1_.exit.thread ], [ %i.lg, %bb.r ], [ %i.ls, %bb.t ], [ %i.lg, %bb.s ] ; 2 uses
  br i1 %.not229, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.lt = load i32, ptr %3, align 4, !tbaa !74
  %i.lu = trunc nuw nsw i64 %indvars.iv360 to i32
  %i.lv = add nsw i32 %i.lt, %i.lu                ; 5 uses
  %i.lw = load i32, ptr %i.fz, align 4, !tbaa !171
  %i.lx = icmp slt i32 %i.lw, 2
  br i1 %i.lx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ly = load ptr, ptr %i.gd, align 8, !tbaa !164
  %i.lz = sext i32 %i.lv to i64
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.ly, i64 %i.lz
  br label %_ZN2cv3Mat2atIfEERT_i.exit

bb.w:                                             ; preds = %bb.u
  %i.mb = load i32, ptr %4, align 8, !tbaa !57
  %i.mc = and i32 %i.mb, 16384
  %i.md = icmp ne i32 %i.mc, 0
  %i.me = load i32, ptr %i.ga, align 4
  %i.mf = icmp eq i32 %i.me, 1
  %or.cond.i = select i1 %i.md, i1 true, i1 %i.mf
  br i1 %or.cond.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.mg = load ptr, ptr %i.gd, align 8, !tbaa !164
  %i.mh = sext i32 %i.lv to i64
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.mg, i64 %i.mh
  br label %_ZN2cv3Mat2atIfEERT_i.exit

bb.y:                                             ; preds = %bb.w
  %i.mj = load i32, ptr %i.gb, align 8, !tbaa !35
  %i.mk = icmp eq i32 %i.mj, 1
  br i1 %i.mk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ml = load ptr, ptr %i.gd, align 8, !tbaa !164
  %i.mm = load i64, ptr %i.ge, align 8, !tbaa !16
  %i.mn = sext i32 %i.lv to i64
  %i.mo = mul i64 %i.mm, %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.mo
  br label %_ZN2cv3Mat2atIfEERT_i.exit

bb.aa:                                            ; preds = %bb.y
  %i.mq = load i32, ptr %i.gc, align 4, !tbaa !58 ; 3 uses
  %i.mr = sdiv i32 %i.lv, %i.mq                   ; 2 uses
  %i.ms = mul nsw i32 %i.mr, %i.mq                ; 0 uses
  %.recomposed = srem i32 %i.lv, %i.mq
  %i.mt = load ptr, ptr %i.gd, align 8, !tbaa !164
  %i.mu = load i64, ptr %i.ge, align 8, !tbaa !16
  %i.mv = sext i32 %i.mr to i64
  %i.mw = mul i64 %i.mu, %i.mv
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.mw
  %i.my = sext i32 %.recomposed to i64
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.mx, i64 %i.my
  br label %_ZN2cv3Mat2atIfEERT_i.exit

_ZN2cv3Mat2atIfEERT_i.exit:                       ; preds = %bb.aa, %bb.z, %bb.x, %bb.v
  %.0.i = phi ptr [ %i.ma, %bb.v ], [ %i.mi, %bb.x ], [ %i.mp, %bb.z ], [ %i.mz, %bb.aa ]
  store float %.3, ptr %.0.i, align 4, !tbaa !53
  br label %bb.ad

bb.ab:                                            ; preds = %.noexc, %bb.m
  %i.na = landingpad { ptr, i32 }
          cleanup
  %i.nb = load ptr, ptr %8, align 8, !tbaa !162   ; 3 uses
  %.not.i.i239 = icmp eq ptr %i.nb, %i.l
  %i.nc = icmp eq ptr %i.nb, null
  %or.cond.i240 = or i1 %.not.i.i239, %i.nc
  br i1 %or.cond.i240, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdaPv(ptr noundef nonnull %i.nb) #24
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit

_ZN2cv10AutoBufferIfLm264EED2Ev.exit:             ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  resume { ptr, i32 } %i.na

bb.ad:                                            ; preds = %_ZN2cv3Mat2atIfEERT_i.exit, %.loopexit
  br i1 %.not232, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.nd = load i32, ptr %3, align 4, !tbaa !74
  %i.ne = sub i32 0, %i.nd
  %i.nf = zext i32 %i.ne to i64
  %i.ng = icmp eq i64 %indvars.iv360, %i.nf
  br i1 %i.ng, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store float %.3, ptr %7, align 4, !tbaa !53
  br label %bb.ag

bb.ag:                                            ; preds = %bb.i, %bb.af, %bb.ae, %bb.ad
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %exitcond364.not = icmp eq i64 %indvars.iv.next361, %wide.trip.count363
  br i1 %exitcond364.not, label %._crit_edge308, label %bb.f, !llvm.loop !159

._crit_edge308:                                   ; preds = %bb.ag, %.preheader249.lr.ph, %._crit_edge280.split
  %i.nh = load ptr, ptr %8, align 8, !tbaa !162   ; 3 uses
  %.not.i.i241 = icmp eq ptr %i.nh, %i.l
  %i.ni = icmp eq ptr %i.nh, null
  %or.cond.i242 = or i1 %.not.i.i241, %i.ni
  br i1 %or.cond.i242, label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit243, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge308
  call void @_ZdaPv(ptr noundef nonnull %i.nh) #24
  br label %_ZN2cv10AutoBufferIfLm264EED2Ev.exit243

_ZN2cv10AutoBufferIfLm264EED2Ev.exit243:          ; preds = %._crit_edge308, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.g = icmp eq i64 %i.au, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !172

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -4 ; 4 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !53 ; 2 uses
  %i.j = load float, ptr %0, align 4, !tbaa !53
  store float %i.j, ptr %i.h, align 4, !tbaa !53
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 2                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %i.o = lshr i64 %i.n, 1
  %i.p = icmp sgt i64 %i.m, 2
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.q = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr [4 x i8], ptr %0, i64 %i.q
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %i.v = load float, ptr %i.s, align 4, !tbaa !53
  %i.w = load float, ptr %i.u, align 4, !tbaa !53
  %i.x = fcmp olt float %i.v, %i.w
  %i.y = or disjoint i64 %i.q, 1
  %spec.select.i.i.i.i = select i1 %i.x, i64 %i.y, i64 %i.r ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load float, ptr %i.z, align 4, !tbaa !53
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.i.i.i
  store float %i.aa, ptr %i.ab, align 4, !tbaa !53
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.l, 4
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = add nsw i64 %i.m, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ag
  br i1 %i.ah, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !53
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store float %i.al, ptr %i.am, align 4, !tbaa !53
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.aj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i78.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i78.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i78.i.i.i
  %i.ao = load float, ptr %i.an, align 4, !tbaa !53 ; 2 uses
  %i.ap = fcmp olt float %i.ao, %i.i
  br i1 %i.ap, label %bb.e, label %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store float %i.ao, ptr %i.aq, align 4, !tbaa !53
  %.not9.i.i.i = icmp eq i64 %.018.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ar = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store float %i.i, ptr %i.ar, align 4, !tbaa !53
  %i.as = icmp sgt i64 %i.l, 4
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !173

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.au, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.at = phi i64 [ %i.bs, %bb.b ], [ %i.c, %.lr.ph ]
  %i.au = add nsw i64 %.0121944, -1               ; 3 uses
  %i.av = lshr i64 %i.at, 3
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %.02043, i64 -4 ; 3 uses
  %i.ay = load float, ptr %i.e, align 4, !tbaa !53 ; 5 uses
  %i.az = load float, ptr %i.aw, align 4, !tbaa !53 ; 5 uses
  %i.ba = fcmp olt float %i.ay, %i.az
  %i.bb = load float, ptr %i.ax, align 4, !tbaa !53 ; 6 uses
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.bc = fcmp olt float %i.az, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = load float, ptr %0, align 4, !tbaa !53
  store float %i.az, ptr %0, align 4, !tbaa !53
  store float %i.bd, ptr %i.aw, align 4, !tbaa !53
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.be = fcmp olt float %i.ay, %i.bb
  %i.bf = load float, ptr %0, align 4, !tbaa !53  ; 2 uses
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store float %i.bb, ptr %0, align 4, !tbaa !53
  store float %i.bf, ptr %i.ax, align 4, !tbaa !53
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store float %i.ay, ptr %0, align 4, !tbaa !53
  store float %i.bf, ptr %i.e, align 4, !tbaa !53
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph45
  %i.bg = fcmp olt float %i.ay, %i.bb
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = load float, ptr %0, align 4, !tbaa !53
  store float %i.ay, ptr %0, align 4, !tbaa !53
  store float %i.bh, ptr %i.e, align 4, !tbaa !53
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bi = fcmp olt float %i.az, %i.bb
  %i.bj = load float, ptr %0, align 4, !tbaa !53  ; 2 uses
  br i1 %i.bi, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store float %i.bb, ptr %0, align 4, !tbaa !53
  store float %i.bj, ptr %i.ax, align 4, !tbaa !53
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store float %i.az, ptr %0, align 4, !tbaa !53
  store float %i.bj, ptr %i.aw, align 4, !tbaa !53
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02043, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bn, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.bk = load float, ptr %0, align 4, !tbaa !53  ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.bn, %bb.p ] ; 8 uses
  %i.bl = load float, ptr %.1.i.i, align 4, !tbaa !53 ; 2 uses
  %i.bm = fcmp olt float %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.bm, label %bb.p, label %.preheader.i.i, !llvm.loop !174

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %i.bo = load float, ptr %.114.i.i, align 4, !tbaa !53 ; 2 uses
  %i.bp = fcmp olt float %i.bk, %i.bo
  br i1 %i.bp, label %.preheader.i.i, label %bb.q, !llvm.loop !175

bb.q:                                             ; preds = %.preheader.i.i
  %i.bq = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bq, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.r:                                             ; preds = %bb.q
  store float %i.bo, ptr %.1.i.i, align 4, !tbaa !53
  store float %i.bl, ptr %.114.i.i, align 4, !tbaa !53
  br label %_ZSt22__move_median_to_firstIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !176

_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPflN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02043, i64 noundef %i.au)
  %i.br = ptrtoint ptr %.1.i.i to i64
  %i.bs = sub i64 %i.br, %i.a                     ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 64
  br i1 %i.bt, label %bb.b, label %_ZSt14__partial_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !172

_ZSt14__partial_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPfN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %_ZSt10__pop_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %.pre22.i = load float, ptr %0, align 4, !tbaa !53
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %i.e = phi float [ %.pre22.i, %bb.b ], [ %i.o, %bb.h ] ; 2 uses
  %.020.i.idx = phi i64 [ 4, %bb.b ], [ %.020.i.add, %bb.h ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %bb.b ], [ %.020.i.ptr, %bb.h ] ; 3 uses
  %.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i.idx ; 4 uses
  %i.f = load float, ptr %.020.i.ptr, align 4, !tbaa !53 ; 6 uses
  %i.g = fcmp olt float %i.f, %i.e
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.020.i.idx, 4
  br i1 %i.h, label %bb.e, label %bb.f, !prof !180

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.020.i.idx, i1 false)
  br label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 4
  store float %i.e, ptr %i.i, align 4, !tbaa !53
  br label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i

_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.f, %bb.e
  store float %i.f, ptr %0, align 4, !tbaa !53
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.j = load float, ptr %.pn19.i, align 4, !tbaa !53 ; 2 uses
  %i.k = fcmp olt float %i.f, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi float [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.020.i.ptr, %bb.g ]
  store float %i.l, ptr %.0912.i.i, align 4, !tbaa !53
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -4 ; 2 uses
  %i.m = load float, ptr %.0.i.i, align 4, !tbaa !53 ; 2 uses
  %i.n = fcmp olt float %i.f, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !177

_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.g
  %.09.lcssa.i.i = phi ptr [ %.020.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store float %i.f, ptr %.09.lcssa.i.i, align 4, !tbaa !53
  %.pre.i = load float, ptr %0, align 4, !tbaa !53
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i
  %i.o = phi float [ %i.f, %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i ]
  %.020.i.add = add nuw nsw i64 %.020.i.idx, 4    ; 2 uses
  %.not.i = icmp eq i64 %.020.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.c, !llvm.loop !178

_ZSt16__insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not5.i = icmp eq ptr %i.p, %1
  br i1 %.not5.i, label %_ZSt26__unguarded_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt16__insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i8
  %.06.i = phi ptr [ %i.w, %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i8 ], [ %i.p, %_ZSt16__insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit ] ; 5 uses
  %i.q = load float, ptr %.06.i, align 4, !tbaa !53 ; 3 uses
  %.011.i.i = getelementptr inbounds i8, ptr %.06.i, i64 -4 ; 2 uses
  %i.r = load float, ptr %.011.i.i, align 4, !tbaa !53 ; 2 uses
  %i.s = fcmp olt float %i.q, %i.r
  br i1 %i.s, label %.lr.ph.i.i11, label %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i8

.lr.ph.i.i11:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i11
  %i.t = phi float [ %i.u, %.lr.ph.i.i11 ], [ %i.r, %.lr.ph.i ]
  %.013.i.i12 = phi ptr [ %.0.i.i14, %.lr.ph.i.i11 ], [ %.011.i.i, %.lr.ph.i ] ; 3 uses
  %.0912.i.i13 = phi ptr [ %.013.i.i12, %.lr.ph.i.i11 ], [ %.06.i, %.lr.ph.i ]
  store float %i.t, ptr %.0912.i.i13, align 4, !tbaa !53
  %.0.i.i14 = getelementptr inbounds i8, ptr %.013.i.i12, i64 -4 ; 2 uses
  %i.u = load float, ptr %.0.i.i14, align 4, !tbaa !53 ; 2 uses
  %i.v = fcmp olt float %i.q, %i.u
  br i1 %i.v, label %.lr.ph.i.i11, label %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i8, !llvm.loop !177

_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i8: ; preds = %.lr.ph.i.i11, %.lr.ph.i
  %.09.lcssa.i.i9 = phi ptr [ %.06.i, %.lr.ph.i ], [ %.013.i.i12, %.lr.ph.i.i11 ]
  store float %i.q, ptr %.09.lcssa.i.i9, align 4, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i10 = icmp eq ptr %i.w, %1
  br i1 %.not.i10, label %_ZSt26__unguarded_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i, !llvm.loop !179

bb.i:                                             ; preds = %bb.a
  %i.x = icmp eq ptr %0, %1
  br i1 %i.x, label %_ZSt26__unguarded_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %.017.i15 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not18.i = icmp eq ptr %.017.i15, %1
  br i1 %.not18.i, label %_ZSt26__unguarded_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %.preheader.i
  %.pre22.i17 = load float, ptr %0, align 4, !tbaa !53
  br label %bb.j

bb.j:                                             ; preds = %bb.p, %.lr.ph.i16
  %i.y = phi float [ %.pre22.i17, %.lr.ph.i16 ], [ %i.ap, %bb.p ] ; 2 uses
  %.020.i18 = phi ptr [ %.017.i15, %.lr.ph.i16 ], [ %.0.i23, %bb.p ] ; 6 uses
  %.pn19.i19 = phi ptr [ %0, %.lr.ph.i16 ], [ %.020.i18, %bb.p ] ; 4 uses
  %i.z = load float, ptr %.020.i18, align 4, !tbaa !53 ; 6 uses
  %i.aa = fcmp olt float %i.z, %i.y
  br i1 %i.aa, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ab = ptrtoint ptr %.020.i18 to i64
  %i.ac = sub i64 %i.ab, %i.b                     ; 3 uses
  %i.ad = ashr exact i64 %i.ac, 2                 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 1
  br i1 %i.ae, label %bb.l, label %bb.m, !prof !180

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %.pn19.i19, i64 8
  %i.ag = sub nsw i64 0, %i.ad
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ah, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ac, i1 false)
  br label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i29

bb.m:                                             ; preds = %bb.k
  %i.ai = icmp eq i64 %i.ac, 4
  br i1 %i.ai, label %bb.n, label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i29

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn19.i19, i64 4
  store float %i.y, ptr %i.aj, align 4, !tbaa !53
  br label %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i29

_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i29:   ; preds = %bb.n, %bb.m, %bb.l
  store float %i.z, ptr %0, align 4, !tbaa !53
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.ak = load float, ptr %.pn19.i19, align 4, !tbaa !53 ; 2 uses
  %i.al = fcmp olt float %i.z, %i.ak
  br i1 %i.al, label %.lr.ph.i.i25, label %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i20

.lr.ph.i.i25:                                     ; preds = %bb.o, %.lr.ph.i.i25
  %i.am = phi float [ %i.an, %.lr.ph.i.i25 ], [ %i.ak, %bb.o ]
  %.013.i.i26 = phi ptr [ %.0.i.i28, %.lr.ph.i.i25 ], [ %.pn19.i19, %bb.o ] ; 3 uses
  %.0912.i.i27 = phi ptr [ %.013.i.i26, %.lr.ph.i.i25 ], [ %.020.i18, %bb.o ]
  store float %i.am, ptr %.0912.i.i27, align 4, !tbaa !53
  %.0.i.i28 = getelementptr inbounds i8, ptr %.013.i.i26, i64 -4 ; 2 uses
  %i.an = load float, ptr %.0.i.i28, align 4, !tbaa !53 ; 2 uses
  %i.ao = fcmp olt float %i.z, %i.an
  br i1 %i.ao, label %.lr.ph.i.i25, label %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i20, !llvm.loop !177

_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i20: ; preds = %.lr.ph.i.i25, %bb.o
  %.09.lcssa.i.i21 = phi ptr [ %.020.i18, %bb.o ], [ %.013.i.i26, %.lr.ph.i.i25 ]
  store float %i.z, ptr %.09.lcssa.i.i21, align 4, !tbaa !53
  %.pre.i22 = load float, ptr %0, align 4, !tbaa !53
  br label %bb.p

bb.p:                                             ; preds = %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i20, %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i29
  %i.ap = phi float [ %i.z, %_ZSt13move_backwardIPfS0_ET0_T_S2_S1_.exit.i29 ], [ %.pre.i22, %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i20 ]
  %.0.i23 = getelementptr inbounds nuw i8, ptr %.020.i18, i64 4 ; 2 uses
  %.not.i24 = icmp eq ptr %.0.i23, %1
  br i1 %.not.i24, label %_ZSt26__unguarded_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.j, !llvm.loop !178

_ZSt26__unguarded_insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %bb.p, %_ZSt25__unguarded_linear_insertIPfN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i8, %.preheader.i, %bb.i, %_ZSt16__insertion_sortIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %.013.us = phi i64 [ %i.am, %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.us
  %i.q = load float, ptr %i.p, align 4, !tbaa !53 ; 2 uses
  %i.r = icmp slt i64 %.013.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.013.us, %.split.us ] ; 2 uses
  %i.s = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.t = add i64 %i.s, 2                          ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr [4 x i8], ptr %0, i64 %i.s
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = load float, ptr %i.u, align 4, !tbaa !53
  %i.y = load float, ptr %i.w, align 4, !tbaa !53
  %i.z = fcmp olt float %i.x, %i.y
  %i.aa = or disjoint i64 %i.s, 1
  %spec.select.i.us = select i1 %i.z, i64 %i.aa, i64 %i.t ; 6 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !53
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i.us
  store float %i.ac, ptr %i.ad, align 4, !tbaa !53
  %i.ae = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ae, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !1

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.af = icmp sgt i64 %spec.select.i.us, %.013.us
  br i1 %i.af, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01317.i.i.us = phi i64 [ %.018.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i.us
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !53 ; 2 uses
  %i.ai = fcmp olt float %i.ah, %i.q
  br i1 %i.ai, label %bb.c, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i.us
  store float %i.ah, ptr %i.aj, align 4, !tbaa !53
  %i.ak = icmp sgt i64 %.018.i.i.us, %.013.us
  br i1 %i.ak, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, !llvm.loop !2

_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.013.us, %.split.us ], [ %.01317.i.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.c ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store float %i.q, ptr %i.al, align 4, !tbaa !53
  %.not.us = icmp eq i64 %.013.us, 0
  %i.am = add nsw i64 %.013.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !181

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
  %.013 = phi i64 [ %i.bm, %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013
  %i.ao = load float, ptr %i.an, align 4, !tbaa !53 ; 2 uses
  %i.ap = icmp slt i64 %.013, %i.i
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.013, %.split ] ; 2 uses
  %i.aq = shl i64 %.029.i, 1                      ; 3 uses
  %i.ar = add i64 %i.aq, 2                        ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ar
  %i.at = getelementptr [4 x i8], ptr %0, i64 %i.aq
  %i.au = getelementptr i8, ptr %i.at, i64 4
  %i.av = load float, ptr %i.as, align 4, !tbaa !53
  %i.aw = load float, ptr %i.au, align 4, !tbaa !53
  %i.ax = fcmp olt float %i.av, %i.aw
  %i.ay = or disjoint i64 %i.aq, 1
  %spec.select.i = select i1 %i.ax, i64 %i.ay, i64 %i.ar ; 4 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ba = load float, ptr %i.az, align 4, !tbaa !53
  %i.bb = getelementptr inbounds [4 x i8], ptr %0, i64 %.029.i
  store float %i.ba, ptr %i.bb, align 4, !tbaa !53
  %i.bc = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.013, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.be = load float, ptr %i.n, align 4, !tbaa !53
  store float %i.be, ptr %i.o, align 4, !tbaa !53
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.128.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.128.i, %.013
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01317.i.i = phi i64 [ %.018.i.i, %bb.f ], [ %.128.i, %bb.e ] ; 3 uses
  %.018.in.i.i = add nsw i64 %.01317.i.i, -1
  %.018.i.i = sdiv i64 %.018.in.i.i, 2            ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !53 ; 2 uses
  %i.bi = fcmp olt float %i.bh, %i.ao
  br i1 %i.bi, label %bb.f, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i
  store float %i.bh, ptr %i.bj, align 4, !tbaa !53
  %i.bk = icmp sgt i64 %.018.i.i, %.013
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, !llvm.loop !2

_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.128.i, %bb.e ], [ %.018.i.i, %bb.f ], [ %.01317.i.i, %.lr.ph.i.i ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013.lcssa.i.i
  store float %i.ao, ptr %i.bl, align 4, !tbaa !53
  %.not = icmp eq i64 %.013, 0
  %i.bm = add nsw i64 %.013, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !181

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, %_ZSt13__adjust_heapIPflfN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN2cv2ml10KDTreeImplESaIvEJEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN2cv2ml10KDTreeImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(720) ptr @_Znwm(i64 noundef 720) #23 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !23
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN2cv2ml10KDTreeImplESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(696) %i.e, i8 0, i64 696, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2cv2ml4ImplE, i64 16), ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.f) #22
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 248 ; 2 uses
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.g) #22
  store i32 10, ptr %i.e, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i8 1, ptr %i.h, align 4, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 2147483647, ptr %i.i, align 8, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2cv2ml10KDTreeImplE, i64 16), ptr %i.d, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  invoke void @_ZN2cv2ml6KDTreeC1Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.j)
          to label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv2ml10KDTreeImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit unwind label %.body.i

.body.i:                                          ; preds = %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN2cv2ml10KDTreeImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2cv2ml4ImplE, i64 16), ptr %i.d, align 8, !tbaa !25
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.g) #22, !inline_history !49
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.f) #22, !inline_history !49
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 720) #24
  resume { ptr, i32 } %i.k

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv2ml10KDTreeImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN2cv2ml10KDTreeImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !31
  store ptr %i.d, ptr %1, align 8, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv2ml10KDTreeImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 720) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv2ml10KDTreeImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i:              ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.i) #22
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZSt8_DestroyIN2cv2ml10KDTreeImplEEvPT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #24
  br label %_ZSt8_DestroyIN2cv2ml10KDTreeImplEEvPT_.exit

_ZSt8_DestroyIN2cv2ml10KDTreeImplEEvPT_.exit:     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2cv2ml4ImplE, i64 16), ptr %i.p, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.q) #22, !inline_history !49
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.r) #22, !inline_history !49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv2ml10KDTreeImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv2ml10KDTreeImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 720) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv2ml10KDTreeImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !19
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #22
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN2cv2ml6KDTreeC1Ev(ptr noundef nonnull align 8 dereferenceable(264)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv2ml10KDTreeImplD2Ev(ptr noundef nonnull align 8 dead_on_return(704) dereferenceable(704) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.i) #22
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZN2cv2ml6KDTreeD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #24
  br label %_ZN2cv2ml6KDTreeD2Ev.exit

_ZN2cv2ml6KDTreeD2Ev.exit:                        ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2cv2ml4ImplE, i64 16), ptr %0, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.p) #22, !inline_history !49
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.q) #22, !inline_history !49
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv2ml10KDTreeImplD0Ev(ptr noundef nonnull align 8 dereferenceable(704) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i:                ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 464
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.i) #22
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i.i, label %_ZN2cv2ml10KDTreeImplD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #24
  br label %_ZN2cv2ml10KDTreeImplD2Ev.exit

_ZN2cv2ml10KDTreeImplD2Ev.exit:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN2cv2ml4ImplE, i64 16), ptr %0, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.p) #22, !inline_history !49
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.q) #22, !inline_history !49
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 704) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv2ml10KDTreeImpl12getModelNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(704) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !14
  %i.c = load ptr, ptr @_ZN2cv2mlL11NAME_KDTREEB5cxx11E, align 8, !tbaa !18 ; 2 uses
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv2mlL11NAME_KDTREEB5cxx11E, i64 8), align 8, !tbaa !20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.d, ptr %i.a, align 8, !tbaa !16
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !18
  %i.g = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.g, ptr %i.b, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.d, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %i.c, align 1, !tbaa !19
  store i8 %i.i, ptr %i.h, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %i.c, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.j = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !20
  %i.l = load ptr, ptr %0, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv2ml10KDTreeImpl7getTypeEv(ptr noundef nonnull align 8 dereferenceable(704) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZNK2cv2ml10KDTreeImpl11findNearestERKNS_11_InputArrayEiRKNS_12_OutputArrayES7_S7_(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %9 = alloca %"class.cv::Range", align 4         ; 5 uses
  %10 = alloca %"class.cv::Range", align 8        ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator", align 1   ; 3 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %21 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %22 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %23 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %24 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %25 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %26 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %27 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %28 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %29 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %30 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %31 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %32 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZNK2cv2ml14BruteForceImpl11findNearestERKNS_11_InputArrayEiRKNS_12_OutputArrayES7_S7_, ptr noundef nonnull @.str.4, i32 noundef 366) #21
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %11, align 8, !tbaa !18    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.g = load i64, ptr %i.e, align 8, !tbaa !19
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.ck

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !35
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.k = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !200
  %i.l = icmp eq i32 %i.k, 65536
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !56, !noalias !200
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 8 dereferenceable(208) %i.n)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.i:                                             ; preds = %bb.g
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.h, %bb.i
  %i.o = load i32, ptr %13, align 8, !tbaa !57
  %i.p = and i32 %i.o, 4095
  %i.q = icmp eq i32 %i.p, 5
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !59
  %i.v = icmp eq i32 %i.s, %i.u
  br i1 %i.v, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2cv11_InputArray6getMatEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZNK2cv2ml14BruteForceImpl11findNearestERKNS_11_InputArrayEiRKNS_12_OutputArrayES7_S7_, ptr noundef nonnull @.str.4, i32 noundef 370) #21
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

bb.o:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %14, align 8, !tbaa !18    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.o
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !19
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.n
  %.pn45 = phi { ptr, i32 } [ %i.w, %bb.n ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %i.x, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.cj

bb.p:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !60
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  invoke void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  invoke void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.ci unwind label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.u:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %18) #22
  %i.ah = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %bb.u
  br i1 %i.ah, label %bb.w, label %bb.ae

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.ai = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.w
  %i.aj = icmp eq i32 %i.ai, 65536
  br i1 %i.aj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.noexc
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !56, !noalias !201
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %i.al)
          to label %_ZNK2cv11_InputArray6getMatEi.exit77 unwind label %bb.ab

bb.y:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit77 unwind label %bb.ab

_ZNK2cv11_InputArray6getMatEi.exit77:             ; preds = %bb.x, %bb.y
  %i.am = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %bb.z unwind label %bb.ac      ; 0 uses

bb.z:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit77
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.ae

bb.aa:                                            ; preds = %bb.an, %bb.ae, %bb.u
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ab:                                            ; preds = %bb.y, %bb.x, %bb.w
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit77
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #22
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn47 = phi { ptr, i32 } [ %i.ap, %bb.ac ], [ %i.ao, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.ch

bb.ae:                                            ; preds = %bb.z, %bb.v
  %i.aq = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.af unwind label %bb.aa

bb.af:                                            ; preds = %bb.ae
  br i1 %i.aq, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.ar = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc78 unwind label %bb.ak

.noexc78:                                         ; preds = %bb.ag
  %i.as = icmp eq i32 %i.ar, 65536
  br i1 %i.as, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.noexc78
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !56, !noalias !202
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %20, ptr noundef nonnull align 8 dereferenceable(208) %i.au)
          to label %_ZNK2cv11_InputArray6getMatEi.exit81 unwind label %bb.ak

bb.ai:                                            ; preds = %.noexc78
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit81 unwind label %bb.ak

_ZNK2cv11_InputArray6getMatEi.exit81:             ; preds = %bb.ah, %bb.ai
  %i.av = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %20)
          to label %bb.aj unwind label %bb.al     ; 0 uses

bb.aj:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit81
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit81
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %20) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn49 = phi { ptr, i32 } [ %i.ax, %bb.al ], [ %i.aw, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.ch

bb.an:                                            ; preds = %bb.aj, %bb.af
  %i.ay = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.ao unwind label %bb.aa

bb.ao:                                            ; preds = %bb.an
  br i1 %i.ay, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.az = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %.noexc82 unwind label %bb.at

.noexc82:                                         ; preds = %bb.ap
  %i.ba = icmp eq i32 %i.az, 65536
  br i1 %i.ba, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.noexc82
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !56, !noalias !203
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %21, ptr noundef nonnull align 8 dereferenceable(208) %i.bc)
          to label %_ZNK2cv11_InputArray6getMatEi.exit85 unwind label %bb.at

bb.ar:                                            ; preds = %.noexc82
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit85 unwind label %bb.at

_ZNK2cv11_InputArray6getMatEi.exit85:             ; preds = %bb.aq, %bb.ar
  %i.bd = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %21)
          to label %bb.as unwind label %bb.au     ; 0 uses

bb.as:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit85
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.aw

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %_ZNK2cv11_InputArray6getMatEi.exit85
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #22
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn51 = phi { ptr, i32 } [ %i.bf, %bb.au ], [ %i.be, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.ch

bb.aw:                                            ; preds = %bb.as, %bb.ao
  %i.bg = load i32, ptr %i.ad, align 8, !tbaa !60
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.aw
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %25, i64 20
  %i.bm = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %30, i64 432
  %i.bv = getelementptr inbounds nuw i8, ptr %30, i64 224
  %i.bw = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %31, i64 432
  %i.by = getelementptr inbounds nuw i8, ptr %31, i64 224
  %i.bz = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %32, i64 432
  %i.cb = getelementptr inbounds nuw i8, ptr %32, i64 224
  %i.cc = getelementptr inbounds nuw i8, ptr %32, i64 16
  br label %bb.ax

._crit_edge:                                      ; preds = %bb.cf, %bb.aw
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.ci

bb.ax:                                            ; preds = %.lr.ph, %bb.cf
  %.0102 = phi i32 [ 0, %.lr.ph ], [ %i.cd, %bb.cf ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %23) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22, !noalias !204
  %i.cd = add nuw nsw i32 %.0102, 1               ; 3 uses
  store i32 %.0102, ptr %9, align 4, !tbaa !74, !noalias !204
  store i32 %i.cd, ptr %i.bj, align 4, !tbaa !75, !noalias !204
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22, !noalias !204
  store i64 9223372034707292160, ptr %10, align 8, !noalias !204
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 8 dereferenceable(208) %13, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %10)
          to label %bb.ay unwind label %bb.bh

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22, !noalias !204
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22, !noalias !204
  store i32 0, ptr %i.bk, align 8, !tbaa !87
  store i32 0, ptr %i.bl, align 4, !tbaa !88
  store i32 16842752, ptr %25, align 8, !tbaa !89
  store ptr %26, ptr %i.bm, align 8, !tbaa !56
  %i.ce = load i32, ptr %i.bn, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  store i64 0, ptr %i.bp, align 8
  store i32 33619968, ptr %27, align 8, !tbaa !89
  store ptr %22, ptr %i.bo, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  store i64 0, ptr %i.br, align 8
  store i32 33619968, ptr %28, align 8, !tbaa !89
  store ptr %23, ptr %i.bq, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  store i64 0, ptr %i.bt, align 8
  store i32 33619968, ptr %29, align 8, !tbaa !89
  store ptr %24, ptr %i.bs, align 8, !tbaa !56
  %i.cf = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.az unwind label %bb.bi

bb.az:                                            ; preds = %bb.ay
  %i.cg = invoke noundef i32 @_ZNK2cv2ml6KDTree11findNearestERKNS_11_InputArrayEiiRKNS_12_OutputArrayES7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(264) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %25, i32 noundef %.sroa.speculated, i32 noundef %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %bb.ba unwind label %bb.bi     ; 0 uses

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  %i.ch = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.bb unwind label %bb.bk

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.ch, label %bb.bc, label %bb.bn

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %30, ptr noundef nonnull align 8 dereferenceable(208) %22)
          to label %bb.bd unwind label %bb.bl

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %8) #22
  %i.ci = load ptr, ptr %30, align 8, !tbaa !211, !noalias !212 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !25
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  invoke void %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull align 8 dereferenceable(688) %30, ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #22
  br label %.body

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i:               ; preds = %bb.bd
  invoke void @_ZN2cv3Mat9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %bb.bg unwind label %bb.bf

bb.bf:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.body

bb.bg:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bu) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bv) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  invoke void @_ZNK2cv12_OutputArray6assignERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(208) %16)
          to label %bb.bn unwind label %bb.bk

bb.bh:                                            ; preds = %bb.ax
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.az, %bb.ay
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #22
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn53.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cp, %bb.bi ], [ %i.co, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %bb.cg

bb.bk:                                            ; preds = %bb.cc, %bb.bw, %bb.bt, %bb.bn, %bb.bg, %bb.ba
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.bl:                                            ; preds = %bb.bc
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.body:                                            ; preds = %bb.be, %bb.bf
  %eh.lpad-body = phi { ptr, i32 } [ %i.cn, %bb.bf ], [ %i.cm, %bb.be ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %30) #22
  br label %bb.bm

bb.bm:                                            ; preds = %.body, %bb.bl
  %.pn59 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cr, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %bb.cg

bb.bn:                                            ; preds = %bb.bg, %bb.bb
  %i.cs = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.bo unwind label %bb.bk

bb.bo:                                            ; preds = %bb.bn
  br i1 %i.cs, label %bb.bp, label %bb.bw

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %31, ptr noundef nonnull align 8 dereferenceable(208) %23)
          to label %bb.bq unwind label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %7) #22
  %i.ct = load ptr, ptr %31, align 8, !tbaa !211, !noalias !213 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !25
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  invoke void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull align 8 dereferenceable(688) %31, ptr noundef nonnull align 8 dereferenceable(208) %7, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i89 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #22
  br label %.body90

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i89:             ; preds = %bb.bq
  invoke void @_ZN2cv3Mat9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %17, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.bt unwind label %bb.bs

bb.bs:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i89
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.body90

bb.bt:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i89
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bx) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.by) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bz) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  invoke void @_ZNK2cv12_OutputArray6assignERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.bw unwind label %bb.bk

bb.bu:                                            ; preds = %bb.bp
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.body90:                                          ; preds = %bb.br, %bb.bs
  %eh.lpad-body91 = phi { ptr, i32 } [ %i.cy, %bb.bs ], [ %i.cx, %bb.br ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %31) #22
  br label %bb.bv

bb.bv:                                            ; preds = %.body90, %bb.bu
  %.pn61 = phi { ptr, i32 } [ %eh.lpad-body91, %.body90 ], [ %i.cz, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br label %bb.cg

bb.bw:                                            ; preds = %bb.bt, %bb.bo
  %i.da = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.bx unwind label %bb.bk

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.da, label %bb.by, label %bb.cf

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  invoke void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %32, ptr noundef nonnull align 8 dereferenceable(208) %24)
          to label %bb.bz unwind label %bb.cd

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %6) #22
  %i.db = load ptr, ptr %32, align 8, !tbaa !211, !noalias !214 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !25
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  invoke void %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull align 8 dereferenceable(688) %32, ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i95 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #22
  br label %.body96

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i95:             ; preds = %bb.bz
  invoke void @_ZN2cv3Mat9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.cc unwind label %bb.cb

bb.cb:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i95
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.body96

bb.cc:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i95
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ca) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cb) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cc) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  invoke void @_ZNK2cv12_OutputArray6assignERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(208) %18)
          to label %bb.cf unwind label %bb.bk

bb.cd:                                            ; preds = %bb.by
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.body96:                                          ; preds = %bb.ca, %bb.cb
  %eh.lpad-body97 = phi { ptr, i32 } [ %i.dg, %bb.cb ], [ %i.df, %bb.ca ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %32) #22
  br label %bb.ce

bb.ce:                                            ; preds = %.body96, %bb.cd
  %.pn63 = phi { ptr, i32 } [ %eh.lpad-body97, %.body96 ], [ %i.dh, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cc, %bb.bx
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.di = load i32, ptr %i.ad, align 8, !tbaa !60
  %i.dj = icmp slt i32 %i.cd, %i.di
  br i1 %i.dj, label %bb.ax, label %._crit_edge, !llvm.loop !199

bb.cg:                                            ; preds = %bb.ce, %bb.bv, %bb.bm, %bb.bk, %bb.bj
  %.pn65 = phi { ptr, i32 } [ %i.cq, %bb.bk ], [ %.pn63, %bb.ce ], [ %.pn61, %bb.bv ], [ %.pn59, %bb.bm ], [ %.pn53.pn.pn.pn.pn, %bb.bj ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.av, %bb.am, %bb.ad, %bb.aa
  %.pn65.pn = phi { ptr, i32 } [ %.pn65, %bb.cg ], [ %.pn51, %bb.av ], [ %i.an, %bb.aa ], [ %.pn49, %bb.am ], [ %.pn47, %bb.ad ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.cj

bb.ci:                                            ; preds = %bb.s, %._crit_edge
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  ret float 0.000000e+00

bb.cj:                                            ; preds = %bb.t, %bb.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.pn68.pn = phi { ptr, i32 } [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %i.ag, %bb.t ], [ %.pn65.pn, %bb.ch ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn68.pn.pn = phi { ptr, i32 } [ %.pn68.pn, %bb.cj ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn68.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv2ml10KDTreeImpl7doTrainERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(704) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  tail call void @_ZN2cv2ml6KDTree5buildERKNS_11_InputArrayEb(ptr noundef nonnull align 8 dereferenceable(264) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext false)
  ret void
}

declare noundef i32 @_ZNK2cv2ml6KDTree11findNearestERKNS_11_InputArrayEiiRKNS_12_OutputArrayES7_S7_S7_(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #4

declare void @_ZNK2cv3Mat1tEv(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.c) #22
  ret void
}

declare void @_ZNK2cv12_OutputArray6assignERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

declare void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #4

declare void @_ZN2cv3Mat9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

declare void @_ZN2cv2ml6KDTree5buildERKNS_11_InputArrayEb(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZNK2cv8FileNodeixEPKc(ptr dead_on_unwind writable sret(%"class.cv::FileNode") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK2cv8FileNodecviEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

declare void @_ZN2cv4readERKNS_8FileNodeERNS_3MatERKS3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv2ml12KNearestImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv2ml12KNearestImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN2cv2ml12KNearestImplEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !23
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !215
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !215
  br label %_ZSt8_DestroyIN2cv2ml12KNearestImplEEvPT_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZSt8_DestroyIN2cv2ml12KNearestImplEEvPT_.exit, !prof !36

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZSt8_DestroyIN2cv2ml12KNearestImplEEvPT_.exit

_ZSt8_DestroyIN2cv2ml12KNearestImplEEvPT_.exit:   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %i.r) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv2ml12KNearestImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv2ml12KNearestImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv2ml12KNearestImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !19
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #22
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv2ml4ImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !23
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !0
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !0
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !36

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv2ml12KNearestImplD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv2ml4ImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !23
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !216
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !216
  br label %_ZNSt12__shared_ptrIN2cv2ml4ImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN2cv2ml4ImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !36

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt12__shared_ptrIN2cv2ml4ImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv2ml4ImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv2ml12KNearestImplD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN2cv2ml12KNearestImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !23
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !217
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !217
  br label %_ZN2cv2ml12KNearestImplD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !19
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN2cv2ml12KNearestImplD2Ev.exit, !prof !36

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZN2cv2ml12KNearestImplD2Ev.exit

_ZN2cv2ml12KNearestImplD2Ev.exit:                 ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm5clearEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv2ml12KNearestImpl5writeERNS_11FileStorageE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZNK2cv9Algorithm11writeFormatERNS_11FileStorageE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  tail call void @_ZNK2cv2ml4Impl5writeERNS_11FileStorageE(ptr noundef nonnull align 8 dereferenceable(440) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1)
  ret void
}

declare noundef zeroext i1 @_ZNK2cv2ml9StatModel5emptyEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZNK2cv9Algorithm4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv2ml12KNearestImpl14getDefaultNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(440) %i.b)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv2ml12KNearestImpl11getVarCountEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !59
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv2ml12KNearestImpl9isTrainedEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.c)
  %i.e = xor i1 %i.d, true
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv2ml12KNearestImpl12isClassifierEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i8, ptr %i.c, align 4, !tbaa !46, !range !77, !noundef !78
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv2ml12KNearestImpl5trainERKNS_3PtrINS0_9TrainDataEEEi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !92
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv2ml12KNearestImpl5trainERKNS_3PtrINS0_9TrainDataEEEi, ptr noundef nonnull @.str.4, i32 noundef 498) #21
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !19
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.k = tail call noundef zeroext i1 @_ZN2cv2ml4Impl5trainERKNS_3PtrINS0_9TrainDataEEEi(ptr noundef nonnull align 8 dereferenceable(440) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2)
  ret i1 %i.k
}

declare noundef zeroext i1 @_ZN2cv2ml9StatModel5trainERKNS_11_InputArrayEiS4_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare noundef float @_ZNK2cv2ml9StatModel9calcErrorERKNS_3PtrINS0_9TrainDataEEEbRKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZNK2cv2ml12KNearestImpl7predictERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !45
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef float %i.i(ptr noundef nonnull align 8 dereferenceable(440) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  ret float %i.j
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv2ml12KNearestImpl11getDefaultKEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !45
  ret i32 %i.d
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv2ml12KNearestImpl11setDefaultKEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.c, align 8, !tbaa !45
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv2ml12KNearestImpl15getIsClassifierEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i8, ptr %i.c, align 4, !tbaa !46, !range !77, !noundef !78
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv2ml12KNearestImpl15setIsClassifierEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i8 %i.a, ptr %i.d, align 4, !tbaa !46
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv2ml12KNearestImpl7getEmaxEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !47
  ret i32 %i.d
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv2ml12KNearestImpl7setEmaxEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %1, ptr %i.c, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv2ml12KNearestImpl16getAlgorithmTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(440) %i.b)
  ret i32 %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv2ml12KNearestImpl16setAlgorithmTypeEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = add i32 %1, -3
  %or.cond = icmp ult i32 %i.a, -2
  %spec.store.select = select i1 %or.cond, i32 1, i32 %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.i = load i8, ptr %i.h, align 4, !tbaa !46, !range !77, !noundef !78
  tail call void @_ZN2cv2ml12KNearestImpl8initImplEi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %spec.store.select)
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !34   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.e, ptr %i.k, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 %i.g, ptr %i.l, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i8 %i.i, ptr %i.m, align 4, !tbaa !46
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZNK2cv2ml12KNearestImpl11findNearestERKNS_11_InputArrayEiRKNS_12_OutputArrayES7_S7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef float %i.e(ptr noundef nonnull align 8 dereferenceable(440) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  ret float %i.f
}

; Function Attrs: nounwind
declare void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

declare void @_ZN2cv9AlgorithmC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZNK2cv9Algorithm11writeFormatERNS_11FileStorageE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv2ml4Impl5writeERNS_11FileStorageE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator", align 1    ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = tail call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull @.str.6) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i8, ptr %i.b, align 4, !tbaa !46, !range !77, !noundef !78
  %i.d = zext nneg i8 %i.c to i32
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(64) %i.a), !inline_history !218
  br i1 %i.h, label %bb.b, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !225
  %i.k = icmp eq i32 %i.j, 6
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %9)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cvlsIiEERNS_11FileStorageES2_RKT_, ptr noundef nonnull @.str.12, i32 noundef 1173) #21
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %8, align 8, !tbaa !18     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.p = load i64, ptr %i.n, align 8, !tbaa !19
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i7 ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i12 ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i32 noundef %i.d)
  %i.s = load i32, ptr %i.i, align 8, !tbaa !225
  %i.t = and i32 %i.s, 4
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 6, ptr %i.i, align 8, !tbaa !225
  br label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit

_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit:       ; preds = %bb.a, %bb.f, %bb.g
  %i.u = tail call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull @.str.7) ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(64) %i.u), !inline_history !218
  br i1 %i.z, label %bb.h, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit9

bb.h:                                             ; preds = %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !225
  %i.ac = icmp eq i32 %i.ab, 6
  br i1 %i.ac, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cvlsIiEERNS_11FileStorageES2_RKT_, ptr noundef nonnull @.str.12, i32 noundef 1173) #21
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.k
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !19
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i7: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume

bb.l:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ak = load i32, ptr %i.v, align 8, !tbaa !35
  tail call void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i32 noundef %i.ak)
  %i.al = load i32, ptr %i.aa, align 8, !tbaa !225
  %i.am = and i32 %i.al, 4
  %.not.i5 = icmp eq i32 %i.am, 0
  br i1 %.not.i5, label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit9, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 6, ptr %i.aa, align 8, !tbaa !225
  br label %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit9

_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit9:      ; preds = %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit, %bb.l, %bb.m
  %i.an = tail call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull @.str.8) ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(64) %i.an), !inline_history !219
  br i1 %i.as, label %bb.n, label %_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_.exit

bb.n:                                             ; preds = %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit9
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !225
  %i.av = icmp eq i32 %i.au, 6
  br i1 %i.av, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cvlsIiEERNS_11FileStorageES2_RKT_, ptr noundef nonnull @.str.12, i32 noundef 1173) #21
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11: ; preds = %bb.q
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !19
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i12: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume

bb.r:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  tail call void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(208) %i.ao)
  %i.bd = load i32, ptr %i.at, align 8, !tbaa !225
  %i.be = and i32 %i.bd, 4
  %.not.i10 = icmp eq i32 %i.be, 0
  br i1 %.not.i10, label %_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 6, ptr %i.at, align 8, !tbaa !225
  br label %_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_.exit

_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_.exit: ; preds = %_ZN2cvlsIiEERNS_11FileStorageES2_RKT_.exit9, %bb.r, %bb.s
  %i.bf = tail call fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull @.str.9) ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(64) %i.bf), !inline_history !219
  br i1 %i.bk, label %bb.t, label %_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_.exit18

bb.t:                                             ; preds = %_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !225
  %i.bn = icmp eq i32 %i.bm, 6
  br i1 %i.bn, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cvlsIiEERNS_11FileStorageES2_RKT_, ptr noundef nonnull @.str.12, i32 noundef 1173) #21
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15: ; preds = %bb.w
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !19
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %common.resume

bb.x:                                             ; preds = %bb.t
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  tail call void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(64) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(208) %i.bg)
  %i.bv = load i32, ptr %i.bl, align 8, !tbaa !225
  %i.bw = and i32 %i.bv, 4
  %.not.i14 = icmp eq i32 %i.bw, 0
  br i1 %.not.i14, label %_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_.exit18, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 6, ptr %i.bl, align 8, !tbaa !225
  br label %_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_.exit18

_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_.exit18: ; preds = %_ZN2cvlsINS_3MatEEERNS_11FileStorageES3_RKT_.exit, %bb.x, %bb.y
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageEPKc(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !14
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #21
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.d, ptr %i.a, align 8, !tbaa !16
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !18
  %i.g = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.g, ptr %i.b, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !19
  store i8 %i.i, ptr %i.h, align 1, !tbaa !19
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !20
  %i.l = load ptr, ptr %2, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.n = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.b, align 8, !tbaa !19
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret ptr %i.n

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %2, align 8, !tbaa !18     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.b
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.g
  %i.v = load i64, ptr %i.b, align 8, !tbaa !19
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %i.s
}

declare void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN2cvlsERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN2cv5writeERNS_11FileStorageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv2ml4Impl5trainERKNS_3PtrINS0_9TrainDataEEEi(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !92     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv2ml12KNearestImpl5trainERKNS_3PtrINS0_9TrainDataEEEi, ptr noundef nonnull @.str.4, i32 noundef 76) #21
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.h = load i64, ptr %i.f, align 8, !tbaa !19
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn26 = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.d, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.ah

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.m = load ptr, ptr %1, align 8, !tbaa !92     ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.r, align 8
  store i32 33619968, ptr %8, align 8, !tbaa !89
  store ptr %6, ptr %i.q, align 8, !tbaa !56
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.s = and i32 %2, 1
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %i.t)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.v = load i32, ptr %5, align 8, !tbaa !57
  %i.w = and i32 %i.v, 4095
  %i.x = icmp eq i32 %i.w, 5
  br i1 %i.x, label %bb.u, label %bb.p

.thread:                                          ; preds = %bb.i
  %i.y = load i32, ptr %5, align 8, !tbaa !57
  %i.z = and i32 %i.y, 4095
  %i.aa = icmp eq i32 %i.z, 5
  br i1 %i.aa, label %.thread36, label %bb.p

bb.l:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.m ], [ %i.ab, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ag

bb.o:                                             ; preds = %.noexc, %.thread36, %bb.ac, %_ZN2cv2ml4Impl5clearEv.exit, %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.p:                                             ; preds = %.thread, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv2ml12KNearestImpl5trainERKNS_3PtrINS0_9TrainDataEEEi, ptr noundef nonnull @.str.4, i32 noundef 82) #21
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.t:                                             ; preds = %bb.q
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load ptr, ptr %9, align 8, !tbaa !18    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.t
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !19
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.s
  %.pn18 = phi { ptr, i32 } [ %i.ae, %bb.s ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.af, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.ag

bb.u:                                             ; preds = %bb.k
  br i1 %i.u, label %.thread36, label %bb.v

.thread36:                                        ; preds = %.thread, %bb.u
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %i.al)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %.thread36
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke void @_ZN2cv3Mat7releaseEv(ptr noundef nonnull align 8 dereferenceable(208) %i.am)
          to label %_ZN2cv2ml4Impl5clearEv.exit unwind label %bb.o

bb.v:                                             ; preds = %bb.u
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !58
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !59
  %i.ar = icmp eq i32 %i.ao, %i.aq
  br i1 %i.ar, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !58
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.av = load i32, ptr %i.au, align 4, !tbaa !226
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %_ZN2cv2ml4Impl5clearEv.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv2ml12KNearestImpl5trainERKNS_3PtrINS0_9TrainDataEEEi, ptr noundef nonnull @.str.4, i32 noundef 91) #21
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

bb.ab:                                            ; preds = %bb.y
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %11, align 8, !tbaa !18   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.ab
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !19
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %bb.aa
  %.pn20 = phi { ptr, i32 } [ %i.ax, %bb.aa ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33 ], [ %i.ay, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.ag

_ZN2cv2ml4Impl5clearEv.exit:                      ; preds = %.noexc, %bb.w
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  invoke void @_ZN2cv3Mat9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.be, ptr noundef nonnull align 8 dereferenceable(208) %5)
          to label %bb.ac unwind label %bb.o

bb.ac:                                            ; preds = %_ZN2cv2ml4Impl5clearEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke void @_ZN2cv3Mat9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.bf, ptr noundef nonnull align 8 dereferenceable(208) %6)
          to label %bb.ad unwind label %bb.o

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 0, ptr %i.bg, align 8, !tbaa !87
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 20
  store i32 0, ptr %i.bh, align 4, !tbaa !88
  store i32 16842752, ptr %13, align 8, !tbaa !89
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !56
  %i.bj = load ptr, ptr %0, align 8, !tbaa !25
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i1 true

bb.af:                                            ; preds = %bb.ad
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ag

bb.ag:                                            ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %bb.af, %bb.n
  %.pn22.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.n ], [ %i.bm, %bb.af ], [ %i.ad, %bb.o ], [ %.pn20, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %.pn18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn22.pn.pn, %bb.ag ]
  resume { ptr, i32 } %.pn26.pn
}

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_knearest.cpp() #17 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv2mlL16NAME_BRUTE_FORCEB5cxx11E, i64 16), ptr @_ZN2cv2mlL16NAME_BRUTE_FORCEB5cxx11E, align 8, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) getelementptr inbounds nuw (i8, ptr @_ZN2cv2mlL16NAME_BRUTE_FORCEB5cxx11E, i64 16), ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  store i64 13, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv2mlL16NAME_BRUTE_FORCEB5cxx11E, i64 8), align 8, !tbaa !20
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv2mlL16NAME_BRUTE_FORCEB5cxx11E, i64 29), align 1, !tbaa !19
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN2cv2mlL16NAME_BRUTE_FORCEB5cxx11E, ptr nonnull @__dso_handle) #22 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv2mlL11NAME_KDTREEB5cxx11E, i64 16), ptr @_ZN2cv2mlL11NAME_KDTREEB5cxx11E, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 16, ptr %i.a, align 8, !tbaa !16
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN2cv2mlL11NAME_KDTREEB5cxx11E, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr @_ZN2cv2mlL11NAME_KDTREEB5cxx11E, align 8, !tbaa !18
  %i.d = load i64, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv2mlL11NAME_KDTREEB5cxx11E, i64 16), align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.c, ptr noundef nonnull align 1 dereferenceable(16) @.str.2, i64 16, i1 false)
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cv2mlL11NAME_KDTREEB5cxx11E, i64 8), align 8, !tbaa !20
  %i.e = load ptr, ptr @_ZN2cv2mlL11NAME_KDTREEB5cxx11E, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.g = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZN2cv2mlL11NAME_KDTREEB5cxx11E, ptr nonnull @__dso_handle) #22 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #13

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { noreturn }
attributes #22 = { nounwind }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null, null}
!1 = distinct !{!1, !76}
!2 = distinct !{!2, !76}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !15, i64 8, !7, i64 16}
!18 = !{!17, !12, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!17, !15, i64 8}
!21 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 8, !8, i64 12}
!22 = !{!21, !8, i64 8}
!23 = !{!21, !8, i64 12}
!24 = !{!"vtable pointer", !6, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"p1 _ZTSN2cv2ml8KNearestE", !11, i64 0}
!27 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!28 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !27, i64 0}
!29 = !{!"_ZTSSt12__shared_ptrIN2cv2ml8KNearestELN9__gnu_cxx12_Lock_policyE2EE", !26, i64 0, !28, i64 8}
!30 = !{!29, !26, i64 0}
!31 = !{!28, !27, i64 0}
!32 = !{!"p1 _ZTSN2cv2ml4ImplE", !11, i64 0}
!33 = !{!"_ZTSSt12__shared_ptrIN2cv2ml4ImplELN9__gnu_cxx12_Lock_policyE2EE", !32, i64 0, !28, i64 8}
!34 = !{!33, !32, i64 0}
!35 = !{!8, !8, i64 0}
!36 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!37 = !{!"bool", !7, i64 0}
!38 = !{!"p1 _ZTSN2cv12MatAllocatorE", !11, i64 0}
!39 = !{!"p1 _ZTSN2cv8UMatDataE", !11, i64 0}
!40 = !{!"_ZTSN2cv10DataLayoutE", !7, i64 0}
!41 = !{!"_ZTSN2cv8MatShapeE", !8, i64 0, !40, i64 4, !8, i64 8, !7, i64 12}
!42 = !{!"_ZTSN2cv7MatStepE", !7, i64 0}
!43 = !{!"_ZTSN2cv3MatE", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !38, i64 56, !39, i64 64, !41, i64 72, !42, i64 128}
!44 = !{!"_ZTSN2cv2ml4ImplE", !8, i64 8, !37, i64 12, !8, i64 16, !43, i64 24, !43, i64 232}
!45 = !{!44, !8, i64 8}
!46 = !{!44, !37, i64 12}
!47 = !{!44, !8, i64 16}
!48 = !{!"p1 _ZTSN2cv2ml10KDTreeImplE", !11, i64 0}
!49 = !{ptr @_ZN2cv2ml4ImplD2Ev}
!50 = !{!"_ZTSSt9type_info", !12, i64 8}
!51 = !{!50, !12, i64 8}
!52 = !{!"float", !7, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!"_ZTSN2cv5Size_IiEE", !8, i64 0, !8, i64 4}
!55 = !{!"_ZTSN2cv11_InputArrayE", !8, i64 0, !11, i64 8, !54, i64 16}
!56 = !{!55, !11, i64 8}
!57 = !{!43, !8, i64 0}
!58 = !{!43, !8, i64 12}
!59 = !{!44, !8, i64 36}
!60 = !{!43, !8, i64 8}
!61 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!62 = !{!"p1 _ZTSN2cv2ml14BruteForceImplE", !11, i64 0}
!63 = !{!"p1 _ZTSN2cv3MatE", !11, i64 0}
!64 = !{!"p1 float", !11, i64 0}
!65 = !{!"_ZTSN2cv2ml14BruteForceImpl19findKNearestInvokerE", !61, i64 0, !62, i64 8, !8, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !64, i64 56}
!66 = !{!65, !62, i64 8}
!67 = !{!65, !8, i64 16}
!68 = !{!65, !63, i64 24}
!69 = !{!65, !63, i64 32}
!70 = !{!65, !63, i64 40}
!71 = !{!65, !63, i64 48}
!72 = !{!65, !64, i64 56}
!73 = !{!"_ZTSN2cv5RangeE", !8, i64 0, !8, i64 4}
!74 = !{!73, !8, i64 0}
!75 = !{!73, !8, i64 4}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{i8 0, i8 2}
!78 = !{}
!79 = !{!"p1 int", !11, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!80, !79, i64 0}
!82 = !{!80, !79, i64 16}
!83 = !{!"p1 _ZTSN2cv2ml6KDTree4NodeE", !11, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseIN2cv2ml6KDTree4NodeESaIS3_EE17_Vector_impl_dataE", !83, i64 0, !83, i64 8, !83, i64 16}
!85 = !{!84, !83, i64 0}
!86 = !{!84, !83, i64 16}
!87 = !{!54, !8, i64 0}
!88 = !{!54, !8, i64 4}
!89 = !{!55, !8, i64 0}
!90 = !{!"p1 _ZTSN2cv2ml9TrainDataE", !11, i64 0}
!91 = !{!"_ZTSSt12__shared_ptrIN2cv2ml9TrainDataELN9__gnu_cxx12_Lock_policyE2EE", !90, i64 0, !28, i64 8}
!92 = !{!91, !90, i64 0}
!93 = distinct !{!93, i1 true, !"_ZN2cvL7makePtrINS_2ml12KNearestImplEJEEENS_3PtrIT_EEDpRKT0_"}
!94 = distinct !{!94, !93, !"_ZN2cvL7makePtrINS_2ml12KNearestImplEJEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!95 = distinct !{!95, i1 true, !"_ZSt11make_sharedIN2cv2ml12KNearestImplEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!96 = distinct !{!96, !95, !"_ZSt11make_sharedIN2cv2ml12KNearestImplEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!97 = !{!96, !94}
!98 = distinct !{!98, i1 true, !"_ZN2cvL7makePtrINS_2ml12KNearestImplEJEEENS_3PtrIT_EEDpRKT0_"}
!99 = distinct !{!99, !98, !"_ZN2cvL7makePtrINS_2ml12KNearestImplEJEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!100 = distinct !{!100, i1 true, !"_ZSt11make_sharedIN2cv2ml12KNearestImplEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!101 = distinct !{!101, !100, !"_ZSt11make_sharedIN2cv2ml12KNearestImplEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!102 = !{!101, !99}
!103 = distinct !{null}
!104 = distinct !{!104, i1 true, !"_ZN2cvL7makePtrINS_2ml14BruteForceImplEJEEENS_3PtrIT_EEDpRKT0_"}
!105 = distinct !{!105, !104, !"_ZN2cvL7makePtrINS_2ml14BruteForceImplEJEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!106 = distinct !{!106, i1 true, !"_ZSt11make_sharedIN2cv2ml14BruteForceImplEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!107 = distinct !{!107, !106, !"_ZSt11make_sharedIN2cv2ml14BruteForceImplEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!108 = distinct !{null, null, null, null, null}
!109 = distinct !{null, null, null}
!110 = distinct !{!110, i1 true, !"_ZN2cvL7makePtrINS_2ml10KDTreeImplEJEEENS_3PtrIT_EEDpRKT0_"}
!111 = distinct !{!111, !110, !"_ZN2cvL7makePtrINS_2ml10KDTreeImplEJEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!112 = distinct !{!112, i1 true, !"_ZSt11make_sharedIN2cv2ml10KDTreeImplEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!113 = distinct !{!113, !112, !"_ZSt11make_sharedIN2cv2ml10KDTreeImplEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!114 = distinct !{null, null, null, null, null}
!115 = distinct !{null, null, null}
!116 = !{!107, !105}
!117 = !{!111}
!118 = !{!113}
!119 = !{!113, !111}
!120 = !{!"_ZTSSt12__shared_ptrIN2cv2ml10KDTreeImplELN9__gnu_cxx12_Lock_policyE2EE", !48, i64 0, !28, i64 8}
!121 = !{!120, !48, i64 0}
!122 = distinct !{!122, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!123 = distinct !{!123, !122, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!124 = distinct !{!124, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!125 = distinct !{!125, !124, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!126 = distinct !{!126, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!127 = distinct !{!127, !126, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!128 = distinct !{!128, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!129 = distinct !{!129, !128, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!130 = !{!123}
!131 = !{!125}
!132 = !{!127}
!133 = !{!129}
!134 = distinct !{!134, !76}
!135 = distinct !{!135, !76, !165, !166}
!136 = distinct !{!136, !167}
!137 = distinct !{!137, !76, !165}
!138 = distinct !{!138, !76}
!139 = distinct !{!139, !167}
!140 = distinct !{!140, !76}
!141 = distinct !{!141, !76}
!142 = distinct !{!142, !76}
!143 = distinct !{!143, i1 false, !"LVerDomain"}
!144 = distinct !{!144, !143}
!145 = distinct !{!145, !143}
!146 = distinct !{!146, !76, !165, !166}
!147 = distinct !{!147, !76, !165}
!148 = distinct !{!148, !76}
!149 = distinct !{!149, !76}
!150 = distinct !{!150, !76, !165, !166}
!151 = distinct !{!151, !167}
!152 = distinct !{!152, !76, !165}
!153 = distinct !{!153, !76, !165, !166}
!154 = distinct !{!154, !167}
!155 = distinct !{!155, !76, !165}
!156 = distinct !{!156, !76}
!157 = distinct !{!157, !167}
!158 = distinct !{!158, !76, !170}
!159 = distinct !{!159, !76}
!160 = !{!44, !8, i64 32}
!161 = !{!"_ZTSN2cv10AutoBufferIfLm264EEE", !64, i64 0, !15, i64 8, !7, i64 16}
!162 = !{!161, !64, i64 0}
!163 = !{!161, !15, i64 8}
!164 = !{!43, !12, i64 24}
!165 = !{!"llvm.loop.isvectorized", i32 1}
!166 = !{!"llvm.loop.unroll.runtime.disable"}
!167 = !{!"llvm.loop.unroll.disable"}
!168 = !{!144}
!169 = !{!145}
!170 = !{!"llvm.loop.peeled.count", i32 1}
!171 = !{!43, !8, i64 4}
!172 = distinct !{!172, !76}
!173 = distinct !{!173, !76}
!174 = distinct !{!174, !76}
!175 = distinct !{!175, !76}
!176 = distinct !{!176, !76}
!177 = distinct !{!177, !76}
!178 = distinct !{!178, !76}
!179 = distinct !{!179, !76}
!180 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!181 = distinct !{!181, !76}
!182 = !{!48, !48, i64 0}
!183 = distinct !{!183, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!184 = distinct !{!184, !183, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!185 = distinct !{!185, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!186 = distinct !{!186, !185, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!187 = distinct !{!187, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!188 = distinct !{!188, !187, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!189 = distinct !{!189, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!190 = distinct !{!190, !189, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!191 = distinct !{!191, i1 true, !"_ZNK2cv3Mat3rowEi"}
!192 = distinct !{!192, !191, !"_ZNK2cv3Mat3rowEi: argument 0"}
!193 = distinct !{!193, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!194 = distinct !{!194, !193, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!195 = distinct !{!195, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!196 = distinct !{!196, !195, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!197 = distinct !{!197, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!198 = distinct !{!198, !197, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!199 = distinct !{!199, !76}
!200 = !{!184}
!201 = !{!186}
!202 = !{!188}
!203 = !{!190}
!204 = !{!192}
!205 = !{!"p1 _ZTSN2cv5MatOpE", !11, i64 0}
!206 = !{!"double", !7, i64 0}
!207 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !7, i64 0}
!208 = !{!"_ZTSN2cv3VecIdLi4EEE", !207, i64 0}
!209 = !{!"_ZTSN2cv7Scalar_IdEE", !208, i64 0}
!210 = !{!"_ZTSN2cv7MatExprE", !205, i64 0, !8, i64 8, !43, i64 16, !43, i64 224, !43, i64 432, !206, i64 640, !206, i64 648, !209, i64 656}
!211 = !{!210, !205, i64 0}
!212 = !{!194}
!213 = !{!196}
!214 = !{!198}
!215 = distinct !{null, ptr @_ZN2cv2ml12KNearestImplD2Ev, ptr @_ZNSt12__shared_ptrIN2cv2ml4ImplELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!216 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv2ml4ImplELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!217 = distinct !{ptr @_ZN2cv2ml12KNearestImplD2Ev, ptr @_ZNSt12__shared_ptrIN2cv2ml4ImplELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!218 = distinct !{null}
!219 = distinct !{null}
!220 = !{!"p1 _ZTSN2cv11FileStorage4ImplE", !11, i64 0}
!221 = !{!"_ZTSSt12__shared_ptrIN2cv11FileStorage4ImplELN9__gnu_cxx12_Lock_policyE2EE", !220, i64 0, !28, i64 8}
!222 = !{!"_ZTSSt10shared_ptrIN2cv11FileStorage4ImplEE", !221, i64 0}
!223 = !{!"_ZTSN2cv3PtrINS_11FileStorage4ImplEEE", !222, i64 0}
!224 = !{!"_ZTSN2cv11FileStorageE", !8, i64 8, !17, i64 16, !223, i64 48}
!225 = !{!224, !8, i64 8}
!226 = !{!44, !8, i64 244}
end_hunk_0
