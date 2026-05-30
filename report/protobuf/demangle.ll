inline.NumInlined: 660
inline.NumDeleted: 80
begin_hunk_0_@_ZN4absl12lts_2025051218debugging_internalL17ParseCVQualifiersEPNS1_5StateE:bb.a
  br i1 %or.cond, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.i = add nsw i32 %i.b, 2                      ; 3 uses
  store i32 %i.i, ptr %i.a, align 4, !tbaa !17
  %i.j = add nsw i32 %i.e, 2                      ; 2 uses
  store i32 %i.j, ptr %i.d, align 8, !tbaa !15
  %i.k = icmp sgt i32 %i.b, 254
  %i.l = icmp sgt i32 %i.e, 131070
  %or.cond4456 = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond4456, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.preheader
  %i.o = phi i32 [ %i.f, %.lr.ph ], [ %i.ao, %.preheader ] ; 2 uses
  %i.p = phi i32 [ %i.i, %.lr.ph ], [ %i.al, %.preheader ] ; 3 uses
  %i.q = phi i32 [ %i.c, %.lr.ph ], [ %i.am, %.preheader ] ; 2 uses
  %.01257 = phi i32 [ 0, %.lr.ph ], [ %i.an, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !25
  %i.r = add nsw i32 %i.q, 2
  store i32 %i.r, ptr %i.a, align 4, !tbaa !17
  %i.s = add nsw i32 %i.o, 2                      ; 2 uses
  store i32 %i.s, ptr %i.d, align 8, !tbaa !15
  %i.t = icmp sgt i32 %i.q, 254
  %i.u = icmp sgt i32 %i.o, 131070
  %or.cond.i29 = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond.i29, label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit33.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val6.i30 = load ptr, ptr %0, align 8, !tbaa !8
  %.val7.i31 = load i32, ptr %i.m, align 4, !tbaa !16 ; 2 uses
  %i.v = sext i32 %.val7.i31 to i64
  %i.w = getelementptr inbounds i8, ptr %.val6.i30, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !7
  %i.y = icmp eq i8 %i.x, 85
  br i1 %i.y, label %bb.d, label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit33.thread

_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit33.thread: ; preds = %bb.b, %bb.c
  store i32 %i.p, ptr %i.a, align 4, !tbaa !17
  br label %.thread42

bb.d:                                             ; preds = %bb.c
  %i.z = add nsw i32 %.val7.i31, 1
  store i32 %i.z, ptr %i.m, align 4, !tbaa !16
  store i32 %i.p, ptr %i.a, align 4, !tbaa !17
  %i.aa = load i32, ptr %i.n, align 8             ; 2 uses
  %i.ab = and i32 %i.aa, 2147483647
  store i32 %i.ab, ptr %i.n, align 8
  %i.ac = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL15ParseSourceNameEPNS1_5StateE(ptr noundef nonnull %0), !inline_history !38
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !25
  %storemerge.in.pre.pre = load i32, ptr %i.a, align 4, !tbaa !17
  %.pre.pre = load i32, ptr %i.d, align 8, !tbaa !15
  br label %.thread42

.body:                                            ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !17
  %i.af = add nsw i32 %i.ae, -2
  store i32 %i.af, ptr %i.a, align 4, !tbaa !17
  resume { ptr, i32 } %i.ad

bb.f:                                             ; preds = %bb.d
  %i.ag = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL17ParseTemplateArgsEPNS1_5StateE(ptr noundef nonnull %0)
          to label %.preheader unwind label %.body, !inline_history !38 ; 0 uses

.thread42:                                        ; preds = %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit33.thread, %bb.e
  %.pre = phi i32 [ %i.s, %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit33.thread ], [ %.pre.pre, %bb.e ]
  %storemerge.in.pre = phi i32 [ %i.p, %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit33.thread ], [ %storemerge.in.pre.pre, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %.thread

.preheader:                                       ; preds = %bb.f
  %i.ah = load i32, ptr %i.n, align 8
  %i.ai = and i32 %i.aa, -2147483648
  %i.aj = and i32 %i.ah, 2147483647
  %i.ak = or disjoint i32 %i.aj, %i.ai
  store i32 %i.ak, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.al = load i32, ptr %i.a, align 4, !tbaa !17  ; 4 uses
  %i.am = add nsw i32 %i.al, -1
  %i.an = add nuw nsw i32 %.01257, 1              ; 2 uses
  %i.ao = load i32, ptr %i.d, align 8, !tbaa !15  ; 3 uses
  %i.ap = add nsw i32 %i.ao, 1                    ; 2 uses
  store i32 %i.ap, ptr %i.d, align 8, !tbaa !15
  %i.aq = icmp sgt i32 %i.al, 256
  %i.ar = icmp sgt i32 %i.ao, 131071
  %or.cond44 = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond44, label %.thread, label %bb.b, !llvm.loop !39

.thread:                                          ; preds = %.preheader, %.preheader.preheader, %.thread42
  %i.as = phi i32 [ %.pre, %.thread42 ], [ %i.j, %.preheader.preheader ], [ %i.ap, %.preheader ] ; 6 uses
  %storemerge.in = phi i32 [ %storemerge.in.pre, %.thread42 ], [ %i.i, %.preheader.preheader ], [ %i.al, %.preheader ] ; 5 uses
  %.01251 = phi i32 [ %.01257, %.thread42 ], [ 0, %.preheader.preheader ], [ %i.an, %.preheader ]
  %storemerge = add nsw i32 %storemerge.in, -1
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.d, align 8, !tbaa !15
  %i.au = icmp sgt i32 %storemerge.in, 256        ; 3 uses
  %i.av = icmp sgt i32 %i.as, 131071
  %or.cond.i = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond.i, label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit, label %bb.g

bb.g:                                             ; preds = %.thread
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !8
  %i.aw = getelementptr i8, ptr %0, i64 28        ; 2 uses
  %.val7.i = load i32, ptr %i.aw, align 4, !tbaa !16 ; 2 uses
  %i.ax = sext i32 %.val7.i to i64
  %i.ay = getelementptr inbounds i8, ptr %.val6.i, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !7
  %i.ba = icmp eq i8 %i.az, 114
  br i1 %i.ba, label %bb.h, label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit

bb.h:                                             ; preds = %bb.g
  %i.bb = add nsw i32 %.val7.i, 1
  store i32 %i.bb, ptr %i.aw, align 4, !tbaa !16
  br label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit

_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit: ; preds = %.thread, %bb.g, %bb.h
  %.0.i18 = phi i32 [ 0, %.thread ], [ 1, %bb.h ], [ 0, %bb.g ]
  store i32 %storemerge.in, ptr %i.a, align 4, !tbaa !17
  %i.bc = add nsw i32 %i.as, 2
  store i32 %i.bc, ptr %i.d, align 8, !tbaa !15
  %i.bd = icmp sgt i32 %i.as, 131070
  %or.cond.i19 = select i1 %i.au, i1 true, i1 %i.bd
  br i1 %or.cond.i19, label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit23, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit
  %.val6.i20 = load ptr, ptr %0, align 8, !tbaa !8
  %i.be = getelementptr i8, ptr %0, i64 28        ; 2 uses
  %.val7.i21 = load i32, ptr %i.be, align 4, !tbaa !16 ; 2 uses
  %i.bf = sext i32 %.val7.i21 to i64
  %i.bg = getelementptr inbounds i8, ptr %.val6.i20, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !7
  %i.bi = icmp eq i8 %i.bh, 86
  br i1 %i.bi, label %bb.j, label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit23

bb.j:                                             ; preds = %bb.i
  %i.bj = add nsw i32 %.val7.i21, 1
  store i32 %i.bj, ptr %i.be, align 4, !tbaa !16
  br label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit23

_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit23: ; preds = %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit, %bb.i, %bb.j
  %.0.i22 = phi i32 [ 0, %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit ], [ 1, %bb.j ], [ 0, %bb.i ]
  store i32 %storemerge.in, ptr %i.a, align 4, !tbaa !17
  %i.bk = add nsw i32 %i.as, 3
  store i32 %i.bk, ptr %i.d, align 8, !tbaa !15
  %i.bl = icmp sgt i32 %i.as, 131069
  %or.cond.i24 = select i1 %i.au, i1 true, i1 %i.bl
  br i1 %or.cond.i24, label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit28, label %bb.k

bb.k:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit23
  %.val6.i25 = load ptr, ptr %0, align 8, !tbaa !8
  %i.bm = getelementptr i8, ptr %0, i64 28        ; 2 uses
  %.val7.i26 = load i32, ptr %i.bm, align 4, !tbaa !16 ; 2 uses
  %i.bn = sext i32 %.val7.i26 to i64
  %i.bo = getelementptr inbounds i8, ptr %.val6.i25, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !7
  %i.bq = icmp eq i8 %i.bp, 75
  br i1 %i.bq, label %bb.l, label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit28

bb.l:                                             ; preds = %bb.k
  %i.br = add nsw i32 %.val7.i26, 1
  store i32 %i.br, ptr %i.bm, align 4, !tbaa !16
  br label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit28

_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit28: ; preds = %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit23, %bb.k, %bb.l
  %.0.i27 = phi i32 [ 0, %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit23 ], [ 1, %bb.l ], [ 0, %bb.k ]
  store i32 %storemerge, ptr %i.a, align 4, !tbaa !17
  %i.bs = add nuw nsw i32 %.0.i18, %.01251
  %i.bt = add nuw nsw i32 %i.bs, %.0.i22
  %i.bu = or i32 %.0.i27, %i.bt
  %i.bv = icmp ne i32 %i.bu, 0
  %i.bw = add nsw i32 %storemerge.in, -2
  br label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit28
  %i.bx = phi i32 [ %i.bw, %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit28 ], [ %i.b, %bb.a ]
  %.0 = phi i1 [ %i.bv, %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit28 ], [ false, %bb.a ]
  store i32 %i.bx, ptr %i.a, align 4, !tbaa !17
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nosync memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL11ParsePrefixEPNS1_5StateE(ptr noundef %0) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.absl::lts_20250512::debugging_internal::ParseState", align 4 ; 6 uses
  %2 = alloca %"struct.absl::lts_20250512::debugging_internal::ParseState", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 32 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 2 uses
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !15
  %i.g = icmp sgt i32 %i.b, 255
  %i.h = icmp sgt i32 %i.e, 131071
  %or.cond = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = getelementptr i8, ptr %0, i64 28         ; 13 uses
  %.pre = load i32, ptr %i.i, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.preheader
  %i.n = phi i32 [ %.pre, %.preheader.preheader ], [ %.be, %.preheader.backedge ] ; 2 uses
  %.016 = phi i1 [ false, %.preheader.preheader ], [ true, %.preheader.backedge ]
  %i.o = shl i32 %i.n, 1
  %i.p = icmp slt i32 %i.o, 131072
  %.not.i.i = icmp sgt i32 %i.n, -1
  %or.cond.i = or i1 %.not.i.i, %i.p
  br i1 %or.cond.i, label %_ZN4absl12lts_2025051218debugging_internalL20MaybeAppendSeparatorEPNS1_5StateE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader
  %i.q = load i32, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %i.r = add nsw i32 %i.q, 1                      ; 2 uses
  %i.s = load i32, ptr %i.k, align 8, !tbaa !14   ; 2 uses
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %.lr.ph.i.i.1, label %.loopexit.i17.thread.i

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i.preheader
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !13
  store i32 %i.r, ptr %i.j, align 8, !tbaa !18
  %i.v = sext i32 %i.q to i64
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  store i8 58, ptr %i.w, align 1, !tbaa !7
  %i.x = load i32, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %i.y = add nsw i32 %i.x, 1                      ; 2 uses
  %i.z = load i32, ptr %i.k, align 8, !tbaa !14   ; 2 uses
  %i.aa = icmp slt i32 %i.y, %i.z
  br i1 %i.aa, label %.loopexit.i17.i, label %.loopexit.i17.thread.i

.loopexit.i17.i:                                  ; preds = %.lr.ph.i.i.1
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !13
  store i32 %i.y, ptr %i.j, align 8, !tbaa !18
  %i.ac = sext i32 %i.x to i64
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac
  store i8 58, ptr %i.ad, align 1, !tbaa !7
  %.pre28.i = load i32, ptr %i.j, align 8, !tbaa !18 ; 2 uses
  %.pre29.i = load i32, ptr %i.k, align 8, !tbaa !14
  %i.ae = icmp slt i32 %.pre28.i, %.pre29.i
  br i1 %i.ae, label %bb.b, label %_ZN4absl12lts_2025051218debugging_internalL20MaybeAppendSeparatorEPNS1_5StateE.exit

.loopexit.i17.thread.i:                           ; preds = %.lr.ph.i.i.1, %.lr.ph.i.i.preheader
  %.lcssa = phi i32 [ %i.s, %.lr.ph.i.i.preheader ], [ %i.z, %.lr.ph.i.i.1 ]
  %i.af = add nsw i32 %.lcssa, 1
  store i32 %i.af, ptr %i.j, align 8, !tbaa !18
  br label %_ZN4absl12lts_2025051218debugging_internalL20MaybeAppendSeparatorEPNS1_5StateE.exit

bb.b:                                             ; preds = %.loopexit.i17.i
  %i.ag = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.ah = sext i32 %.pre28.i to i64
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 %i.ah
  store i8 0, ptr %i.ai, align 1, !tbaa !7
  br label %_ZN4absl12lts_2025051218debugging_internalL20MaybeAppendSeparatorEPNS1_5StateE.exit

_ZN4absl12lts_2025051218debugging_internalL20MaybeAppendSeparatorEPNS1_5StateE.exit: ; preds = %bb.b, %.loopexit.i17.i, %.loopexit.i17.thread.i, %.preheader
  %i.aj = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL18ParseTemplateParamEPNS1_5StateE(ptr noundef nonnull %0)
  br i1 %i.aj, label %bb.z, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internalL20MaybeAppendSeparatorEPNS1_5StateE.exit
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !17  ; 5 uses
  %i.al = add nsw i32 %i.ak, 1                    ; 6 uses
  store i32 %i.al, ptr %i.a, align 4, !tbaa !17
  %i.am = load i32, ptr %i.d, align 8, !tbaa !15  ; 6 uses
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.d, align 8, !tbaa !15
  %i.ao = icmp sgt i32 %i.ak, 255
  %i.ap = icmp sgt i32 %i.am, 131071
  %or.cond51 = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond51, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !25
  %i.aq = add nsw i32 %i.ak, 2                    ; 2 uses
  store i32 %i.aq, ptr %i.a, align 4, !tbaa !17
  %i.ar = add nsw i32 %i.am, 2
  store i32 %i.ar, ptr %i.d, align 8, !tbaa !15
  %i.as = icmp sgt i32 %i.ak, 254
  %i.at = icmp sgt i32 %i.am, 131070
  %or.cond.i34 = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond.i34, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val6.i35 = load ptr, ptr %0, align 8, !tbaa !8 ; 2 uses
  %.val7.i36 = load i32, ptr %i.m, align 4, !tbaa !16 ; 3 uses
  %i.au = sext i32 %.val7.i36 to i64
  %i.av = getelementptr inbounds i8, ptr %.val6.i35, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !7
  %i.ax = icmp eq i8 %i.aw, 68
  br i1 %i.ax, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.ay = add nsw i32 %.val7.i36, 1               ; 2 uses
  store i32 %i.ay, ptr %i.m, align 4, !tbaa !16
  store i32 %i.aq, ptr %i.a, align 4, !tbaa !17
  %i.az = add nsw i32 %i.am, 3
  store i32 %i.az, ptr %i.d, align 8, !tbaa !15
  %i.ba = icmp sgt i32 %i.am, 131069
  br i1 %i.ba, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = sext i32 %i.ay to i64
  %i.bc = getelementptr inbounds i8, ptr %.val6.i35, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !7
  switch i8 %i.bd, label %.sink.split [
    i8 84, label %bb.h
    i8 116, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.be = add nsw i32 %.val7.i36, 2
  store i32 %i.be, ptr %i.m, align 4, !tbaa !16
  store i32 %i.al, ptr %i.a, align 4, !tbaa !17
  %i.bf = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL15ParseExpressionEPNS1_5StateE(ptr noundef nonnull %0)
          to label %bb.i unwind label %bb.l, !inline_history !40

bb.i:                                             ; preds = %bb.h
  %storemerge.in.pre.pre = load i32, ptr %i.a, align 4, !tbaa !17 ; 6 uses
  br i1 %i.bf, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bg = add nsw i32 %storemerge.in.pre.pre, 1
  store i32 %i.bg, ptr %i.a, align 4, !tbaa !17
  %i.bh = load i32, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.d, align 8, !tbaa !15
  %i.bj = icmp sgt i32 %storemerge.in.pre.pre, 255
  %i.bk = icmp sgt i32 %i.bh, 131071
  %or.cond.i27 = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %or.cond.i27, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val6.i28 = load ptr, ptr %0, align 8, !tbaa !8
  %.val7.i29 = load i32, ptr %i.m, align 4, !tbaa !16 ; 2 uses
  %i.bl = sext i32 %.val7.i29 to i64
  %i.bm = getelementptr inbounds i8, ptr %.val6.i28, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !7
  %i.bo = icmp eq i8 %i.bn, 69
  br i1 %i.bo, label %.thread48, label %.sink.split

.thread48:                                        ; preds = %bb.k
  %i.bp = add nsw i32 %.val7.i29, 1
  store i32 %i.bp, ptr %i.m, align 4, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.sink.split127

bb.l:                                             ; preds = %bb.h
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.br = load i32, ptr %i.a, align 4, !tbaa !17
  %i.bs = add nsw i32 %i.br, -1
  store i32 %i.bs, ptr %i.a, align 4, !tbaa !17
  br label %.loopexit.body

.sink.split:                                      ; preds = %bb.k, %bb.j, %bb.f, %bb.g, %bb.e, %bb.d
  %.sink = phi i32 [ %i.al, %bb.f ], [ %i.al, %bb.e ], [ %i.al, %bb.d ], [ %i.al, %bb.g ], [ %storemerge.in.pre.pre, %bb.j ], [ %storemerge.in.pre.pre, %bb.k ] ; 2 uses
  store i32 %.sink, ptr %i.a, align 4, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.i
  %storemerge.in.pre = phi i32 [ %storemerge.in.pre.pre, %bb.i ], [ %.sink, %.sink.split ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bt = add nsw i32 %storemerge.in.pre, -1
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.m
  %storemerge.in = phi i32 [ %i.ak, %bb.c ], [ %i.bt, %bb.m ]
  store i32 %storemerge.in, ptr %i.a, align 4, !tbaa !17
  %i.bu = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL17ParseSubstitutionEPNS1_5StateEb(ptr noundef nonnull %0, i1 noundef zeroext true)
  br i1 %i.bu, label %bb.z, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.bv = load i32, ptr %i.a, align 4, !tbaa !17  ; 6 uses
  %i.bw = add nsw i32 %i.bv, 1                    ; 3 uses
  store i32 %i.bw, ptr %i.a, align 4, !tbaa !17
  %i.bx = load i32, ptr %i.d, align 8, !tbaa !15  ; 4 uses
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.d, align 8, !tbaa !15
  %i.bz = icmp sgt i32 %i.bv, 255
  %i.ca = icmp sgt i32 %i.bx, 131071
  %or.cond.i88 = select i1 %i.bz, i1 true, i1 %i.ca
  br i1 %or.cond.i88, label %.thread90, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !25
  %i.cb = add nsw i32 %i.bv, 2
  store i32 %i.cb, ptr %i.a, align 4, !tbaa !17
  %i.cc = add nsw i32 %i.bx, 2
  store i32 %i.cc, ptr %i.d, align 8, !tbaa !15
  %i.cd = icmp sgt i32 %i.bv, 254
  %i.ce = icmp sgt i32 %i.bx, 131070
  %or.cond.i.i = select i1 %i.cd, i1 true, i1 %i.ce
  br i1 %or.cond.i.i, label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val6.i.i = load ptr, ptr %0, align 8, !tbaa !8
  %.val7.i.i = load i32, ptr %i.m, align 4, !tbaa !16 ; 2 uses
  %i.cf = sext i32 %.val7.i.i to i64
  %i.cg = getelementptr inbounds i8, ptr %.val6.i.i, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !7
  %i.ci = icmp eq i8 %i.ch, 117
  br i1 %i.ci, label %bb.q, label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread.i

_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread.i: ; preds = %bb.p, %bb.o
  store i32 %i.bw, ptr %i.a, align 4, !tbaa !17
  br label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cj = add nsw i32 %.val7.i.i, 1
  store i32 %i.cj, ptr %i.m, align 4, !tbaa !16
  store i32 %i.bw, ptr %i.a, align 4, !tbaa !17
  %i.ck = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL15ParseSourceNameEPNS1_5StateE(ptr noundef nonnull %0), !inline_history !41
  br i1 %i.ck, label %bb.r, label %._crit_edge

._crit_edge:                                      ; preds = %bb.q
  %.pre.i.pre = load i32, ptr %i.a, align 4, !tbaa !17
  %i.cl = add nsw i32 %.pre.i.pre, -1
  br label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cm = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL17ParseTemplateArgsEPNS1_5StateE(ptr noundef nonnull %0)
          to label %.thread92 unwind label %bb.s, !inline_history !41 ; 0 uses

.thread92:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %.pre.i94 = load i32, ptr %i.a, align 4, !tbaa !17
  br label %.sink.split127

bb.s:                                             ; preds = %bb.r
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.co = load i32, ptr %i.a, align 4, !tbaa !17
  %i.cp = add nsw i32 %i.co, -1
  store i32 %i.cp, ptr %i.a, align 4, !tbaa !17
  br label %.loopexit.body

bb.t:                                             ; preds = %._crit_edge, %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread.i
  %.pre.i = phi i32 [ %i.cl, %._crit_edge ], [ %i.bv, %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !25
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %.thread90

.thread90:                                        ; preds = %bb.n, %bb.t
  %storemerge = phi i32 [ %.pre.i, %bb.t ], [ %i.bv, %bb.n ]
  store i32 %storemerge, ptr %i.a, align 4, !tbaa !17
  %i.cq = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL17ParseUnscopedNameEPNS1_5StateE(ptr noundef nonnull %0)
          to label %bb.u unwind label %.loopexit

bb.u:                                             ; preds = %.thread90
  br i1 %i.cq, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %3 = load i32, ptr %i.a, align 4, !tbaa !17     ; 4 uses
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %i.a, align 4, !tbaa !17
  %5 = load i32, ptr %i.d, align 8, !tbaa !15     ; 2 uses
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %i.d, align 8, !tbaa !15
  %7 = icmp sgt i32 %3, 255
  %8 = icmp sgt i32 %5, 131071
  %or.cond.i23 = select i1 %7, i1 true, i1 %8
  br i1 %or.cond.i23, label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val6.i = load ptr, ptr %0, align 8, !tbaa !8
  %.val7.i = load i32, ptr %i.m, align 4, !tbaa !16 ; 2 uses
  %i.cr = sext i32 %.val7.i to i64
  %i.cs = getelementptr inbounds i8, ptr %.val6.i, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !7
  %i.cu = icmp eq i8 %i.ct, 77
  br i1 %i.cu, label %bb.x, label %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread

_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread: ; preds = %bb.v, %bb.w
  store i32 %3, ptr %i.a, align 4, !tbaa !17
  br label %.loopexit52

bb.x:                                             ; preds = %bb.w
  %i.cv = add nsw i32 %.val7.i, 1
  store i32 %i.cv, ptr %i.m, align 4, !tbaa !16
  store i32 %3, ptr %i.a, align 4, !tbaa !17
  %i.cw = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL20ParseUnnamedTypeNameEPNS1_5StateE(ptr noundef nonnull %0)
          to label %bb.y unwind label %.loopexit

bb.y:                                             ; preds = %bb.x
  br i1 %i.cw, label %bb.z, label %.loopexit52

.sink.split127:                                   ; preds = %.thread48, %.thread92
  %.pre.i94.sink = phi i32 [ %.pre.i94, %.thread92 ], [ %storemerge.in.pre.pre, %.thread48 ]
  %i.cx = add nsw i32 %.pre.i94.sink, -1
  store i32 %i.cx, ptr %i.a, align 4, !tbaa !17
  br label %bb.z

bb.z:                                             ; preds = %.sink.split127, %bb.y, %bb.u, %.thread, %_ZN4absl12lts_2025051218debugging_internalL20MaybeAppendSeparatorEPNS1_5StateE.exit
  %i.cy = load i32, ptr %i.i, align 8             ; 3 uses
  %i.cz = shl i32 %i.cy, 1
  %i.da = ashr i32 %i.cz, 17                      ; 2 uses
  %i.db = icmp sgt i32 %i.da, -1
  br i1 %i.db, label %bb.aa, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.z, %bb.aa
  %.be = phi i32 [ %i.cy, %bb.z ], [ %i.df, %bb.aa ]
  br label %.preheader, !llvm.loop !42

bb.aa:                                            ; preds = %bb.z
  %i.dc = shl nuw nsw i32 %i.da, 16
  %i.dd = add nuw nsw i32 %i.dc, 65536
  %i.de = and i32 %i.cy, -2147418113
  %i.df = or disjoint i32 %i.dd, %i.de            ; 2 uses
  store i32 %i.df, ptr %i.i, align 8
  br label %.preheader.backedge

.loopexit:                                        ; preds = %.thread90, %bb.x
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.body

.loopexit.split-lp:                               ; preds = %bb.ad, %bb.af
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.body

.loopexit.body:                                   ; preds = %.loopexit, %bb.s, %bb.l, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.bq, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %i.cn, %bb.s ]
  %i.dg = load i32, ptr %i.a, align 4, !tbaa !17
  %i.dh = add nsw i32 %i.dg, -1
  store i32 %i.dh, ptr %i.a, align 4, !tbaa !17
  resume { ptr, i32 } %lpad.phi

.loopexit52:                                      ; preds = %bb.y, %_ZN4absl12lts_2025051218debugging_internalL17ParseOneCharTokenEPNS1_5StateEc.exit.thread
  %i.di = load i32, ptr %i.i, align 8             ; 2 uses
  %i.dj = shl i32 %i.di, 1
  %i.dk = icmp slt i32 %i.dj, 131072
  %.not.i = icmp sgt i32 %i.di, -1
  %or.cond.i25 = or i1 %.not.i, %i.dk
  br i1 %or.cond.i25, label %_ZN4absl12lts_2025051218debugging_internalL24MaybeCancelLastSeparatorEPNS1_5StateE.exit, label %bb.ab

bb.ab:                                            ; preds = %.loopexit52
  %i.dl = load i32, ptr %i.j, align 8, !tbaa !18  ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, 1
  br i1 %i.dm, label %bb.ac, label %_ZN4absl12lts_2025051218debugging_internalL24MaybeCancelLastSeparatorEPNS1_5StateE.exit

bb.ac:                                            ; preds = %bb.ab
  %i.dn = add nsw i32 %i.dl, -2                   ; 2 uses
  store i32 %i.dn, ptr %i.j, align 8, !tbaa !18
  %i.do = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.dp = zext nneg i32 %i.dn to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dp
  store i8 0, ptr %i.dq, align 1, !tbaa !7
  br label %_ZN4absl12lts_2025051218debugging_internalL24MaybeCancelLastSeparatorEPNS1_5StateE.exit

_ZN4absl12lts_2025051218debugging_internalL24MaybeCancelLastSeparatorEPNS1_5StateE.exit: ; preds = %.loopexit52, %bb.ab, %bb.ac
  br i1 %.016, label %bb.ad, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.ad:                                            ; preds = %_ZN4absl12lts_2025051218debugging_internalL24MaybeCancelLastSeparatorEPNS1_5StateE.exit
  %i.dr = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL17ParseTemplateArgsEPNS1_5StateE(ptr noundef nonnull %0)
          to label %bb.ae unwind label %.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.dr, label %bb.af, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.ds = invoke fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL11ParsePrefixEPNS1_5StateE(ptr noundef nonnull %0)
          to label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread unwind label %.loopexit.split-lp

_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread: ; preds = %bb.a, %bb.af, %_ZN4absl12lts_2025051218debugging_internalL24MaybeCancelLastSeparatorEPNS1_5StateE.exit, %bb.ae
  %.1 = phi i1 [ false, %bb.a ], [ %i.ds, %bb.af ], [ true, %_ZN4absl12lts_2025051218debugging_internalL24MaybeCancelLastSeparatorEPNS1_5StateE.exit ], [ true, %bb.ae ]
  %i.dt = load i32, ptr %i.a, align 4, !tbaa !17
  %i.du = add nsw i32 %i.dt, -1
  store i32 %i.du, ptr %i.a, align 4, !tbaa !17
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internalL15ParseSourceNameEPNS1_5StateE(ptr noundef captures(none) %0) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.absl::lts_20250512::debugging_internal::ParseState", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !15   ; 8 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !15
  %i.f = icmp sgt i32 %i.b, 255
  %i.g = icmp sgt i32 %i.d, 131071
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %_ZNK4absl12lts_2025051218debugging_internal12_GLOBAL__N_115ComplexityGuard12IsTooComplexEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !25
  %i.i = add nsw i32 %i.b, 2                      ; 2 uses
  %i.j = add nsw i32 %i.d, 2
  store i32 %i.j, ptr %i.c, align 8, !tbaa !15
  %i.k = icmp sgt i32 %i.b, 254
  %i.l = icmp sgt i32 %i.d, 131070
  %or.cond.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i32 %i.b, 3
  store i32 %i.m, ptr %i.a, align 4, !tbaa !17
  %i.n = add nsw i32 %i.d, 3
  store i32 %i.n, ptr %i.c, align 8, !tbaa !15
  %i.o = icmp sgt i32 %i.b, 253
  %i.p = icmp sgt i32 %i.d, 131069
  %or.cond.i.i = select i1 %i.o, i1 true, i1 %i.p
  %.val34.pre.i = load ptr, ptr %0, align 8, !tbaa !8 ; 3 uses
  %.val35.pre.i = load i32, ptr %i.h, align 4, !tbaa !16 ; 4 uses
  br i1 %or.cond.i.i, label %._crit_edge44.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = sext i32 %.val35.pre.i to i64
  %i.r = getelementptr inbounds i8, ptr %.val34.pre.i, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !7
  %i.t = icmp eq i8 %i.s, 110
  br i1 %i.t, label %bb.e, label %._crit_edge44.i

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %.val35.pre.i, 1             ; 2 uses
  store i32 %i.u, ptr %i.h, align 4, !tbaa !16
  br label %._crit_edge44.i

._crit_edge44.i:                                  ; preds = %bb.e, %bb.d, %bb.c
  %.val35.i = phi i32 [ %.val35.pre.i, %bb.d ], [ %i.u, %bb.e ], [ %.val35.pre.i, %bb.c ] ; 2 uses
  %.0.i36.i = phi i1 [ false, %bb.d ], [ true, %bb.e ], [ false, %bb.c ]
  store i32 %i.i, ptr %i.a, align 4, !tbaa !17
  %i.v = sext i32 %.val35.i to i64
  %i.w = getelementptr inbounds i8, ptr %.val34.pre.i, i64 %i.v ; 3 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !7     ; 2 uses
  %i.y = add i8 %i.x, -48
  %i.z = icmp ult i8 %i.y, 10
  br i1 %i.z, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %._crit_edge44.i, %.lr.ph.i
  %i.aa = phi i8 [ %i.ag, %.lr.ph.i ], [ %i.x, %._crit_edge44.i ]
  %.041.i = phi i32 [ %i.ae, %.lr.ph.i ], [ 0, %._crit_edge44.i ]
  %.02140.i = phi ptr [ %i.af, %.lr.ph.i ], [ %i.w, %._crit_edge44.i ]
  %i.ab = mul i32 %.041.i, 10
  %i.ac = zext nneg i8 %i.aa to i32
  %i.ad = add nsw i32 %i.ac, -48
  %i.ae = add i32 %i.ad, %i.ab                    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.02140.i, i64 1 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !7   ; 2 uses
  %i.ah = add i8 %i.ag, -48
  %i.ai = icmp ult i8 %i.ah, 10
  br i1 %i.ai, label %.lr.ph.i, label %bb.f, !llvm.loop !43

bb.f:                                             ; preds = %.lr.ph.i
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = ptrtoint ptr %i.w to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.al to i32
  %i.an = add nsw i32 %.val35.i, %i.am            ; 2 uses
  store i32 %i.an, ptr %i.h, align 4, !tbaa !16
  %i.ao = sub i32 0, %i.ae
  %spec.select.i = select i1 %.0.i36.i, i32 %i.ao, i32 %i.ae ; 4 uses
  %i.ap = sext i32 %spec.select.i to i64          ; 2 uses
  store i32 %i.i, ptr %i.a, align 4, !tbaa !17
  %i.aq = add nsw i32 %i.d, 4
  store i32 %i.aq, ptr %i.c, align 8, !tbaa !15
  %i.ar = icmp sgt i32 %i.d, 131068
  br i1 %i.ar, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = sext i32 %i.an to i64
  %i.at = getelementptr inbounds i8, ptr %.val34.pre.i, i64 %i.as ; 4 uses
  %i.au = icmp eq i32 %spec.select.i, 0
  br i1 %i.au, label %_ZN4absl12lts_2025051218debugging_internalL30IdentifierIsAnonymousNamespaceEPNS1_5StateEm.exit.thread.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.av = add nuw i64 %.068.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.av, %i.ap
  br i1 %exitcond.not.i.i, label %bb.i, label %.lr.ph.i.i, !llvm.loop !44

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %.068.i.i = phi i64 [ %i.av, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.068.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !7
  %.not.i.i = icmp eq i8 %i.ax, 0
end_hunk_0
