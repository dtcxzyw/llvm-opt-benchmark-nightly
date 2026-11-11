Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ScheduleDAGSDNodes?download=true
inline.NumInlined: 2812
inline.NumDeleted: 1518
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZL7AddGluePN4llvm6SDNodeENS_7SDValueEbPNS_12SelectionDAGE:bb.a
  %.idx = shl nuw nsw i64 %i.t, 4
  %i.ad = icmp ugt i16 %i.s, 4
  br i1 %i.ad, label %_ZN4llvm15SmallVectorImplINS_3EVTEE7reserveEm.exit.i.i.thread, label %_ZN4llvm15SmallVectorImplINS_3EVTEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_3EVTEE7reserveEm.exit.i.i.thread: ; preds = %bb.d
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull %i.aa, i64 noundef %i.t, i64 noundef 16) #25
  %.pre8.pre.i.i = load i32, ptr %i.ab, align 8, !tbaa !198
  %i.ae = zext i32 %.pre8.pre.i.i to i64
  br label %bb.e

_ZN4llvm15SmallVectorImplINS_3EVTEE7reserveEm.exit.i.i: ; preds = %bb.d
  %.not.i.i.i = icmp eq i16 %i.s, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorINS_3EVTELj4EEC2IPKS1_EERKNS_14iterator_rangeIT_EE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_3EVTEE7reserveEm.exit.i.i.thread, %_ZN4llvm15SmallVectorImplINS_3EVTEE7reserveEm.exit.i.i
  %.pre8.i.i36 = phi i64 [ %i.ae, %_ZN4llvm15SmallVectorImplINS_3EVTEE7reserveEm.exit.i.i.thread ], [ 0, %_ZN4llvm15SmallVectorImplINS_3EVTEE7reserveEm.exit.i.i ]
  %i.af = load ptr, ptr %5, align 8, !tbaa !40
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %.pre8.i.i36
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 8 %i.w, i64 %.idx, i1 false)
  %.pre.i.i = load i32, ptr %i.ab, align 8, !tbaa !198
  br label %_ZN4llvm11SmallVectorINS_3EVTELj4EEC2IPKS1_EERKNS_14iterator_rangeIT_EE.exit

_ZN4llvm11SmallVectorINS_3EVTELj4EEC2IPKS1_EERKNS_14iterator_rangeIT_EE.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_3EVTEE7reserveEm.exit.i.i, %bb.e
  %i.ah = phi i32 [ 0, %_ZN4llvm15SmallVectorImplINS_3EVTEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.e ]
  %i.ai = zext i16 %i.s to i32
  %i.aj = add i32 %i.ah, %i.ai                    ; 4 uses
  store i32 %i.aj, ptr %i.ab, align 8, !tbaa !198
  br i1 %3, label %bb.f, label %_ZN4llvm23SmallVectorTemplateBaseINS_3EVTELb1EE9push_backES1_.exit

bb.f:                                             ; preds = %_ZN4llvm11SmallVectorINS_3EVTELj4EEC2IPKS1_EERKNS_14iterator_rangeIT_EE.exit
  %i.ak = load i32, ptr %i.ac, align 4, !tbaa !199
  %.not.i = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !318

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_3EVTELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %5, i16 249, ptr null)
  %.pre = load i32, ptr %i.ab, align 8, !tbaa !198
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3EVTELb1EE9push_backES1_.exit

