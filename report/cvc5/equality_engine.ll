Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/equality_engine?download=true
inline.NumInlined: 6224
inline.NumDeleted: 1844
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4cvc58internal6theory2eq14EqualityEngine33propagateTriggerTermDisequalitiesEjjRKSt6vectorINS3_14TaggedEqualityESaIS5_EE:bb.a
  store ptr %i.hr, ptr %6, align 8, !tbaa !186
  store ptr %i.hu, ptr %7, align 8, !tbaa !186
  %i.if = load ptr, ptr %i.ia, align 8, !tbaa !211
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = call noundef zeroext i1 %i.ih(ptr noundef nonnull align 8 dereferenceable(8) %i.ia, i32 noundef %i.bi, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 %7, i1 noundef zeroext false), !inline_history !19
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br i1 %i.ii, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.split, %bb.ab
  %i.ij = load ptr, ptr %i.ad, align 8, !tbaa !216 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !223
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !225
  %i.in = getelementptr inbounds i8, ptr %i.im, i64 -8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !226
  %i.ip = icmp eq ptr %i.ij, %i.io
  br i1 %i.ip, label %_ZN4cvc57context3CDOIbEaSERKb.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN4cvc57context10ContextObj6updateEv(ptr noundef nonnull align 8 dereferenceable(41) %i.l)
  br label %_ZN4cvc57context3CDOIbEaSERKb.exit

_ZN4cvc57context3CDOIbEaSERKb.exit:               ; preds = %bb.ac, %bb.ad
  store i8 1, ptr %i.m, align 8, !tbaa !286
  br label %bb.ae

bb.ae:                                            ; preds = %.split, %bb.ab, %_ZN4cvc57context3CDOIbEaSERKb.exit, %_ZNK4cvc58internal6theory2eq14EqualityEngine24hasPropagatedDisequalityENS1_8TheoryIdEjj.exit
  %i.iq = load i8, ptr %i.m, align 8, !tbaa !56, !range !200, !noundef !189
  %i.ir = trunc nuw i8 %i.iq to i1
  br i1 %i.ir, label %.critedge2.thread204, label %bb.e, !llvm.loop !696

.critedge2.thread204:                             ; preds = %.preheader, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %.critedge

.critedge2:                                       ; preds = %bb.e
  %.pre176.pre = load i8, ptr %i.m, align 8, !tbaa !56, !range !200
  %i.is = trunc nuw i8 %.pre176.pre to i1         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0124.0157, i64 12 ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.k
  %or.cond.not = select i1 %i.is, i1 true, i1 %i.iu
  br i1 %or.cond.not, label %.critedge, label %bb.d, !llvm.loop !697

.critedge:                                        ; preds = %.critedge2, %bb.c, %.critedge2.thread204, %.critedge2.thread, %bb.b
  %.3.in = phi i1 [ %i.d, %bb.b ], [ %i.bg, %.critedge2.thread ], [ %i.o, %bb.c ], [ true, %.critedge2.thread204 ], [ %i.is, %.critedge2 ]
  %.3 = xor i1 %.3.in, true
  ret i1 %.3
}

declare noundef i32 @_ZN4cvc58internal6theory15TheoryIdSetUtil8setUnionEjj(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4cvc58internal6theory2eq14EqualityEngine9undoMergeERNS2_12EqualityNodeES5_j(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1784) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %2, i32 noundef %3) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !357
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !357
  store i32 %i.d, ptr %i.a, align 4, !tbaa !357
  store i32 %i.b, ptr %i.c, align 4, !tbaa !357
  %i.e = load i32, ptr %2, align 4, !tbaa !347
  %i.f = load i32, ptr %1, align 4, !tbaa !347
  %i.g = sub i32 %i.f, %i.e
  store i32 %i.g, ptr %1, align 4, !tbaa !347
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !206
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !204
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.m = load ptr, ptr %i.l, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.0 = phi i32 [ %3, %bb.a ], [ %i.v, %._crit_edge ]
  %i.n = zext i32 %.0 to i64                      ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %3, ptr %i.p, align 4, !tbaa !208
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n
  %.01376 = load i32, ptr %i.q, align 4, !tbaa !205 ; 2 uses
  %.not77 = icmp eq i32 %.01376, -1
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.01378 = phi i32 [ %.013, %.lr.ph ], [ %.01376, %bb.b ]
  %i.r = zext i32 %.01378 to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.r ; 2 uses
  store i32 %3, ptr %i.s, align 4, !tbaa !356
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.013 = load i32, ptr %i.t, align 4, !tbaa !205 ; 2 uses
  %.not = icmp eq i32 %.013, -1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !357  ; 2 uses
  %.not15 = icmp eq i32 %i.v, %3
  br i1 %.not15, label %bb.c, label %bb.b, !llvm.loop !21