bb.h:                                             ; preds = %bb.f
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %5, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.al ; 2 uses
  store i16 249, ptr %i.an, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i, align 1
  %i.ao = load i32, ptr %i.ab, align 8, !tbaa !198
  %i.ap = add i32 %i.ao, 1                        ; 2 uses
  store i32 %i.ap, ptr %i.ab, align 8, !tbaa !198
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3EVTELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_3EVTELb1EE9push_backES1_.exit: ; preds = %bb.h, %bb.g, %_ZN4llvm11SmallVectorINS_3EVTELj4EEC2IPKS1_EERKNS_14iterator_rangeIT_EE.exit
  %i.aq = phi i32 [ %i.ap, %bb.h ], [ %.pre, %bb.g ], [ %i.aj, %_ZN4llvm11SmallVectorINS_3EVTELj4EEC2IPKS1_EERKNS_14iterator_rangeIT_EE.exit ]
  %i.ar = load ptr, ptr %5, align 8, !tbaa !40
  %i.as = zext i32 %i.aq to i64
  call fastcc void @_ZL19CloneNodeWithValuesPN4llvm6SDNodeEPNS_12SelectionDAGENS_8ArrayRefINS_3EVTEEENS_7SDValueE(ptr noundef nonnull %0, ptr noundef %4, ptr %i.ar, i64 %i.as, ptr %1, i32 %2)
  %i.at = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.aa
  br i1 %i.au, label %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_3EVTELb1EE9push_backES1_.exit
  call void @free(ptr noundef %i.at) #25
  br label %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit:     ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_3EVTELb1EE9push_backES1_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.c, %bb.a, %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit
  %.0 = phi i1 [ true, %_ZN4llvm11SmallVectorINS_3EVTELj4EED2Ev.exit ], [ false, %bb.a ], [ false, %bb.c ], [ false, %.critedge ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18ScheduleDAGSDNodes12ClusterNodesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(648) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 392 ; 2 uses
  %.sroa.011.016 = load ptr, ptr %i.c, align 8, !tbaa !325 ; 2 uses
  %.not17 = icmp eq ptr %.sroa.011.016, %i.d
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.011.018 = phi ptr [ %.sroa.011.016, %.lr.ph ], [ %.sroa.011.0, %bb.e ] ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.011.018, i64 -8
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.011.018, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !286  ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = xor i32 %i.h, -1
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !299
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !303
  %i.n = zext nneg i32 %i.j to i64
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [32 x i8], ptr %i.m, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !326
  %i.s = and i64 %i.r, 524288
  %.not15 = icmp eq i64 %i.s, 0
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm18ScheduleDAGSDNodes23ClusterNeighboringLoadsEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull %i.f)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.011.018, i64 8
  %.sroa.011.0 = load ptr, ptr %i.t, align 8, !tbaa !325 ; 2 uses
  %.not = icmp eq ptr %.sroa.011.0, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18ScheduleDAGSDNodes15BuildSchedUnitsEv(ptr noundef nonnull align 8 dereferenceable(648) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.llvm::ScheduleDAGSDNodes::RegDefIter", align 8 ; 8 uses
  %2 = alloca %"class.llvm::SmallVector.183", align 8 ; 10 uses
  %3 = alloca %"class.llvm::SmallPtrSet.185", align 8 ; 8 uses
  %4 = alloca %"class.llvm::SmallVector.186", align 8 ; 10 uses
  %5 = alloca %"class.llvm::SDValue", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 392 ; 2 uses
  %.sroa.0119.0136 = load ptr, ptr %i.c, align 8, !tbaa !325 ; 2 uses
  %.not128137 = icmp eq ptr %.sroa.0119.0136, %i.d
  br i1 %.not128137, label %.lr.ph156, label %.lr.ph

_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit.loopexit: ; preds = %.lr.ph
  %i.e = shl i32 %i.ad, 1
  %i.f = zext i32 %i.e to i64
  br label %.lr.ph156

.lr.ph156:                                        ; preds = %bb.a, %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit.loopexit
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.f, %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit.loopexit ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @_ZNSt6vectorIN4llvm5SUnitESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %.0.lcssa)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 64, ptr %i.j, align 4, !tbaa !199
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.k, ptr %3, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 32, ptr %i.l, align 8, !tbaa !297
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !298
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i8 1, ptr %i.n, align 8, !tbaa !35
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !189
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 376
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !290  ; 2 uses
  store ptr %i.q, ptr %i.h, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  store i8 1, ptr %i.r, align 8, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i32 0, ptr %i.t, align 8, !tbaa !198
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 8, ptr %i.u, align 4, !tbaa !199
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0119.0139 = phi ptr [ %.sroa.0119.0, %.lr.ph ], [ %.sroa.0119.0136, %bb.a ] ; 3 uses
  %.0138 = phi i32 [ %i.ad, %.lr.ph ], [ 0, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0119.0139, i64 28
  store i32 -1, ptr %i.ab, align 4, !tbaa !327
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0119.0139, i64 72
  store i8 0, ptr %i.ac, align 8, !tbaa !197
  %i.ad = add i32 %.0138, 1                       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0119.0139, i64 8
  %.sroa.0119.0 = load ptr, ptr %i.ae, align 8, !tbaa !325 ; 2 uses
  %.not128 = icmp eq ptr %.sroa.0119.0, %i.d
  br i1 %.not128, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.af
  %.pre = load i32, ptr %i.t, align 8, !tbaa !198 ; 2 uses
  %.not.i92161 = icmp eq i32 %.pre, 0
  br i1 %.not.i92161, label %._crit_edge163, label %.lr.ph162

bb.b:                                             ; preds = %.lr.ph156, %bb.af
  %i.af = phi i32 [ 1, %.lr.ph156 ], [ %i.ho, %bb.af ] ; 2 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !40
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !192 ; 11 uses
  %i.al = add i32 %i.af, -1
  store i32 %i.al, ptr %i.i, align 8, !tbaa !198
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !289 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 64 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 8, !tbaa !288 ; 2 uses
  %i.aq = zext i16 %i.ap to i64
  %.idx = mul nuw nsw i64 %i.aq, 40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx
  %.not129140 = icmp eq i16 %i.ap, 0
  br i1 %.not129140, label %._crit_edge, label %.lr.ph142

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit80, %bb.b
  %i.as = call noundef zeroext i1 @_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE(ptr noundef nonnull %i.ak)
  br i1 %i.as, label %bb.af, label %bb.f, !llvm.loop !501

.lr.ph142:                                        ; preds = %bb.b, %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit80
  %.sroa.0113.0141 = phi ptr [ %i.bf, %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit80 ], [ %i.an, %bb.b ] ; 3 uses
  %i.at = load ptr, ptr %.sroa.0113.0141, align 8, !tbaa !290
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 80 ; 2 uses
  %i.av = load i8, ptr %i.au, align 8, !tbaa !197, !range !36, !noundef !37
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit80, label %bb.c

bb.c:                                             ; preds = %.lr.ph142
  store i8 1, ptr %i.au, align 8, !tbaa !197
  %i.ax = load ptr, ptr %.sroa.0113.0141, align 8, !tbaa !290 ; 2 uses
  %i.ay = load i32, ptr %i.i, align 8, !tbaa !198 ; 2 uses
  %i.az = load i32, ptr %i.j, align 4, !tbaa !199
  %.not.i79 = icmp ult i32 %i.ay, %i.az
  br i1 %.not.i79, label %bb.e, label %bb.d, !prof !318

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ax)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit80