bb.c:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal6theory2eq14EqualityEngine9backtrackEv(ptr noundef nonnull align 8 dereferenceable(1784) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cvc5::internal::NodeTemplate.227", align 8 ; 4 uses
  %2 = alloca %"struct.std::pair.508", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !205  ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !346  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !257  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = icmp ugt i64 %i.k, %i.c
  br i1 %i.l, label %.preheader, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine12EqualityEdgeESaIS5_EE6resizeEm.exit

.preheader:                                       ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !300  ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !300  ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !334
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit
  %i.u = phi ptr [ %i.o, %.lr.ph ], [ %i.ae, %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit ]
  %i.v = phi ptr [ %.pre, %.lr.ph ], [ %i.af, %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit ] ; 2 uses
  %i.w = phi ptr [ %i.p, %.lr.ph ], [ %storemerge.i, %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -24
  %.not.i67 = icmp eq ptr %i.w, %i.x
  br i1 %.not.i67, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  br label %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit

bb.d:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !298
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef 504) #34
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !240
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.t, align 8, !tbaa !299
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !242 ; 3 uses
  store ptr %i.ac, ptr %i.s, align 8, !tbaa !301
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 504 ; 2 uses
  store ptr %i.ad, ptr %i.r, align 8, !tbaa !302
  %.pre205 = load ptr, ptr %i.m, align 8, !tbaa !300
  br label %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit

_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit: ; preds = %bb.c, %bb.d
  %i.ae = phi ptr [ %i.u, %bb.c ], [ %.pre205, %bb.d ] ; 2 uses
  %i.af = phi ptr [ %i.v, %bb.c ], [ %i.ad, %bb.d ]
  %storemerge.i = phi ptr [ %i.y, %bb.c ], [ %i.ac, %bb.d ] ; 3 uses
  store ptr %storemerge.i, ptr %i.n, align 8, !tbaa !297
  %i.ag = icmp eq ptr %i.ae, %storemerge.i
  br i1 %i.ag, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !709

._crit_edge.loopexit:                             ; preds = %_ZNSt5dequeIN4cvc58internal6theory2eq14MergeCandidateESaIS4_EE9pop_frontEv.exit
  %.pre206 = load ptr, ptr %i.e, align 8, !tbaa !346 ; 2 uses
  %.pre207 = load ptr, ptr %i.d, align 8, !tbaa !257 ; 2 uses
  %.pre208 = load i32, ptr %i.a, align 8, !tbaa !205
  %.pre230.a = ptrtoint ptr %.pre206 to i64
  %.pre231 = ptrtoint ptr %.pre207 to i64
  %.pre233 = sub i64 %.pre230.a, %.pre231
  %.pre235 = ashr exact i64 %.pre233, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre-phi236 = phi i64 [ %.pre235, %._crit_edge.loopexit ], [ %i.k, %.preheader ] ; 5 uses
  %i.ah = phi i32 [ %.pre208, %._crit_edge.loopexit ], [ %i.b, %.preheader ] ; 3 uses
  %i.ai = phi ptr [ %.pre207, %._crit_edge.loopexit ], [ %i.g, %.preheader ] ; 2 uses
  %i.aj = phi ptr [ %.pre206, %._crit_edge.loopexit ], [ %i.f, %.preheader ]
  %i.ak = trunc i64 %.pre-phi236 to i32
  %.not.not157 = icmp slt i32 %i.ah, %i.ak
  br i1 %.not.not157, label %.lr.ph160, label %._crit_edge161

.lr.ph160:                                        ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 712
  %sext = shl i64 %.pre-phi236, 32
  %i.ao = ashr exact i64 %sext, 32
  %3 = add nsw i64 %i.ao, -1
  %i.ap = sext i32 %i.ah to i64
  br label %bb.h

._crit_edge161.loopexit:                          ; preds = %_ZN4cvc58internal6theory2eq14EqualityEngine9undoMergeERNS2_12EqualityNodeES5_j.exit
  %.pre209 = load i32, ptr %i.a, align 8, !tbaa !205
  br label %._crit_edge161

._crit_edge161:                                   ; preds = %._crit_edge161.loopexit, %._crit_edge
  %i.aq = phi i32 [ %.pre209, %._crit_edge161.loopexit ], [ %i.ah, %._crit_edge ] ; 4 uses
  %i.ar = zext i32 %i.aq to i64                   ; 4 uses
  %i.as = icmp ult i64 %.pre-phi236, %i.ar
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge161
  %i.at = sub nuw nsw i64 %i.ar, %.pre-phi236
  tail call void @_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.at)
  %.pre210 = load i32, ptr %i.a, align 8, !tbaa !205
  br label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE6resizeEm.exit