bb.e:                                             ; preds = %bb.c
  %i.ba = zext i32 %i.ay to i64
  %i.bb = load ptr, ptr %2, align 8, !tbaa !40
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  store ptr %i.ax, ptr %i.bc, align 1
  %i.bd = load i32, ptr %i.i, align 8, !tbaa !198
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.i, align 8, !tbaa !198
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit80

_ZN4llvm23SmallVectorTemplateBaseIPNS_6SDNodeELb1EE9push_backES2_.exit80: ; preds = %bb.e, %bb.d, %.lr.ph142
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0113.0141, i64 40 ; 2 uses
  %.not129 = icmp eq ptr %i.bf, %i.ar
  br i1 %.not129, label %._crit_edge, label %.lr.ph142

bb.f:                                             ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !327
  %.not70 = icmp eq i32 %i.bh, -1
  br i1 %.not70, label %bb.g, label %bb.af, !llvm.loop !501

bb.g:                                             ; preds = %bb.f
  %i.bi = call noundef ptr @_ZN4llvm18ScheduleDAGSDNodes8newSUnitEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull %i.ak) ; 11 uses
  %i.bj = load i16, ptr %i.ao, align 8, !tbaa !288 ; 2 uses
  %.not71143 = icmp eq i16 %i.bj, 0
  br i1 %.not71143, label %.critedge, label %.lr.ph146

.lr.ph146:                                        ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 200
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 252 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph146, %bb.l
  %i.bm = phi i16 [ %i.bj, %.lr.ph146 ], [ %i.cs, %bb.l ]
  %.064144 = phi ptr [ %i.ak, %.lr.ph146 ], [ %i.bs, %bb.l ]
  %i.bn = zext i16 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.064144, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !289
  %i.bq = getelementptr [40 x i8], ptr %i.bp, i64 %i.bn ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 -40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !290 ; 5 uses
  %i.bt = getelementptr i8, ptr %i.bq, i64 -32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !291
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !292
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.bx ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.by, align 8, !tbaa !294
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !296
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 249
  %i.bz = icmp eq ptr %.sroa.21.0.copyload.i.i, null
  %.not4.i = select i1 %.not.i.i, i1 %i.bz, i1 false
  br i1 %.not4.i, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ca = load i32, ptr %i.bk, align 8, !tbaa !200
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 36
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !327
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !286 ; 2 uses
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cf = load ptr, ptr %i.v, align 8, !tbaa !299
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = xor i32 %i.cd, -1
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !303
  %i.cj = zext nneg i32 %i.ch to i64
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr inbounds [32 x i8], ptr %i.ci, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !326
  %i.co = and i64 %i.cn, 128
  %.not130 = icmp eq i64 %i.co, 0
  br i1 %.not130, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cp = load i16, ptr %i.bl, align 4
  %i.cq = or i16 %i.cp, 2
  store i16 %i.cq, ptr %i.bl, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.cs = load i16, ptr %i.cr, align 8, !tbaa !288 ; 2 uses
  %.not71 = icmp eq i16 %i.cs, 0
  br i1 %.not71, label %.critedge, label %bb.h, !llvm.loop !502

.critedge:                                        ; preds = %bb.h, %bb.l, %bb.g
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bi, i64 200 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bi, i64 252 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ak, i64 66
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !320
  %i.cx = zext i16 %i.cw to i32
  %i.cy = add nsw i32 %i.cx, -1                   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !292
  %i.db = zext i32 %i.cy to i64
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.db ; 2 uses
  %.sroa.0.0.copyload.i83212 = load i16, ptr %i.dc, align 8, !tbaa !294
  %.sroa.21.0..sroa_idx.i213 = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.sroa.21.0.copyload.i214 = load ptr, ptr %.sroa.21.0..sroa_idx.i213, align 8, !tbaa !296
  %.not.i.i84215 = icmp eq i16 %.sroa.0.0.copyload.i83212, 249
  %i.dd = icmp eq ptr %.sroa.21.0.copyload.i214, null
  %.not4.i85216 = select i1 %.not.i.i84215, i1 %i.dd, i1 false
  br i1 %.not4.i85216, label %.lr.ph218, label %.loopexit195

.lr.ph218:                                        ; preds = %.critedge, %.thread
  %i.de = phi i32 [ %i.ee, %.thread ], [ %i.cy, %.critedge ]
  %.165217 = phi ptr [ %i.di, %.thread ], [ %i.ak, %.critedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %.165217, ptr %5, align 8, !tbaa !290
  store i32 %i.de, ptr %i.w, align 8, !tbaa !291
  %i.df = getelementptr inbounds nuw i8, ptr %.165217, i64 56
  %.sroa.0100.0148 = load ptr, ptr %i.df, align 8, !tbaa !311 ; 2 uses
  %.not131.not149 = icmp eq ptr %.sroa.0100.0148, null
  br i1 %.not131.not149, label %.thread.thread, label %.lr.ph153

bb.m:                                             ; preds = %.lr.ph153
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0100.0150, i64 32
  %.sroa.0100.0 = load ptr, ptr %i.dg, align 8, !tbaa !311 ; 2 uses
  %.not131.not = icmp eq ptr %.sroa.0100.0, null
  br i1 %.not131.not, label %.thread.thread, label %.lr.ph153

.lr.ph153:                                        ; preds = %.lr.ph218, %bb.m
  %.sroa.0100.0150 = phi ptr [ %.sroa.0100.0, %bb.m ], [ %.sroa.0100.0148, %.lr.ph218 ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0100.0150, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !314 ; 6 uses
  %i.dj = call noundef zeroext i1 @_ZNK4llvm7SDValue11isOperandOfEPKNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef %i.di) #25
  br i1 %i.dj, label %bb.n, label %bb.m

bb.n:                                             ; preds = %.lr.ph153
  %i.dk = load i32, ptr %i.ct, align 8, !tbaa !200
  %i.dl = getelementptr inbounds nuw i8, ptr %.165217, i64 36
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !327
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !286 ; 2 uses
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.dp = load ptr, ptr %i.v, align 8, !tbaa !299
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = xor i32 %i.dn, -1
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !303
  %i.dt = zext nneg i32 %i.dr to i64
  %i.du = sub nsw i64 0, %i.dt
  %i.dv = getelementptr inbounds [32 x i8], ptr %i.ds, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !326
  %i.dy = and i64 %i.dx, 128
  %.not132 = icmp eq i64 %i.dy, 0
end_hunk_0
begin_hunk_1_@_ZN4llvm18ScheduleDAGSDNodes15BuildSchedUnitsEv:bb.a
bb.s:                                             ; preds = %bb.q
  %i.eo = zext i32 %i.em to i64
  %i.ep = load ptr, ptr %4, align 8, !tbaa !40
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eo
  store ptr %i.bi, ptr %i.eq, align 1
  %i.er = load i32, ptr %i.t, align 8, !tbaa !198
  %i.es = add i32 %i.er, 1
  store i32 %i.es, ptr %i.t, align 8, !tbaa !198
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_5SUnitELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_5SUnitELb1EE9push_backES2_.exit: ; preds = %bb.s, %bb.r, %.loopexit195
  %i.et = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !286
  %i.ev = icmp eq i32 %i.eu, 2
  br i1 %i.ev, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_5SUnitELb1EE9push_backES2_.exit
  %i.ew = load i16, ptr %i.cu, align 4
  %i.ex = or i16 %i.ew, 4096
  store i16 %i.ex, ptr %i.cu, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN4llvm23SmallVectorTemplateBaseIPNS_5SUnitELb1EE9push_backES2_.exit
  store ptr %.165208, ptr %i.bi, align 8, !tbaa !197
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bi, i64 258 ; 2 uses
  %i.ez = load i8, ptr %i.ey, align 2
  %i.fa = or i8 %i.ez, 4
  store i8 %i.fa, ptr %i.ey, align 2
  %i.fb = load i32, ptr %i.ct, align 8, !tbaa !200
  %i.fc = getelementptr inbounds nuw i8, ptr %.165208, i64 36
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !327
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN4llvm18ScheduleDAGSDNodes10RegDefIterC1EPKNS_5SUnitEPKS0_(ptr noundef nonnull align 8 dereferenceable(26) %1, ptr noundef nonnull %i.bi, ptr noundef nonnull align 8 dereferenceable(648) %0) #25
  %i.fd = load ptr, ptr %i.x, align 8, !tbaa !331 ; 2 uses
  %.not3.i = icmp eq ptr %i.fd, null
  br i1 %.not3.i, label %_ZN4llvm18ScheduleDAGSDNodes18InitNumRegDefsLeftEPNS_5SUnitE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bi, i64 254 ; 2 uses
  %.pre.i.pre = load i32, ptr %i.y, align 8, !tbaa !332
  br label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %_ZN4llvm18ScheduleDAGSDNodes10RegDefIter7AdvanceEv.exit, %.lr.ph.i
  %.pre.i = phi i32 [ %i.hk, %_ZN4llvm18ScheduleDAGSDNodes10RegDefIter7AdvanceEv.exit ], [ %.pre.i.pre, %.lr.ph.i ]
  %i.ff = phi ptr [ %i.he, %_ZN4llvm18ScheduleDAGSDNodes10RegDefIter7AdvanceEv.exit ], [ %i.fd, %.lr.ph.i ]
  %i.fg = load i16, ptr %i.fe, align 2, !tbaa !333
  %i.fh = add i16 %i.fg, 1
  store i16 %i.fh, ptr %i.fe, align 2, !tbaa !333
  %.pre15.i = load i32, ptr %i.z, align 4, !tbaa !334
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.backedge, %.preheader.lr.ph.i
  %i.fi = phi ptr [ %i.ff, %.preheader.lr.ph.i ], [ %i.gc, %.preheader.i.backedge ]
  %i.fj = phi i32 [ %.pre15.i, %.preheader.lr.ph.i ], [ %.be, %.preheader.i.backedge ]
  %i.fk = phi i32 [ %.pre.i, %.preheader.lr.ph.i ], [ %.be219, %.preheader.i.backedge ] ; 3 uses
  %i.fl = icmp ult i32 %i.fk, %i.fj
  br i1 %i.fl, label %.lr.ph.i98, label %._crit_edge.i

.lr.ph.i98:                                       ; preds = %.preheader.i, %bb.v
  %i.fm = phi i32 [ %i.fq, %bb.v ], [ %i.fk, %.preheader.i ]
  %i.fn = load ptr, ptr %i.x, align 8, !tbaa !331
  %i.fo = call noundef zeroext i1 @_ZNK4llvm6SDNode16hasAnyUseOfValueEj(ptr noundef nonnull align 8 dereferenceable(88) %i.fn, i32 noundef %i.fm) #25
  br i1 %i.fo, label %_ZN4llvm18ScheduleDAGSDNodes10RegDefIter7AdvanceEv.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i98
  %i.fp = load i32, ptr %i.y, align 8, !tbaa !332
  %i.fq = add i32 %i.fp, 1                        ; 4 uses
  store i32 %i.fq, ptr %i.y, align 8, !tbaa !332
  %i.fr = load i32, ptr %i.z, align 4, !tbaa !334
  %i.fs = icmp ult i32 %i.fq, %i.fr
  br i1 %i.fs, label %.lr.ph.i98, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %bb.v
  %.pre16.i = load ptr, ptr %i.x, align 8, !tbaa !331
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.ft = phi ptr [ %.pre16.i, %._crit_edge.loopexit.i ], [ %i.fi, %.preheader.i ] ; 2 uses
  %i.fu = phi i32 [ %i.fq, %._crit_edge.loopexit.i ], [ %i.fk, %.preheader.i ] ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 64
  %i.fw = load i16, ptr %i.fv, align 8, !tbaa !288 ; 2 uses
  %.not.i.i95 = icmp eq i16 %i.fw, 0
  br i1 %.not.i.i95, label %_ZN4llvm18ScheduleDAGSDNodes18InitNumRegDefsLeftEPNS_5SUnitE.exit, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i
  %i.fx = zext i16 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !289
  %i.ga = getelementptr [40 x i8], ptr %i.fz, i64 %i.fx ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 -40
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !290 ; 5 uses
  %i.gd = getelementptr i8, ptr %i.ga, i64 -32
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !291
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !292 ; 3 uses
  %i.gh = zext i32 %i.ge to i64
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.gg, i64 %i.gh ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i16, ptr %i.gi, align 8, !tbaa !294
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %.sroa.21.0.copyload.i.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 8, !tbaa !296
  %.not.i.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i.i, 249
  %i.gj = icmp eq ptr %.sroa.21.0.copyload.i.i.i.i, null
  %.not4.i.i.i = select i1 %.not.i.i.i.i, i1 %i.gj, i1 false
  br i1 %.not4.i.i.i, label %bb.x, label %_ZN4llvm18ScheduleDAGSDNodes18InitNumRegDefsLeftEPNS_5SUnitE.exit

bb.x:                                             ; preds = %bb.w
  store ptr %i.gc, ptr %i.x, align 8, !tbaa !331
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !286 ; 3 uses
  %i.gm = icmp slt i32 %i.gl, 0
  br i1 %i.gm, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gn = icmp eq i32 %i.gl, 52
  br i1 %i.gn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 1, ptr %i.z, align 4, !tbaa !334
  br label %.preheader.i.backedge

bb.aa:                                            ; preds = %bb.y
  store i32 0, ptr %i.z, align 4, !tbaa !334
  br label %.preheader.i.backedge

bb.ab:                                            ; preds = %bb.x
  %i.go = xor i32 %i.gl, -1                       ; 2 uses
  switch i32 %i.go, label %.critedge.i.i [
    i32 10, label %bb.ac
    i32 29, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.z, align 4, !tbaa !334
  br label %.preheader.i.backedge

bb.ad:                                            ; preds = %bb.ab
  %.sroa.0.0.copyload.i.i3.i = load i16, ptr %i.gg, align 8, !tbaa !294
  %.sroa.21.0..sroa_idx.i.i.i96 = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %.sroa.21.0.copyload.i.i.i97 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i96, align 8, !tbaa !296
  %.not.i.i.i4.i = icmp eq i16 %.sroa.0.0.copyload.i.i3.i, 1
  %i.gp = icmp eq ptr %.sroa.21.0.copyload.i.i.i97, null
  %.not4.i.i5.i = select i1 %.not.i.i.i4.i, i1 %i.gp, i1 false
  br i1 %.not4.i.i5.i, label %bb.ae, label %.critedge.i.i

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.z, align 4, !tbaa !334
  br label %.preheader.i.backedge

.critedge.i.i:                                    ; preds = %bb.ad, %bb.ab
  %i.gq = load ptr, ptr %1, align 8, !tbaa !335
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !299
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !303
  %i.gv = zext nneg i32 %i.go to i64
  %i.gw = sub nsw i64 0, %i.gv
  %i.gx = getelementptr inbounds [32 x i8], ptr %i.gu, i64 %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 6
  %i.gz = load i8, ptr %i.gy, align 2, !tbaa !336
  %i.ha = zext i8 %i.gz to i32
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gc, i64 66
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !320
  %i.hd = zext i16 %i.hc to i32
  %.sroa.speculated.i.i = call i32 @llvm.umin.i32(i32 %i.ha, i32 %i.hd) ; 2 uses
  store i32 %.sroa.speculated.i.i, ptr %i.z, align 4, !tbaa !334
  store i32 0, ptr %i.y, align 8, !tbaa !332
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %.critedge.i.i, %bb.ae, %bb.ac, %bb.aa, %bb.z
  %.be = phi i32 [ %.sroa.speculated.i.i, %.critedge.i.i ], [ 0, %bb.ae ], [ 0, %bb.ac ], [ 0, %bb.aa ], [ 1, %bb.z ]
  %.be219 = phi i32 [ 0, %.critedge.i.i ], [ %i.fu, %bb.ae ], [ %i.fu, %bb.ac ], [ %i.fu, %bb.aa ], [ %i.fu, %bb.z ]
  br label %.preheader.i, !llvm.loop !1

_ZN4llvm18ScheduleDAGSDNodes10RegDefIter7AdvanceEv.exit: ; preds = %.lr.ph.i98
  %i.he = load ptr, ptr %i.x, align 8, !tbaa !331 ; 2 uses
  %i.hf = load i32, ptr %i.y, align 8, !tbaa !332 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 48
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !292
  %i.hi = zext i32 %i.hf to i64
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.hh, i64 %i.hi
  %.sroa.0.0.copyload.i.i.i99 = load i16, ptr %i.hj, align 8, !tbaa !294
  store i16 %.sroa.0.0.copyload.i.i.i99, ptr %i.aa, align 8, !tbaa !294
  %i.hk = add i32 %i.hf, 1                        ; 2 uses
  store i32 %i.hk, ptr %i.y, align 8, !tbaa !332
  br label %.preheader.lr.ph.i, !llvm.loop !2

_ZN4llvm18ScheduleDAGSDNodes18InitNumRegDefsLeftEPNS_5SUnitE.exit: ; preds = %bb.w, %._crit_edge.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.hl = load ptr, ptr %0, align 8, !tbaa !30
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 72
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef nonnull %i.bi) #25
  br label %bb.af

bb.af:                                            ; preds = %bb.f, %._crit_edge, %_ZN4llvm18ScheduleDAGSDNodes18InitNumRegDefsLeftEPNS_5SUnitE.exit
  %i.ho = load i32, ptr %i.i, align 8, !tbaa !198 ; 2 uses
  %.not.i74 = icmp eq i32 %i.ho, 0
  br i1 %.not.i74, label %.preheader, label %bb.b

.loopexit.loopexit:                               ; preds = %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread, %bb.ah
  %.pre168.a = load i32, ptr %i.t, align 8, !tbaa !198
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph162
  %i.hp = phi i32 [ %.pre168.a, %.loopexit.loopexit ], [ %i.hu, %.lr.ph162 ] ; 2 uses
  %.not.i92 = icmp eq i32 %i.hp, 0
  br i1 %.not.i92, label %._crit_edge163, label %.lr.ph162, !llvm.loop !503

.lr.ph162:                                        ; preds = %.preheader, %.loopexit
  %6 = phi i32 [ %i.hp, %.loopexit ], [ %.pre, %.preheader ] ; 2 uses
  %7 = load ptr, ptr %4, align 8, !tbaa !40
  %i.hq = zext i32 %6 to i64
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.hq
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 -8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !202
  %i.hu = add i32 %6, -1                          ; 2 uses
  store i32 %i.hu, ptr %i.t, align 8, !tbaa !198
  %i.hv = load ptr, ptr %i.ht, align 8, !tbaa !197 ; 2 uses
  %.not157 = icmp eq ptr %i.hv, null
  br i1 %.not157, label %.loopexit, label %.lr.ph160

.lr.ph160:                                        ; preds = %.lr.ph162, %bb.ah
  %.062158 = phi ptr [ %i.it, %bb.ah ], [ %i.hv, %.lr.ph162 ] ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.062158, i64 24
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !286
  %.not69 = icmp eq i32 %i.hx, 51
  br i1 %.not69, label %bb.ag, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread

bb.ag:                                            ; preds = %.lr.ph160
  %i.hy = getelementptr inbounds nuw i8, ptr %.062158, i64 40
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !289
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 80
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !290 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !286
  switch i32 %i.id, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit [
    i32 37, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 12, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 38, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 13, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 10, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 11, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 14, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 39, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 15, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 40, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 7, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 41, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 16, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 43, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 18, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 47, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 42, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 17, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 44, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 19, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 46, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 45, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 20, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 1, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
    i32 342, label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
  ]

_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit: ; preds = %bb.ag
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 36
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !327
  %i.ig = sext i32 %i.if to i64
  %i.ih = load ptr, ptr %i.g, align 8, !tbaa !194
  %i.ii = getelementptr inbounds nuw [264 x i8], ptr %i.ih, i64 %i.ig
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 252 ; 2 uses
  %i.ik = load i16, ptr %i.ij, align 4
  %i.il = or i16 %i.ik, 4
  store i16 %i.il, ptr %i.ij, align 4
  br label %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread

_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread: ; preds = %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit, %.lr.ph160
  %i.im = getelementptr inbounds nuw i8, ptr %.062158, i64 64
  %i.in = load i16, ptr %i.im, align 8, !tbaa !288 ; 2 uses
  %.not.i93 = icmp eq i16 %i.in, 0
  br i1 %.not.i93, label %.loopexit.loopexit, label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE.exit.thread
  %i.io = zext i16 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %.062158, i64 40
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !289
  %i.ir = getelementptr [40 x i8], ptr %i.iq, i64 %i.io ; 2 uses
  %i.is = getelementptr i8, ptr %i.ir, i64 -40
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !290 ; 2 uses
  %i.iu = getelementptr i8, ptr %i.ir, i64 -32
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !291
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 48
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !292
  %i.iy = zext i32 %i.iv to i64
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %i.ix, i64 %i.iy ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.iz, align 8, !tbaa !294
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !296
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 249
  %i.ja = icmp eq ptr %.sroa.21.0.copyload.i.i.i, null
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.ja, i1 false
  br i1 %.not4.i.i, label %.lr.ph160, label %.loopexit.loopexit, !llvm.loop !504

._crit_edge163:                                   ; preds = %.loopexit, %.preheader
  %8 = load ptr, ptr %4, align 8, !tbaa !40       ; 2 uses
  %i.jb = icmp eq ptr %8, %i.s
  br i1 %i.jb, label %_ZN4llvm11SmallVectorIPNS_5SUnitELj8EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge163
  call void @free(ptr noundef %8) #25
  br label %_ZN4llvm11SmallVectorIPNS_5SUnitELj8EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_5SUnitELj8EED2Ev.exit:  ; preds = %._crit_edge163, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.jc = load i8, ptr %i.n, align 8, !tbaa !35, !range !36, !noundef !37
  %i.jd = trunc nuw i8 %i.jc to i1
  br i1 %i.jd, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm11SmallVectorIPNS_5SUnitELj8EED2Ev.exit
  %i.je = load ptr, ptr %3, align 8, !tbaa !38
  call void @free(ptr noundef %i.je) #25
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %_ZN4llvm11SmallVectorIPNS_5SUnitELj8EED2Ev.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.jf = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.h
  br i1 %i.jg, label %_ZN4llvm11SmallVectorIPNS_6SDNodeELj64EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit
  call void @free(ptr noundef %i.jf) #25
  br label %_ZN4llvm11SmallVectorIPNS_6SDNodeELj64EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_6SDNodeELj64EED2Ev.exit: ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm5SUnitESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 34937015291116575
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !196
  %i.d = load ptr, ptr %0, align 8, !tbaa !194    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 264
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt6vectorIN4llvm5SUnitESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit, label %bb.g

_ZNSt6vectorIN4llvm5SUnitESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !193  ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 264
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27 ; 4 uses
  %i.p = tail call noundef ptr @_ZSt16__do_uninit_copyIPKN4llvm5SUnitEPS1_ET0_T_S6_S5_(ptr noundef %i.d, ptr noundef %i.k, ptr noundef nonnull %i.o) ; 0 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !194    ; 3 uses
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !193  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvm5SUnitEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN4llvm5SUnitESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit, %_ZSt8_DestroyIN4llvm5SUnitEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyIN4llvm5SUnitEEvPT_.exit.i.i ], [ %i.q, %_ZNSt6vectorIN4llvm5SUnitESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 120
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 136
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvm11SmallVectorINS_4SDepELj4EED2Ev.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef %i.t) #25
  br label %_ZN4llvm11SmallVectorINS_4SDepELj4EED2Ev.exit.i.i.i.i