bb.f:                                             ; preds = %._crit_edge161
  %i.au = icmp ugt i64 %.pre-phi236, %i.ar
  br i1 %i.au, label %bb.g, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ar ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, %i.av
  br i1 %.not.i.i, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE6resizeEm.exit, label %_ZSt8_DestroyIPN4cvc58internal6theory2eq14EqualityEngine8EqualityES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4cvc58internal6theory2eq14EqualityEngine8EqualityES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %bb.g
  store ptr %i.av, ptr %i.e, align 8, !tbaa !346
  br label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE6resizeEm.exit

bb.h:                                             ; preds = %.lr.ph160, %_ZN4cvc58internal6theory2eq14EqualityEngine9undoMergeERNS2_12EqualityNodeES5_j.exit
  %indvars.iv = phi i64 [ %3, %.lr.ph160 ], [ %indvars.iv.next, %_ZN4cvc58internal6theory2eq14EqualityEngine9undoMergeERNS2_12EqualityNodeES5_j.exit ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !719 ; 2 uses
  %.not66.a = icmp eq i32 %i.ax, -1
  br i1 %.not66.a, label %_ZN4cvc58internal6theory2eq14EqualityEngine9undoMergeERNS2_12EqualityNodeES5_j.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = zext i32 %i.ax to i64
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !206 ; 3 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.ay ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !720 ; 5 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !357
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !357
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !357
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !357
  %i.bj = load i32, ptr %i.be, align 4, !tbaa !347
  %i.bk = load i32, ptr %i.ba, align 4, !tbaa !347
  %i.bl = sub i32 %i.bk, %i.bj
  store i32 %i.bl, ptr %i.ba, align 4, !tbaa !347
  %i.bm = load ptr, ptr %i.am, align 8, !tbaa !204
  %i.bn = load ptr, ptr %i.an, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i, %bb.i
  %.0.i = phi i32 [ %i.bc, %bb.i ], [ %i.bw, %._crit_edge.i ]
  %i.bo = zext i32 %.0.i to i64                   ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %i.bc, ptr %i.bq, align 4, !tbaa !208
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bo
  %.01376.i = load i32, ptr %i.br, align 4, !tbaa !205 ; 2 uses
  %.not77.i = icmp eq i32 %.01376.i, -1
  br i1 %.not77.i, label %._crit_edge.i, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %bb.j, %.lr.ph.i71
  %.01378.i = phi i32 [ %.013.i, %.lr.ph.i71 ], [ %.01376.i, %bb.j ]
  %i.bs = zext i32 %.01378.i to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bs ; 2 uses
  store i32 %i.bc, ptr %i.bt, align 4, !tbaa !356
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %.013.i = load i32, ptr %i.bu, align 4, !tbaa !205 ; 2 uses
  %.not.i72 = icmp eq i32 %.013.i, -1
  br i1 %.not.i72, label %._crit_edge.i, label %.lr.ph.i71, !llvm.loop !20

._crit_edge.i:                                    ; preds = %.lr.ph.i71, %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !357 ; 2 uses
  %.not15.i = icmp eq i32 %i.bw, %i.bc
  br i1 %.not15.i, label %_ZN4cvc58internal6theory2eq14EqualityEngine9undoMergeERNS2_12EqualityNodeES5_j.exit, label %bb.j, !llvm.loop !21

_ZN4cvc58internal6theory2eq14EqualityEngine9undoMergeERNS2_12EqualityNodeES5_j.exit: ; preds = %._crit_edge.i, %bb.h
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %.not = icmp slt i64 %indvars.iv.next, %i.ap
  br i1 %.not, label %._crit_edge161.loopexit, label %bb.h, !llvm.loop !710

_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE6resizeEm.exit: ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPN4cvc58internal6theory2eq14EqualityEngine8EqualityES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bx = phi i32 [ %.pre210, %bb.e ], [ %i.aq, %bb.f ], [ %i.aq, %bb.g ], [ %i.aq, %_ZSt8_DestroyIPN4cvc58internal6theory2eq14EqualityEngine8EqualityES5_EvT_S7_RSaIT0_E.exit.i.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !341 ; 2 uses
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !255 ; 4 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 24                ; 5 uses
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = shl i32 %i.bx, 1                        ; 3 uses
  %.057162 = add nsw i32 %i.cg, -2
  %.not163 = icmp slt i32 %.057162, %i.ch
  br i1 %.not163, label %._crit_edge166, label %.lr.ph165

.lr.ph165:                                        ; preds = %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE6resizeEm.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !204 ; 2 uses
  %sext372 = shl i64 %i.cf, 32
  %i.ck = ashr exact i64 %sext372, 32
  %i.cl = add nsw i64 %i.ck, -2
  %i.cm = sext i32 %i.ch to i64
  br label %bb.n

._crit_edge166.loopexit:                          ; preds = %bb.n
  %.pre211 = load i32, ptr %i.a, align 8, !tbaa !205
  %.pre237 = shl i32 %.pre211, 1
  br label %._crit_edge166

._crit_edge166:                                   ; preds = %._crit_edge166.loopexit, %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE6resizeEm.exit
  %.pre-phi238 = phi i32 [ %.pre237, %._crit_edge166.loopexit ], [ %i.ch, %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine8EqualityESaIS5_EE6resizeEm.exit ]
  %i.cn = zext i32 %.pre-phi238 to i64            ; 4 uses
  %i.co = icmp ult i64 %i.cf, %i.cn
  br i1 %i.co, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge166
  %i.cp = sub nuw nsw i64 %i.cn, %i.cf
  tail call void @_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine12EqualityEdgeESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 noundef %i.cp)
  br label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine12EqualityEdgeESaIS5_EE6resizeEm.exit

bb.l:                                             ; preds = %._crit_edge166
  %i.cq = icmp ugt i64 %i.cf, %i.cn
  br i1 %i.cq, label %bb.m, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine12EqualityEdgeESaIS5_EE6resizeEm.exit

bb.m:                                             ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %i.cn ; 2 uses
  %.not.i.i84 = icmp eq ptr %i.ca, %i.cr
  br i1 %.not.i.i84, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine12EqualityEdgeESaIS5_EE6resizeEm.exit, label %_ZSt8_DestroyIPN4cvc58internal6theory2eq14EqualityEngine12EqualityEdgeES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4cvc58internal6theory2eq14EqualityEngine12EqualityEdgeES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %bb.m
  store ptr %i.cr, ptr %i.bz, align 8, !tbaa !341
  br label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine12EqualityEdgeESaIS5_EE6resizeEm.exit

bb.n:                                             ; preds = %.lr.ph165, %bb.n
  %indvars.iv202 = phi i64 [ %i.cl, %.lr.ph165 ], [ %indvars.iv.next203, %bb.n ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %indvars.iv202 ; 2 uses
  %i.ct = shl i64 %indvars.iv202, 32
  %sext373 = ashr exact i64 %i.ct, 32
  %i.cu = or i64 %sext373, 1
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !344
  %i.cy = load i32, ptr %i.cv, align 8, !tbaa !343
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cz
  store i32 %i.cx, ptr %i.da, align 4, !tbaa !205
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !344
  %i.dd = load i32, ptr %i.cs, align 8, !tbaa !343
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.de
  store i32 %i.dc, ptr %i.df, align 4, !tbaa !205
  %indvars.iv.next203 = add nsw i64 %indvars.iv202, -2 ; 2 uses
  %.not.a = icmp slt i64 %indvars.iv.next203, %i.cm
  br i1 %.not.a, label %._crit_edge166.loopexit, label %bb.n, !llvm.loop !711

_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine12EqualityEdgeESaIS5_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal6theory2eq14EqualityEngine12EqualityEdgeES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.m, %bb.l, %bb.k, %bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1344 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !213 ; 2 uses
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !215 ; 3 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = ashr exact i64 %i.dm, 3                 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !205 ; 3 uses
  %i.dq = zext i32 %i.dp to i64                   ; 2 uses
  %i.dr = icmp ugt i64 %i.dn, %i.dq
  br i1 %i.dr, label %bb.o, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine16TriggerSetUpdateESaIS5_EE6resizeEm.exit

bb.o:                                             ; preds = %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine12EqualityEdgeESaIS5_EE6resizeEm.exit
  %i.ds = trunc i64 %i.dn to i32
  %.058167 = add i32 %i.ds, -1                    ; 2 uses
  %.not60168 = icmp slt i32 %.058167, %i.dp
  br i1 %.not60168, label %._crit_edge172, label %.lr.ph171

.lr.ph171:                                        ; preds = %bb.o
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !204
  br label %bb.s

._crit_edge172.loopexit:                          ; preds = %bb.s
  %.pre212 = load i32, ptr %i.do, align 8, !tbaa !205
  %.pre239 = zext i32 %.pre212 to i64
  br label %._crit_edge172

._crit_edge172:                                   ; preds = %._crit_edge172.loopexit, %bb.o
  %.pre-phi240 = phi i64 [ %.pre239, %._crit_edge172.loopexit ], [ %i.dq, %bb.o ] ; 4 uses
  %i.dv = icmp ult i64 %i.dn, %.pre-phi240
  br i1 %i.dv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge172
  %i.dw = sub nuw nsw i64 %.pre-phi240, %i.dn
  tail call void @_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine16TriggerSetUpdateESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i64 noundef %i.dw)
  br label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine16TriggerSetUpdateESaIS5_EE6resizeEm.exit

bb.q:                                             ; preds = %._crit_edge172
  %i.dx = icmp ugt i64 %i.dn, %.pre-phi240
  br i1 %i.dx, label %bb.r, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine16TriggerSetUpdateESaIS5_EE6resizeEm.exit

bb.r:                                             ; preds = %bb.q
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.pre-phi240 ; 2 uses
  %.not.i.i85 = icmp eq ptr %i.di, %i.dy
  br i1 %.not.i.i85, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine16TriggerSetUpdateESaIS5_EE6resizeEm.exit, label %_ZSt8_DestroyIPN4cvc58internal6theory2eq14EqualityEngine16TriggerSetUpdateES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4cvc58internal6theory2eq14EqualityEngine16TriggerSetUpdateES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %bb.r
  store ptr %i.dy, ptr %i.dh, align 8, !tbaa !213
  br label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine16TriggerSetUpdateESaIS5_EE6resizeEm.exit

bb.s:                                             ; preds = %.lr.ph171, %bb.s
  %.058169 = phi i32 [ %.058167, %.lr.ph171 ], [ %.058, %bb.s ] ; 2 uses
  %i.dz = sext i32 %.058169 to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !722
  %i.ed = load i32, ptr %i.ea, align 4, !tbaa !723
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.ee
  store i32 %i.ec, ptr %i.ef, align 4, !tbaa !205
  %.058 = add i32 %.058169, -1                    ; 2 uses
  %.not60 = icmp slt i32 %.058, %i.dp
  br i1 %.not60, label %._crit_edge172.loopexit, label %bb.s, !llvm.loop !712

_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine16TriggerSetUpdateESaIS5_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal6theory2eq14EqualityEngine16TriggerSetUpdateES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.r, %bb.q, %bb.p, %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine12EqualityEdgeESaIS5_EE6resizeEm.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !375 ; 2 uses
  %i.ej = load ptr, ptr %i.eg, align 8, !tbaa !253 ; 3 uses
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 3                 ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !205 ; 3 uses
  %i.eq = zext i32 %i.ep to i64                   ; 2 uses
  %i.er = icmp ugt i64 %i.en, %i.eq
  br i1 %i.er, label %bb.t, label %_ZNSt6vectorIN4cvc58internal6theory2eq11TriggerInfoESaIS4_EE6resizeEm.exit

bb.t:                                             ; preds = %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine16TriggerSetUpdateESaIS5_EE6resizeEm.exit
  %i.es = trunc i64 %i.en to i32
  %.056173 = add i32 %i.es, -1                    ; 2 uses
  %.not61174 = icmp slt i32 %.056173, %i.ep
  br i1 %.not61174, label %._crit_edge178, label %.lr.ph177

.lr.ph177:                                        ; preds = %bb.t
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !204
  br label %bb.ad

._crit_edge178.loopexit:                          ; preds = %bb.ad
  %.pre213 = load i32, ptr %i.eo, align 8, !tbaa !205
  %.pre241 = zext i32 %.pre213 to i64
  br label %._crit_edge178

._crit_edge178:                                   ; preds = %._crit_edge178.loopexit, %bb.t
  %.pre-phi242 = phi i64 [ %.pre241, %._crit_edge178.loopexit ], [ %i.eq, %bb.t ] ; 7 uses
  %i.ev = icmp ult i64 %i.en, %.pre-phi242
  br i1 %i.ev, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge178
  %i.ew = sub nuw nsw i64 %.pre-phi242, %i.en
  tail call void @_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine7TriggerESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i64 noundef %i.ew)
  %.pre214 = load i32, ptr %i.eo, align 8, !tbaa !205
  %.pre243 = zext i32 %.pre214 to i64
  br label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine7TriggerESaIS5_EE6resizeEm.exit

bb.v:                                             ; preds = %._crit_edge178
  %i.ex = icmp ugt i64 %i.en, %.pre-phi242
  br i1 %i.ex, label %bb.w, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine7TriggerESaIS5_EE6resizeEm.exit

bb.w:                                             ; preds = %bb.v
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.pre-phi242 ; 2 uses
  %.not.i.i86 = icmp eq ptr %i.ei, %i.ey
  br i1 %.not.i.i86, label %_ZNSt6vectorIN4cvc58internal6theory2eq14EqualityEngine7TriggerESaIS5_EE6resizeEm.exit, label %_ZSt8_DestroyIPN4cvc58internal6theory2eq14EqualityEngine7TriggerES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4cvc58internal6theory2eq14EqualityEngine7TriggerES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %bb.w
  store ptr %i.ey, ptr %i.eh, align 8, !tbaa !375
end_hunk_0