_ZN4llvm11SmallVectorINS_4SDepELj4EED2Ev.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZSt8_DestroyIN4llvm5SUnitEEvPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorINS_4SDepELj4EED2Ev.exit.i.i.i.i
  tail call void @free(ptr noundef %i.x) #25
  br label %_ZSt8_DestroyIN4llvm5SUnitEEvPT_.exit.i.i

_ZSt8_DestroyIN4llvm5SUnitEEvPT_.exit.i.i:        ; preds = %bb.e, %_ZN4llvm11SmallVectorINS_4SDepELj4EED2Ev.exit.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 264 ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.aa, %i.r
  br i1 %.not.i.i7, label %_ZSt8_DestroyIPN4llvm5SUnitEEvT_S3_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3

_ZSt8_DestroyIPN4llvm5SUnitEEvT_S3_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4llvm5SUnitEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !194
  br label %_ZSt8_DestroyIPN4llvm5SUnitEEvT_S3_.exit

_ZSt8_DestroyIPN4llvm5SUnitEEvT_S3_.exit:         ; preds = %_ZSt8_DestroyIPN4llvm5SUnitEEvT_S3_.exitthread-pre-split, %_ZNSt6vectorIN4llvm5SUnitESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit
  %i.ab = phi ptr [ %.pr, %_ZSt8_DestroyIPN4llvm5SUnitEEvT_S3_.exitthread-pre-split ], [ %i.q, %_ZNSt6vectorIN4llvm5SUnitESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4llvm5SUnitESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4llvm5SUnitEEvT_S3_.exit
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !196
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.af) #28
  br label %_ZNSt12_Vector_baseIN4llvm5SUnitESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN4llvm5SUnitESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN4llvm5SUnitEEvT_S3_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !194
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ag, ptr %i.j, align 8, !tbaa !193
  %i.ah = getelementptr inbounds nuw [264 x i8], ptr %i.o, i64 %1
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !196
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN4llvm5SUnitESaIS1_EE13_M_deallocateEPS1_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm18ScheduleDAGSDNodes13isPassiveNodeEPNS_6SDNodeE(ptr noundef %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !286
  switch i32 %i.b, label %bb.b [
    i32 37, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 12, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 38, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 13, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 10, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 11, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 14, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 39, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 15, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 40, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 7, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 41, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 16, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 43, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 18, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 47, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 42, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 17, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 44, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 19, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 46, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 45, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 20, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 1, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
    i32 342, label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread

_ZN4llvm3isaIJNS_19GlobalAddressSDNodeEEPNS_6SDNodeEEEbRKT0_.exit.thread: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK4llvm7SDValue11isOperandOfEPKNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18ScheduleDAGSDNodes18InitNumRegDefsLeftEPNS_5SUnitE(ptr noundef nonnull align 8 dereferenceable(648) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::ScheduleDAGSDNodes::RegDefIter", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZN4llvm18ScheduleDAGSDNodes10RegDefIterC1EPKNS_5SUnitEPKS0_(ptr noundef nonnull align 8 dereferenceable(26) %2, ptr noundef %1, ptr noundef nonnull %0) #25
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !331
  %.not3 = icmp eq ptr %i.b, null
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 254 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !333
  %i.e = add i16 %i.d, 1
  store i16 %i.e, ptr %i.c, align 2, !tbaa !333
  call void @_ZN4llvm18ScheduleDAGSDNodes10RegDefIter7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(26) %2)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !331
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18ScheduleDAGSDNodes13AddSchedEdgesEv(ptr noundef nonnull align 8 dereferenceable(648) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.llvm::SDep", align 8        ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !337, !nonnull !37, !align !158
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157, !nonnull !37, !align !158 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !30
end_hunk_1
