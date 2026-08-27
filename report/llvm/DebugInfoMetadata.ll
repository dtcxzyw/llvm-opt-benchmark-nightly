Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DebugInfoMetadata?download=true
inline.NumInlined: 10121
inline.NumDeleted: 4838
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E24lookupOrInsertIntoBucketIRKS6_JEEES2_IPSB_bEOT_DpOT0_:bb.a
  %i.ce = or i32 %i.ca, %i.cd
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !131
  %i.cf = load i32, ptr %i.bk, align 8, !tbaa !1507
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.bk, align 8, !tbaa !1507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i32 0, ptr %i.ch, align 8, !tbaa !131
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_.exit: ; preds = %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E22findBucketForInsertionIS6_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.bt, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E22findBucketForInsertionIS6_EEPSB_RKT_SF_.exit ], [ %i.aq, %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E22findBucketForInsertionIS6_EEPSB_RKT_SF_.exit ], [ 0, %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E15LookupBucketForIS6_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !195, !noalias !1537 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1534, !noalias !1537 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !192, !noalias !1537 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !181    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !131  ; 2 uses
  %i.o = mul i32 %i.n, 37
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !131  ; 2 uses
  %i.r = mul i32 %i.q, 37
  %i.s = zext i32 %i.o to i64
  %i.t = shl nuw i64 %i.s, 32
  %i.u = zext i32 %i.r to i64
  %i.v = or disjoint i64 %i.t, %i.u
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = shl i64 %i.l, 32
  %i.aa = and i64 %i.y, 4294967295
  %i.ab = or disjoint i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, -4658895280553007687     ; 2 uses
  %i.ad = lshr i64 %i.ac, 31
  %i.ae = xor i64 %i.ad, %i.ac
  %i.af = trunc i64 %i.ae to i32
  %i.ag = and i32 %i.g, %i.af                     ; 3 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ah ; 2 uses
  %i.aj = lshr i64 %i.ah, 5
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !131
  %i.am = and i32 %i.ag, 31
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %bb.b, %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.thread
  %i.ap = phi ptr [ %i.bc, %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.thread ], [ %i.ai, %bb.b ] ; 4 uses
  %.024 = phi i32 [ %i.ba, %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.thread ], [ %i.ag, %bb.b ]
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !181
  %i.ar = icmp eq ptr %i.h, %i.aq
  br i1 %i.ar, label %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit, label %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.thread, !prof !609

_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit: ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !131
  %i.au = icmp eq i32 %i.n, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp eq i32 %i.q, %i.aw
  %i.ay = select i1 %i.au, i1 %i.ax, i1 false
  br i1 %i.ay, label %.thread, label %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.thread, !prof !610

_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.thread: ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit
  %i.az = add nuw i32 %.024, 1
  %i.ba = and i32 %i.az, %i.g                     ; 3 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.bb ; 2 uses
  %i.bd = lshr i64 %i.bb, 5
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !131
  %i.bg = and i32 %i.ba, 31
  %i.bh = lshr i32 %i.bf, %i.bg
  %i.bi = trunc i32 %i.bh to i1
  br i1 %i.bi, label %.lr.ph, label %.thread, !prof !147, !llvm.loop !1535

.thread:                                          ; preds = %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit, %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.thread, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.ai, %bb.b ], [ null, %bb.a ], [ %i.bc, %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.thread ], [ %i.ap, %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.thread ], [ true, %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1536
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.708", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !192
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !195
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1534
  store i32 0, ptr %i.p, align 16, !tbaa !1507
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1536
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapISt4pairIPNS_6DIFileES1_IjjEEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapISt4pairIPNS_6DIFileES1_IjjEEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEED2Ev.exit

_ZN4llvm8DenseMapISt4pairIPNS_6DIFileES1_IjjEEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !195
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1534
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !192  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1534 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !195
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !192
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES5_IjjEEjNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !131  ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bu, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !181
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !131
  %i.ac = mul i32 %i.ab, 37
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131
  %i.af = mul i32 %i.ae, 37
  %i.ag = zext i32 %i.ac to i64
  %i.ah = shl nuw i64 %i.ag, 32
  %i.ai = zext i32 %i.af to i64
  %i.aj = or disjoint i64 %i.ah, %i.ai
  %i.ak = mul i64 %i.aj, -4658895280553007687     ; 2 uses
  %i.al = lshr i64 %i.ak, 31
  %i.am = xor i64 %i.al, %i.ak
  %i.an = shl i64 %i.z, 32
  %i.ao = and i64 %i.am, 4294967295
  %i.ap = or disjoint i64 %i.ao, %i.an
  %i.aq = mul i64 %i.ap, -4658895280553007687     ; 2 uses
  %i.ar = lshr i64 %i.aq, 31
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = trunc i64 %i.as to i32
  %i.au = and i32 %i.k, %i.at                     ; 3 uses
  %i.av = zext i32 %i.au to i64                   ; 2 uses
  %i.aw = lshr i64 %i.av, 5                       ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !131
  %i.az = and i32 %i.au, 31                       ; 2 uses
  %i.ba = lshr i32 %i.ay, %i.az
  %i.bb = trunc i32 %i.ba to i1
  br i1 %i.bb, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.bd, %.lr.ph.i ], [ %i.au, %bb.b ]
  %i.bc = add i32 %.014.i, 1
  %i.bd = and i32 %i.bc, %i.k                     ; 3 uses
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = lshr i64 %i.be, 5                       ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !131
  %i.bi = and i32 %i.bd, 31                       ; 2 uses
  %i.bj = lshr i32 %i.bh, %i.bi
  %i.bk = trunc i32 %i.bj to i1
  br i1 %i.bk, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !1542

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.av, %bb.b ], [ %i.be, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.aw, %bb.b ], [ %i.bf, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.az, %bb.b ], [ %i.bi, %.lr.ph.i ]
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !131
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !131
  %i.bp = shl nuw i32 1, %.lcssa.i
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !131
  %i.bs = or i32 %i.br, %i.bp
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !131
  %i.bt = add i32 %.0.i17, -1
  %i.bu = and i32 %i.bt, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bu, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1543

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES5_IjjEEjNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !1544

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES5_IjjEEjNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !192
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES5_IjjEEjNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES5_IjjEEjNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES5_IjjEEjNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bv = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES5_IjjEEjNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !1507
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !1507
  %i.bz = icmp eq i32 %i.bv, 0
  br i1 %i.bz, label %_ZN4llvm8DenseMapISt4pairIPNS_6DIFileES1_IjjEEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES5_IjjEEjNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.ca = load ptr, ptr %1, align 8, !tbaa !195
  %i.cb = zext i32 %i.bv to i64                   ; 2 uses
  %i.cc = mul nuw nsw i64 %i.cb, 24
  %i.cd = add nuw nsw i64 %i.cb, 31
  %i.ce = lshr i64 %i.cd, 3
  %i.cf = and i64 %i.ce, 1073741820
  %i.cg = add nuw nsw i64 %i.cf, %i.cc
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ca, i64 noundef %i.cg, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapISt4pairIPNS_6DIFileES1_IjjEEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEE4killEv.exit

_ZN4llvm8DenseMapISt4pairIPNS_6DIFileES1_IjjEEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES5_IjjEEjNS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !190, !noalias !1545 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1550, !noalias !1545 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !187, !noalias !1545 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !179    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !131
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !146

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !179
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.c, !prof !121

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !131
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !147, !llvm.loop !1551

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1524
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1491
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !121

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1524
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1550
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !190
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !131
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !131
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1491
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !179
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !179
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !190, !noalias !1552 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1550, !noalias !1552 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !187, !noalias !1552 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !179    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !131
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !179
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !121

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !131
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !147, !llvm.loop !1551

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1524
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.719", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !187
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !190
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1550
  store i32 0, ptr %i.p, align 16, !tbaa !1491
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1524
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !190    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1550
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !187  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1550 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !190
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !187
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !131  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !179  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !131 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !131 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1557

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !179
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !131
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1558

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1559

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !187
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1491
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !1491
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !187
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIScopeENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm9MapVectorISt4pairIPNS_6DIFileES1_IjjEENS_14SmallSetVectorIPNS_7DIScopeELj8EEENS_8DenseMapIS5_jNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEENS_11SmallVectorIS1_IS5_S9_ELj8EEELj8EE4findERKS5_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1507
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !52
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [120 x i8], ptr %i.e, i64 %i.h
  %i.j = tail call noundef ptr @_ZSt9__find_ifIPSt4pairIS0_IPN4llvm6DIFileES0_IjjEENS1_14SmallSetVectorIPNS1_7DIScopeELj8EEEEN9__gnu_cxx5__ops10_Iter_predIZNS1_9MapVectorIS5_S9_NS1_8DenseMapIS5_jNS1_12DenseMapInfoIS5_vEENS1_6detail12DenseMapPairIS5_jEEEENS1_11SmallVectorISA_Lj8EEELj8EE12findInVectorISO_S5_EEDaRT_RKT0_EUlRKSR_E_EEESR_SR_SR_ST_St26random_access_iterator_tag(ptr noundef %i.e, ptr noundef %i.i, ptr nonnull align 8 dereferenceable(16) %1)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !195, !noalias !1560 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1534, !noalias !1560 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !192, !noalias !1560 ; 4 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.loopexit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = add i32 %i.o, -1                         ; 2 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !181, !noalias !1569 ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = mul i64 %i.s, -4658895280553007687       ; 2 uses
  %i.u = lshr i64 %i.t, 31
  %i.v = xor i64 %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !131, !noalias !1569 ; 2 uses
  %i.y = mul i32 %i.x, 37
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !131, !noalias !1569 ; 2 uses
  %i.ab = mul i32 %i.aa, 37
  %i.ac = zext i32 %i.y to i64
  %i.ad = shl nuw i64 %i.ac, 32
  %i.ae = zext i32 %i.ab to i64
  %i.af = or disjoint i64 %i.ad, %i.ae
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = shl i64 %i.v, 32
  %i.ak = and i64 %i.ai, 4294967295
  %i.al = or disjoint i64 %i.ak, %i.aj
  %i.am = mul i64 %i.al, -4658895280553007687     ; 2 uses
  %i.an = lshr i64 %i.am, 31
  %i.ao = xor i64 %i.an, %i.am
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = and i32 %i.q, %i.ap                     ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = lshr i64 %i.ar, 5
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !131, !noalias !1569
  %i.av = and i32 %i.aq, 31
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = trunc i32 %i.aw to i1
  br i1 %i.ax, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !146

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.thread.i.i.i.i
  %i.ay = phi i64 [ %i.bl, %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.thread.i.i.i.i ], [ %i.ar, %bb.d ]
  %.017.i.i.i.i = phi i32 [ %i.bk, %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.thread.i.i.i.i ], [ %i.aq, %bb.d ]
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.ay ; 4 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !181, !noalias !1569
  %i.bb = icmp eq ptr %i.r, %i.ba
  br i1 %i.bb, label %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.i.i.i.i, label %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.thread.i.i.i.i, !prof !609

_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !131, !noalias !1569
  %i.be = icmp eq i32 %i.x, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !noalias !1569
  %i.bh = icmp eq i32 %i.aa, %i.bg
  %i.bi = select i1 %i.be, i1 %i.bh, i1 false
  br i1 %i.bi, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E4findERKS6_.exit.loopexit, label %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.thread.i.i.i.i, !prof !610

_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.thread.i.i.i.i: ; preds = %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bj = add nuw i32 %.017.i.i.i.i, 1
  %i.bk = and i32 %i.bj, %i.q                     ; 3 uses
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = lshr i64 %i.bl, 5
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !131, !noalias !1569
  %i.bp = and i32 %i.bk, 31
  %i.bq = lshr i32 %i.bo, %i.bp
  %i.br = trunc i32 %i.bq to i1
  br i1 %i.br, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !147

.loopexit.i.i:                                    ; preds = %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.thread.i.i.i.i, %bb.d, %bb.c
  %i.bs = zext i32 %i.o to i64                    ; 2 uses
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.bs
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E4findERKS6_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E4findERKS6_.exit.loopexit: ; preds = %_ZN4llvm12DenseMapInfoISt4pairIPNS_6DIFileES1_IjjEEvE7isEqualERKS5_S8_.exit.i.i.i.i
  %.pre = zext i32 %i.o to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E4findERKS6_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E4findERKS6_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E4findERKS6_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E4findERKS6_.exit.loopexit ], [ %i.bs, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.az, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E4findERKS6_.exit.loopexit ], [ %i.bt, %.loopexit.i.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %.pre-phi
  %i.bv = icmp eq ptr %.lcssa.sink.i.i, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !21 ; 2 uses
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_6DIFileES2_IjjEEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E4findERKS6_.exit
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !53
  br label %_ZN4llvm13MDNodeKeyImplINS_10DILocationEEC2EPKS1_.exit.i

_ZN4llvm13MDNodeKeyImplINS_10DILocationEEC2EPKS1_.exit.i: ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i
  %i.ab = phi ptr [ %i.y, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i ], [ %i.p, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i ], [ %i.u, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.aa, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i ], [ null, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i ], [ null, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.aj = load i8, ptr %i.ai, align 1
  %.lobit.i.i = lshr i8 %i.aj, 7
  %i.ak = zext i32 %i.af to i64
  %i.al = zext i16 %i.ah to i64
  %i.am = shl nuw nsw i64 %i.al, 32
  %i.an = or disjoint i64 %i.am, %i.ak
  %i.ao = zext nneg i8 %.lobit.i.i to i64
  %i.ap = shl nuw nsw i64 %i.ao, 48
  %i.aq = or disjoint i64 %i.ap, %i.an            ; 2 uses
  %.not1.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm13MDNodeKeyImplINS_10DILocationEEC2EPKS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i64 %i.aq, ptr %4, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ab, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.0.i.i.i, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.ad, ptr %i.at, align 8
  %i.au = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %4, i64 noundef 32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %_ZN4llvm13MDNodeKeyImplINS_10DILocationEEC2EPKS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 %i.aq, ptr %3, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ab, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %.0.i.i.i, ptr %i.aw, align 8
  %i.ax = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.0.in.in.i.i = phi i64 [ %i.au, %bb.c ], [ %i.ax, %bb.d ]
  %i.ay = trunc i64 %.0.in.in.i.i to i32
  %.0.i.i = xor i32 %i.ay, -313160499
  %.024 = and i32 %.0.i.i, %i.g                   ; 3 uses
  %i.az = zext i32 %.024 to i64                   ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.az ; 2 uses
  %i.bb = lshr i64 %i.az, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !131
  %i.be = and i32 %.024, 31
  %i.bf = lshr i32 %i.bd, %i.be
  %i.bg = trunc i32 %i.bf to i1
  br i1 %i.bg, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit
  %i.bh = load ptr, ptr %1, align 8, !tbaa !50
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.bi = add nuw i32 %.025, 1
  %.0 = and i32 %i.bi, %i.g                       ; 3 uses
  %i.bj = zext i32 %.0 to i64                     ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bj ; 2 uses
  %i.bl = lshr i64 %i.bj, 5
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !131
  %i.bo = and i32 %.0, 31
  %i.bp = lshr i32 %i.bn, %i.bo
  %i.bq = trunc i32 %i.bp to i1
  br i1 %i.bq, label %bb.f, label %.thread, !prof !147, !llvm.loop !1590

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.br = phi ptr [ %i.ba, %.lr.ph ], [ %i.bk, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !50
  %i.bt = icmp eq ptr %i.bh, %i.bs                ; 3 uses
  br i1 %i.bt, label %.thread, label %bb.e, !prof !121

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa31.sink = phi ptr [ %i.ba, %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.bk, %bb.e ], [ %i.br, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.bt, %bb.e ], [ %i.bt, %bb.f ]
  store ptr %.lcssa31.sink, ptr %2, align 8, !tbaa !1583
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.86", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !77
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !73
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1582
  store i32 0, ptr %i.p, align 16, !tbaa !1584
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1583
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.791", align 8   ; 6 uses
  %3 = alloca %"struct.std::array.790", align 8   ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1582
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !77   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1582 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !73
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !77
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.u, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.v = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.u, %.lr.ph ], [ %i.cb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.w = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.x = or disjoint i32 %i.w, %i.v
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50  ; 7 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = and i64 %i.ac, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i.i

_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i.i:  ; preds = %bb.c
  %i.ae = lshr i64 %i.ac, 2
  %i.af = and i64 %i.ae, 15
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !53 ; 2 uses
  %i.aj = and i64 %i.ac, 960
  %i.ak = icmp eq i64 %i.aj, 128
  br i1 %i.ak, label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i, label %_ZN4llvm13MDNodeKeyImplINS_10DILocationEEC2EPKS1_.exit.i.i

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i.i: ; preds = %bb.c
  %i.al = getelementptr inbounds i8, ptr %i.aa, i64 -32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !21 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !53 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.aa, i64 -24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !52
  %i.aq = icmp eq i32 %i.ap, 2
  br i1 %i.aq, label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i, label %_ZN4llvm13MDNodeKeyImplINS_10DILocationEEC2EPKS1_.exit.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i:      ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i.i
  %i.ar = phi ptr [ %i.an, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i.i ], [ %i.ai, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i.i ]
  %.sroa.0.0.i.i.i9.i.i.i = phi ptr [ %i.am, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i.i ], [ %i.ah, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i9.i.i.i, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !53
  br label %_ZN4llvm13MDNodeKeyImplINS_10DILocationEEC2EPKS1_.exit.i.i

_ZN4llvm13MDNodeKeyImplINS_10DILocationEEC2EPKS1_.exit.i.i: ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i.i
  %i.au = phi ptr [ %i.ar, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i ], [ %i.ai, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i.i ], [ %i.an, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi ptr [ %i.at, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i ], [ null, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i.i ], [ null, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !58
  %i.az = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.bc = load i8, ptr %i.bb, align 1
  %.lobit.i.i.i = lshr i8 %i.bc, 7
  %i.bd = zext i32 %i.ay to i64
  %i.be = zext i16 %i.ba to i64
  %i.bf = shl nuw nsw i64 %i.be, 32
  %i.bg = or disjoint i64 %i.bf, %i.bd
  %i.bh = zext nneg i8 %.lobit.i.i.i to i64
  %i.bi = shl nuw nsw i64 %i.bh, 48
  %i.bj = or disjoint i64 %i.bi, %i.bg            ; 2 uses
  %.not1.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not1.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm13MDNodeKeyImplINS_10DILocationEEC2EPKS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 %i.bj, ptr %3, align 8
  store ptr %i.au, ptr %i.o, align 8
  store ptr %.0.i.i.i.i, ptr %i.p, align 8
  store i64 %i.aw, ptr %i.q, align 8
  %i.bk = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %_ZN4llvm13MDNodeKeyImplINS_10DILocationEEC2EPKS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i64 %i.bj, ptr %2, align 8
  store ptr %i.au, ptr %i.r, align 8
  store ptr %.0.i.i.i.i, ptr %i.s, align 8
  %i.bl = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.0.in.in.i.i.i = phi i64 [ %i.bk, %bb.d ], [ %i.bl, %bb.e ]
  %i.bm = trunc i64 %.0.in.in.i.i.i to i32
  %.0.i.i.i = xor i32 %i.bm, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit.i
  %.0.i.i.pn.i = phi i32 [ %.0.i.i.i, %_ZN4llvm10MDNodeInfoINS_10DILocationEE12getHashValueEPKS1_.exit.i ], [ %i.bu, %bb.f ]
  %.0.i7 = and i32 %.0.i.i.pn.i, %i.k             ; 3 uses
  %i.bn = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.bo = lshr i64 %i.bn, 5                       ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !131 ; 2 uses
  %i.br = and i32 %.0.i7, 31                      ; 2 uses
  %i.bs = lshr i32 %i.bq, %i.br
  %i.bt = trunc i32 %i.bs to i1
  %i.bu = add i32 %.0.i7, 1
  br i1 %i.bt, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1591

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bo
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bn
  %i.bx = load ptr, ptr %i.z, align 8, !tbaa !50
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !50
  %i.by = shl nuw i32 1, %i.br
  %i.bz = or i32 %i.by, %i.bq
  store i32 %i.bz, ptr %i.bv, align 4, !tbaa !131
  %i.ca = add i32 %.0.i18, -1
  %i.cb = and i32 %i.ca, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.cb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1592

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1593

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !77
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.cc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !1584
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !1584
  %i.cg = icmp eq i32 %i.cc, 0
  br i1 %i.cg, label %_ZN4llvm8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.ch = load ptr, ptr %1, align 8, !tbaa !73
  %i.ci = zext i32 %i.cc to i64                   ; 2 uses
  %i.cj = shl nuw nsw i64 %i.ci, 3
  %i.ck = add nuw nsw i64 %i.ci, 31
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = and i64 %i.cl, 1073741820
  %i.cn = add nuw nsw i64 %i.cm, %i.cj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ch, i64 noundef %i.cn, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !77
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DILocationENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_10DILocationELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #23
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !52
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !52
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E24lookupOrInsertIntoBucketIS9_JRjEEES2_IPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !1594 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1594 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1594 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !1594
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !122    ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !125  ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = mul i64 %i.t, -4658895280553007687       ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E15LookupBucketForIS9_EEbRKT_RPSE_:bb.a
  %i.ba = and i32 %i.au, 31
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = trunc i32 %i.bb to i1
  br i1 %i.bc, label %.lr.ph, label %.thread, !prof !147, !llvm.loop !1599

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.af, %bb.b ], [ null, %bb.a ], [ %i.aw, %bb.c ], [ %i.am, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.as, %bb.c ], [ %i.as, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1600
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.363", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 104
  br label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEC2EjNS_12DenseMapBaseISE_S8_jSA_SD_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = mul nuw nsw i64 %i.q, 24                 ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #23 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !199
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !199
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !199
  br label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEC2EjNS_12DenseMapBaseISE_S8_jSA_SD_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEC2EjNS_12DenseMapBaseISE_S8_jSA_SD_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE13maybeMoveFastEOSE_.exit.thread, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE13maybeMoveFastEOSE_.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE13maybeMoveFastEOSE_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEC2EjNS_12DenseMapBaseISE_S8_jSA_SD_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !1607
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !199
  br label %bb.b

_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE13maybeMoveFastEOSE_.exit: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEC2EjNS_12DenseMapBaseISE_S8_jSA_SD_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE13maybeMoveFastEOSE_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE13maybeMoveFastEOSE_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = mul nuw nsw i64 %i.al, 24               ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #23 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !199
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !199
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !199
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 104
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(112) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE13maybeMoveFastEOSE_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE13maybeMoveFastEOSE_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !199 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !199
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = mul nuw nsw i64 %i.bm, 24
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #23
  br label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEED2Ev.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 4
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 3   ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i23 = icmp eq i64 %i.ab, 0
  br i1 %.not.i23, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_jEEEESC_jSE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !131 ; 2 uses
  %.not11.i21 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph26
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ae = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E8moveFromERSF_ENKUljE_clEj.exit
  %.0.i22 = phi i32 [ %i.ad, %.lr.ph ], [ %i.cb, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E8moveFromERSF_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i22, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.ah ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !122
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !125
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = mul i64 %i.aq, -4658895280553007687     ; 2 uses
  %i.as = lshr i64 %i.ar, 31
  %i.at = xor i64 %i.as, %i.ar
  %i.au = shl i64 %i.an, 32
  %i.av = and i64 %i.at, 4294967295
  %i.aw = or disjoint i64 %i.av, %i.au
  %i.ax = mul i64 %i.aw, -4658895280553007687     ; 2 uses
  %i.ay = lshr i64 %i.ax, 31
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = trunc i64 %i.az to i32
  %i.bb = and i32 %i.y, %i.ba                     ; 3 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = lshr i64 %i.bc, 5                       ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !131
  %i.bg = and i32 %i.bb, 31                       ; 2 uses
  %i.bh = lshr i32 %i.bf, %i.bg
  %i.bi = trunc i32 %i.bh to i1
  br i1 %i.bi, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E8moveFromERSF_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.bk, %.lr.ph.i ], [ %i.bb, %bb.b ]
  %i.bj = add i32 %.014.i, 1
  %i.bk = and i32 %i.bj, %i.y                     ; 3 uses
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = lshr i64 %i.bl, 5                       ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !131
  %i.bp = and i32 %i.bk, 31                       ; 2 uses
  %i.bq = lshr i32 %i.bo, %i.bp
  %i.br = trunc i32 %i.bq to i1
  br i1 %i.br, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E8moveFromERSF_ENKUljE_clEj.exit, !llvm.loop !1608

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E8moveFromERSF_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.bc, %bb.b ], [ %i.bl, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.bd, %bb.b ], [ %i.bm, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.bg, %bb.b ], [ %i.bp, %.lr.ph.i ]
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.lcssa12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !131
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !131
  %i.bw = shl nuw i32 1, %.lcssa.i
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa11.i ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !131
  %i.bz = or i32 %i.by, %i.bw
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !131
  %i.ca = add i32 %.0.i22, -1
  %i.cb = and i32 %i.ca, %.0.i22                  ; 2 uses
  %.not11.i = icmp eq i32 %i.cb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1609

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_jEEEES9_jSB_SE_E8moveFromERSF_ENKUljE_clEj.exit, %.lr.ph26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_jEEEESC_jSE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph26, !llvm.loop !1610

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_jEEEESC_jSE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre30 = load i32, ptr %0, align 8
  %.pre31 = and i32 %.pre30, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_jEEEESC_jSE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_jEEEESC_jSE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_jEEEESC_jSE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre31, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_jEEEESC_jSE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.cc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_jEEEESC_jSE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.cd = and i32 %i.cc, -2
  %i.ce = or disjoint i32 %.pre-phi, %i.cd
  store i32 %i.ce, ptr %0, align 8
  %i.cf = load i32, ptr %1, align 8               ; 3 uses
  %i.cg = and i32 %i.cf, 1
  %.not.i.i11 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_jEEEESC_jSE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit
  %i.ch = load i32, ptr %i.j, align 8, !tbaa !199 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cj = load ptr, ptr %i.c, align 8, !tbaa !199
  %i.ck = zext i32 %i.ch to i64                   ; 2 uses
  %i.cl = mul nuw nsw i64 %i.ck, 24
  %i.cm = add nuw nsw i64 %i.ck, 31
  %i.cn = lshr i64 %i.cm, 3
  %i.co = and i64 %i.cn, 1073741820
  %i.cp = add nuw nsw i64 %i.co, %i.cl
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cj, i64 noundef %i.cp, i64 noundef 8) #23
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE4killEv.exit

_ZN4llvm13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_jEEEESC_jSE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.cq = phi i32 [ %i.cf, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapISt4pairIPKNS_12DISubprogramEPKNS_10DILocationEEjLj4ENS_12DenseMapInfoISC_vEENS_6detail12DenseMapPairISC_jEEEESC_jSE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit ], [ %i.cf, %bb.c ], [ %.pre.i, %bb.d ]
  %i.cr = and i32 %i.cq, -2
  store i32 %i.cr, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_6DINode7DIFlagsELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #23
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !52
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !52
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !205
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !23
  %i.e = zext i16 %i.d to i32
  %i.f = icmp eq i32 %i.b, %i.e
  br i1 %i.f, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_13GenericDINodeEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !208
  %i.i = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %1, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  br label %_ZNK4llvm13GenericDINode12getRawHeaderEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.j, 2
  %i.o = and i64 %i.n, 15
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  br label %_ZNK4llvm13GenericDINode12getRawHeaderEv.exit.i

_ZNK4llvm13GenericDINode12getRawHeaderEv.exit.i:  ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ]
  %i.r = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !53
  %i.s = icmp eq ptr %i.h, %i.r
  br i1 %i.s, label %bb.e, label %_ZNK4llvm13MDNodeKeyImplINS_13GenericDINodeEE7isKeyOfEPKS1_.exit

bb.e:                                             ; preds = %_ZNK4llvm13GenericDINode12getRawHeaderEv.exit.i
  %i.t = tail call noundef zeroext i1 @_ZNK4llvm12MDNodeOpsKey10compareOpsINS_13GenericDINodeEEEbPKT_j(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, i32 noundef 1)
  br label %_ZNK4llvm13MDNodeKeyImplINS_13GenericDINodeEE7isKeyOfEPKS1_.exit

_ZNK4llvm13MDNodeKeyImplINS_13GenericDINodeEE7isKeyOfEPKS1_.exit: ; preds = %bb.e, %_ZNK4llvm13GenericDINode12getRawHeaderEv.exit.i, %bb.a
  %i.u = phi i1 [ false, %_ZNK4llvm13GenericDINode12getRawHeaderEv.exit.i ], [ false, %bb.a ], [ %i.t, %bb.e ]
  ret i1 %i.u
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm12MDNodeOpsKey10compareOpsINS_13GenericDINodeEEEbPKT_j(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !201
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !58
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %_ZN4llvm12MDNodeOpsKey10compareOpsINS_9MDOperandEEEbNS_8ArrayRefIT_EEPKNS_6MDNodeEj.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !81   ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.810", align 4   ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !209, !noalias !1622 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !221, !noalias !1622 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !222, !noalias !1622 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !224    ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.j, 2
  %i.o = and i64 %i.n, 15
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  br label %_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ]
  %.in5.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.r = load i32, ptr %.in5.i, align 4, !tbaa !58
  %.in.in.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.in.i = load i16, ptr %.in.in.i, align 2, !tbaa !23
  %i.s = zext i16 %.in.i to i32
  %i.t = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 %i.r, ptr %3, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.s, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.t, ptr %i.v, align 4
  %i.w = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.x = trunc i64 %i.w to i32
  %i.y = xor i32 %i.x, -313160499
  %.024 = and i32 %i.y, %i.g                      ; 3 uses
  %i.z = zext i32 %.024 to i64                    ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = lshr i64 %i.z, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !131
  %i.ae = and i32 %.024, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit
  %i.ah = load ptr, ptr %1, align 8, !tbaa !224
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.ai = add nuw i32 %.025, 1
  %.0 = and i32 %i.ai, %i.g                       ; 3 uses
  %i.aj = zext i32 %.0 to i64                     ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aj ; 2 uses
  %i.al = lshr i64 %i.aj, 5
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !131
  %i.ao = and i32 %.0, 31
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %bb.f, label %.thread, !prof !147, !llvm.loop !1619

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.ar = phi ptr [ %i.aa, %.lr.ph ], [ %i.ak, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !224
  %i.at = icmp eq ptr %i.ah, %i.as                ; 3 uses
  br i1 %i.at, label %.thread, label %bb.e, !prof !121

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.aa, %_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.ak, %bb.e ], [ %i.ar, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.at, %bb.e ], [ %i.at, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1620
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.98", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !222
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !209
  store ptr %i.y, ptr %i.q, align 8, !tbaa !221
  store i32 0, ptr %i.p, align 16, !tbaa !1621
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1620
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.810", align 4   ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !209
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !221
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !222  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !221  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !209
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !222
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.r, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.s = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.r, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.t = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !224  ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = and i64 %i.z, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 -32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ad = lshr i64 %i.z, 2
  %i.ae = and i64 %i.ad, 15
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.af
  br label %_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i.i.i = phi ptr [ %i.ag, %bb.e ], [ %i.ac, %bb.d ]
  %.in5.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ah = load i32, ptr %.in5.i.i, align 4, !tbaa !58
  %.in.in.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %.in.i.i = load i16, ptr %.in.in.i.i, align 2, !tbaa !23
  %i.ai = zext i16 %.in.i.i to i32
  %i.aj = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %i.ah, ptr %2, align 4
  store i32 %i.ai, ptr %i.o, align 4
  store ptr %i.aj, ptr %i.p, align 4
  %i.ak = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.al = trunc i64 %i.ak to i32
  %i.am = xor i32 %i.al, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.am, %_ZN4llvm10MDNodeInfoINS_13GenericDINodeEE12getHashValueEPKS1_.exit.i ], [ %i.au, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.an = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ao = lshr i64 %i.an, 5                       ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !131 ; 2 uses
  %i.ar = and i32 %.0.i7, 31                      ; 2 uses
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = trunc i32 %i.as to i1
  %i.au = add i32 %.0.i7, 1
  br i1 %i.at, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1627

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ao
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.an
  %i.ax = load ptr, ptr %i.w, align 8, !tbaa !224
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !224
  %i.ay = shl nuw i32 1, %i.ar
  %i.az = or i32 %i.ay, %i.aq
  store i32 %i.az, ptr %i.av, align 4, !tbaa !131
  %i.ba = add i32 %.0.i18, -1
  %i.bb = and i32 %i.ba, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1628

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1629

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !222
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !1621
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !1621
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bh = load ptr, ptr %1, align 8, !tbaa !209
  %i.bi = zext i32 %i.bc to i64                   ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bi, 31
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 1073741820
  %i.bn = add nuw nsw i64 %i.bm, %i.bj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bh, i64 noundef %i.bn, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !222
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13GenericDINodeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6doFindINS_13MDNodeKeyImplIS2_EEEEPKS9_RKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.790", align 8   ; 6 uses
  %3 = alloca %"struct.std::array.790", align 8   ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !252, !noalias !1630 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1635, !noalias !1630 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !255, !noalias !1630 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !242    ; 4 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %i.h, align 4, !tbaa !95
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.d, label %.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !265  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !340  ; 3 uses
  %i.p = icmp ult i32 %i.o, 65
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.m, align 8, !tbaa !199
  %i.r = icmp eq i32 %i.o, 0
  %i.s = sub nuw nsw i32 64, %i.o
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = shl i64 %i.q, %i.t
  %i.v = ashr exact i64 %i.u, %i.t
  %.0.i.i.i.i.i = select i1 %i.r, i64 0, i64 %i.v
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !199
  %i.x = load i64, ptr %i.w, align 8, !tbaa !44
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i64 [ %.0.i.i.i.i.i, %bb.e ], [ %i.x, %bb.f ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 %.0.i.i.i.i, ptr %3, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load <2 x ptr>, ptr %i.y, align 8, !tbaa !234
  store <2 x ptr> %i.ab, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !234
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit

.thread.i.i:                                      ; preds = %bb.c, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.h, ptr %2, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load <2 x ptr>, ptr %i.af, align 8, !tbaa !234
  store <2 x ptr> %i.ai, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !234
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit

_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit: ; preds = %bb.g, %.thread.i.i
  %.1.in.in.i.i = phi i64 [ %i.al, %.thread.i.i ], [ %i.ae, %bb.g ]
  %.1.in.i.i = trunc i64 %.1.in.in.i.i to i32
  %.1.i.i = xor i32 %.1.in.i.i, -313160499
  %.019 = and i32 %.1.i.i, %i.g                   ; 3 uses
  %i.am = zext i32 %.019 to i64                   ; 2 uses
  %i.an = lshr i64 %i.am, 5
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !131
  %i.aq = and i32 %.019, 31
  %i.ar = lshr i32 %i.ap, %i.aq
  %i.as = trunc i32 %i.ar to i1
  br i1 %i.as, label %.lr.ph, label %.thread, !prof !146

bb.h:                                             ; preds = %.lr.ph
end_hunk_3
begin_hunk_4_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !340 ; 3 uses
  %i.ad = icmp ult i32 %i.ac, 65
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !199
  %i.af = icmp eq i32 %i.ac, 0
  %i.ag = sub nuw nsw i32 64, %i.ac
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = shl i64 %i.ae, %i.ah
  %i.aj = ashr exact i64 %i.ai, %i.ah
  %.0.i.i.i.i.i = select i1 %i.af, i64 0, i64 %i.aj
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.aa, align 8, !tbaa !199
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i64 [ %.0.i.i.i.i.i, %bb.g ], [ %i.al, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i64 %.0.i.i.i.i, ptr %4, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.r, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.t, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.v, ptr %i.ao, align 8
  %i.ap = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %4, i64 noundef 32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit

.thread.i.i:                                      ; preds = %bb.e, %_ZN4llvm13MDNodeKeyImplINS_10DISubrangeEEC2EPKS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.s, ptr %3, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.r, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.t, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.v, ptr %i.as, align 8
  %i.at = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit: ; preds = %bb.i, %.thread.i.i
  %.1.in.in.i.i = phi i64 [ %i.at, %.thread.i.i ], [ %i.ap, %bb.i ]
  %.1.in.i.i = trunc i64 %.1.in.in.i.i to i32
  %.1.i.i = xor i32 %.1.in.i.i, -313160499
  %.024 = and i32 %.1.i.i, %i.g                   ; 3 uses
  %i.au = zext i32 %.024 to i64                   ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.au ; 2 uses
  %i.aw = lshr i64 %i.au, 5
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !131
  %i.az = and i32 %.024, 31
  %i.ba = lshr i32 %i.ay, %i.az
  %i.bb = trunc i32 %i.ba to i1
  br i1 %i.bb, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit
  %i.bc = load ptr, ptr %1, align 8, !tbaa !256
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.bd = add nuw i32 %.025, 1
  %.0 = and i32 %i.bd, %i.g                       ; 3 uses
  %i.be = zext i32 %.0 to i64                     ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.be ; 2 uses
  %i.bg = lshr i64 %i.be, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !131
  %i.bj = and i32 %.0, 31
  %i.bk = lshr i32 %i.bi, %i.bj
  %i.bl = trunc i32 %i.bk to i1
  br i1 %i.bl, label %bb.k, label %.thread, !prof !147, !llvm.loop !1643

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %i.bm = phi ptr [ %i.av, %.lr.ph ], [ %i.bf, %bb.j ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.j ]
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !256
  %i.bo = icmp eq ptr %i.bc, %i.bn                ; 3 uses
  br i1 %i.bo, label %.thread, label %bb.j, !prof !121

.thread:                                          ; preds = %bb.k, %bb.j, %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa32.sink = phi ptr [ %i.av, %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.bf, %bb.j ], [ %i.bm, %bb.k ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.bo, %bb.j ], [ %i.bo, %bb.k ]
  store ptr %.lcssa32.sink, ptr %2, align 8, !tbaa !1636
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.102", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !255
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !252
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1635
  store i32 0, ptr %i.p, align 16, !tbaa !1637
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1636
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.790", align 8   ; 7 uses
  %3 = alloca %"struct.std::array.790", align 8   ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !252
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1635
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !255  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1635 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !252
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !255
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.v, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.w = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.v, %.lr.ph ], [ %i.bw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.x = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.y = or disjoint i32 %i.x, %i.w
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !256 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i64 %i.ad, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 -32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21
  br label %_ZN4llvm13MDNodeKeyImplINS_10DISubrangeEEC2EPKS1_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.ah = lshr i64 %i.ad, 2
  %i.ai = and i64 %i.ah, 15
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aj
  br label %_ZN4llvm13MDNodeKeyImplINS_10DISubrangeEEC2EPKS1_.exit.i.i

_ZN4llvm13MDNodeKeyImplINS_10DISubrangeEEC2EPKS1_.exit.i.i: ; preds = %bb.e, %bb.d
  %.pn.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.ag, %bb.d ] ; 4 uses
  %.in8.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  %i.al = load ptr, ptr %.in8.i.i, align 8, !tbaa !53 ; 2 uses
  %i.am = load ptr, ptr %.pn.i.i, align 8, !tbaa !53 ; 4 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.an = load ptr, ptr %.in.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm13MDNodeKeyImplINS_10DISubrangeEEC2EPKS1_.exit.i.i
  %i.aq = load i8, ptr %i.am, align 4, !tbaa !95
  %i.ar = icmp eq i8 %i.aq, 1
  br i1 %i.ar, label %bb.g, label %.thread.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !265 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !340 ; 3 uses
  %i.ax = icmp ult i32 %i.aw, 65
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load i64, ptr %i.au, align 8, !tbaa !199
  %i.az = icmp eq i32 %i.aw, 0
  %i.ba = sub nuw nsw i32 64, %i.aw
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = shl i64 %i.ay, %i.bb
  %i.bd = ashr exact i64 %i.bc, %i.bb
  %.0.i.i.i.i.i.i = select i1 %i.az, i64 0, i64 %i.bd
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !199
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !44
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i, %bb.h ], [ %i.bf, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 %.0.i.i.i.i.i, ptr %3, align 8
  store ptr %i.al, ptr %i.o, align 8
  store ptr %i.an, ptr %i.p, align 8
  store ptr %i.ap, ptr %i.q, align 8
  %i.bg = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit.i

.thread.i.i.i:                                    ; preds = %bb.f, %_ZN4llvm13MDNodeKeyImplINS_10DISubrangeEEC2EPKS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.am, ptr %2, align 8
  store ptr %i.al, ptr %i.r, align 8
  store ptr %i.an, ptr %i.s, align 8
  store ptr %i.ap, ptr %i.t, align 8
  %i.bh = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit.i: ; preds = %.thread.i.i.i, %bb.j
  %.1.in.in.i.i.i = phi i64 [ %i.bh, %.thread.i.i.i ], [ %i.bg, %bb.j ]
  %.1.in.i.i.i = trunc i64 %.1.in.in.i.i.i to i32
  %.1.i.i.i = xor i32 %.1.in.i.i.i, -313160499
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit.i
  %.1.i.i.pn.i = phi i32 [ %.1.i.i.i, %_ZN4llvm10MDNodeInfoINS_10DISubrangeEE12getHashValueEPKS1_.exit.i ], [ %i.bp, %bb.k ]
  %.0.i7 = and i32 %.1.i.i.pn.i, %i.k             ; 3 uses
  %i.bi = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.bj = lshr i64 %i.bi, 5                       ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !131 ; 2 uses
  %i.bm = and i32 %.0.i7, 31                      ; 2 uses
  %i.bn = lshr i32 %i.bl, %i.bm
  %i.bo = trunc i32 %i.bn to i1
  %i.bp = add i32 %.0.i7, 1
  br i1 %i.bo, label %bb.k, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1644

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bj
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bi
  %i.bs = load ptr, ptr %i.aa, align 8, !tbaa !256
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !256
  %i.bt = shl nuw i32 1, %i.bm
  %i.bu = or i32 %i.bt, %i.bl
  store i32 %i.bu, ptr %i.bq, align 4, !tbaa !131
  %i.bv = add i32 %.0.i18, -1
  %i.bw = and i32 %i.bv, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bw, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1645

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1646

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !255
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bx = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !1637
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !1637
  %i.cb = icmp eq i32 %i.bx, 0
  br i1 %i.cb, label %_ZN4llvm8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.cc = load ptr, ptr %1, align 8, !tbaa !252
  %i.cd = zext i32 %i.bx to i64                   ; 2 uses
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = add nuw nsw i64 %i.cd, 31
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = and i64 %i.cg, 1073741820
  %i.ci = add nuw nsw i64 %i.ch, %i.ce
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cc, i64 noundef %i.ci, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !255
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_10DISubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.l
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6doFindINS_13MDNodeKeyImplIS2_EEEEPKS9_RKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.790", align 8   ; 6 uses
  %3 = alloca %"struct.std::array.790", align 8   ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !278, !noalias !1647 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1652, !noalias !1647 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !281, !noalias !1647 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !268    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i, label %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i

_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i: ; preds = %bb.b
  %i.i = load i8, ptr %i.h, align 4, !tbaa !95
  %i.j = icmp eq i8 %i.i, 1
  br i1 %i.j, label %bb.c, label %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i

bb.c:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !265  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !340  ; 3 uses
  %i.p = icmp ult i32 %i.o, 65
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.m, align 8, !tbaa !199
  %i.r = icmp eq i32 %i.o, 0
  %i.s = sub nuw nsw i32 64, %i.o
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = shl i64 %i.q, %i.t
  %i.v = ashr exact i64 %i.u, %i.t
  %.0.i.i.i.i.i = select i1 %i.r, i64 0, i64 %i.v
  br label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i

bb.e:                                             ; preds = %bb.c
end_hunk_4
begin_hunk_5_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !340 ; 3 uses
  %i.ad = icmp ult i32 %i.ac, 65
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !199
  %i.af = icmp eq i32 %i.ac, 0
  %i.ag = sub nuw nsw i32 64, %i.ac
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = shl i64 %i.ae, %i.ah
  %i.aj = ashr exact i64 %i.ai, %i.ah
  %.0.i.i.i.i.i = select i1 %i.af, i64 0, i64 %i.aj
  br label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.aa, align 8, !tbaa !199
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !44
  br label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i

_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i:  ; preds = %bb.g, %bb.f
  %.0.i.i5.i.i = phi i64 [ %.0.i.i.i.i.i, %bb.f ], [ %i.al, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i64 %.0.i.i5.i.i, ptr %4, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.r, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.t, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.v, ptr %i.ao, align 8
  %i.ap = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %4, i64 noundef 32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit

_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i, %_ZN4llvm13MDNodeKeyImplINS_17DIGenericSubrangeEEC2EPKS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.s, ptr %3, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.r, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.t, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.v, ptr %i.as, align 8
  %i.at = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit: ; preds = %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i, %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i
  %.0.in.in.i.i = phi i64 [ %i.ap, %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i ], [ %i.at, %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i ]
  %i.au = trunc i64 %.0.in.in.i.i to i32
  %.0.i.i = xor i32 %i.au, -313160499
  %.024 = and i32 %.0.i.i, %i.g                   ; 3 uses
  %i.av = zext i32 %.024 to i64                   ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.av ; 2 uses
  %i.ax = lshr i64 %i.av, 5
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !131
  %i.ba = and i32 %.024, 31
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = trunc i32 %i.bb to i1
  br i1 %i.bc, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit
  %i.bd = load ptr, ptr %1, align 8, !tbaa !282
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.be = add nuw i32 %.025, 1
  %.0 = and i32 %i.be, %i.g                       ; 3 uses
  %i.bf = zext i32 %.0 to i64                     ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bf ; 2 uses
  %i.bh = lshr i64 %i.bf, 5
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !131
  %i.bk = and i32 %.0, 31
  %i.bl = lshr i32 %i.bj, %i.bk
  %i.bm = trunc i32 %i.bl to i1
  br i1 %i.bm, label %bb.i, label %.thread, !prof !147, !llvm.loop !1660

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %i.bn = phi ptr [ %i.aw, %.lr.ph ], [ %i.bg, %bb.h ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.h ]
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !282
  %i.bp = icmp eq ptr %i.bd, %i.bo                ; 3 uses
  br i1 %i.bp, label %.thread, label %bb.h, !prof !121

.thread:                                          ; preds = %bb.i, %bb.h, %_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa32.sink = phi ptr [ %i.aw, %_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.bg, %bb.h ], [ %i.bn, %bb.i ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.bp, %bb.h ], [ %i.bp, %bb.i ]
  store ptr %.lcssa32.sink, ptr %2, align 8, !tbaa !1653
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.194", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !281
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !278
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1652
  store i32 0, ptr %i.p, align 16, !tbaa !1654
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1653
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.790", align 8   ; 7 uses
  %3 = alloca %"struct.std::array.790", align 8   ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !278
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1652
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !281  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1652 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !278
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !281
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.v, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.w = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.v, %.lr.ph ], [ %i.bx, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.x = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.y = or disjoint i32 %i.x, %i.w
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !282 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i64 %i.ad, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 -32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21
  br label %_ZN4llvm13MDNodeKeyImplINS_17DIGenericSubrangeEEC2EPKS1_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.ah = lshr i64 %i.ad, 2
  %i.ai = and i64 %i.ah, 15
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aj
  br label %_ZN4llvm13MDNodeKeyImplINS_17DIGenericSubrangeEEC2EPKS1_.exit.i.i

_ZN4llvm13MDNodeKeyImplINS_17DIGenericSubrangeEEC2EPKS1_.exit.i.i: ; preds = %bb.e, %bb.d
  %.pn.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.ag, %bb.d ] ; 4 uses
  %.in8.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  %i.al = load ptr, ptr %.in8.i.i, align 8, !tbaa !53 ; 2 uses
  %i.am = load ptr, ptr %.pn.i.i, align 8, !tbaa !53 ; 4 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.an = load ptr, ptr %.in.i.i, align 8, !tbaa !53 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i.i, label %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i.i

_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i.i: ; preds = %_ZN4llvm13MDNodeKeyImplINS_17DIGenericSubrangeEEC2EPKS1_.exit.i.i
  %i.aq = load i8, ptr %i.am, align 4, !tbaa !95
  %i.ar = icmp eq i8 %i.aq, 1
  br i1 %i.ar, label %bb.f, label %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i.i

bb.f:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !265 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !340 ; 3 uses
  %i.ax = icmp ult i32 %i.aw, 65
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = load i64, ptr %i.au, align 8, !tbaa !199
  %i.az = icmp eq i32 %i.aw, 0
  %i.ba = sub nuw nsw i32 64, %i.aw
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = shl i64 %i.ay, %i.bb
  %i.bd = ashr exact i64 %i.bc, %i.bb
  %.0.i.i.i.i.i.i = select i1 %i.az, i64 0, i64 %i.bd
  br label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !199
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !44
  br label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i.i

_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i5.i.i.i = phi i64 [ %.0.i.i.i.i.i.i, %bb.g ], [ %i.bf, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 %.0.i.i5.i.i.i, ptr %3, align 8
  store ptr %i.al, ptr %i.o, align 8
  store ptr %i.an, ptr %i.p, align 8
  store ptr %i.ap, ptr %i.q, align 8
  %i.bg = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit.i

_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i.i: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i.i.i, %_ZN4llvm13MDNodeKeyImplINS_17DIGenericSubrangeEEC2EPKS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.am, ptr %2, align 8
  store ptr %i.al, ptr %i.r, align 8
  store ptr %i.an, ptr %i.s, align 8
  store ptr %i.ap, ptr %i.t, align 8
  %i.bh = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit.i: ; preds = %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i.i, %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i.i
  %.0.in.in.i.i.i = phi i64 [ %i.bg, %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i.i.i ], [ %i.bh, %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.thread.i.i.i ]
  %i.bi = trunc i64 %.0.in.in.i.i.i to i32
  %.0.i.i.i = xor i32 %i.bi, -313160499
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit.i
  %.0.i.i.pn.i = phi i32 [ %.0.i.i.i, %_ZN4llvm10MDNodeInfoINS_17DIGenericSubrangeEE12getHashValueEPKS1_.exit.i ], [ %i.bq, %bb.i ]
  %.0.i7 = and i32 %.0.i.i.pn.i, %i.k             ; 3 uses
  %i.bj = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.bk = lshr i64 %i.bj, 5                       ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !131 ; 2 uses
  %i.bn = and i32 %.0.i7, 31                      ; 2 uses
  %i.bo = lshr i32 %i.bm, %i.bn
  %i.bp = trunc i32 %i.bo to i1
  %i.bq = add i32 %.0.i7, 1
  br i1 %i.bp, label %bb.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1661

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.i
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bk
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bj
  %i.bt = load ptr, ptr %i.aa, align 8, !tbaa !282
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !282
  %i.bu = shl nuw i32 1, %i.bn
  %i.bv = or i32 %i.bu, %i.bm
  store i32 %i.bv, ptr %i.br, align 4, !tbaa !131
  %i.bw = add i32 %.0.i18, -1
  %i.bx = and i32 %i.bw, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bx, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1662

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1663

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !281
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.by = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !1654
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !1654
  %i.cc = icmp eq i32 %i.by, 0
  br i1 %i.cc, label %_ZN4llvm8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.cd = load ptr, ptr %1, align 8, !tbaa !278
  %i.ce = zext i32 %i.by to i64                   ; 2 uses
  %i.cf = shl nuw nsw i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.ce, 31
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = and i64 %i.ch, 1073741820
  %i.cj = add nuw nsw i64 %i.ci, %i.cf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cd, i64 noundef %i.cj, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !281
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_17DIGenericSubrangeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm13MDNodeKeyImplINS_14DISubrangeTypeEE12getHashValueEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::array.854", align 4   ; 9 uses
  %2 = alloca %"struct.std::array.853", align 4   ; 5 uses
  %3 = alloca %"struct.std::array.853", align 4   ; 5 uses
  %4 = alloca %"struct.std::array.853", align 4   ; 5 uses
  %5 = alloca %"struct.std::array.853", align 4   ; 5 uses
  %6 = alloca %"struct.std::array.853", align 4   ; 5 uses
  %7 = alloca %"struct.std::array.853", align 4   ; 5 uses
  %8 = alloca %"struct.std::array.853", align 4   ; 5 uses
  %9 = alloca %"struct.std::array.853", align 4   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !304  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.b, align 4, !tbaa !95
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i, label %bb.e

_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !265  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !340  ; 3 uses
  %i.j = icmp ult i32 %i.i, 65
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i
  %i.k = load i64, ptr %i.g, align 8, !tbaa !199
  %i.l = icmp eq i32 %i.i, 0
  %i.m = sub nuw nsw i32 64, %i.i
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = shl i64 %i.k, %i.n
  %i.p = ashr exact i64 %i.o, %i.n
  %.0.i.i.i.i = select i1 %i.l, i64 0, i64 %i.p
  br label %_ZNK4llvm11ConstantInt12getSExtValueEv.exit.i

bb.d:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_18ConstantAsMetadataENS_8MetadataEEEDaPT0_.exit.i
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !199
  %i.r = load i64, ptr %i.q, align 8, !tbaa !44
end_hunk_5
begin_hunk_6_@_ZN4llvm13MDNodeKeyImplINS_14DISubrangeTypeEEC2EPKS1_:bb.a

bb.m:                                             ; preds = %_ZNK4llvm14DISubrangeType14getRawBaseTypeEv.exit
  %i.bv = getelementptr inbounds i8, ptr %1, i64 -32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !21
  br label %_ZNK4llvm14DISubrangeType16getRawLowerBoundEv.exit

bb.n:                                             ; preds = %_ZNK4llvm14DISubrangeType14getRawBaseTypeEv.exit
  %i.bx = lshr i64 %i.bt, 2
  %i.by = and i64 %i.bx, 15
  %i.bz = sub nsw i64 0, %i.by
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bz
  br label %_ZNK4llvm14DISubrangeType16getRawLowerBoundEv.exit

_ZNK4llvm14DISubrangeType16getRawLowerBoundEv.exit: ; preds = %bb.m, %bb.n
  %.sroa.0.0.i.i.i24 = phi ptr [ %i.ca, %bb.n ], [ %i.bw, %bb.m ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i24, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !53
  store ptr %i.cc, ptr %i.bs, align 8, !tbaa !304
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ce = load i64, ptr %i.a, align 8             ; 2 uses
  %i.cf = and i64 %i.ce, 2
  %.not.i.i.i25 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i25, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK4llvm14DISubrangeType16getRawLowerBoundEv.exit
  %i.cg = getelementptr inbounds i8, ptr %1, i64 -32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !21
  br label %_ZNK4llvm14DISubrangeType16getRawUpperBoundEv.exit

bb.p:                                             ; preds = %_ZNK4llvm14DISubrangeType16getRawLowerBoundEv.exit
  %i.ci = lshr i64 %i.ce, 2
  %i.cj = and i64 %i.ci, 15
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ck
  br label %_ZNK4llvm14DISubrangeType16getRawUpperBoundEv.exit

_ZNK4llvm14DISubrangeType16getRawUpperBoundEv.exit: ; preds = %bb.o, %bb.p
  %.sroa.0.0.i.i.i27 = phi ptr [ %i.cl, %bb.p ], [ %i.ch, %bb.o ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i27, i64 56
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !53
  store ptr %i.cn, ptr %i.cd, align 8, !tbaa !305
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cp = load i64, ptr %i.a, align 8             ; 2 uses
  %i.cq = and i64 %i.cp, 2
  %.not.i.i.i28 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i28, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK4llvm14DISubrangeType16getRawUpperBoundEv.exit
  %i.cr = getelementptr inbounds i8, ptr %1, i64 -32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !21
  br label %_ZNK4llvm14DISubrangeType12getRawStrideEv.exit

bb.r:                                             ; preds = %_ZNK4llvm14DISubrangeType16getRawUpperBoundEv.exit
  %i.ct = lshr i64 %i.cp, 2
  %i.cu = and i64 %i.ct, 15
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cv
  br label %_ZNK4llvm14DISubrangeType12getRawStrideEv.exit

_ZNK4llvm14DISubrangeType12getRawStrideEv.exit:   ; preds = %bb.q, %bb.r
  %.sroa.0.0.i.i.i30 = phi ptr [ %i.cw, %bb.r ], [ %i.cs, %bb.q ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i30, i64 64
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !53
  store ptr %i.cy, ptr %i.co, align 8, !tbaa !306
  %i.cz = load i64, ptr %i.a, align 8             ; 2 uses
  %i.da = and i64 %i.cz, 2
  %.not.i.i.i31 = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i31, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK4llvm14DISubrangeType12getRawStrideEv.exit
  %i.db = getelementptr inbounds i8, ptr %1, i64 -32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !21
  br label %_ZNK4llvm14DISubrangeType10getRawBiasEv.exit

bb.t:                                             ; preds = %_ZNK4llvm14DISubrangeType12getRawStrideEv.exit
  %i.dd = lshr i64 %i.cz, 2
  %i.de = and i64 %i.dd, 15
  %i.df = sub nsw i64 0, %i.de
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.df
  br label %_ZNK4llvm14DISubrangeType10getRawBiasEv.exit

_ZNK4llvm14DISubrangeType10getRawBiasEv.exit:     ; preds = %bb.s, %bb.t
  %.sroa.0.0.i.i.i33 = phi ptr [ %i.dg, %bb.t ], [ %i.dc, %bb.s ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i33, i64 72
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !53
  store ptr %i.dj, ptr %i.dh, align 8, !tbaa !307
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.198", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !321
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !308
  store ptr %i.y, ptr %i.q, align 8, !tbaa !320
  store i32 0, ptr %i.p, align 16, !tbaa !1671
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1670
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.llvm::MDNodeKeyImpl.403", align 8 ; 15 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !308
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !320
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !321  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !320  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !308
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !321
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !131 ; 2 uses
  %.not11.i17 = icmp eq i32 %i.aa, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ab = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.aa, %.lr.ph ], [ %i.ev, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DISubrangeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.ac = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.ad = or disjoint i32 %i.ac, %i.ab
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !323 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -16 ; 18 uses
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = and i64 %i.ai, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 -32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !21
  br label %_ZNK4llvm6DIType10getRawNameEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.am = lshr i64 %i.ai, 2
  %i.an = and i64 %i.am, 15
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ao
  br label %_ZNK4llvm6DIType10getRawNameEv.exit.i

_ZNK4llvm6DIType10getRawNameEv.exit.i:            ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.ap, %bb.e ], [ %i.al, %bb.d ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !53
  store ptr %i.ar, ptr %2, align 8, !tbaa !295
  %i.as = load i8, ptr %i.ag, align 8, !tbaa !95
  %i.at = icmp eq i8 %i.as, 16
  br i1 %i.at, label %_ZNK4llvm7DIScope10getRawFileEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit.i
  %i.au = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.av = and i64 %i.au, 2
  %.not.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds i8, ptr %i.ag, i64 -32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.ay = lshr i64 %i.au, 2
  %i.az = and i64 %i.ay, 15
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ba
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i:          ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.bb, %bb.h ], [ %i.ax, %bb.g ]
  %i.bc = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !tbaa !53
  br label %_ZNK4llvm7DIScope10getRawFileEv.exit.i

_ZNK4llvm7DIScope10getRawFileEv.exit.i:           ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit.i.i, %_ZNK4llvm6DIType10getRawNameEv.exit.i
  %i.bd = phi ptr [ %i.bc, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i ], [ %i.ag, %_ZNK4llvm6DIType10getRawNameEv.exit.i ]
  store ptr %i.bd, ptr %i.o, align 8, !tbaa !297
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !291
  store i32 %i.bf, ptr %i.p, align 8, !tbaa !298
  %i.bg = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.bh = and i64 %i.bg, 2
  %.not.i.i.i13.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.i13.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm7DIScope10getRawFileEv.exit.i
  %i.bi = getelementptr inbounds i8, ptr %i.ag, i64 -32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !21
  br label %_ZNK4llvm6DIType11getRawScopeEv.exit.i

bb.j:                                             ; preds = %_ZNK4llvm7DIScope10getRawFileEv.exit.i
  %i.bk = lshr i64 %i.bg, 2
  %i.bl = and i64 %i.bk, 15
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bm
  br label %_ZNK4llvm6DIType11getRawScopeEv.exit.i

_ZNK4llvm6DIType11getRawScopeEv.exit.i:           ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i.i15.i = phi ptr [ %i.bn, %bb.j ], [ %i.bj, %bb.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i15.i, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !53
  store ptr %i.bp, ptr %i.q, align 8, !tbaa !299
  %i.bq = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.br = and i64 %i.bq, 2
  %.not.i.i.i16.i = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i16.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm6DIType11getRawScopeEv.exit.i
  %i.bs = getelementptr inbounds i8, ptr %i.ag, i64 -32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !21
  br label %_ZNK4llvm6DIType16getRawSizeInBitsEv.exit.i

bb.l:                                             ; preds = %_ZNK4llvm6DIType11getRawScopeEv.exit.i
  %i.bu = lshr i64 %i.bq, 2
  %i.bv = and i64 %i.bu, 15
  %i.bw = sub nsw i64 0, %i.bv
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bw
  br label %_ZNK4llvm6DIType16getRawSizeInBitsEv.exit.i

_ZNK4llvm6DIType16getRawSizeInBitsEv.exit.i:      ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i.i18.i = phi ptr [ %i.bx, %bb.l ], [ %i.bt, %bb.k ]
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i18.i, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !53
  store ptr %i.bz, ptr %i.r, align 8, !tbaa !300
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !23
  %i.cc = icmp eq i16 %i.cb, 17152
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = select i1 %i.cc, i32 0, i32 %i.ce
  store i32 %i.cf, ptr %i.s, align 8, !tbaa !301
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !293
  store i32 %i.ch, ptr %i.t, align 4, !tbaa !302
  %i.ci = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.cj = and i64 %i.ci, 2
  %.not.i.i.i19.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i.i19.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm6DIType16getRawSizeInBitsEv.exit.i
  %i.ck = getelementptr inbounds i8, ptr %i.ag, i64 -32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !21
  br label %_ZNK4llvm14DISubrangeType14getRawBaseTypeEv.exit.i

bb.n:                                             ; preds = %_ZNK4llvm6DIType16getRawSizeInBitsEv.exit.i
  %i.cm = lshr i64 %i.ci, 2
  %i.cn = and i64 %i.cm, 15
  %i.co = sub nsw i64 0, %i.cn
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.co
  br label %_ZNK4llvm14DISubrangeType14getRawBaseTypeEv.exit.i

_ZNK4llvm14DISubrangeType14getRawBaseTypeEv.exit.i: ; preds = %bb.n, %bb.m
  %.sroa.0.0.i.i.i21.i = phi ptr [ %i.cp, %bb.n ], [ %i.cl, %bb.m ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i21.i, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !53
  store ptr %i.cr, ptr %i.u, align 8, !tbaa !303
  %i.cs = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.ct = and i64 %i.cs, 2
  %.not.i.i.i22.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i22.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK4llvm14DISubrangeType14getRawBaseTypeEv.exit.i
  %i.cu = getelementptr inbounds i8, ptr %i.ag, i64 -32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !21
  br label %_ZNK4llvm14DISubrangeType16getRawLowerBoundEv.exit.i

bb.p:                                             ; preds = %_ZNK4llvm14DISubrangeType14getRawBaseTypeEv.exit.i
  %i.cw = lshr i64 %i.cs, 2
  %i.cx = and i64 %i.cw, 15
  %i.cy = sub nsw i64 0, %i.cx
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.cy
  br label %_ZNK4llvm14DISubrangeType16getRawLowerBoundEv.exit.i

_ZNK4llvm14DISubrangeType16getRawLowerBoundEv.exit.i: ; preds = %bb.p, %bb.o
  %.sroa.0.0.i.i.i24.i = phi ptr [ %i.cz, %bb.p ], [ %i.cv, %bb.o ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i24.i, i64 48
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !53
  store ptr %i.db, ptr %i.v, align 8, !tbaa !304
  %i.dc = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.dd = and i64 %i.dc, 2
  %.not.i.i.i25.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i25.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK4llvm14DISubrangeType16getRawLowerBoundEv.exit.i
  %i.de = getelementptr inbounds i8, ptr %i.ag, i64 -32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !21
  br label %_ZNK4llvm14DISubrangeType16getRawUpperBoundEv.exit.i

bb.r:                                             ; preds = %_ZNK4llvm14DISubrangeType16getRawLowerBoundEv.exit.i
  %i.dg = lshr i64 %i.dc, 2
  %i.dh = and i64 %i.dg, 15
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.di
  br label %_ZNK4llvm14DISubrangeType16getRawUpperBoundEv.exit.i

_ZNK4llvm14DISubrangeType16getRawUpperBoundEv.exit.i: ; preds = %bb.r, %bb.q
  %.sroa.0.0.i.i.i27.i = phi ptr [ %i.dj, %bb.r ], [ %i.df, %bb.q ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i27.i, i64 56
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !53
  store ptr %i.dl, ptr %i.w, align 8, !tbaa !305
  %i.dm = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.dn = and i64 %i.dm, 2
  %.not.i.i.i28.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i28.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK4llvm14DISubrangeType16getRawUpperBoundEv.exit.i
  %i.do = getelementptr inbounds i8, ptr %i.ag, i64 -32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !21
  br label %_ZNK4llvm14DISubrangeType12getRawStrideEv.exit.i

bb.t:                                             ; preds = %_ZNK4llvm14DISubrangeType16getRawUpperBoundEv.exit.i
  %i.dq = lshr i64 %i.dm, 2
  %i.dr = and i64 %i.dq, 15
  %i.ds = sub nsw i64 0, %i.dr
end_hunk_6
begin_hunk_7_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.ab = phi ptr [ %i.k, %.lr.ph ], [ %i.u, %bb.c ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.c ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !361
  %i.ad = icmp eq ptr %i.r, %i.ac                 ; 3 uses
  br i1 %i.ad, label %.thread, label %bb.c, !prof !121

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ], [ %i.ab, %bb.d ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ad, %bb.c ], [ %i.ad, %bb.d ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1686
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm10MDNodeInfoINS_12DIEnumeratorEE12getHashValueEPKS1_(ptr noundef %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::array.810", align 8   ; 5 uses
  %2 = alloca %"struct.llvm::MDNodeKeyImpl.410", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !340  ; 2 uses
  store i32 %i.d, ptr %i.b, align 8, !tbaa !340
  %i.e = icmp ult i32 %i.d, 65
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !199
  store i64 %i.f, ptr %2, align 8, !tbaa !199
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %2, ptr noundef nonnull align 8 dereferenceable(12) %i.a) #23
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = and i64 %i.h, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  %i.j = getelementptr inbounds i8, ptr %0, i64 -32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  br label %_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEEC2EPKS1_.exit

bb.e:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  %i.l = lshr i64 %i.h, 2
  %i.m = and i64 %i.l, 15
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.n
  br label %_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEEC2EPKS1_.exit

_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEEC2EPKS1_.exit: ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.o, %bb.e ], [ %i.k, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !53
  store ptr %i.q, ptr %i.p, align 8, !tbaa !342
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !58
  %i.u = icmp ne i32 %i.t, 0
  %i.v = zext i1 %i.u to i8
  store i8 %i.v, ptr %i.r, align 8, !tbaa !344
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.w = call noundef i64 @_ZN4llvm10hash_valueERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(25) %2) #23
  store i64 %i.w, ptr %1, align 8
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !360
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.x, ptr %i.y, align 8
  %i.z = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %1, i64 noundef 16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.aa = load i32, ptr %i.b, align 8, !tbaa !340
  %i.ab = icmp ugt i32 %i.aa, 64
  br i1 %i.ab, label %bb.f, label %_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEED2Ev.exit

bb.f:                                             ; preds = %_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEEC2EPKS1_.exit
  %i.ac = load ptr, ptr %2, align 8, !tbaa !199   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #24
  br label %_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEED2Ev.exit

_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEED2Ev.exit: ; preds = %_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEEC2EPKS1_.exit, %bb.f, %bb.g
  %i.ae = trunc i64 %i.z to i32
  %i.af = xor i32 %i.ae, -313160499
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i32 %i.af
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.106", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !358
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !345
  store ptr %i.y, ptr %i.q, align 8, !tbaa !357
  store i32 0, ptr %i.p, align 16, !tbaa !1687
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1686
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.810", align 8   ; 5 uses
  %3 = alloca %"struct.llvm::MDNodeKeyImpl.410", align 8 ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !345
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !357
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !358  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !357  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !345
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !358
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.t, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.u = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.t, %.lr.ph ], [ %i.bq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.v = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.w = or disjoint i32 %i.v, %i.u
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !361  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !340 ; 2 uses
  store i32 %i.ac, ptr %i.o, align 8, !tbaa !340
  %i.ad = icmp ult i32 %i.ac, 65
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !199
  store i64 %i.ae, ptr %3, align 8, !tbaa !199
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i.i

bb.e:                                             ; preds = %bb.c
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.aa) #23
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i.i

_ZN4llvm5APIntC2ERKS0_.exit.i.i:                  ; preds = %bb.e, %bb.d
  %i.af = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = and i64 %i.ag, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.z, i64 -32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !21
  br label %_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEEC2EPKS1_.exit.i

bb.g:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i.i
  %i.ak = lshr i64 %i.ag, 2
  %i.al = and i64 %i.ak, 15
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.am
  br label %_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEEC2EPKS1_.exit.i

_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEEC2EPKS1_.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.an, %bb.g ], [ %i.aj, %bb.f ]
  %i.ao = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !tbaa !53
  store ptr %i.ao, ptr %i.p, align 8, !tbaa !342
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !58
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i8
  store i8 %i.as, ptr %i.q, align 8, !tbaa !344
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.at = call noundef i64 @_ZN4llvm10hash_valueERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(25) %3) #23
  store i64 %i.at, ptr %2, align 8
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !360
  store ptr %i.au, ptr %i.r, align 8
  %i.av = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.aw = load i32, ptr %i.o, align 8, !tbaa !340
  %i.ax = icmp ugt i32 %i.aw, 64
  br i1 %i.ax, label %bb.h, label %_ZN4llvm10MDNodeInfoINS_12DIEnumeratorEE12getHashValueEPKS1_.exit

bb.h:                                             ; preds = %_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEEC2EPKS1_.exit.i
  %i.ay = load ptr, ptr %3, align 8, !tbaa !199   ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN4llvm10MDNodeInfoINS_12DIEnumeratorEE12getHashValueEPKS1_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.ay) #24
  br label %_ZN4llvm10MDNodeInfoINS_12DIEnumeratorEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_12DIEnumeratorEE12getHashValueEPKS1_.exit: ; preds = %_ZN4llvm13MDNodeKeyImplINS_12DIEnumeratorEEC2EPKS1_.exit.i, %bb.h, %bb.i
  %i.ba = trunc i64 %i.av to i32
  %i.bb = xor i32 %i.ba, -313160499
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZN4llvm10MDNodeInfoINS_12DIEnumeratorEE12getHashValueEPKS1_.exit
  %.pn.i = phi i32 [ %i.bb, %_ZN4llvm10MDNodeInfoINS_12DIEnumeratorEE12getHashValueEPKS1_.exit ], [ %i.bj, %bb.j ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.bc = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.bd = lshr i64 %i.bc, 5                       ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !131 ; 2 uses
  %i.bg = and i32 %.0.i7, 31                      ; 2 uses
  %i.bh = lshr i32 %i.bf, %i.bg
  %i.bi = trunc i32 %i.bh to i1
  %i.bj = add i32 %.0.i7, 1
  br i1 %i.bi, label %bb.j, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1693

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bd
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bc
  %i.bm = load ptr, ptr %i.y, align 8, !tbaa !361
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !361
  %i.bn = shl nuw i32 1, %i.bg
  %i.bo = or i32 %i.bn, %i.bf
  store i32 %i.bo, ptr %i.bk, align 4, !tbaa !131
  %i.bp = add i32 %.0.i18, -1
  %i.bq = and i32 %i.bp, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bq, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1694

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1695

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !358
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.br = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !1687
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !1687
  %i.bv = icmp eq i32 %i.br, 0
  br i1 %i.bv, label %_ZN4llvm8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bw = load ptr, ptr %1, align 8, !tbaa !345
  %i.bx = zext i32 %i.br to i64                   ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 3
  %i.bz = add nuw nsw i64 %i.bx, 31
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 1073741820
  %i.cc = add nuw nsw i64 %i.cb, %i.by
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bw, i64 noundef %i.cc, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !358
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIEnumeratorENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E7find_asINS_13MDNodeKeyImplIS2_EEEENS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEERKT_(ptr dead_on_unwind noalias writable sret(%"class.llvm::DenseMapIterator.881") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(68) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.883", align 4   ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !390, !noalias !1696 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1701, !noalias !1696 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !398, !noalias !1696 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.l = load i32, ptr %2, align 8, !tbaa !131
  store i32 %i.l, ptr %3, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.n = load <2 x ptr>, ptr %i.h, align 8, !tbaa !159
  store <2 x ptr> %i.n, ptr %i.m, align 4
  %i.o = load i32, ptr %i.i, align 8, !tbaa !131
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load <2 x ptr>, ptr %i.j, align 8, !tbaa !234
  store <2 x ptr> %i.r, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.t = load <2 x i32>, ptr %i.k, align 8, !tbaa !131
  store <2 x i32> %i.t, ptr %i.s, align 4
  %i.u = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 48) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.v = trunc i64 %i.u to i32
  %i.w = xor i32 %i.v, -313160499
  %.019.i.i = and i32 %i.w, %i.g                  ; 3 uses
  %i.x = zext i32 %.019.i.i to i64                ; 2 uses
  %i.y = lshr i64 %i.x, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !131
  %i.ab = and i32 %.019.i.i, 31
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %.lr.ph.i.i, label %.loopexit, !prof !146

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ae = add nuw i32 %.020.i.i, 1
  %.0.i.i = and i32 %i.ae, %i.g                   ; 3 uses
  %i.af = zext i32 %.0.i.i to i64                 ; 2 uses
  %i.ag = lshr i64 %i.af, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !131
  %i.aj = and i32 %.0.i.i, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i.i, label %.loopexit, !prof !147

end_hunk_7
begin_hunk_8_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a
  br label %_ZN4llvm10MDNodeInfoINS_11DIBasicTypeEE12getHashValueEPKS1_.exit

_ZNK4llvm6DIType10getRawNameEv.exit.i.thread.i:   ; preds = %bb.b
  %i.w = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !53   ; 2 uses
  %i.aa = load i8, ptr %i.h, align 8, !tbaa !95
  %i.ab = icmp eq i8 %i.aa, 16
  br i1 %i.ab, label %_ZN4llvm10MDNodeInfoINS_11DIBasicTypeEE12getHashValueEPKS1_.exit, label %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge.i

_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge.i: ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread.i
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !53
  br label %_ZN4llvm10MDNodeInfoINS_11DIBasicTypeEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_11DIBasicTypeEE12getHashValueEPKS1_.exit: ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit.i.i, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread6.i, %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread.i, %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge.i
  %.pn.i = phi ptr [ %i.x, %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread.i ], [ %i.x, %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge.i ], [ %i.q, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread6.i ], [ %i.q, %_ZNK4llvm6DIType10getRawNameEv.exit.i.i ] ; 2 uses
  %i.ad = phi ptr [ %i.z, %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread.i ], [ %i.z, %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge.i ], [ %i.s, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread6.i ], [ %i.s, %_ZNK4llvm6DIType10getRawNameEv.exit.i.i ]
  %i.ae = phi ptr [ %i.h, %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread.i ], [ %i.ac, %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge.i ], [ %i.v, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread6.i ], [ %i.h, %_ZNK4llvm6DIType10getRawNameEv.exit.i.i ]
  %.in8.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.af = load i32, ptr %.in8.i, align 8, !tbaa !291
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %i.ag = load ptr, ptr %.in.i, align 8, !tbaa !53
  %i.ah = zext i16 %i.j to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !53
  %i.ak = icmp eq i16 %i.j, 17152
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.am = load i32, ptr %i.al, align 4
  %i.an = select i1 %i.ak, i32 0, i32 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !403
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 %i.ah, ptr %3, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 4
  store ptr %i.ad, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 12
  store ptr %i.ae, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.af, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.ag, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.aj, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.an, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.ap, ptr %i.aw, align 4
  %i.ax = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 48) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ay = trunc i64 %i.ax to i32
  %i.az = xor i32 %i.ay, -313160499
  %.024 = and i32 %i.az, %i.g                     ; 3 uses
  %i.ba = zext i32 %.024 to i64                   ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ba ; 2 uses
  %i.bc = lshr i64 %i.ba, 5
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !131
  %i.bf = and i32 %.024, 31
  %i.bg = lshr i32 %i.be, %i.bf
  %i.bh = trunc i32 %i.bg to i1
  br i1 %i.bh, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_11DIBasicTypeEE12getHashValueEPKS1_.exit
  %i.bi = load ptr, ptr %1, align 8, !tbaa !401
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.bj = add nuw i32 %.025, 1
  %.0 = and i32 %i.bj, %i.g                       ; 3 uses
  %i.bk = zext i32 %.0 to i64                     ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bk ; 2 uses
  %i.bm = lshr i64 %i.bk, 5
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !131
  %i.bp = and i32 %.0, 31
  %i.bq = lshr i32 %i.bo, %i.bp
  %i.br = trunc i32 %i.bq to i1
  br i1 %i.br, label %bb.d, label %.thread, !prof !147, !llvm.loop !1718

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.bs = phi ptr [ %i.bb, %.lr.ph ], [ %i.bl, %bb.c ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.c ]
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !401
  %i.bu = icmp eq ptr %i.bi, %i.bt                ; 3 uses
  br i1 %i.bu, label %.thread, label %bb.c, !prof !121

.thread:                                          ; preds = %bb.d, %bb.c, %_ZN4llvm10MDNodeInfoINS_11DIBasicTypeEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.bb, %_ZN4llvm10MDNodeInfoINS_11DIBasicTypeEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.bl, %bb.c ], [ %i.bs, %bb.d ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_11DIBasicTypeEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.bu, %bb.c ], [ %i.bu, %bb.d ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1711
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.110", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !398
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !390
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1701
  store i32 0, ptr %i.p, align 16, !tbaa !1712
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1711
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.883", align 4   ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !390
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1701
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !398  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1701 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !390
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !398
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 44
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.w, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.x = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.w, %.lr.ph ], [ %i.cc, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.y = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.z = or disjoint i32 %i.y, %i.x
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !401 ; 10 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !23 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = and i64 %i.ag, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4llvm6DIType10getRawNameEv.exit.i.i.i, label %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread.i.i

_ZNK4llvm6DIType10getRawNameEv.exit.i.i.i:        ; preds = %bb.c
  %i.ai = lshr i64 %i.ag, 2
  %i.aj = and i64 %i.ai, 15
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ak ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !53 ; 2 uses
  %i.ao = load i8, ptr %i.ac, align 8, !tbaa !95
  %i.ap = icmp eq i8 %i.ao, 16
  br i1 %i.ap, label %_ZN4llvm10MDNodeInfoINS_11DIBasicTypeEE12getHashValueEPKS1_.exit.i, label %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread6.i.i

_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread6.i.i: ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit.i.i.i
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !53
  br label %_ZN4llvm10MDNodeInfoINS_11DIBasicTypeEE12getHashValueEPKS1_.exit.i

_ZNK4llvm6DIType10getRawNameEv.exit.i.thread.i.i: ; preds = %bb.c
  %i.ar = getelementptr inbounds i8, ptr %i.ac, i64 -32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !53 ; 2 uses
  %i.av = load i8, ptr %i.ac, align 8, !tbaa !95
  %i.aw = icmp eq i8 %i.av, 16
  br i1 %i.aw, label %_ZN4llvm10MDNodeInfoINS_11DIBasicTypeEE12getHashValueEPKS1_.exit.i, label %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge.i.i

_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge.i.i: ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread.i.i
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !53
  br label %_ZN4llvm10MDNodeInfoINS_11DIBasicTypeEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_11DIBasicTypeEE12getHashValueEPKS1_.exit.i: ; preds = %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge.i.i, %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread.i.i, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread6.i.i, %_ZNK4llvm6DIType10getRawNameEv.exit.i.i.i
  %.pn.i.i = phi ptr [ %i.as, %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread.i.i ], [ %i.as, %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge.i.i ], [ %i.al, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread6.i.i ], [ %i.al, %_ZNK4llvm6DIType10getRawNameEv.exit.i.i.i ] ; 2 uses
  %i.ay = phi ptr [ %i.au, %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread.i.i ], [ %i.au, %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge.i.i ], [ %i.an, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread6.i.i ], [ %i.an, %_ZNK4llvm6DIType10getRawNameEv.exit.i.i.i ]
  %i.az = phi ptr [ %i.ac, %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread.i.i ], [ %i.ax, %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge.i.i ], [ %i.aq, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread6.i.i ], [ %i.ac, %_ZNK4llvm6DIType10getRawNameEv.exit.i.i.i ]
  %.in8.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ba = load i32, ptr %.in8.i.i, align 8, !tbaa !291
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  %i.bb = load ptr, ptr %.in.i.i, align 8, !tbaa !53
  %i.bc = zext i16 %i.ae to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !53
  %i.bf = icmp eq i16 %i.ae, 17152
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = select i1 %i.bf, i32 0, i32 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !403
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %i.bc, ptr %2, align 4
  store ptr %i.ay, ptr %i.o, align 4
  store ptr %i.az, ptr %i.p, align 4
  store i32 %i.ba, ptr %i.q, align 4
  store ptr %i.bb, ptr %i.r, align 4
  store ptr %i.be, ptr %i.s, align 4
  store i32 %i.bi, ptr %i.t, align 4
  store i32 %i.bk, ptr %i.u, align 4
  %i.bl = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 48) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = xor i32 %i.bm, -313160499
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN4llvm10MDNodeInfoINS_11DIBasicTypeEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.bn, %_ZN4llvm10MDNodeInfoINS_11DIBasicTypeEE12getHashValueEPKS1_.exit.i ], [ %i.bv, %bb.d ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.bo = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.bp = lshr i64 %i.bo, 5                       ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !131 ; 2 uses
  %i.bs = and i32 %.0.i7, 31                      ; 2 uses
  %i.bt = lshr i32 %i.br, %i.bs
  %i.bu = trunc i32 %i.bt to i1
  %i.bv = add i32 %.0.i7, 1
  br i1 %i.bu, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1719

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bp
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bo
  %i.by = load ptr, ptr %i.ab, align 8, !tbaa !401
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !401
  %i.bz = shl nuw i32 1, %i.bs
  %i.ca = or i32 %i.bz, %i.br
  store i32 %i.ca, ptr %i.bw, align 4, !tbaa !131
  %i.cb = add i32 %.0.i18, -1
  %i.cc = and i32 %i.cb, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.cc, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1720

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1721

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !398
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.cd = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !1712
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.cf, ptr %i.cg, align 8, !tbaa !1712
  %i.ch = icmp eq i32 %i.cd, 0
  br i1 %i.ch, label %_ZN4llvm8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.ci = load ptr, ptr %1, align 8, !tbaa !390
  %i.cj = zext i32 %i.cd to i64                   ; 2 uses
  %i.ck = shl nuw nsw i64 %i.cj, 3
  %i.cl = add nuw nsw i64 %i.cj, 31
  %i.cm = lshr i64 %i.cl, 3
  %i.cn = and i64 %i.cm, 1073741820
  %i.co = add nuw nsw i64 %i.cn, %i.ck
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ci, i64 noundef %i.co, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !398
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIBasicTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIFixedPointTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6doFindINS_13MDNodeKeyImplIS2_EEEEPKS9_RKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.897", align 16  ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !430, !noalias !1722 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1727, !noalias !1722 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !433, !noalias !1722 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = load <2 x ptr>, ptr %i.h, align 8, !tbaa !159
  store <2 x ptr> %i.o, ptr %2, align 16
  %i.p = load i32, ptr %i.i, align 8, !tbaa !131
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.p, ptr %i.q, align 16
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !234
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 20
  store ptr %i.r, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.u = load <2 x i32>, ptr %i.k, align 8, !tbaa !131
  store <2 x i32> %i.u, ptr %i.t, align 4
  %i.v = load i32, ptr %i.l, align 8, !tbaa !131
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 %i.v, ptr %i.w, align 4
  %i.x = tail call noundef i64 @_ZN4llvm10hash_valueERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #23
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.x, ptr %i.y, align 8
  %i.z = tail call noundef i64 @_ZN4llvm10hash_valueERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.z, ptr %i.aa, align 16
  %i.ab = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 56) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = xor i32 %i.ac, -313160499
  %.019 = and i32 %i.ad, %i.g                     ; 3 uses
  %i.ae = zext i32 %.019 to i64                   ; 2 uses
  %i.af = lshr i64 %i.ae, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !131
  %i.ai = and i32 %.019, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph, label %.thread, !prof !146

bb.c:                                             ; preds = %.lr.ph
  %i.al = add nuw i32 %.020, 1
  %.0 = and i32 %i.al, %i.g                       ; 3 uses
  %i.am = zext i32 %.0 to i64                     ; 2 uses
  %i.an = lshr i64 %i.am, 5
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.an
end_hunk_8
begin_hunk_9_@_ZN4llvm13MDNodeKeyImplINS_16DIFixedPointTypeEEC2EPKS1_:bb.a
  %i.as = and i64 %i.ar, 2
  %.not.i.i.i17 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.i17, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm6DIType11getRawScopeEv.exit
  %i.at = getelementptr inbounds i8, ptr %1, i64 -32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !21
  br label %_ZNK4llvm6DIType16getRawSizeInBitsEv.exit

bb.j:                                             ; preds = %_ZNK4llvm6DIType11getRawScopeEv.exit
  %i.av = lshr i64 %i.ar, 2
  %i.aw = and i64 %i.av, 15
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ax
  br label %_ZNK4llvm6DIType16getRawSizeInBitsEv.exit

_ZNK4llvm6DIType16getRawSizeInBitsEv.exit:        ; preds = %bb.i, %bb.j
  %.sroa.0.0.i.i.i19 = phi ptr [ %i.ay, %bb.j ], [ %i.au, %bb.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i19, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !53
  store ptr %i.ba, ptr %i.aq, align 8, !tbaa !419
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bc = icmp eq i16 %i.b, 17152
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = select i1 %i.bc, i32 0, i32 %i.be
  store i32 %i.bf, ptr %i.bb, align 8, !tbaa !420
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !403
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !421
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !293
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !422
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bo = load <2 x i32>, ptr %i.bn, align 4, !tbaa !131
  store <2 x i32> %i.bo, ptr %i.bm, align 4, !tbaa !131
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !340 ; 2 uses
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !340
  %i.bu = icmp ult i32 %i.bt, 65
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK4llvm6DIType16getRawSizeInBitsEv.exit
  %i.bv = load i64, ptr %i.bq, align 8, !tbaa !199
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !199
  br label %_ZN4llvm5APIntC2ERKS0_.exit

bb.l:                                             ; preds = %_ZNK4llvm6DIType16getRawSizeInBitsEv.exit
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.bp, ptr noundef nonnull align 8 dereferenceable(12) %i.bq) #23
  br label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.k, %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !340 ; 2 uses
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !340
  %i.cb = icmp ult i32 %i.ca, 65
  br i1 %i.cb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %i.cc = load i64, ptr %i.bx, align 8, !tbaa !199
  store i64 %i.cc, ptr %i.bw, align 8, !tbaa !199
  br label %_ZN4llvm5APIntC2ERKS0_.exit20

bb.n:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  tail call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.bw, ptr noundef nonnull align 8 dereferenceable(12) %i.bx) #23
  br label %_ZN4llvm5APIntC2ERKS0_.exit20

_ZN4llvm5APIntC2ERKS0_.exit20:                    ; preds = %bb.m, %bb.n
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIFixedPointTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.202", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !433
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !430
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1727
  store i32 0, ptr %i.p, align 16, !tbaa !1735
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIFixedPointTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1734
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_16DIFixedPointTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_16DIFixedPointTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_16DIFixedPointTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIFixedPointTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.897", align 16  ; 10 uses
  %3 = alloca %"struct.llvm::MDNodeKeyImpl.422", align 8 ; 17 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !430
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1727
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !433  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1727 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !430
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !433
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIFixedPointTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !131 ; 2 uses
  %.not11.i17 = icmp eq i32 %i.aj, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ak = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIFixedPointTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.aj, %.lr.ph ], [ %i.em, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIFixedPointTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.al = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.am = or disjoint i32 %i.al, %i.ak
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !434 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !23 ; 2 uses
  %i.as = zext i16 %i.ar to i32
  store i32 %i.as, ptr %3, align 8, !tbaa !413
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 -16 ; 8 uses
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = and i64 %i.au, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds i8, ptr %i.ap, i64 -32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21
  br label %_ZNK4llvm6DIType10getRawNameEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ay = lshr i64 %i.au, 2
  %i.az = and i64 %i.ay, 15
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ba
  br label %_ZNK4llvm6DIType10getRawNameEv.exit.i

_ZNK4llvm6DIType10getRawNameEv.exit.i:            ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.bb, %bb.e ], [ %i.ax, %bb.d ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !53
  store ptr %i.bd, ptr %i.o, align 8, !tbaa !415
  %i.be = load i8, ptr %i.ap, align 8, !tbaa !95
  %i.bf = icmp eq i8 %i.be, 16
  br i1 %i.bf, label %_ZNK4llvm7DIScope10getRawFileEv.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit.i
  %i.bg = load i64, ptr %i.at, align 8            ; 2 uses
  %i.bh = and i64 %i.bg, 2
  %.not.i.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds i8, ptr %i.ap, i64 -32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !21
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.bk = lshr i64 %i.bg, 2
  %i.bl = and i64 %i.bk, 15
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.bm
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i:          ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.bn, %bb.h ], [ %i.bj, %bb.g ]
  %i.bo = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !tbaa !53
  br label %_ZNK4llvm7DIScope10getRawFileEv.exit.i

_ZNK4llvm7DIScope10getRawFileEv.exit.i:           ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit.i.i, %_ZNK4llvm6DIType10getRawNameEv.exit.i
  %i.bp = phi ptr [ %i.bo, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i ], [ %i.ap, %_ZNK4llvm6DIType10getRawNameEv.exit.i ]
  store ptr %i.bp, ptr %i.p, align 8, !tbaa !416
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !291
  store i32 %i.br, ptr %i.q, align 8, !tbaa !417
  %i.bs = load i64, ptr %i.at, align 8            ; 2 uses
  %i.bt = and i64 %i.bs, 2
  %.not.i.i.i14.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i.i14.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm7DIScope10getRawFileEv.exit.i
  %i.bu = getelementptr inbounds i8, ptr %i.ap, i64 -32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !21
  br label %_ZNK4llvm6DIType11getRawScopeEv.exit.i

bb.j:                                             ; preds = %_ZNK4llvm7DIScope10getRawFileEv.exit.i
  %i.bw = lshr i64 %i.bs, 2
  %i.bx = and i64 %i.bw, 15
  %i.by = sub nsw i64 0, %i.bx
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.by
  br label %_ZNK4llvm6DIType11getRawScopeEv.exit.i

_ZNK4llvm6DIType11getRawScopeEv.exit.i:           ; preds = %bb.j, %bb.i
  %.sroa.0.0.i.i.i16.i = phi ptr [ %i.bz, %bb.j ], [ %i.bv, %bb.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i16.i, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !53
  store ptr %i.cb, ptr %i.r, align 8, !tbaa !418
  %i.cc = load i64, ptr %i.at, align 8            ; 2 uses
  %i.cd = and i64 %i.cc, 2
  %.not.i.i.i17.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i.i17.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm6DIType11getRawScopeEv.exit.i
  %i.ce = getelementptr inbounds i8, ptr %i.ap, i64 -32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !21
  br label %_ZNK4llvm6DIType16getRawSizeInBitsEv.exit.i

bb.l:                                             ; preds = %_ZNK4llvm6DIType11getRawScopeEv.exit.i
  %i.cg = lshr i64 %i.cc, 2
  %i.ch = and i64 %i.cg, 15
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ci
  br label %_ZNK4llvm6DIType16getRawSizeInBitsEv.exit.i

_ZNK4llvm6DIType16getRawSizeInBitsEv.exit.i:      ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i.i19.i = phi ptr [ %i.cj, %bb.l ], [ %i.cf, %bb.k ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i19.i, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !53
  store ptr %i.cl, ptr %i.s, align 8, !tbaa !419
  %i.cm = icmp eq i16 %i.ar, 17152
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = select i1 %i.cm, i32 0, i32 %i.co
  store i32 %i.cp, ptr %i.t, align 8, !tbaa !420
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !403
  store i32 %i.cr, ptr %i.u, align 4, !tbaa !421
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !293
  store i32 %i.ct, ptr %i.v, align 8, !tbaa !422
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  %i.cv = load <2 x i32>, ptr %i.cu, align 4, !tbaa !131
  store <2 x i32> %i.cv, ptr %i.w, align 4, !tbaa !131
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !340 ; 2 uses
  store i32 %i.cy, ptr %i.z, align 8, !tbaa !340
  %i.cz = icmp ult i32 %i.cy, 65
  br i1 %i.cz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK4llvm6DIType16getRawSizeInBitsEv.exit.i
  %i.da = load i64, ptr %i.cw, align 8, !tbaa !199
  store i64 %i.da, ptr %i.y, align 8, !tbaa !199
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i

bb.n:                                             ; preds = %_ZNK4llvm6DIType16getRawSizeInBitsEv.exit.i
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.y, ptr noundef nonnull align 8 dereferenceable(12) %i.cw) #23
  br label %_ZN4llvm5APIntC2ERKS0_.exit.i

_ZN4llvm5APIntC2ERKS0_.exit.i:                    ; preds = %bb.n, %bb.m
  %i.db = getelementptr inbounds nuw i8, ptr %i.ap, i64 64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !340 ; 2 uses
  store i32 %i.dd, ptr %i.ab, align 8, !tbaa !340
  %i.de = icmp ult i32 %i.dd, 65
  br i1 %i.de, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  %i.df = load i64, ptr %i.db, align 8, !tbaa !199
  store i64 %i.df, ptr %i.aa, align 8, !tbaa !199
  br label %_ZN4llvm13MDNodeKeyImplINS_16DIFixedPointTypeEEC2EPKS1_.exit

bb.p:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.aa, ptr noundef nonnull align 8 dereferenceable(12) %i.db) #23
  br label %_ZN4llvm13MDNodeKeyImplINS_16DIFixedPointTypeEEC2EPKS1_.exit

_ZN4llvm13MDNodeKeyImplINS_16DIFixedPointTypeEEC2EPKS1_.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.dg = load <2 x ptr>, ptr %i.o, align 8, !tbaa !159
  store <2 x ptr> %i.dg, ptr %2, align 16
  %i.dh = load i32, ptr %i.q, align 8, !tbaa !131
  store i32 %i.dh, ptr %i.ac, align 16
  %i.di = load ptr, ptr %i.r, align 8, !tbaa !234
  store ptr %i.di, ptr %i.ad, align 4
  %i.dj = load <2 x i32>, ptr %i.v, align 8, !tbaa !131
  store <2 x i32> %i.dj, ptr %i.ae, align 4
  %i.dk = load i32, ptr %i.x, align 8, !tbaa !131
  store i32 %i.dk, ptr %i.af, align 4
  %i.dl = call noundef i64 @_ZN4llvm10hash_valueERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(12) %i.y) #23
  store i64 %i.dl, ptr %i.ag, align 8
  %i.dm = call noundef i64 @_ZN4llvm10hash_valueERKNS_5APIntE(ptr noundef nonnull align 8 dereferenceable(12) %i.aa) #23
  store i64 %i.dm, ptr %i.ah, align 16
  %i.dn = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 56) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.do = load i32, ptr %i.ab, align 8, !tbaa !340
  %i.dp = icmp ugt i32 %i.do, 64
  br i1 %i.dp, label %bb.q, label %_ZN4llvm5APIntD2Ev.exit.i.i

bb.q:                                             ; preds = %_ZN4llvm13MDNodeKeyImplINS_16DIFixedPointTypeEEC2EPKS1_.exit
  %i.dq = load ptr, ptr %i.aa, align 8, !tbaa !199 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %_ZN4llvm5APIntD2Ev.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.dq) #24
  br label %_ZN4llvm5APIntD2Ev.exit.i.i

_ZN4llvm5APIntD2Ev.exit.i.i:                      ; preds = %bb.r, %bb.q, %_ZN4llvm13MDNodeKeyImplINS_16DIFixedPointTypeEEC2EPKS1_.exit
  %i.ds = load i32, ptr %i.z, align 8, !tbaa !340
  %i.dt = icmp ugt i32 %i.ds, 64
  br i1 %i.dt, label %bb.s, label %_ZN4llvm10MDNodeInfoINS_16DIFixedPointTypeEE12getHashValueEPKS1_.exit

bb.s:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i
  %i.du = load ptr, ptr %i.y, align 8, !tbaa !199 ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
end_hunk_9
begin_hunk_10_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.791", align 4   ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !455, !noalias !1752 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !467, !noalias !1752 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !468, !noalias !1752 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !470    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !23
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = and i64 %i.l, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_12DIStringTypeEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.p = lshr i64 %i.l, 2
  %i.q = and i64 %i.p, 15
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.r
  br label %_ZN4llvm10MDNodeInfoINS_12DIStringTypeEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_12DIStringTypeEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.pn.i = phi ptr [ %i.s, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %.in6.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.t = load ptr, ptr %.in6.i, align 8, !tbaa !53
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 40
  %i.u = load ptr, ptr %.in.i, align 8, !tbaa !53
  %i.v = zext i16 %i.j to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !480
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 %i.v, ptr %3, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4
  store ptr %i.t, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 12
  store ptr %i.u, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.x, ptr %i.aa, align 4
  %i.ab = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = xor i32 %i.ac, -313160499
  %.024 = and i32 %i.ad, %i.g                     ; 3 uses
  %i.ae = zext i32 %.024 to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = lshr i64 %i.ae, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !131
  %i.aj = and i32 %.024, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_12DIStringTypeEE12getHashValueEPKS1_.exit
  %i.am = load ptr, ptr %1, align 8, !tbaa !470
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.an = add nuw i32 %.025, 1
  %.0 = and i32 %i.an, %i.g                       ; 3 uses
  %i.ao = zext i32 %.0 to i64                     ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ao ; 2 uses
  %i.aq = lshr i64 %i.ao, 5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !131
  %i.at = and i32 %.0, 31
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %bb.f, label %.thread, !prof !147, !llvm.loop !1749

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.aw = phi ptr [ %i.af, %.lr.ph ], [ %i.ap, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !470
  %i.ay = icmp eq ptr %i.am, %i.ax                ; 3 uses
  br i1 %i.ay, label %.thread, label %bb.e, !prof !121

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_12DIStringTypeEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.af, %_ZN4llvm10MDNodeInfoINS_12DIStringTypeEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.ap, %bb.e ], [ %i.aw, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_12DIStringTypeEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.ay, %bb.e ], [ %i.ay, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1750
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.190", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !468
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !455
  store ptr %i.y, ptr %i.q, align 8, !tbaa !467
  store i32 0, ptr %i.p, align 16, !tbaa !1751
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1750
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.791", align 4   ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !455
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !467
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !468  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !467  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !455
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !468
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.s, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.t = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.s, %.lr.ph ], [ %i.bg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.u = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !470  ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !23
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 -16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = and i64 %i.ac, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 -32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_12DIStringTypeEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ag = lshr i64 %i.ac, 2
  %i.ah = and i64 %i.ag, 15
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ai
  br label %_ZN4llvm10MDNodeInfoINS_12DIStringTypeEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_12DIStringTypeEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.pn.i.i = phi ptr [ %i.aj, %bb.e ], [ %i.af, %bb.d ] ; 2 uses
  %.in6.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.ak = load ptr, ptr %.in6.i.i, align 8, !tbaa !53
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 40
  %i.al = load ptr, ptr %.in.i.i, align 8, !tbaa !53
  %i.am = zext i16 %i.aa to i32
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !480
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %i.am, ptr %2, align 4
  store ptr %i.ak, ptr %i.o, align 4
  store ptr %i.al, ptr %i.p, align 4
  store i32 %i.ao, ptr %i.q, align 4
  %i.ap = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = xor i32 %i.aq, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_12DIStringTypeEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ar, %_ZN4llvm10MDNodeInfoINS_12DIStringTypeEE12getHashValueEPKS1_.exit.i ], [ %i.az, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.as = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.at = lshr i64 %i.as, 5                       ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !131 ; 2 uses
  %i.aw = and i32 %.0.i7, 31                      ; 2 uses
  %i.ax = lshr i32 %i.av, %i.aw
  %i.ay = trunc i32 %i.ax to i1
  %i.az = add i32 %.0.i7, 1
  br i1 %i.ay, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1757

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.at
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.as
  %i.bc = load ptr, ptr %i.x, align 8, !tbaa !470
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !470
  %i.bd = shl nuw i32 1, %i.aw
  %i.be = or i32 %i.bd, %i.av
  store i32 %i.be, ptr %i.ba, align 4, !tbaa !131
  %i.bf = add i32 %.0.i18, -1
  %i.bg = and i32 %i.bf, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1758

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1759

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !468
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bh = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !1751
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !1751
  %i.bl = icmp eq i32 %i.bh, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !455
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !468
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIStringTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6doFindINS_13MDNodeKeyImplIS2_EEEEPKS9_RKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.854", align 4   ; 9 uses
  %3 = alloca %"struct.std::array.810", align 8   ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !519, !noalias !1760 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1765, !noalias !1760 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !522, !noalias !1760 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 8, !tbaa !493    ; 2 uses
  %i.i = icmp eq i32 %i.h, 13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !360  ; 6 uses
  br i1 %i.i, label %bb.c, label %.thread.i.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !506  ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.m, align 4, !tbaa !95
  %i.o = icmp eq i8 %i.n, 14
  br i1 %i.o, label %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.i.i, label %.thread.i.i

_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.i.i: ; preds = %bb.e
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = and i64 %i.q, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.i.i
  %i.s = getelementptr inbounds i8, ptr %i.m, i64 -32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  br label %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i.i

bb.g:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.i.i
  %i.u = lshr i64 %i.q, 2
  %i.v = and i64 %i.u, 15
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.w
  br label %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i.i

_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i.i: ; preds = %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.x, %bb.g ], [ %i.t, %bb.f ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !53
  %.not7.i.i = icmp eq ptr %i.z, null
  br i1 %.not7.i.i, label %.thread.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.k, ptr %3, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.m, ptr %i.aa, align 8
  %i.ab = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN4llvm10MDNodeInfoINS_13DIDerivedTypeEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit

.thread.i.i:                                      ; preds = %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i.i, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ac = phi ptr [ null, %bb.c ], [ %i.k, %bb.d ], [ %i.k, %bb.e ], [ %i.k, %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i.i ], [ %i.k, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 84
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %i.h, ptr %2, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 4
  store ptr %i.ac, ptr %i.ah, align 4
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !234
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 12
  store ptr %i.ai, ptr %i.aj, align 4
  %i.ak = load i32, ptr %i.ae, align 8, !tbaa !131
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.ak, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.an = load <2 x ptr>, ptr %i.af, align 8, !tbaa !234
  store <2 x ptr> %i.an, ptr %i.am, align 4
end_hunk_10
begin_hunk_11_@_ZN4llvm13MDNodeKeyImplINS_13DIDerivedTypeEEC2EPKS1_:bb.a
  %i.bn = load i64, ptr %i.e, align 8             ; 2 uses
  %i.bo = and i64 %i.bn, 2
  %.not.i.i.i24 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.i24, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm6DIType16getRawSizeInBitsEv.exit
  %i.bp = getelementptr inbounds i8, ptr %1, i64 -32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !21
  br label %_ZNK4llvm6DIType18getRawOffsetInBitsEv.exit

bb.n:                                             ; preds = %_ZNK4llvm6DIType16getRawSizeInBitsEv.exit
  %i.br = lshr i64 %i.bn, 2
  %i.bs = and i64 %i.br, 15
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.bt
  br label %_ZNK4llvm6DIType18getRawOffsetInBitsEv.exit

_ZNK4llvm6DIType18getRawOffsetInBitsEv.exit:      ; preds = %bb.m, %bb.n
  %.sroa.0.0.i.i.i26 = phi ptr [ %i.bu, %bb.n ], [ %i.bq, %bb.m ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i26, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !53
  store ptr %i.bw, ptr %i.bm, align 8, !tbaa !509
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.by = icmp eq i16 %i.b, 17152
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = select i1 %i.by, i32 0, i32 %i.ca
  store i32 %i.cb, ptr %i.bx, align 8, !tbaa !510
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0.0.copyload.i = load i64, ptr %i.cd, align 4
  store i64 %.sroa.0.0.copyload.i, ptr %i.cc, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cf = load i16, ptr %i.a, align 2, !tbaa !23
  %i.cg = icmp eq i16 %i.cf, 17152
  %i.ch = load i32, ptr %i.bz, align 4
  %i.ci = zext i32 %i.ch to i64
  %i.cj = or disjoint i64 %i.ci, 4294967296
  %.sroa.2.0.i = select i1 %i.cg, i64 %i.cj, i64 0
  store i64 %.sroa.2.0.i, ptr %i.ce, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !293
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !511
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.co = load i64, ptr %i.e, align 8             ; 2 uses
  %i.cp = and i64 %i.co, 2
  %.not.i.i.i27 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i27, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK4llvm6DIType18getRawOffsetInBitsEv.exit
  %i.cq = getelementptr inbounds i8, ptr %1, i64 -32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !21
  br label %_ZNK4llvm13DIDerivedType15getRawExtraDataEv.exit

bb.p:                                             ; preds = %_ZNK4llvm6DIType18getRawOffsetInBitsEv.exit
  %i.cs = lshr i64 %i.co, 2
  %i.ct = and i64 %i.cs, 15
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.cu
  br label %_ZNK4llvm13DIDerivedType15getRawExtraDataEv.exit

_ZNK4llvm13DIDerivedType15getRawExtraDataEv.exit: ; preds = %bb.o, %bb.p
  %.sroa.0.0.i.i.i29 = phi ptr [ %i.cv, %bb.p ], [ %i.cr, %bb.o ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i29, i64 48
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !53
  store ptr %i.cx, ptr %i.cn, align 8, !tbaa !512
  %i.cy = load i64, ptr %i.e, align 8             ; 2 uses
  %i.cz = and i64 %i.cy, 2
  %.not.i.i.i30 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i.i30, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK4llvm13DIDerivedType15getRawExtraDataEv.exit
  %i.da = getelementptr inbounds i8, ptr %1, i64 -32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !21
  br label %_ZNK4llvm13DIDerivedType17getRawAnnotationsEv.exit

bb.r:                                             ; preds = %_ZNK4llvm13DIDerivedType15getRawExtraDataEv.exit
  %i.dc = lshr i64 %i.cy, 2
  %i.dd = and i64 %i.dc, 15
  %i.de = sub nsw i64 0, %i.dd
  %i.df = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.de
  br label %_ZNK4llvm13DIDerivedType17getRawAnnotationsEv.exit

_ZNK4llvm13DIDerivedType17getRawAnnotationsEv.exit: ; preds = %bb.q, %bb.r
  %.sroa.0.0.i.i.i32 = phi ptr [ %i.df, %bb.r ], [ %i.db, %bb.q ]
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i32, i64 56
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !53
  store ptr %i.di, ptr %i.dg, align 8, !tbaa !513
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.114", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !522
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !519
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1765
  store i32 0, ptr %i.p, align 16, !tbaa !1775
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1774
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.854", align 4   ; 10 uses
  %3 = alloca %"struct.std::array.810", align 8   ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !519
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1765
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !522  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1765 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !519
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !522
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i34 = icmp eq i64 %i.n, 0
  br i1 %.not.i34, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph37, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !131  ; 2 uses
  %.not11.i32 = icmp eq i32 %i.w, 0
  br i1 %.not11.i32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.x = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i33 = phi i32 [ %i.w, %.lr.ph ], [ %i.cp, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.y = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i33, i1 true)
  %i.z = or disjoint i32 %i.y, %i.x
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !523 ; 10 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !23 ; 2 uses
  %i.af = zext i16 %i.ae to i32
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 -16 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8            ; 3 uses
  %i.ai = and i64 %i.ah, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm6DIType10getRawNameEv.exit.i, label %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread

_ZNK4llvm6DIType10getRawNameEv.exit.i:            ; preds = %bb.c
  %i.aj = lshr i64 %i.ah, 2
  %i.ak = and i64 %i.aj, 15
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !53
  %i.ap = load i8, ptr %i.ac, align 8, !tbaa !95
  %i.aq = icmp eq i8 %i.ap, 16
  br i1 %i.aq, label %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread48, label %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread49

_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread49:  ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit.i
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !53
  br label %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread48

_ZNK4llvm6DIType10getRawNameEv.exit.i.thread:     ; preds = %bb.c
  %i.as = getelementptr inbounds i8, ptr %i.ac, i64 -32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !21 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !53 ; 2 uses
  %i.aw = load i8, ptr %i.ac, align 8, !tbaa !95
  %i.ax = icmp eq i8 %i.aw, 16
  br i1 %i.ax, label %_ZN4llvm13MDNodeKeyImplINS_13DIDerivedTypeEEC2EPKS1_.exit, label %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge

_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge: ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !53
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.ac, i64 -32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %_ZN4llvm13MDNodeKeyImplINS_13DIDerivedTypeEEC2EPKS1_.exit

_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread48:  ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit.i, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread49
  %i.az = phi ptr [ %i.ar, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread49 ], [ %i.ac, %_ZNK4llvm6DIType10getRawNameEv.exit.i ]
  %i.ba = lshr i64 %i.ah, 2
  %i.bb = and i64 %i.ba, 15
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.bc
  br label %_ZN4llvm13MDNodeKeyImplINS_13DIDerivedTypeEEC2EPKS1_.exit

_ZN4llvm13MDNodeKeyImplINS_13DIDerivedTypeEEC2EPKS1_.exit: ; preds = %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread, %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread48
  %.pn = phi ptr [ %i.bd, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread48 ], [ %.pre, %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge ], [ %i.at, %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread ] ; 2 uses
  %i.be = phi ptr [ %i.ao, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread48 ], [ %i.av, %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge ], [ %i.av, %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread ] ; 6 uses
  %i.bf = phi ptr [ %i.az, %_ZNK4llvm7DIScope10getRawFileEv.exit.i.thread48 ], [ %i.ay, %_ZNK4llvm7DIScope10getRawFileEv.exit.i._crit_edge ], [ %i.ac, %_ZNK4llvm6DIType10getRawNameEv.exit.i.thread ]
  %.in55 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bg = load i32, ptr %.in55, align 8, !tbaa !291
  %.in27 = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.bh = load i32, ptr %.in27, align 4, !tbaa !293
  %.in25 = getelementptr inbounds nuw i8, ptr %.pn, i64 40
  %i.bi = load ptr, ptr %.in25, align 8, !tbaa !53
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.bj = load ptr, ptr %.in, align 8, !tbaa !53  ; 6 uses
  %i.bk = icmp eq i16 %i.ae, 13
  br i1 %i.bk, label %bb.d, label %.thread.i.i

bb.d:                                             ; preds = %_ZN4llvm13MDNodeKeyImplINS_13DIDerivedTypeEEC2EPKS1_.exit
  %.not.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bl = load i8, ptr %i.bj, align 4, !tbaa !95
  %i.bm = icmp eq i8 %i.bl, 14
  br i1 %i.bm, label %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.i.i, label %.thread.i.i

_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.i.i: ; preds = %bb.f
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 -16 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8            ; 2 uses
  %i.bp = and i64 %i.bo, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.i.i
  %i.bq = getelementptr inbounds i8, ptr %i.bj, i64 -32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !21
  br label %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i.i

bb.h:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.i.i
  %i.bs = lshr i64 %i.bo, 2
  %i.bt = and i64 %i.bs, 15
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bu
  br label %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i.i

_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.bv, %bb.h ], [ %i.br, %bb.g ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 72
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !53
  %.not7.i.i = icmp eq ptr %i.bx, null
  br i1 %.not7.i.i, label %.thread.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.be, ptr %3, align 8
  store ptr %i.bj, ptr %i.o, align 8
  %i.by = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN4llvm10MDNodeInfoINS_13DIDerivedTypeEE12getHashValueEPKS1_.exit

.thread.i.i:                                      ; preds = %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i.i, %bb.f, %bb.e, %bb.d, %_ZN4llvm13MDNodeKeyImplINS_13DIDerivedTypeEEC2EPKS1_.exit
  %i.bz = phi ptr [ null, %bb.d ], [ %i.be, %bb.e ], [ %i.be, %bb.f ], [ %i.be, %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i.i ], [ %i.be, %_ZN4llvm13MDNodeKeyImplINS_13DIDerivedTypeEEC2EPKS1_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %i.af, ptr %2, align 4
  store ptr %i.bz, ptr %i.p, align 4
  store ptr %i.bf, ptr %i.q, align 4
  store i32 %i.bg, ptr %i.r, align 4
  store ptr %i.bj, ptr %i.s, align 4
  store ptr %i.bi, ptr %i.t, align 4
  store i32 %i.bh, ptr %i.u, align 4
  %i.ca = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 44) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZN4llvm10MDNodeInfoINS_13DIDerivedTypeEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_13DIDerivedTypeEE12getHashValueEPKS1_.exit: ; preds = %bb.i, %.thread.i.i
  %.1.in.in.i.i = phi i64 [ %i.ca, %.thread.i.i ], [ %i.by, %bb.i ]
  %.1.in.i.i = trunc i64 %.1.in.in.i.i to i32
  %.1.i.i = xor i32 %.1.in.i.i, -313160499
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZN4llvm10MDNodeInfoINS_13DIDerivedTypeEE12getHashValueEPKS1_.exit
  %.pn.i = phi i32 [ %.1.i.i, %_ZN4llvm10MDNodeInfoINS_13DIDerivedTypeEE12getHashValueEPKS1_.exit ], [ %i.ci, %bb.j ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.cb = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.cc = lshr i64 %i.cb, 5                       ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !131 ; 2 uses
  %i.cf = and i32 %.0.i7, 31                      ; 2 uses
  %i.cg = lshr i32 %i.ce, %i.cf
  %i.ch = trunc i32 %i.cg to i1
  %i.ci = add i32 %.0.i7, 1
  br i1 %i.ch, label %bb.j, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1781

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cc
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.cb
  %i.cl = load ptr, ptr %i.ab, align 8, !tbaa !523
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !523
  %i.cm = shl nuw i32 1, %i.cf
  %i.cn = or i32 %i.cm, %i.ce
  store i32 %i.cn, ptr %i.cj, align 4, !tbaa !131
  %i.co = add i32 %.0.i33, -1
  %i.cp = and i32 %i.co, %.0.i33                  ; 2 uses
  %.not11.i = icmp eq i32 %i.cp, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1782

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1783

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre42 = load i32, ptr %i.d, align 4, !tbaa !522
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.cq = phi i32 [ %.pre42, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !1775
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !1775
  %i.cu = icmp eq i32 %i.cq, 0
  br i1 %i.cu, label %_ZN4llvm8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.cv = load ptr, ptr %1, align 8, !tbaa !519
  %i.cw = zext i32 %i.cq to i64                   ; 2 uses
  %i.cx = shl nuw nsw i64 %i.cw, 3
  %i.cy = add nuw nsw i64 %i.cw, 31
  %i.cz = lshr i64 %i.cy, 3
  %i.da = and i64 %i.cz, 1073741820
  %i.db = add nuw nsw i64 %i.da, %i.cx
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cv, i64 noundef %i.db, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !522
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DIDerivedTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_11
begin_hunk_12_@_ZN4llvm13MDNodeKeyImplINS_15DICompositeTypeEEC2EPKS1_:bb.a

bb.af:                                            ; preds = %_ZNK4llvm15DICompositeType15getRawAllocatedEv.exit
  %i.fx = lshr i64 %i.ft, 2
  %i.fy = and i64 %i.fx, 15
  %i.fz = sub nsw i64 0, %i.fy
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.fz
  br label %_ZNK4llvm15DICompositeType10getRawRankEv.exit

_ZNK4llvm15DICompositeType10getRawRankEv.exit:    ; preds = %bb.ae, %bb.af
  %.sroa.0.0.i.i.i62 = phi ptr [ %i.ga, %bb.af ], [ %i.fw, %bb.ae ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i62, i64 112
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !53
  store ptr %i.gc, ptr %i.fs, align 8, !tbaa !552
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ge = load i64, ptr %i.e, align 8             ; 2 uses
  %i.gf = and i64 %i.ge, 2
  %.not.i.i.i63 = icmp eq i64 %i.gf, 0
  br i1 %.not.i.i.i63, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNK4llvm15DICompositeType10getRawRankEv.exit
  %i.gg = getelementptr inbounds i8, ptr %1, i64 -32
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !21
  br label %_ZNK4llvm15DICompositeType17getRawAnnotationsEv.exit

bb.ah:                                            ; preds = %_ZNK4llvm15DICompositeType10getRawRankEv.exit
  %i.gi = lshr i64 %i.ge, 2
  %i.gj = and i64 %i.gi, 15
  %i.gk = sub nsw i64 0, %i.gj
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.gk
  br label %_ZNK4llvm15DICompositeType17getRawAnnotationsEv.exit

_ZNK4llvm15DICompositeType17getRawAnnotationsEv.exit: ; preds = %bb.ag, %bb.ah
  %.sroa.0.0.i.i.i65 = phi ptr [ %i.gl, %bb.ah ], [ %i.gh, %bb.ag ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i65, i64 120
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !53
  store ptr %i.gn, ptr %i.gd, align 8, !tbaa !553
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.gp = load i64, ptr %i.e, align 8             ; 2 uses
  %i.gq = and i64 %i.gp, 2
  %.not.i.i.i.i66 = icmp eq i64 %i.gq, 0
  br i1 %.not.i.i.i.i66, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNK4llvm15DICompositeType17getRawAnnotationsEv.exit
  %i.gr = getelementptr inbounds i8, ptr %1, i64 -32
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !21
  br label %_ZNK4llvm15DICompositeType16getSpecificationEv.exit

bb.aj:                                            ; preds = %_ZNK4llvm15DICompositeType17getRawAnnotationsEv.exit
  %i.gt = lshr i64 %i.gp, 2
  %i.gu = and i64 %i.gt, 15
  %i.gv = sub nsw i64 0, %i.gu
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.gv
  br label %_ZNK4llvm15DICompositeType16getSpecificationEv.exit

_ZNK4llvm15DICompositeType16getSpecificationEv.exit: ; preds = %bb.ai, %bb.aj
  %.sroa.0.0.i.i.i.i67 = phi ptr [ %i.gw, %bb.aj ], [ %i.gs, %bb.ai ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i67, i64 128
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !53
  store ptr %i.gy, ptr %i.go, align 8, !tbaa !554
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !294
  store i32 %i.hb, ptr %i.gz, align 8, !tbaa !555
  %i.hc = load i64, ptr %i.e, align 8             ; 2 uses
  %i.hd = and i64 %i.hc, 2
  %.not.i.i.i68 = icmp eq i64 %i.hd, 0
  br i1 %.not.i.i.i68, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNK4llvm15DICompositeType16getSpecificationEv.exit
  %i.he = getelementptr inbounds i8, ptr %1, i64 -32
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !21
  br label %_ZNK4llvm15DICompositeType15getRawBitStrideEv.exit

bb.al:                                            ; preds = %_ZNK4llvm15DICompositeType16getSpecificationEv.exit
  %i.hg = lshr i64 %i.hc, 2
  %i.hh = and i64 %i.hg, 15
  %i.hi = sub nsw i64 0, %i.hh
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.hi
  br label %_ZNK4llvm15DICompositeType15getRawBitStrideEv.exit

_ZNK4llvm15DICompositeType15getRawBitStrideEv.exit: ; preds = %bb.ak, %bb.al
  %.sroa.0.0.i.i.i70 = phi ptr [ %i.hj, %bb.al ], [ %i.hf, %bb.ak ]
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i70, i64 136
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !53
  store ptr %i.hm, ptr %i.hk, align 8, !tbaa !556
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.118", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !565
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !557
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1789
  store i32 0, ptr %i.p, align 16, !tbaa !1800
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1799
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.937", align 16  ; 9 uses
  %3 = alloca %"struct.llvm::MDNodeKeyImpl.450", align 8 ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !557
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1789
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !565  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1789 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !557
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !565
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 52
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !131 ; 2 uses
  %.not11.i17 = icmp eq i32 %i.aa, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ab = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.aa, %.lr.ph ], [ %i.bf, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.ac = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.ad = or disjoint i32 %i.ac, %i.ab
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !568
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN4llvm13MDNodeKeyImplINS_15DICompositeTypeEEC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(184) %3, ptr noundef %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.ah = load <2 x ptr>, ptr %i.o, align 8, !tbaa !159
  store <2 x ptr> %i.ah, ptr %2, align 16
  %i.ai = load i32, ptr %i.p, align 8, !tbaa !131
  store i32 %i.ai, ptr %i.u, align 16
  %i.aj = load <2 x ptr>, ptr %i.q, align 8, !tbaa !234
  %i.ak = shufflevector <2 x ptr> %i.aj, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ak, ptr %i.v, align 4
  %i.al = load ptr, ptr %i.r, align 8, !tbaa !234
  store ptr %i.al, ptr %i.w, align 4
  %i.am = load ptr, ptr %i.s, align 8, !tbaa !234
  store ptr %i.am, ptr %i.x, align 4
  %i.an = load ptr, ptr %i.t, align 8, !tbaa !234
  store ptr %i.an, ptr %i.y, align 4
  %i.ao = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 60) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = xor i32 %i.ap, -313160499
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi i32 [ %i.aq, %bb.c ], [ %i.ay, %bb.d ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.ar = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.as = lshr i64 %i.ar, 5                       ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !131 ; 2 uses
  %i.av = and i32 %.0.i7, 31                      ; 2 uses
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = trunc i32 %i.aw to i1
  %i.ay = add i32 %.0.i7, 1
  br i1 %i.ax, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1807

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.d
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.as
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ar
  %i.bb = load ptr, ptr %i.af, align 8, !tbaa !568
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !568
  %i.bc = shl nuw i32 1, %i.av
  %i.bd = or i32 %i.bc, %i.au
  store i32 %i.bd, ptr %i.az, align 4, !tbaa !131
  %i.be = add i32 %.0.i18, -1
  %i.bf = and i32 %i.be, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bf, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1808

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1809

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !565
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bg = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !1800
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !1800
  %i.bk = icmp eq i32 %i.bg, 0
  br i1 %i.bk, label %_ZN4llvm8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bl = load ptr, ptr %1, align 8, !tbaa !557
  %i.bm = zext i32 %i.bg to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !565
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DICompositeTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !580, !noalias !1810 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !588, !noalias !1810 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !589, !noalias !1810 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !360    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !131
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !146

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !360
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit, label %bb.c, !prof !121

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !131
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !147, !llvm.loop !1815

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1816
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1817
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit, label %bb.d, !prof !121

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1816
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !588
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !580
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !131
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !131
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1817
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !360
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !360
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !568
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E22findBucketForInsertionIS4_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E15LookupBucketForIS4_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !580, !noalias !1818 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !588, !noalias !1818 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !589, !noalias !1818 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !360    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !131
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !360
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !121

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !131
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !147, !llvm.loop !1815

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1816
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.210", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !589
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !580
  store ptr %i.y, ptr %i.q, align 8, !tbaa !588
  store i32 0, ptr %i.p, align 16, !tbaa !1817
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1816
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !580    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !588
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !589  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !588  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !580
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !589
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !131  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !360  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !131 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !131 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !1823

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !360
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !568
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !568
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !131
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1824

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1825

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !589
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1817
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1817
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !589
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8MDStringEPNS_15DICompositeTypeENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::array.958", align 4   ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !592, !noalias !1826 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !604, !noalias !1826 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !605, !noalias !1826 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !607    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !293
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.m = load i8, ptr %i.l, align 4, !tbaa !590
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = and i64 %i.o, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 -32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.s = lshr i64 %i.o, 2
  %i.t = and i64 %i.s, 15
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.u
  br label %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.r, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %i.k, ptr %2, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 %i.m, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 5
  store ptr %i.x, ptr %i.z, align 1
  %i.aa = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = xor i32 %i.ab, -313160499
  %.024.i = and i32 %i.ac, %i.h                   ; 3 uses
  %i.ad = zext i32 %.024.i to i64                 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ad ; 2 uses
  %i.af = lshr i64 %i.ad, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !131
  %i.ai = and i32 %.024.i, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph.i, label %.loopexit, !prof !146

.lr.ph.i:                                         ; preds = %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit.i
  %i.al = load ptr, ptr %1, align 8, !tbaa !607
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.am = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.am, %i.h                     ; 3 uses
  %i.an = zext i32 %.0.i to i64                   ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.an ; 2 uses
  %i.ap = lshr i64 %i.an, 5
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !131
  %i.as = and i32 %.0.i, 31
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i1
  br i1 %i.au, label %bb.f, label %.loopexit, !prof !147, !llvm.loop !1831

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %i.av = phi ptr [ %i.ae, %.lr.ph.i ], [ %i.ao, %bb.e ] ; 2 uses
  %.025.i = phi i32 [ %.024.i, %.lr.ph.i ], [ %.0.i, %bb.e ]
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !607
  %i.ax = icmp eq ptr %i.al, %i.aw
  br i1 %i.ax, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.e, !prof !121

.loopexit:                                        ; preds = %bb.e, %bb.a, %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit.i
  %.lcssa30.sink.i.ph = phi ptr [ %i.ae, %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit.i ], [ null, %bb.a ], [ %i.ao, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1832
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !1833
  %i.ba = load i32, ptr %i.e, align 4, !tbaa !605 ; 2 uses
  %i.bb = shl i32 %i.az, 2
  %i.bc = add i32 %i.bb, 4
  %i.bd = mul i32 %i.ba, 3
  %.not.i = icmp ult i32 %i.bc, %i.bd
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.g, !prof !121

bb.g:                                             ; preds = %.loopexit
  %i.be = shl i32 %i.ba, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.be)
  %i.bf = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1832
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.g
  %i.bg = phi ptr [ %.pre.i, %bb.g ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 3 uses
end_hunk_12
begin_hunk_13_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.958", align 4   ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !592, !noalias !1834 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !604, !noalias !1834 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !605, !noalias !1834 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !607    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !293
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.l = load i8, ptr %i.k, align 4, !tbaa !590
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = and i64 %i.n, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = lshr i64 %i.n, 2
  %i.s = and i64 %i.r, 15
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.t
  br label %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.q, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 %i.j, ptr %3, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 %i.l, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 5
  store ptr %i.w, ptr %i.y, align 1
  %i.z = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.aa = trunc i64 %i.z to i32
  %i.ab = xor i32 %i.aa, -313160499
  %.024 = and i32 %i.ab, %i.g                     ; 3 uses
  %i.ac = zext i32 %.024 to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !131
  %i.ah = and i32 %.024, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit
  %i.ak = load ptr, ptr %1, align 8, !tbaa !607
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.al = add nuw i32 %.025, 1
  %.0 = and i32 %i.al, %i.g                       ; 3 uses
  %i.am = zext i32 %.0 to i64                     ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.am ; 2 uses
  %i.ao = lshr i64 %i.am, 5
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !131
  %i.ar = and i32 %.0, 31
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = trunc i32 %i.as to i1
  br i1 %i.at, label %bb.f, label %.thread, !prof !147, !llvm.loop !1831

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.au = phi ptr [ %i.ad, %.lr.ph ], [ %i.an, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !607
  %i.aw = icmp eq ptr %i.ak, %i.av                ; 3 uses
  br i1 %i.aw, label %.thread, label %bb.e, !prof !121

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.ad, %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.an, %bb.e ], [ %i.au, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.aw, %bb.e ], [ %i.aw, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1832
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.122", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !605
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !592
  store ptr %i.y, ptr %i.q, align 8, !tbaa !604
  store i32 0, ptr %i.p, align 16, !tbaa !1833
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1832
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.958", align 4   ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !592
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !604
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !605  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !604  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !592
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !605
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.r, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.s = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.r, %.lr.ph ], [ %i.be, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.t = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !607  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !293
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !590
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 -16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i64 %i.ad, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %i.x, i64 -32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ah = lshr i64 %i.ad, 2
  %i.ai = and i64 %i.ah, 15
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aj
  br label %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.ag, %bb.d ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %i.z, ptr %2, align 4
  store i8 %i.ab, ptr %i.o, align 4
  store ptr %i.am, ptr %i.p, align 1
  %i.an = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ao = trunc i64 %i.an to i32
  %i.ap = xor i32 %i.ao, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ap, %_ZN4llvm10MDNodeInfoINS_16DISubroutineTypeEE12getHashValueEPKS1_.exit.i ], [ %i.ax, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.aq = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !131 ; 2 uses
  %i.au = and i32 %.0.i7, 31                      ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  %i.ax = add i32 %.0.i7, 1
  br i1 %i.aw, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1839

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aq
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !607
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !607
  %i.bb = shl nuw i32 1, %i.au
  %i.bc = or i32 %i.bb, %i.at
  store i32 %i.bc, ptr %i.ay, align 4, !tbaa !131
  %i.bd = add i32 %.0.i18, -1
  %i.be = and i32 %i.bd, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1840

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1841

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !605
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bf = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1833
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !1833
  %i.bj = icmp eq i32 %i.bf, 0
  br i1 %i.bj, label %_ZN4llvm8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !592
  %i.bl = zext i32 %i.bf to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !605
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DISubroutineTypeENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_6DIFileEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !632    ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm6DIFile14getRawFilenameEv.exit.i, label %_ZNK4llvm6DIFile14getRawFilenameEv.exit.thread.i

_ZNK4llvm6DIFile14getRawFilenameEv.exit.i:        ; preds = %bb.a
  %i.e = lshr i64 %i.c, 2
  %i.f = and i64 %i.e, 15
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.j = icmp eq ptr %i.a, %i.i
  br i1 %i.j, label %_ZNK4llvm6DIFile15getRawDirectoryEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_6DIFileEE7isKeyOfEPKS1_.exit

_ZNK4llvm6DIFile14getRawFilenameEv.exit.thread.i: ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %1, i64 -32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53
  %i.n = icmp eq ptr %i.a, %i.m
  br i1 %i.n, label %_ZNK4llvm6DIFile15getRawDirectoryEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_6DIFileEE7isKeyOfEPKS1_.exit

_ZNK4llvm6DIFile15getRawDirectoryEv.exit.i:       ; preds = %_ZNK4llvm6DIFile14getRawFilenameEv.exit.thread.i, %_ZNK4llvm6DIFile14getRawFilenameEv.exit.i
  %.sroa.0.0.i.i.i.i6.i = phi ptr [ %i.l, %_ZNK4llvm6DIFile14getRawFilenameEv.exit.thread.i ], [ %i.h, %_ZNK4llvm6DIFile14getRawFilenameEv.exit.i ]
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %.in.i, align 8, !tbaa !634
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i6.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_6DIFileEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %_ZNK4llvm6DIFile15getRawDirectoryEv.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load i8, ptr %i.s, align 8, !tbaa !650, !range !18, !noundef !19 ; 2 uses
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = icmp eq i8 %i.t, %.sroa.5.0.copyload.i   ; 2 uses
  %brmerge.not.i.i = and i1 %i.v, %i.u
  br i1 %brmerge.not.i.i, label %.split.i, label %_ZSteqIN4llvm6DIFile12ChecksumInfoIPNS0_8MDStringEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.i

.split.i:                                         ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.47.0.copyload.i = load ptr, ptr %.sroa.47.0..sroa_idx.i, align 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.x, align 8
  %i.y = load i32, ptr %i.w, align 8, !tbaa !1842
  %i.z = icmp eq i32 %i.y, %.sroa.0.0.copyload.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.ab, %.sroa.47.0.copyload.i
  %i.ad = select i1 %i.z, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.c, label %_ZNK4llvm13MDNodeKeyImplINS_6DIFileEE7isKeyOfEPKS1_.exit

_ZSteqIN4llvm6DIFile12ChecksumInfoIPNS0_8MDStringEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.i: ; preds = %bb.b
  br i1 %i.v, label %bb.c, label %_ZNK4llvm13MDNodeKeyImplINS_6DIFileEE7isKeyOfEPKS1_.exit

bb.c:                                             ; preds = %_ZSteqIN4llvm6DIFile12ChecksumInfoIPNS0_8MDStringEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.i, %.split.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !635
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !626
  %i.ai = icmp eq ptr %i.af, %i.ah
  br label %_ZNK4llvm13MDNodeKeyImplINS_6DIFileEE7isKeyOfEPKS1_.exit

_ZNK4llvm13MDNodeKeyImplINS_6DIFileEE7isKeyOfEPKS1_.exit: ; preds = %bb.c, %_ZSteqIN4llvm6DIFile12ChecksumInfoIPNS0_8MDStringEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.i, %.split.i, %_ZNK4llvm6DIFile15getRawDirectoryEv.exit.i, %_ZNK4llvm6DIFile14getRawFilenameEv.exit.thread.i, %_ZNK4llvm6DIFile14getRawFilenameEv.exit.i
  %i.aj = phi i1 [ false, %_ZSteqIN4llvm6DIFile12ChecksumInfoIPNS0_8MDStringEEES5_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS7_ERKSG_ISA_E.exit.i ], [ false, %_ZNK4llvm6DIFile15getRawDirectoryEv.exit.i ], [ false, %_ZNK4llvm6DIFile14getRawFilenameEv.exit.i ], [ %i.ai, %bb.c ], [ false, %_ZNK4llvm6DIFile14getRawFilenameEv.exit.thread.i ], [ false, %.split.i ]
  ret i1 %i.aj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::array.972", align 16  ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !636, !noalias !1845 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !648, !noalias !1845 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !649, !noalias !1845 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !652    ; 6 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = and i64 %i.k, 2
end_hunk_13
begin_hunk_14_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a
  %3 = alloca %"struct.std::array.972", align 16  ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !636, !noalias !1853 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !648, !noalias !1853 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !649, !noalias !1853 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !652    ; 6 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.j, 2
  %i.o = and i64 %i.n, 15
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  br label %_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.in.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6.16.copyload.i = load i32, ptr %i.r, align 8
  %.sroa.81.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.81.16.copyload.i = load ptr, ptr %.sroa.81.16..sroa_idx.i, align 8
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.9.16.copyload.i = load i8, ptr %.sroa.9.16..sroa_idx.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !626
  %i.u = trunc nuw i8 %.sroa.9.16.copyload.i to i1 ; 2 uses
  %i.v = select i1 %i.u, i32 %.sroa.6.16.copyload.i, i32 0
  %i.w = select i1 %i.u, ptr %.sroa.81.16.copyload.i, ptr null
  %i.x = load <2 x ptr>, ptr %.in.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store <2 x ptr> %i.x, ptr %3, align 16
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.v, ptr %i.y, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 20
  store ptr %i.w, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 28
  store ptr %i.t, ptr %i.aa, align 4
  %i.ab = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = xor i32 %i.ac, -313160499
  %.024 = and i32 %i.ad, %i.g                     ; 3 uses
  %i.ae = zext i32 %.024 to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = lshr i64 %i.ae, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !131
  %i.aj = and i32 %.024, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit
  %i.am = load ptr, ptr %1, align 8, !tbaa !652
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.an = add nuw i32 %.025, 1
  %.0 = and i32 %i.an, %i.g                       ; 3 uses
  %i.ao = zext i32 %.0 to i64                     ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ao ; 2 uses
  %i.aq = lshr i64 %i.ao, 5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !131
  %i.at = and i32 %.0, 31
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %bb.f, label %.thread, !prof !147, !llvm.loop !1850

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.aw = phi ptr [ %i.af, %.lr.ph ], [ %i.ap, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !652
  %i.ay = icmp eq ptr %i.am, %i.ax                ; 3 uses
  br i1 %i.ay, label %.thread, label %bb.e, !prof !121

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.af, %_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.ap, %bb.e ], [ %i.aw, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.ay, %bb.e ], [ %i.ay, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1851
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.126", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !649
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !636
  store ptr %i.y, ptr %i.q, align 8, !tbaa !648
  store i32 0, ptr %i.p, align 16, !tbaa !1852
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1851
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.972", align 16  ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !636
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !648
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !649  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !648  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !636
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !649
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 28
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.s, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.t = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.s, %.lr.ph ], [ %i.bg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.u = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !652  ; 6 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = and i64 %i.aa, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 -32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ae = lshr i64 %i.aa, 2
  %i.af = and i64 %i.ae, 15
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ag
  br label %_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.in.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.ad, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.6.16.copyload.i.i = load i32, ptr %i.ai, align 8
  %.sroa.81.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.81.16.copyload.i.i = load ptr, ptr %.sroa.81.16..sroa_idx.i.i, align 8
  %.sroa.9.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.9.16.copyload.i.i = load i8, ptr %.sroa.9.16..sroa_idx.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !626
  %i.al = trunc nuw i8 %.sroa.9.16.copyload.i.i to i1 ; 2 uses
  %i.am = select i1 %i.al, i32 %.sroa.6.16.copyload.i.i, i32 0
  %i.an = select i1 %i.al, ptr %.sroa.81.16.copyload.i.i, ptr null
  %i.ao = load <2 x ptr>, ptr %.in.i.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store <2 x ptr> %i.ao, ptr %2, align 16
  store i32 %i.am, ptr %i.o, align 16
  store ptr %i.an, ptr %i.p, align 4
  store ptr %i.ak, ptr %i.q, align 4
  %i.ap = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = xor i32 %i.aq, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ar, %_ZN4llvm10MDNodeInfoINS_6DIFileEE12getHashValueEPKS1_.exit.i ], [ %i.az, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.as = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.at = lshr i64 %i.as, 5                       ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !131 ; 2 uses
  %i.aw = and i32 %.0.i7, 31                      ; 2 uses
  %i.ax = lshr i32 %i.av, %i.aw
  %i.ay = trunc i32 %i.ax to i1
  %i.az = add i32 %.0.i7, 1
  br i1 %i.ay, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1858

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.at
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.as
  %i.bc = load ptr, ptr %i.x, align 8, !tbaa !652
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !652
  %i.bd = shl nuw i32 1, %i.aw
  %i.be = or i32 %i.bd, %i.av
  store i32 %i.be, ptr %i.ba, align 4, !tbaa !131
  %i.bf = add i32 %.0.i18, -1
  %i.bg = and i32 %i.bf, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1859

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1860

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !649
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bh = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !1852
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !1852
  %i.bl = icmp eq i32 %i.bh, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !636
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !649
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_6DIFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_7DIScopeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #23
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !52
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !52
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !693, !noalias !1861 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !705, !noalias !1861 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !706, !noalias !1861 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !196    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !131
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !146

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !196
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.c, !prof !121

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !131
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !147, !llvm.loop !1866

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1867
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1868
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit, label %bb.d, !prof !121

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1867
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !705
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !693
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !131
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !131
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1868
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !196
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !196
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !196
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E15LookupBucketForIS4_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !693, !noalias !1869 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !705, !noalias !1869 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !706, !noalias !1869 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !196    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !131
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !196
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !121

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !131
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !147, !llvm.loop !1866

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1867
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.521", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !706
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !693
  store ptr %i.y, ptr %i.q, align 8, !tbaa !705
  store i32 0, ptr %i.p, align 16, !tbaa !1868
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1867
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_6MDNodeEPS1_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPKNS_6MDNodeEPS1_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_6MDNodeEPS1_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !693    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !705
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !706  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !705  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !693
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !706
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS5_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !131  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !196  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !131 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !131 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !1874

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !196
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !196
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !196
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !131
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1875

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS2_NS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS5_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1876

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS5_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !706
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS5_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS5_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS5_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS5_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1868
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1868
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_6MDNodeEPS1_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS5_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !706
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_6MDNodeEPS1_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_6MDNodeEPS1_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_6MDNodeEPS5_NS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEES7_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_12DISubprogram9DISPFlagsELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #23
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !52
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !52
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_12DISubprogramEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load i32, ptr %i.a, align 4, !tbaa !723
  %i.c = and i32 %i.b, 8
  %.not.i = icmp eq i32 %i.c, 0
  %i.d = load ptr, ptr %0, align 8, !tbaa !711    ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !714  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !725
  %i.i = icmp ne ptr %i.d, null
  %or.cond.i.i = and i1 %i.i, %.not.i
  %i.j = icmp ne ptr %i.f, null
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.j
  br i1 %or.cond3.i.i, label %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeEKNS_8MetadataEEEDaPT0_.exit.i.i, label %_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE13isSubsetEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_.exit.thread

_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeEKNS_8MetadataEEEDaPT0_.exit.i.i: ; preds = %bb.a
  %i.k = load i8, ptr %i.d, align 4, !tbaa !95
  %.not30.i.i = icmp eq i8 %i.k, 14
  br i1 %.not30.i.i, label %bb.b, label %_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE13isSubsetEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_.exit.thread

bb.b:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeEKNS_8MetadataEEEDaPT0_.exit.i.i
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 -16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = and i64 %i.m, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds i8, ptr %i.d, i64 -32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  br label %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = lshr i64 %i.m, 2
  %i.r = and i64 %i.q, 15
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.s
  br label %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i.i

_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.p, %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !53
  %.not21.i.i = icmp eq ptr %i.v, null
  br i1 %.not21.i.i, label %_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE13isSubsetEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.x = load i32, ptr %i.w, align 4, !tbaa !683
  %i.y = and i32 %i.x, 8
  %.not32.i.i = icmp eq i32 %i.y, 0
  br i1 %.not32.i.i, label %bb.f, label %_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE13isSubsetEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = and i64 %i.aa, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm12DISubprogram11getRawScopeEv.exit.i.i, label %_ZNK4llvm12DISubprogram11getRawScopeEv.exit.thread.i.i

_ZNK4llvm12DISubprogram11getRawScopeEv.exit.i.i:  ; preds = %bb.f
  %i.ac = lshr i64 %i.aa, 2
  %i.ad = and i64 %i.ac, 15
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ae ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53
  %i.ai = icmp eq ptr %i.d, %i.ah
  br i1 %i.ai, label %_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.i.i, label %_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE13isSubsetEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_.exit.thread

_ZNK4llvm12DISubprogram11getRawScopeEv.exit.thread.i.i: ; preds = %bb.f
  %i.aj = getelementptr inbounds i8, ptr %1, i64 -32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !53
  %i.an = icmp eq ptr %i.d, %i.am
  br i1 %i.an, label %_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.thread.i.i, label %_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE13isSubsetEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_.exit.thread

_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.i.i: ; preds = %_ZNK4llvm12DISubprogram11getRawScopeEv.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !53
  %i.aq = icmp eq ptr %i.f, %i.ap
  br i1 %i.aq, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i.i, label %_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE13isSubsetEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_.exit.thread

_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.thread.i.i: ; preds = %_ZNK4llvm12DISubprogram11getRawScopeEv.exit.thread.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
end_hunk_14
begin_hunk_15_@_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE13isSubsetEqualEPKS1_S4_:bb.a
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21
  br label %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ao = lshr i64 %i.ak, 2
  %i.ap = and i64 %i.ao, 15
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.aq
  br label %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i

_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.ar, %bb.d ], [ %i.an, %bb.c ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !53
  %.not21.i = icmp eq ptr %i.at, null
  br i1 %.not21.i, label %_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE24isDeclarationOfODRMemberEbPKNS_8MetadataEPKNS_8MDStringES5_PKS1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.av = load i32, ptr %i.au, align 4, !tbaa !683
  %i.aw = and i32 %i.av, 8
  %.not32.i = icmp eq i32 %i.aw, 0
  br i1 %.not32.i, label %bb.f, label %_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE24isDeclarationOfODRMemberEbPKNS_8MetadataEPKNS_8MDStringES5_PKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8            ; 3 uses
  %i.az = and i64 %i.ay, 2
  %.not.i.i.i.i7 = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i7, label %_ZNK4llvm12DISubprogram11getRawScopeEv.exit.i, label %_ZNK4llvm12DISubprogram11getRawScopeEv.exit.thread.i

_ZNK4llvm12DISubprogram11getRawScopeEv.exit.i:    ; preds = %bb.f
  %i.ba = lshr i64 %i.ay, 2
  %i.bb = and i64 %i.ba, 15
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !53
  %i.bg = icmp eq ptr %i.ae, %i.bf
  br i1 %i.bg, label %_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.i, label %_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE24isDeclarationOfODRMemberEbPKNS_8MetadataEPKNS_8MDStringES5_PKS1_.exit

_ZNK4llvm12DISubprogram11getRawScopeEv.exit.thread.i: ; preds = %bb.f
  %i.bh = getelementptr inbounds i8, ptr %1, i64 -32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !21 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !53
  %i.bl = icmp eq ptr %i.ae, %i.bk
  br i1 %i.bl, label %_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.thread.i, label %_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE24isDeclarationOfODRMemberEbPKNS_8MetadataEPKNS_8MDStringES5_PKS1_.exit

_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.i: ; preds = %_ZNK4llvm12DISubprogram11getRawScopeEv.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !53
  %i.bo = icmp eq ptr %i.ad, %i.bn
  br i1 %i.bo, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i, label %_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE24isDeclarationOfODRMemberEbPKNS_8MetadataEPKNS_8MDStringES5_PKS1_.exit

_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.thread.i: ; preds = %_ZNK4llvm12DISubprogram11getRawScopeEv.exit.thread.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !53
  %i.br = icmp eq ptr %i.ad, %i.bq
  br i1 %i.br, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i, label %_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE24isDeclarationOfODRMemberEbPKNS_8MetadataEPKNS_8MDStringES5_PKS1_.exit

_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i:      ; preds = %_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.i
  %i.bs = and i64 %i.ay, 896
  %i.bt = icmp samesign ugt i64 %i.bs, 576
  br i1 %i.bt, label %_ZNK4llvm6DINode12getOperandAsINS_8MetadataEEEPT_j.exit.i.i, label %_ZNK4llvm12DISubprogram20getRawTemplateParamsEv.exit.i

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i: ; preds = %_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.thread.i
  %i.bu = getelementptr inbounds i8, ptr %1, i64 -24
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !52
  %i.bw = icmp ugt i32 %i.bv, 9
  br i1 %i.bw, label %_ZNK4llvm6DINode12getOperandAsINS_8MetadataEEEPT_j.exit.i.i, label %_ZNK4llvm12DISubprogram20getRawTemplateParamsEv.exit.i

_ZNK4llvm6DINode12getOperandAsINS_8MetadataEEEPT_j.exit.i.i: ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i
  %.sroa.0.0.i.i.i.i25.i = phi ptr [ %i.bi, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i ], [ %i.bd, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i25.i, i64 72
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !53
  br label %_ZNK4llvm12DISubprogram20getRawTemplateParamsEv.exit.i

_ZNK4llvm12DISubprogram20getRawTemplateParamsEv.exit.i: ; preds = %_ZNK4llvm6DINode12getOperandAsINS_8MetadataEEEPT_j.exit.i.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i
  %i.bz = phi ptr [ %i.by, %_ZNK4llvm6DINode12getOperandAsINS_8MetadataEEEPT_j.exit.i.i ], [ null, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.i.i ], [ null, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread.i.i ]
  %i.ca = icmp eq ptr %i.af, %i.bz
  br label %_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE24isDeclarationOfODRMemberEbPKNS_8MetadataEPKNS_8MDStringES5_PKS1_.exit

_ZN4llvm21MDNodeSubsetEqualImplINS_12DISubprogramEE24isDeclarationOfODRMemberEbPKNS_8MetadataEPKNS_8MDStringES5_PKS1_.exit: ; preds = %_ZNK4llvm12DISubprogram20getRawTemplateParamsEv.exit, %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeEKNS_8MetadataEEEDaPT0_.exit.i, %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i, %bb.e, %_ZNK4llvm12DISubprogram11getRawScopeEv.exit.i, %_ZNK4llvm12DISubprogram11getRawScopeEv.exit.thread.i, %_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.i, %_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.thread.i, %_ZNK4llvm12DISubprogram20getRawTemplateParamsEv.exit.i
  %.1.i = phi i1 [ false, %_ZNK4llvm12DISubprogram20getRawTemplateParamsEv.exit ], [ false, %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeEKNS_8MetadataEEEDaPT0_.exit.i ], [ false, %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i ], [ false, %_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.i ], [ false, %_ZNK4llvm12DISubprogram11getRawScopeEv.exit.i ], [ false, %bb.e ], [ %i.ca, %_ZNK4llvm12DISubprogram20getRawTemplateParamsEv.exit.i ], [ false, %_ZNK4llvm12DISubprogram11getRawScopeEv.exit.thread.i ], [ false, %_ZNK4llvm12DISubprogram17getRawLinkageNameEv.exit.thread.i ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.130", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !745
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !732
  store ptr %i.y, ptr %i.q, align 8, !tbaa !744
  store i32 0, ptr %i.p, align 16, !tbaa !1885
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1884
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.972", align 8   ; 8 uses
  %3 = alloca %"struct.std::array.810", align 8   ; 5 uses
  %4 = alloca %"struct.llvm::MDNodeKeyImpl.541", align 8 ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !732
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !744
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !745  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !744  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !732
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !745
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i21 = icmp eq i64 %i.n, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph24, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph24 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !131 ; 2 uses
  %.not11.i19 = icmp eq i32 %i.aa, 0
  br i1 %.not11.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ab = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i20 = phi i32 [ %i.aa, %.lr.ph ], [ %i.cb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.ac = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.ad = or disjoint i32 %i.ac, %i.ab
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !747
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN4llvm13MDNodeKeyImplINS_12DISubprogramEEC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef %i.ag)
  %i.ah = load ptr, ptr %4, align 8, !tbaa !711   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !95
  %i.aj = icmp eq i8 %i.ai, 14
  br i1 %i.aj, label %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.i, label %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.thread.i

_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.i: ; preds = %bb.d
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 -16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = and i64 %i.al, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.i
  %i.an = getelementptr inbounds i8, ptr %i.ah, i64 -32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !21
  br label %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i

bb.f:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.i
  %i.ap = lshr i64 %i.al, 2
  %i.aq = and i64 %i.ap, 15
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ar
  br label %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i

_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.as, %bb.f ], [ %i.ao, %bb.e ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !53 ; 2 uses
  %.not7.i = icmp eq ptr %i.au, null
  br i1 %.not7.i, label %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i
  %i.av = call { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #23 ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.av, 0
  %i.ax = extractvalue { ptr, i64 } %i.av, 1
  br label %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.thread.i

_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.thread.i: ; preds = %bb.g, %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i, %bb.d, %bb.c
  %.sroa.6.0.i = phi i64 [ %i.ax, %bb.g ], [ 0, %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i ], [ 0, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.sroa.015.0.i = phi ptr [ %i.aw, %bb.g ], [ null, %_ZNK4llvm15DICompositeType16getRawIdentifierEv.exit.i ], [ null, %bb.d ], [ null, %bb.c ] ; 2 uses
  %i.ay = load i32, ptr %i.o, align 4, !tbaa !723
  %i.az = and i32 %i.ay, 8
  %.not.i8 = icmp eq i32 %i.az, 0
  br i1 %.not.i8, label %bb.h, label %_ZN4llvm15isa_and_nonnullIJNS_15DICompositeTypeEEPNS_8MetadataEEEbRKT0_.exit.thread.i

bb.h:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.thread.i
  %i.ba = load ptr, ptr %i.p, align 8, !tbaa !714 ; 2 uses
  %.not8.i = icmp eq ptr %i.ba, null
  br i1 %.not8.i, label %_ZN4llvm15isa_and_nonnullIJNS_15DICompositeTypeEEPNS_8MetadataEEEbRKT0_.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %4, align 8, !tbaa !234   ; 2 uses
  %.not.i.i9.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i9.i, label %_ZN4llvm15isa_and_nonnullIJNS_15DICompositeTypeEEPNS_8MetadataEEEbRKT0_.exit.thread.i, label %_ZN4llvm15isa_and_nonnullIJNS_15DICompositeTypeEEPNS_8MetadataEEEbRKT0_.exit.i

_ZN4llvm15isa_and_nonnullIJNS_15DICompositeTypeEEPNS_8MetadataEEEbRKT0_.exit.i: ; preds = %bb.i
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !95
  %i.bd = icmp eq i8 %i.bc, 14
  br i1 %i.bd, label %bb.j, label %_ZN4llvm15isa_and_nonnullIJNS_15DICompositeTypeEEPNS_8MetadataEEEbRKT0_.exit.thread.i

bb.j:                                             ; preds = %_ZN4llvm15isa_and_nonnullIJNS_15DICompositeTypeEEPNS_8MetadataEEEbRKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.ba, ptr %3, align 8
  %i.be = call noundef i64 @_ZN4llvm10hash_valueENS_9StringRefE(ptr %.sroa.015.0.i, i64 %.sroa.6.0.i) #23
  store i64 %i.be, ptr %i.q, align 8
  %i.bf = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNK4llvm13MDNodeKeyImplINS_12DISubprogramEE12getHashValueEv.exit

_ZN4llvm15isa_and_nonnullIJNS_15DICompositeTypeEEPNS_8MetadataEEEbRKT0_.exit.thread.i: ; preds = %_ZN4llvm15isa_and_nonnullIJNS_15DICompositeTypeEEPNS_8MetadataEEEbRKT0_.exit.i, %bb.i, %bb.h, %_ZN4llvm16dyn_cast_or_nullINS_15DICompositeTypeENS_8MetadataEEEDaPT0_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.bg = load ptr, ptr %i.r, align 8, !tbaa !360
  store ptr %i.bg, ptr %2, align 8
  %i.bh = call noundef i64 @_ZN4llvm10hash_valueENS_9StringRefE(ptr %.sroa.015.0.i, i64 %.sroa.6.0.i) #23
  store i64 %i.bh, ptr %i.v, align 8
  %i.bi = load ptr, ptr %i.s, align 8, !tbaa !234
  store ptr %i.bi, ptr %i.w, align 8
  %i.bj = load ptr, ptr %i.t, align 8, !tbaa !234
  store ptr %i.bj, ptr %i.x, align 8
  %i.bk = load i32, ptr %i.u, align 8, !tbaa !131
  store i32 %i.bk, ptr %i.y, align 8
  %i.bl = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNK4llvm13MDNodeKeyImplINS_12DISubprogramEE12getHashValueEv.exit

_ZNK4llvm13MDNodeKeyImplINS_12DISubprogramEE12getHashValueEv.exit: ; preds = %bb.j, %_ZN4llvm15isa_and_nonnullIJNS_15DICompositeTypeEEPNS_8MetadataEEEbRKT0_.exit.thread.i
  %.0.in.in.i = phi i64 [ %i.bl, %_ZN4llvm15isa_and_nonnullIJNS_15DICompositeTypeEEPNS_8MetadataEEEbRKT0_.exit.thread.i ], [ %i.bf, %bb.j ]
  %i.bm = trunc i64 %.0.in.in.i to i32
  %.0.i9 = xor i32 %i.bm, -313160499
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %_ZNK4llvm13MDNodeKeyImplINS_12DISubprogramEE12getHashValueEv.exit
  %.pn.i = phi i32 [ %.0.i9, %_ZNK4llvm13MDNodeKeyImplINS_12DISubprogramEE12getHashValueEv.exit ], [ %i.bu, %bb.k ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.bn = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.bo = lshr i64 %i.bn, 5                       ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !131 ; 2 uses
  %i.br = and i32 %.0.i7, 31                      ; 2 uses
  %i.bs = lshr i32 %i.bq, %i.br
  %i.bt = trunc i32 %i.bs to i1
  %i.bu = add i32 %.0.i7, 1
  br i1 %i.bt, label %bb.k, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1891

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bo
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bn
  %i.bx = load ptr, ptr %i.af, align 8, !tbaa !747
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !747
  %i.by = shl nuw i32 1, %i.br
  %i.bz = or i32 %i.by, %i.bq
  store i32 %i.bz, ptr %i.bv, align 4, !tbaa !131
  %i.ca = add i32 %.0.i20, -1
  %i.cb = and i32 %i.ca, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.cb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1892

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1893

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !745
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.cc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !1885
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ce, ptr %i.cf, align 8, !tbaa !1885
  %i.cg = icmp eq i32 %i.cc, 0
  br i1 %i.cg, label %_ZN4llvm8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.ch = load ptr, ptr %1, align 8, !tbaa !732
  %i.ci = zext i32 %i.cc to i64                   ; 2 uses
  %i.cj = shl nuw nsw i64 %i.ci, 3
  %i.ck = add nuw nsw i64 %i.ci, 31
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = and i64 %i.cl, 1073741820
  %i.cn = add nuw nsw i64 %i.cm, %i.cj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ch, i64 noundef %i.cn, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !745
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DISubprogramENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.l
  ret void
}

declare void @_ZN4llvm6MDNode18replaceOperandWithEjPNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN4llvm7MDTuple7getImplERNS_11LLVMContextENS_8ArrayRefIPNS_8MetadataEEENS4_11StorageTypeEb(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !775
  %i.b = getelementptr inbounds i8, ptr %1, i64 -16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = and i64 %i.c, 2
  %.not.i.i.i.i = icmp eq i64 %i.d, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %1, i64 -32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  br label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.c, 2
  %i.h = and i64 %i.g, 15
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.i
  br label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i

_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.f, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53
  %i.m = icmp eq ptr %i.a, %i.l
  br i1 %i.m, label %bb.d, label %_ZNK4llvm13MDNodeKeyImplINS_14DILexicalBlockEE7isKeyOfEPKS1_.exit
end_hunk_15
begin_hunk_16_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !795    ; 8 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i, label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i

_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i: ; preds = %bb.b
  %i.l = lshr i64 %i.j, 2
  %i.m = and i64 %i.l, 15
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53   ; 2 uses
  %i.r = load i8, ptr %i.h, align 8, !tbaa !95
  %i.s = icmp eq i8 %i.r, 16
  br i1 %i.s, label %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit, label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i

_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i: ; preds = %bb.b
  %i.t = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !53   ; 2 uses
  %i.x = load i8, ptr %i.h, align 8, !tbaa !95
  %i.y = icmp eq i8 %i.x, 16
  br i1 %i.y, label %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit, label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i:        ; preds = %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i
  %i.z = phi ptr [ %i.w, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i ], [ %i.q, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i ]
  %.sroa.0.0.i.i.i6.i.i = phi ptr [ %i.u, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i ], [ %i.o, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i ]
  %i.aa = load ptr, ptr %.sroa.0.0.i.i.i6.i.i, align 8, !tbaa !53
  br label %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit: ; preds = %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i
  %i.ab = phi ptr [ %i.z, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i ], [ %i.q, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i ], [ %i.w, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i ]
  %i.ac = phi ptr [ %i.aa, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i ], [ %i.h, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i ], [ %i.h, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !58
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !162
  %i.ah = zext i16 %i.ag to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.ab, ptr %3, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ac, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.ae, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.ah, ptr %i.ak, align 4
  %i.al = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.am = trunc i64 %i.al to i32
  %i.an = xor i32 %i.am, -313160499
  %.024 = and i32 %i.an, %i.g                     ; 3 uses
  %i.ao = zext i32 %.024 to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ao ; 2 uses
  %i.aq = lshr i64 %i.ao, 5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !131
  %i.at = and i32 %.024, 31
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit
  %i.aw = load ptr, ptr %1, align 8, !tbaa !795
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.ax = add nuw i32 %.025, 1
  %.0 = and i32 %i.ax, %i.g                       ; 3 uses
  %i.ay = zext i32 %.0 to i64                     ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ay ; 2 uses
  %i.ba = lshr i64 %i.ay, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !131
  %i.bd = and i32 %.0, 31
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %bb.d, label %.thread, !prof !147, !llvm.loop !1899

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.bg = phi ptr [ %i.ap, %.lr.ph ], [ %i.az, %bb.c ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.c ]
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !795
  %i.bi = icmp eq ptr %i.aw, %i.bh                ; 3 uses
  br i1 %i.bi, label %.thread, label %bb.c, !prof !121

.thread:                                          ; preds = %bb.d, %bb.c, %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.ap, %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.az, %bb.c ], [ %i.bg, %bb.d ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.bi, %bb.c ], [ %i.bi, %bb.d ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1900
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.134", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !793
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !780
  store ptr %i.y, ptr %i.q, align 8, !tbaa !792
  store i32 0, ptr %i.p, align 16, !tbaa !1901
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1900
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.791", align 8   ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !780
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !792
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !793  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !792  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !780
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !793
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.s, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.t = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.s, %.lr.ph ], [ %i.bq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.u = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !795  ; 8 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = and i64 %i.aa, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i, label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i

_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i: ; preds = %bb.c
  %i.ac = lshr i64 %i.aa, 2
  %i.ad = and i64 %i.ac, 15
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53 ; 2 uses
  %i.ai = load i8, ptr %i.y, align 8, !tbaa !95
  %i.aj = icmp eq i8 %i.ai, 16
  br i1 %i.aj, label %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit.i, label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i

_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i: ; preds = %bb.c
  %i.ak = getelementptr inbounds i8, ptr %i.y, i64 -32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !21 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !53 ; 2 uses
  %i.ao = load i8, ptr %i.y, align 8, !tbaa !95
  %i.ap = icmp eq i8 %i.ao, 16
  br i1 %i.ap, label %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit.i, label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i:      ; preds = %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i
  %i.aq = phi ptr [ %i.an, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i ], [ %i.ah, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i ]
  %.sroa.0.0.i.i.i6.i.i.i = phi ptr [ %i.al, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i ], [ %i.af, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i ]
  %i.ar = load ptr, ptr %.sroa.0.0.i.i.i6.i.i.i, align 8, !tbaa !53
  br label %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit.i: ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i
  %i.as = phi ptr [ %i.aq, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i ], [ %i.ah, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i ], [ %i.an, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i ]
  %i.at = phi ptr [ %i.ar, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i ], [ %i.y, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i ], [ %i.y, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ax = load i16, ptr %i.aw, align 8, !tbaa !162
  %i.ay = zext i16 %i.ax to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.as, ptr %2, align 8
  store ptr %i.at, ptr %i.o, align 8
  store i32 %i.av, ptr %i.p, align 8
  store i32 %i.ay, ptr %i.q, align 4
  %i.az = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ba = trunc i64 %i.az to i32
  %i.bb = xor i32 %i.ba, -313160499
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.bb, %_ZN4llvm10MDNodeInfoINS_14DILexicalBlockEE12getHashValueEPKS1_.exit.i ], [ %i.bj, %bb.d ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.bc = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.bd = lshr i64 %i.bc, 5                       ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !131 ; 2 uses
  %i.bg = and i32 %.0.i7, 31                      ; 2 uses
  %i.bh = lshr i32 %i.bf, %i.bg
  %i.bi = trunc i32 %i.bh to i1
  %i.bj = add i32 %.0.i7, 1
  br i1 %i.bi, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1907

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bd
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bc
  %i.bm = load ptr, ptr %i.x, align 8, !tbaa !795
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !795
  %i.bn = shl nuw i32 1, %i.bg
  %i.bo = or i32 %i.bn, %i.bf
  store i32 %i.bo, ptr %i.bk, align 4, !tbaa !131
  %i.bp = add i32 %.0.i18, -1
  %i.bq = and i32 %i.bp, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bq, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1908

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1909

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !793
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.br = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !1901
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !1901
  %i.bv = icmp eq i32 %i.br, 0
  br i1 %i.bv, label %_ZN4llvm8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bw = load ptr, ptr %1, align 8, !tbaa !780
  %i.bx = zext i32 %i.br to i64                   ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 3
  %i.bz = add nuw nsw i64 %i.bx, 31
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 1073741820
  %i.cc = add nuw nsw i64 %i.cb, %i.by
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bw, i64 noundef %i.cc, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !793
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DILexicalBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !812
  %i.b = getelementptr inbounds i8, ptr %1, i64 -16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = and i64 %i.c, 2
  %.not.i.i.i.i = icmp eq i64 %i.d, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %1, i64 -32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  br label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i

bb.c:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.c, 2
  %i.h = and i64 %i.g, 15
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.i
  br label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i

_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %i.f, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53
  %i.m = icmp eq ptr %i.a, %i.l
  br i1 %i.m, label %bb.d, label %_ZNK4llvm13MDNodeKeyImplINS_18DILexicalBlockFileEE7isKeyOfEPKS1_.exit

bb.d:                                             ; preds = %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !814
  %i.p = load i8, ptr %1, align 8, !tbaa !95
  %i.q = icmp eq i8 %i.p, 16
  br i1 %i.q, label %_ZNK4llvm7DIScope10getRawFileEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds i8, ptr %1, i64 -32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.t = lshr i64 %i.c, 2
  %i.u = and i64 %i.t, 15
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.v
  br label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i:          ; preds = %bb.g, %bb.f
  %.sroa.0.0.i.i.i5.i = phi ptr [ %i.w, %bb.g ], [ %i.s, %bb.f ]
  %i.x = load ptr, ptr %.sroa.0.0.i.i.i5.i, align 8, !tbaa !53
  br label %_ZNK4llvm7DIScope10getRawFileEv.exit.i

_ZNK4llvm7DIScope10getRawFileEv.exit.i:           ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit.i.i, %bb.d
  %i.y = phi ptr [ %i.x, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i ], [ %1, %bb.d ]
  %i.z = icmp eq ptr %i.o, %i.y
  br i1 %i.z, label %bb.h, label %_ZNK4llvm13MDNodeKeyImplINS_18DILexicalBlockFileEE7isKeyOfEPKS1_.exit

bb.h:                                             ; preds = %_ZNK4llvm7DIScope10getRawFileEv.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !815
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !58
  %i.ae = icmp eq i32 %i.ab, %i.ad
  br label %_ZNK4llvm13MDNodeKeyImplINS_18DILexicalBlockFileEE7isKeyOfEPKS1_.exit

_ZNK4llvm13MDNodeKeyImplINS_18DILexicalBlockFileEE7isKeyOfEPKS1_.exit: ; preds = %bb.h, %_ZNK4llvm7DIScope10getRawFileEv.exit.i, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i
  %i.af = phi i1 [ false, %_ZNK4llvm7DIScope10getRawFileEv.exit.i ], [ false, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i ], [ %i.ae, %bb.h ]
  ret i1 %i.af
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::array.1029", align 8  ; 6 uses
end_hunk_16
begin_hunk_17_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !828, !noalias !1918 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !829, !noalias !1918 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !831    ; 7 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i, label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i

_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i: ; preds = %bb.b
  %i.l = lshr i64 %i.j, 2
  %i.m = and i64 %i.l, 15
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53   ; 2 uses
  %i.r = load i8, ptr %i.h, align 8, !tbaa !95
  %i.s = icmp eq i8 %i.r, 16
  br i1 %i.s, label %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit, label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i

_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i: ; preds = %bb.b
  %i.t = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !53   ; 2 uses
  %i.x = load i8, ptr %i.h, align 8, !tbaa !95
  %i.y = icmp eq i8 %i.x, 16
  br i1 %i.y, label %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit, label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i:        ; preds = %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i
  %i.z = phi ptr [ %i.w, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i ], [ %i.q, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i ]
  %.sroa.0.0.i.i.i5.i.i = phi ptr [ %i.u, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i ], [ %i.o, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i ]
  %i.aa = load ptr, ptr %.sroa.0.0.i.i.i5.i.i, align 8, !tbaa !53
  br label %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit: ; preds = %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i
  %i.ab = phi ptr [ %i.z, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i ], [ %i.q, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i ], [ %i.w, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i ]
  %i.ac = phi ptr [ %i.aa, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i ], [ %i.h, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i ], [ %i.h, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.ab, ptr %3, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ac, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.ae, ptr %i.ag, align 8
  %i.ah = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = xor i32 %i.ai, -313160499
  %.024 = and i32 %i.aj, %i.g                     ; 3 uses
  %i.ak = zext i32 %.024 to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ak ; 2 uses
  %i.am = lshr i64 %i.ak, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !131
  %i.ap = and i32 %.024, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit
  %i.as = load ptr, ptr %1, align 8, !tbaa !831
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.at = add nuw i32 %.025, 1
  %.0 = and i32 %i.at, %i.g                       ; 3 uses
  %i.au = zext i32 %.0 to i64                     ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.au ; 2 uses
  %i.aw = lshr i64 %i.au, 5
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !131
  %i.az = and i32 %.0, 31
  %i.ba = lshr i32 %i.ay, %i.az
  %i.bb = trunc i32 %i.ba to i1
  br i1 %i.bb, label %bb.d, label %.thread, !prof !147, !llvm.loop !1915

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.bc = phi ptr [ %i.al, %.lr.ph ], [ %i.av, %bb.c ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.c ]
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !831
  %i.be = icmp eq ptr %i.as, %i.bd                ; 3 uses
  br i1 %i.be, label %.thread, label %bb.c, !prof !121

.thread:                                          ; preds = %bb.d, %bb.c, %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.al, %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.av, %bb.c ], [ %i.bc, %bb.d ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.be, %bb.c ], [ %i.be, %bb.d ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1916
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.138", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !829
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !816
  store ptr %i.y, ptr %i.q, align 8, !tbaa !828
  store i32 0, ptr %i.p, align 16, !tbaa !1917
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1916
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1029", align 8  ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !816
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !828
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !829  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !828  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !816
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !829
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.r, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.s = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.r, %.lr.ph ], [ %i.bm, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.t = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !831  ; 7 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = and i64 %i.z, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i, label %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i

_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i: ; preds = %bb.c
  %i.ab = lshr i64 %i.z, 2
  %i.ac = and i64 %i.ab, 15
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !53 ; 2 uses
  %i.ah = load i8, ptr %i.x, align 8, !tbaa !95
  %i.ai = icmp eq i8 %i.ah, 16
  br i1 %i.ai, label %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit.i, label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i

_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i: ; preds = %bb.c
  %i.aj = getelementptr inbounds i8, ptr %i.x, i64 -32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !53 ; 2 uses
  %i.an = load i8, ptr %i.x, align 8, !tbaa !95
  %i.ao = icmp eq i8 %i.an, 16
  br i1 %i.ao, label %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit.i, label %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i

_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i:      ; preds = %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i
  %i.ap = phi ptr [ %i.am, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i ], [ %i.ag, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i ]
  %.sroa.0.0.i.i.i5.i.i.i = phi ptr [ %i.ak, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i ], [ %i.ae, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i ]
  %i.aq = load ptr, ptr %.sroa.0.0.i.i.i5.i.i.i, align 8, !tbaa !53
  br label %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit.i: ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i
  %i.ar = phi ptr [ %i.ap, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i ], [ %i.ag, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i ], [ %i.am, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i ]
  %i.as = phi ptr [ %i.aq, %_ZNK4llvm6MDNode10getOperandEj.exit.i.i.i.i ], [ %i.x, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.i.i ], [ %i.x, %_ZNK4llvm18DILexicalBlockBase11getRawScopeEv.exit.i.thread.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.ar, ptr %2, align 8
  store ptr %i.as, ptr %i.o, align 8
  store i32 %i.au, ptr %i.p, align 8
  %i.av = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 20) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.aw = trunc i64 %i.av to i32
  %i.ax = xor i32 %i.aw, -313160499
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ax, %_ZN4llvm10MDNodeInfoINS_18DILexicalBlockFileEE12getHashValueEPKS1_.exit.i ], [ %i.bf, %bb.d ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.ay = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.az = lshr i64 %i.ay, 5                       ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !131 ; 2 uses
  %i.bc = and i32 %.0.i7, 31                      ; 2 uses
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i1
  %i.bf = add i32 %.0.i7, 1
  br i1 %i.be, label %bb.d, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1923

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.az
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ay
  %i.bi = load ptr, ptr %i.w, align 8, !tbaa !831
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !831
  %i.bj = shl nuw i32 1, %i.bc
  %i.bk = or i32 %i.bj, %i.bb
  store i32 %i.bk, ptr %i.bg, align 4, !tbaa !131
  %i.bl = add i32 %.0.i18, -1
  %i.bm = and i32 %i.bl, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bm, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1924

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1925

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !829
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bn = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !1917
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bp, ptr %i.bq, align 8, !tbaa !1917
  %i.br = icmp eq i32 %i.bn, 0
  br i1 %i.br, label %_ZN4llvm8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bs = load ptr, ptr %1, align 8, !tbaa !816
  %i.bt = zext i32 %i.bn to i64                   ; 2 uses
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = add nuw nsw i64 %i.bt, 31
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = and i64 %i.bw, 1073741820
  %i.by = add nuw nsw i64 %i.bx, %i.bu
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bs, i64 noundef %i.by, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !829
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_18DILexicalBlockFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_11DINamespaceEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !848    ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 2
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm11DINamespace11getRawScopeEv.exit.i, label %_ZNK4llvm11DINamespace11getRawScopeEv.exit.thread.i

_ZNK4llvm11DINamespace11getRawScopeEv.exit.i:     ; preds = %bb.a
  %i.e = lshr i64 %i.c, 2
  %i.f = and i64 %i.e, 15
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.k = icmp eq ptr %i.a, %i.j
  br i1 %i.k, label %_ZNK4llvm11DINamespace10getRawNameEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_11DINamespaceEE7isKeyOfEPKS1_.exit

_ZNK4llvm11DINamespace11getRawScopeEv.exit.thread.i: ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %1, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !53
  %i.p = icmp eq ptr %i.a, %i.o
  br i1 %i.p, label %_ZNK4llvm11DINamespace10getRawNameEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_11DINamespaceEE7isKeyOfEPKS1_.exit

_ZNK4llvm11DINamespace10getRawNameEv.exit.i:      ; preds = %_ZNK4llvm11DINamespace11getRawScopeEv.exit.thread.i, %_ZNK4llvm11DINamespace11getRawScopeEv.exit.i
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.m, %_ZNK4llvm11DINamespace11getRawScopeEv.exit.thread.i ], [ %i.h, %_ZNK4llvm11DINamespace11getRawScopeEv.exit.i ]
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %.in.i, align 8, !tbaa !850
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_11DINamespaceEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %_ZNK4llvm11DINamespace10getRawNameEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i8, ptr %i.u, align 8, !tbaa !851, !range !18, !noundef !19
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %.lobit.i = lshr i8 %i.x, 7
  %i.y = icmp eq i8 %i.v, %.lobit.i
  br label %_ZNK4llvm13MDNodeKeyImplINS_11DINamespaceEE7isKeyOfEPKS1_.exit

_ZNK4llvm13MDNodeKeyImplINS_11DINamespaceEE7isKeyOfEPKS1_.exit: ; preds = %bb.b, %_ZNK4llvm11DINamespace10getRawNameEv.exit.i, %_ZNK4llvm11DINamespace11getRawScopeEv.exit.thread.i, %_ZNK4llvm11DINamespace11getRawScopeEv.exit.i
  %i.z = phi i1 [ false, %_ZNK4llvm11DINamespace10getRawNameEv.exit.i ], [ false, %_ZNK4llvm11DINamespace11getRawScopeEv.exit.i ], [ %i.y, %bb.b ], [ false, %_ZNK4llvm11DINamespace11getRawScopeEv.exit.thread.i ]
  ret i1 %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::array.810", align 16  ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !852, !noalias !1926 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !864, !noalias !1926 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !865, !noalias !1926 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !867    ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = and i64 %i.k, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = lshr i64 %i.k, 2
  %i.p = and i64 %i.o, 15
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.q
end_hunk_17
begin_hunk_18_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !131
  %i.bm = or i32 %i.bi, %i.bl
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !131
  %i.bn = load i32, ptr %i.ar, align 8, !tbaa !1933
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.ar, align 8, !tbaa !1933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bp = load ptr, ptr %1, align 8, !tbaa !867
  store ptr %i.bp, ptr %i.az, align 8, !tbaa !867
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %bb.f, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.az, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.ao, %bb.f ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.810", align 16  ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !852, !noalias !1934 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !864, !noalias !1934 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !865, !noalias !1934 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !867    ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.j, 2
  %i.o = and i64 %i.n, 15
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  br label %_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.pn.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ]
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %i.r = load <2 x ptr>, ptr %.in.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store <2 x ptr> %i.r, ptr %3, align 16
  %i.s = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.t = trunc i64 %i.s to i32
  %i.u = xor i32 %i.t, -313160499
  %.024 = and i32 %i.u, %i.g                      ; 3 uses
  %i.v = zext i32 %.024 to i64                    ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = lshr i64 %i.v, 5
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !131
  %i.aa = and i32 %.024, 31
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit
  %i.ad = load ptr, ptr %1, align 8, !tbaa !867
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.ae = add nuw i32 %.025, 1
  %.0 = and i32 %i.ae, %i.g                       ; 3 uses
  %i.af = zext i32 %.0 to i64                     ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !131
  %i.ak = and i32 %.0, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %bb.f, label %.thread, !prof !147, !llvm.loop !1931

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.an = phi ptr [ %i.w, %.lr.ph ], [ %i.ag, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !867
  %i.ap = icmp eq ptr %i.ad, %i.ao                ; 3 uses
  br i1 %i.ap, label %.thread, label %bb.e, !prof !121

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.w, %_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.ag, %bb.e ], [ %i.an, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.ap, %bb.e ], [ %i.ap, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1932
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.142", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !865
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !852
  store ptr %i.y, ptr %i.q, align 8, !tbaa !864
  store i32 0, ptr %i.p, align 16, !tbaa !1933
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1932
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.810", align 16  ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !852
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !864
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !865  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !864  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !852
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !865
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !867  ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = and i64 %i.x, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 -32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ab = lshr i64 %i.x, 2
  %i.ac = and i64 %i.ab, 15
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ad
  br label %_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit.i: ; preds = %bb.d, %bb.c
  %.pn.i.i = phi ptr [ %i.ae, %bb.d ], [ %i.aa, %bb.c ]
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  %i.af = load <2 x ptr>, ptr %.in.i.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store <2 x ptr> %i.af, ptr %2, align 16
  %i.ag = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = xor i32 %i.ah, -313160499
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ai, %_ZN4llvm10MDNodeInfoINS_11DINamespaceEE12getHashValueEPKS1_.exit.i ], [ %i.aq, %bb.e ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.aj = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ak = lshr i64 %i.aj, 5                       ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !131 ; 2 uses
  %i.an = and i32 %.0.i7, 31                      ; 2 uses
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  %i.aq = add i32 %.0.i7, 1
  br i1 %i.ap, label %bb.e, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1939

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ak
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aj
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !867
  store ptr %i.at, ptr %i.as, align 8, !tbaa !867
  %i.au = shl nuw i32 1, %i.an
  %i.av = or i32 %i.au, %i.am
  store i32 %i.av, ptr %i.ar, align 4, !tbaa !131
  %i.aw = add i32 %.0.i18, -1
  %i.ax = and i32 %i.aw, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1940

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !1941

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !865
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1933
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !1933
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = load ptr, ptr %1, align 8, !tbaa !852
  %i.be = zext i32 %i.ay to i64                   ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.be, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  %i.bj = add nuw nsw i64 %i.bi, %i.bf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bd, i64 noundef %i.bj, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !865
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DINamespaceENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !884    ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 2
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm13DICommonBlock11getRawScopeEv.exit.i, label %_ZNK4llvm13DICommonBlock11getRawScopeEv.exit.thread.i

_ZNK4llvm13DICommonBlock11getRawScopeEv.exit.i:   ; preds = %bb.a
  %i.e = lshr i64 %i.c, 2
  %i.f = and i64 %i.e, 15
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.j = icmp eq ptr %i.a, %i.i
  br i1 %i.j, label %_ZNK4llvm13DICommonBlock10getRawDeclEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_13DICommonBlockEE7isKeyOfEPKS1_.exit

_ZNK4llvm13DICommonBlock11getRawScopeEv.exit.thread.i: ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %1, i64 -32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53
  %i.n = icmp eq ptr %i.a, %i.m
  br i1 %i.n, label %_ZNK4llvm13DICommonBlock10getRawDeclEv.exit.thread.i, label %_ZNK4llvm13MDNodeKeyImplINS_13DICommonBlockEE7isKeyOfEPKS1_.exit

_ZNK4llvm13DICommonBlock10getRawDeclEv.exit.i:    ; preds = %_ZNK4llvm13DICommonBlock11getRawScopeEv.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !886
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %_ZNK4llvm13DICommonBlock10getRawNameEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_13DICommonBlockEE7isKeyOfEPKS1_.exit

_ZNK4llvm13DICommonBlock10getRawDeclEv.exit.thread.i: ; preds = %_ZNK4llvm13DICommonBlock11getRawScopeEv.exit.thread.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !886
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !53
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %_ZNK4llvm13DICommonBlock10getRawNameEv.exit.thread.i, label %_ZNK4llvm13MDNodeKeyImplINS_13DICommonBlockEE7isKeyOfEPKS1_.exit

_ZNK4llvm13DICommonBlock10getRawNameEv.exit.i:    ; preds = %_ZNK4llvm13DICommonBlock10getRawDeclEv.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !887
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !53
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %_ZNK4llvm13DICommonBlock10getRawFileEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_13DICommonBlockEE7isKeyOfEPKS1_.exit

_ZNK4llvm13DICommonBlock10getRawNameEv.exit.thread.i: ; preds = %_ZNK4llvm13DICommonBlock10getRawDeclEv.exit.thread.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !887
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !53
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br i1 %i.ah, label %_ZNK4llvm13DICommonBlock10getRawFileEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_13DICommonBlockEE7isKeyOfEPKS1_.exit

_ZNK4llvm13DICommonBlock10getRawFileEv.exit.i:    ; preds = %_ZNK4llvm13DICommonBlock10getRawNameEv.exit.thread.i, %_ZNK4llvm13DICommonBlock10getRawNameEv.exit.i
  %.sroa.0.0.i.i.i9.i = phi ptr [ %i.l, %_ZNK4llvm13DICommonBlock10getRawNameEv.exit.thread.i ], [ %i.h, %_ZNK4llvm13DICommonBlock10getRawNameEv.exit.i ]
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %.in.i, align 8, !tbaa !888
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i9.i, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !53
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_13DICommonBlockEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %_ZNK4llvm13DICommonBlock10getRawFileEv.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !889
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !58
  %i.aq = icmp eq i32 %i.an, %i.ap
  br label %_ZNK4llvm13MDNodeKeyImplINS_13DICommonBlockEE7isKeyOfEPKS1_.exit

_ZNK4llvm13MDNodeKeyImplINS_13DICommonBlockEE7isKeyOfEPKS1_.exit: ; preds = %bb.b, %_ZNK4llvm13DICommonBlock10getRawFileEv.exit.i, %_ZNK4llvm13DICommonBlock10getRawNameEv.exit.thread.i, %_ZNK4llvm13DICommonBlock10getRawNameEv.exit.i, %_ZNK4llvm13DICommonBlock10getRawDeclEv.exit.thread.i, %_ZNK4llvm13DICommonBlock10getRawDeclEv.exit.i, %_ZNK4llvm13DICommonBlock11getRawScopeEv.exit.thread.i, %_ZNK4llvm13DICommonBlock11getRawScopeEv.exit.i
  %i.ar = phi i1 [ false, %_ZNK4llvm13DICommonBlock10getRawFileEv.exit.i ], [ false, %_ZNK4llvm13DICommonBlock10getRawNameEv.exit.i ], [ false, %_ZNK4llvm13DICommonBlock10getRawDeclEv.exit.i ], [ false, %_ZNK4llvm13DICommonBlock11getRawScopeEv.exit.i ], [ %i.aq, %bb.b ], [ false, %_ZNK4llvm13DICommonBlock11getRawScopeEv.exit.thread.i ], [ false, %_ZNK4llvm13DICommonBlock10getRawDeclEv.exit.thread.i ], [ false, %_ZNK4llvm13DICommonBlock10getRawNameEv.exit.thread.i ]
  ret i1 %i.ar
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::array.972", align 16  ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !890, !noalias !1942 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !902, !noalias !1942 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !903, !noalias !1942 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !905    ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = and i64 %i.k, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.l, 0
end_hunk_18
begin_hunk_19_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %.sroa.0.0 = phi ptr [ %i.be, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.at, %bb.f ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.972", align 16  ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !890, !noalias !1950 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !902, !noalias !1950 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !903, !noalias !1950 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !905    ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.j, 2
  %i.o = and i64 %i.n, 15
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  br label %_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.pn.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !58
  %i.t = load <2 x ptr>, ptr %.pn.i, align 8, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load <2 x ptr>, ptr %.in.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store <2 x ptr> %i.t, ptr %3, align 16
  store <2 x ptr> %i.v, ptr %i.u, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.s, ptr %i.w, align 16
  %i.x = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.y = trunc i64 %i.x to i32
  %i.z = xor i32 %i.y, -313160499
  %.024 = and i32 %i.z, %i.g                      ; 3 uses
  %i.aa = zext i32 %.024 to i64                   ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131
  %i.af = and i32 %.024, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit
  %i.ai = load ptr, ptr %1, align 8, !tbaa !905
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.aj = add nuw i32 %.025, 1
  %.0 = and i32 %i.aj, %i.g                       ; 3 uses
  %i.ak = zext i32 %.0 to i64                     ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ak ; 2 uses
  %i.am = lshr i64 %i.ak, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !131
  %i.ap = and i32 %.0, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %bb.f, label %.thread, !prof !147, !llvm.loop !1947

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.as = phi ptr [ %i.ab, %.lr.ph ], [ %i.al, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !905
  %i.au = icmp eq ptr %i.ai, %i.at                ; 3 uses
  br i1 %i.au, label %.thread, label %bb.e, !prof !121

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.ab, %_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.al, %bb.e ], [ %i.as, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.au, %bb.e ], [ %i.au, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1948
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.186", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !903
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !890
  store ptr %i.y, ptr %i.q, align 8, !tbaa !902
  store i32 0, ptr %i.p, align 16, !tbaa !1949
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1948
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.972", align 16  ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !890
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !902
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !903  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !902  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !890
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !903
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.r, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.s = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.r, %.lr.ph ], [ %i.bc, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.t = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !905  ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = and i64 %i.z, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 -32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ad = lshr i64 %i.z, 2
  %i.ae = and i64 %i.ad, 15
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.af
  br label %_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.pn.i.i = phi ptr [ %i.ag, %bb.e ], [ %i.ac, %bb.d ] ; 2 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !58
  %i.aj = load <2 x ptr>, ptr %.pn.i.i, align 8, !tbaa !53
  %i.ak = load <2 x ptr>, ptr %.in.i.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store <2 x ptr> %i.aj, ptr %2, align 16
  store <2 x ptr> %i.ak, ptr %i.o, align 16
  store i32 %i.ai, ptr %i.p, align 16
  %i.al = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.am = trunc i64 %i.al to i32
  %i.an = xor i32 %i.am, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.an, %_ZN4llvm10MDNodeInfoINS_13DICommonBlockEE12getHashValueEPKS1_.exit.i ], [ %i.av, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.ao = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ap = lshr i64 %i.ao, 5                       ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !131 ; 2 uses
  %i.as = and i32 %.0.i7, 31                      ; 2 uses
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i1
  %i.av = add i32 %.0.i7, 1
  br i1 %i.au, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1955

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ap
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ao
  %i.ay = load ptr, ptr %i.w, align 8, !tbaa !905
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !905
  %i.az = shl nuw i32 1, %i.as
  %i.ba = or i32 %i.az, %i.ar
  store i32 %i.ba, ptr %i.aw, align 4, !tbaa !131
  %i.bb = add i32 %.0.i18, -1
  %i.bc = and i32 %i.bb, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bc, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1956

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1957

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !903
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bd = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !1949
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !1949
  %i.bh = icmp eq i32 %i.bd, 0
  br i1 %i.bh, label %_ZN4llvm8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bi = load ptr, ptr %1, align 8, !tbaa !890
  %i.bj = zext i32 %i.bd to i64                   ; 2 uses
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bj, 31
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = and i64 %i.bm, 1073741820
  %i.bo = add nuw nsw i64 %i.bn, %i.bk
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bi, i64 noundef %i.bo, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !903
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_13DICommonBlockENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm13MDNodeKeyImplINS_8DIModuleEE7isKeyOfEPKS1_(ptr noundef nonnull align 8 dereferenceable(53) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !924  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %1, i64 -16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = and i64 %i.d, 2
  %.not.i.i.i = icmp eq i64 %i.e, 0               ; 2 uses
  br i1 %.not.i.i.i, label %_ZNK4llvm8DIModule11getRawScopeEv.exit, label %_ZNK4llvm8DIModule11getRawScopeEv.exit.thread

_ZNK4llvm8DIModule11getRawScopeEv.exit:           ; preds = %bb.a
  %i.f = lshr i64 %i.d, 2
  %i.g = and i64 %i.f, 15
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.h ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !53
  %i.l = icmp eq ptr %i.b, %i.k
  br i1 %i.l, label %_ZNK4llvm8DIModule10getRawNameEv.exit, label %bb.h

_ZNK4llvm8DIModule11getRawScopeEv.exit.thread:    ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %1, i64 -32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !53
  %i.q = icmp eq ptr %i.b, %i.p
  br i1 %i.q, label %_ZNK4llvm8DIModule10getRawNameEv.exit.thread, label %bb.h

_ZNK4llvm8DIModule10getRawNameEv.exit:            ; preds = %_ZNK4llvm8DIModule11getRawScopeEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !925
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %_ZNK4llvm8DIModule25getRawConfigurationMacrosEv.exit, label %bb.h

_ZNK4llvm8DIModule10getRawNameEv.exit.thread:     ; preds = %_ZNK4llvm8DIModule11getRawScopeEv.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !925
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !53
  %i.aa = icmp eq ptr %i.x, %i.z
  br i1 %i.aa, label %_ZNK4llvm8DIModule25getRawConfigurationMacrosEv.exit.thread, label %bb.h

_ZNK4llvm8DIModule25getRawConfigurationMacrosEv.exit: ; preds = %_ZNK4llvm8DIModule10getRawNameEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !926
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !53
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %_ZNK4llvm8DIModule17getRawIncludePathEv.exit, label %bb.h

_ZNK4llvm8DIModule25getRawConfigurationMacrosEv.exit.thread: ; preds = %_ZNK4llvm8DIModule10getRawNameEv.exit.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !926
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !53
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %.thread21, label %bb.h

.thread21:                                        ; preds = %_ZNK4llvm8DIModule25getRawConfigurationMacrosEv.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !927
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !53
  %i.ap = icmp eq ptr %i.am, %i.ao
  br i1 %i.ap, label %_ZNK4llvm8DIModule18getRawAPINotesFileEv.exit, label %bb.h

_ZNK4llvm8DIModule17getRawIncludePathEv.exit:     ; preds = %_ZNK4llvm8DIModule25getRawConfigurationMacrosEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !927
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !53
  %i.au = icmp eq ptr %i.ar, %i.at
  br i1 %i.au, label %_ZNK4llvm8DIModule18getRawAPINotesFileEv.exit, label %bb.h

_ZNK4llvm8DIModule18getRawAPINotesFileEv.exit:    ; preds = %_ZNK4llvm8DIModule17getRawIncludePathEv.exit, %.thread21
  %.sroa.0.0.i.i.i.i14 = phi ptr [ %i.n, %.thread21 ], [ %i.i, %_ZNK4llvm8DIModule17getRawIncludePathEv.exit ]
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = load ptr, ptr %.in, align 8, !tbaa !928
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i14, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !53
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_ZNK4llvm8DIModule18getRawAPINotesFileEv.exit
  %i.az = load ptr, ptr %0, align 8, !tbaa !922
  %i.ba = load i8, ptr %1, align 8, !tbaa !95
  %i.bb = icmp eq i8 %i.ba, 16
  br i1 %i.bb, label %_ZNK4llvm7DIScope10getRawFileEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

end_hunk_19
begin_hunk_20_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  store ptr %i.br, ptr %i.bb, align 8, !tbaa !946
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %bb.f, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.bb, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.aq, %bb.f ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.790", align 16  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !931, !noalias !1966 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !943, !noalias !1966 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !944, !noalias !1966 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !946    ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i9.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i9.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.j, 2
  %i.o = and i64 %i.n, 15
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  br label %_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.pn.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %.in9.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24
  %.in7.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %i.r = load <2 x ptr>, ptr %.in7.i, align 8, !tbaa !53
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load <2 x ptr>, ptr %.in9.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store <2 x ptr> %i.r, ptr %3, align 16
  store <2 x ptr> %i.t, ptr %i.s, align 16
  %i.u = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.v = trunc i64 %i.u to i32
  %i.w = xor i32 %i.v, -313160499
  %.024 = and i32 %i.w, %i.g                      ; 3 uses
  %i.x = zext i32 %.024 to i64                    ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !131
  %i.ac = and i32 %.024, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit
  %i.af = load ptr, ptr %1, align 8, !tbaa !946
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.ag = add nuw i32 %.025, 1
  %.0 = and i32 %i.ag, %i.g                       ; 3 uses
  %i.ah = zext i32 %.0 to i64                     ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ah ; 2 uses
  %i.aj = lshr i64 %i.ah, 5
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !131
  %i.am = and i32 %.0, 31
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %bb.f, label %.thread, !prof !147, !llvm.loop !1963

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.ap = phi ptr [ %i.y, %.lr.ph ], [ %i.ai, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !946
  %i.ar = icmp eq ptr %i.af, %i.aq                ; 3 uses
  br i1 %i.ar, label %.thread, label %bb.e, !prof !121

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.y, %_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.ai, %bb.e ], [ %i.ap, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.ar, %bb.e ], [ %i.ar, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1964
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.146", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !944
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !931
  store ptr %i.y, ptr %i.q, align 8, !tbaa !943
  store i32 0, ptr %i.p, align 16, !tbaa !1965
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1964
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.790", align 16  ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !931
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !943
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !944  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !943  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !931
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !944
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.q, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.r = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.q, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.s = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.u ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !946  ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = and i64 %i.y, 2
  %.not.i.i.i9.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i9.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ac = lshr i64 %i.y, 2
  %i.ad = and i64 %i.ac, 15
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ae
  br label %_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.pn.i.i = phi ptr [ %i.af, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %.in9.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %.in7.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  %i.ag = load <2 x ptr>, ptr %.in7.i.i, align 8, !tbaa !53
  %i.ah = load <2 x ptr>, ptr %.in9.i.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store <2 x ptr> %i.ag, ptr %2, align 16
  store <2 x ptr> %i.ah, ptr %i.o, align 16
  %i.ai = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = xor i32 %i.aj, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ak, %_ZN4llvm10MDNodeInfoINS_8DIModuleEE12getHashValueEPKS1_.exit.i ], [ %i.as, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.al = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !131 ; 2 uses
  %i.ap = and i32 %.0.i7, 31                      ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  %i.as = add i32 %.0.i7, 1
  br i1 %i.ar, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1971

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !946
  store ptr %i.av, ptr %i.au, align 8, !tbaa !946
  %i.aw = shl nuw i32 1, %i.ap
  %i.ax = or i32 %i.aw, %i.ao
  store i32 %i.ax, ptr %i.at, align 4, !tbaa !131
  %i.ay = add i32 %.0.i18, -1
  %i.az = and i32 %i.ay, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1972

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1973

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !944
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !1965
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !1965
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bf = load ptr, ptr %1, align 8, !tbaa !931
  %i.bg = zext i32 %i.ba to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 3
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bf, i64 noundef %i.bl, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !944
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8DIModuleENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !963    ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i, label %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i

_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i: ; preds = %bb.a
  %i.e = lshr i64 %i.c, 2
  %i.f = and i64 %i.e, 15
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.j = icmp eq ptr %i.a, %i.i
  br i1 %i.j, label %_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_23DITemplateTypeParameterEE7isKeyOfEPKS1_.exit

_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i: ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %1, i64 -32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53
  %i.n = icmp eq ptr %i.a, %i.m
  br i1 %i.n, label %_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_23DITemplateTypeParameterEE7isKeyOfEPKS1_.exit

_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i: ; preds = %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.l, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i ], [ %i.h, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i ]
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %.in.i, align 8, !tbaa !965
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_23DITemplateTypeParameterEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i8, ptr %i.s, align 8, !tbaa !966, !range !18, !noundef !19
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.v = load i8, ptr %i.u, align 1
  %.lobit.i = lshr i8 %i.v, 7
  %i.w = icmp eq i8 %i.t, %.lobit.i
  br label %_ZNK4llvm13MDNodeKeyImplINS_23DITemplateTypeParameterEE7isKeyOfEPKS1_.exit

_ZNK4llvm13MDNodeKeyImplINS_23DITemplateTypeParameterEE7isKeyOfEPKS1_.exit: ; preds = %bb.b, %_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i
  %i.x = phi i1 [ false, %_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i ], [ false, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i ], [ %i.w, %bb.b ], [ false, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i ]
  ret i1 %i.x
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::array.1082", align 16 ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !967, !noalias !1974 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !979, !noalias !1974 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !980, !noalias !1974 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !982    ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = and i64 %i.k, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.o = lshr i64 %i.k, 2
  %i.p = and i64 %i.o, 15
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.q
  br label %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit.i: ; preds = %bb.d, %bb.c
  %.in.i.i = phi ptr [ %i.r, %bb.d ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.t = load i8, ptr %i.s, align 1
  %.lobit.i.i.i = lshr i8 %i.t, 7
  %i.u = load <2 x ptr>, ptr %.in.i.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store <2 x ptr> %i.u, ptr %2, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 %.lobit.i.i.i, ptr %i.v, align 16
  %i.w = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.x = trunc i64 %i.w to i32
  %i.y = xor i32 %i.x, -313160499
end_hunk_20
begin_hunk_21_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  store ptr %i.bs, ptr %i.bc, align 8, !tbaa !982
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %bb.f, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.bc, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.ar, %bb.f ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.1082", align 16 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !967, !noalias !1982 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !979, !noalias !1982 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !980, !noalias !1982 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !982    ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.j, 2
  %i.o = and i64 %i.n, 15
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  br label %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.in.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.s = load i8, ptr %i.r, align 1
  %.lobit.i.i = lshr i8 %i.s, 7
  %i.t = load <2 x ptr>, ptr %.in.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store <2 x ptr> %i.t, ptr %3, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 %.lobit.i.i, ptr %i.u, align 16
  %i.v = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.w = trunc i64 %i.v to i32
  %i.x = xor i32 %i.w, -313160499
  %.024 = and i32 %i.x, %i.g                      ; 3 uses
  %i.y = zext i32 %.024 to i64                    ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = lshr i64 %i.y, 5
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !131
  %i.ad = and i32 %.024, 31
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = trunc i32 %i.ae to i1
  br i1 %i.af, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit
  %i.ag = load ptr, ptr %1, align 8, !tbaa !982
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.ah = add nuw i32 %.025, 1
  %.0 = and i32 %i.ah, %i.g                       ; 3 uses
  %i.ai = zext i32 %.0 to i64                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ai ; 2 uses
  %i.ak = lshr i64 %i.ai, 5
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !131
  %i.an = and i32 %.0, 31
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %bb.f, label %.thread, !prof !147, !llvm.loop !1979

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.aq = phi ptr [ %i.z, %.lr.ph ], [ %i.aj, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !982
  %i.as = icmp eq ptr %i.ag, %i.ar                ; 3 uses
  br i1 %i.as, label %.thread, label %bb.e, !prof !121

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.z, %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.aj, %bb.e ], [ %i.aq, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.as, %bb.e ], [ %i.as, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1980
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.150", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !980
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !967
  store ptr %i.y, ptr %i.q, align 8, !tbaa !979
  store i32 0, ptr %i.p, align 16, !tbaa !1981
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1980
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1082", align 16 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !967
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !979
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !980  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !979  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !967
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !980
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.q, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.r = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.q, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.s = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.u ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !982  ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = and i64 %i.y, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 -32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ac = lshr i64 %i.y, 2
  %i.ad = and i64 %i.ac, 15
  %i.ae = sub nsw i64 0, %i.ad
  %i.af = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ae
  br label %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.in.i.i = phi ptr [ %i.af, %bb.e ], [ %i.ab, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.ah = load i8, ptr %i.ag, align 1
  %.lobit.i.i.i = lshr i8 %i.ah, 7
  %i.ai = load <2 x ptr>, ptr %.in.i.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store <2 x ptr> %i.ai, ptr %2, align 16
  store i8 %.lobit.i.i.i, ptr %i.o, align 16
  %i.aj = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ak = trunc i64 %i.aj to i32
  %i.al = xor i32 %i.ak, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.al, %_ZN4llvm10MDNodeInfoINS_23DITemplateTypeParameterEE12getHashValueEPKS1_.exit.i ], [ %i.at, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.am = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.an = lshr i64 %i.am, 5                       ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !131 ; 2 uses
  %i.aq = and i32 %.0.i7, 31                      ; 2 uses
  %i.ar = lshr i32 %i.ap, %i.aq
  %i.as = trunc i32 %i.ar to i1
  %i.at = add i32 %.0.i7, 1
  br i1 %i.as, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1987

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.an
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.am
  %i.aw = load ptr, ptr %i.v, align 8, !tbaa !982
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !982
  %i.ax = shl nuw i32 1, %i.aq
  %i.ay = or i32 %i.ax, %i.ap
  store i32 %i.ay, ptr %i.au, align 4, !tbaa !131
  %i.az = add i32 %.0.i18, -1
  %i.ba = and i32 %i.az, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !1988

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !1989

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !980
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1981
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1981
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bg = load ptr, ptr %1, align 8, !tbaa !967
  %i.bh = zext i32 %i.bb to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bg, i64 noundef %i.bm, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !980
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_23DITemplateTypeParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !999
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !23
  %i.d = zext i16 %i.c to i32
  %i.e = icmp eq i32 %i.a, %i.d
  br i1 %i.e, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_24DITemplateValueParameterEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1001 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = and i64 %i.i, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.j, 0           ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i, label %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i

_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i: ; preds = %bb.b
  %i.k = lshr i64 %i.i, 2
  %i.l = and i64 %i.k, 15
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !53
  %i.p = icmp eq ptr %i.g, %i.o
  br i1 %i.p, label %_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_24DITemplateValueParameterEE7isKeyOfEPKS1_.exit

_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i: ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %1, i64 -32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53
  %i.t = icmp eq ptr %i.g, %i.s
  br i1 %i.t, label %_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_24DITemplateValueParameterEE7isKeyOfEPKS1_.exit

_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i: ; preds = %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.r, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i ], [ %i.n, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i ]
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %.in.i, align 8, !tbaa !1002
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !53
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.c, label %_ZNK4llvm13MDNodeKeyImplINS_24DITemplateValueParameterEE7isKeyOfEPKS1_.exit

bb.c:                                             ; preds = %_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i8, ptr %i.y, align 8, !tbaa !1003, !range !18, !noundef !19
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ab = load i8, ptr %i.aa, align 1
  %.lobit.i = lshr i8 %i.ab, 7
  %i.ac = icmp eq i8 %i.z, %.lobit.i
  br i1 %i.ac, label %bb.d, label %_ZNK4llvm13MDNodeKeyImplINS_24DITemplateValueParameterEE7isKeyOfEPKS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1004
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds i8, ptr %1, i64 -32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21
  br label %_ZNK4llvm24DITemplateValueParameter8getValueEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ah = lshr i64 %i.i, 2
  %i.ai = and i64 %i.ah, 15
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aj
  br label %_ZNK4llvm24DITemplateValueParameter8getValueEv.exit.i

_ZNK4llvm24DITemplateValueParameter8getValueEv.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i7.i = phi ptr [ %i.ak, %bb.f ], [ %i.ag, %bb.e ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i7.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !53
  %i.an = icmp eq ptr %i.ae, %i.am
  br label %_ZNK4llvm13MDNodeKeyImplINS_24DITemplateValueParameterEE7isKeyOfEPKS1_.exit

_ZNK4llvm13MDNodeKeyImplINS_24DITemplateValueParameterEE7isKeyOfEPKS1_.exit: ; preds = %_ZNK4llvm24DITemplateValueParameter8getValueEv.exit.i, %bb.c, %_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i, %bb.a
  %i.ao = phi i1 [ false, %bb.c ], [ false, %_ZNK4llvm19DITemplateParameter10getRawTypeEv.exit.i ], [ false, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.i ], [ false, %bb.a ], [ %i.an, %_ZNK4llvm24DITemplateValueParameter8getValueEv.exit.i ], [ false, %_ZNK4llvm19DITemplateParameter10getRawNameEv.exit.thread.i ]
  ret i1 %i.ao
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::array.1096", align 4  ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1005, !noalias !1990 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1017, !noalias !1990 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1018, !noalias !1990 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
end_hunk_21
begin_hunk_22_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.1096", align 4  ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1005, !noalias !1998 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1017, !noalias !1998 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1018, !noalias !1998 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1020   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !23
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = and i64 %i.l, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.p = lshr i64 %i.l, 2
  %i.q = and i64 %i.p, 15
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.r
  br label %_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.pn.i = phi ptr [ %i.s, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %.lobit.i6.in.in.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.lobit.i6.in.i = load i8, ptr %.lobit.i6.in.in.i, align 1
  %.lobit.i6.i = lshr i8 %.lobit.i6.in.i, 7
  %i.t = zext i16 %i.j to i32
  %i.u = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = load <2 x ptr>, ptr %.pn.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 %i.t, ptr %3, align 4
  store <2 x ptr> %i.x, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i8 %.lobit.i6.i, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 21
  store ptr %i.v, ptr %i.z, align 1
  %i.aa = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = xor i32 %i.ab, -313160499
  %.024 = and i32 %i.ac, %i.g                     ; 3 uses
  %i.ad = zext i32 %.024 to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ad ; 2 uses
  %i.af = lshr i64 %i.ad, 5
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !131
  %i.ai = and i32 %.024, 31
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit
  %i.al = load ptr, ptr %1, align 8, !tbaa !1020
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.am = add nuw i32 %.025, 1
  %.0 = and i32 %i.am, %i.g                       ; 3 uses
  %i.an = zext i32 %.0 to i64                     ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.ap = lshr i64 %i.an, 5
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !131
  %i.as = and i32 %.0, 31
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i1
  br i1 %i.au, label %bb.f, label %.thread, !prof !147, !llvm.loop !1995

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.av = phi ptr [ %i.ae, %.lr.ph ], [ %i.ao, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1020
  %i.ax = icmp eq ptr %i.al, %i.aw                ; 3 uses
  br i1 %i.ax, label %.thread, label %bb.e, !prof !121

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.ae, %_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.ao, %bb.e ], [ %i.av, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.ax, %bb.e ], [ %i.ax, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1996
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.154", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1018
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1005
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1017
  store i32 0, ptr %i.p, align 16, !tbaa !1997
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1996
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1096", align 4  ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1005
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1017
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1018 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1017 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1005
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1018
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 21
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.s, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.t = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.s, %.lr.ph ], [ %i.bf, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.u = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.v = or disjoint i32 %i.u, %i.t
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1020 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !23
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 -16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = and i64 %i.ac, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 -32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ag = lshr i64 %i.ac, 2
  %i.ah = and i64 %i.ag, 15
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ai
  br label %_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.pn.i.i = phi ptr [ %i.aj, %bb.e ], [ %i.af, %bb.d ] ; 2 uses
  %.lobit.i6.in.in.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %.lobit.i6.in.i.i = load i8, ptr %.lobit.i6.in.in.i.i, align 1
  %.lobit.i6.i.i = lshr i8 %.lobit.i6.in.i.i, 7
  %i.ak = zext i16 %i.aa to i32
  %i.al = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !53
  %i.an = load <2 x ptr>, ptr %.pn.i.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %i.ak, ptr %2, align 4
  store <2 x ptr> %i.an, ptr %i.o, align 4
  store i8 %.lobit.i6.i.i, ptr %i.p, align 4
  store ptr %i.am, ptr %i.q, align 1
  %i.ao = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = xor i32 %i.ap, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.aq, %_ZN4llvm10MDNodeInfoINS_24DITemplateValueParameterEE12getHashValueEPKS1_.exit.i ], [ %i.ay, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.ar = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.as = lshr i64 %i.ar, 5                       ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !131 ; 2 uses
  %i.av = and i32 %.0.i7, 31                      ; 2 uses
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = trunc i32 %i.aw to i1
  %i.ay = add i32 %.0.i7, 1
  br i1 %i.ax, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2003

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.as
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ar
  %i.bb = load ptr, ptr %i.x, align 8, !tbaa !1020
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !1020
  %i.bc = shl nuw i32 1, %i.av
  %i.bd = or i32 %i.bc, %i.au
  store i32 %i.bd, ptr %i.az, align 4, !tbaa !131
  %i.be = add i32 %.0.i18, -1
  %i.bf = and i32 %i.be, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bf, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2004

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2005

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1018
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bg = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !1997
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !1997
  %i.bk = icmp eq i32 %i.bg, 0
  br i1 %i.bk, label %_ZN4llvm8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bl = load ptr, ptr %1, align 8, !tbaa !1005
  %i.bm = zext i32 %i.bg to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !1018
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_24DITemplateValueParameterENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6doFindINS_13MDNodeKeyImplIS2_EEEEPKS9_RKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1110", align 16 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1055, !noalias !2006 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2011, !noalias !2006 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1058, !noalias !2006 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = load <2 x ptr>, ptr %1, align 8, !tbaa !159
  store <2 x ptr> %i.o, ptr %2, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load <2 x ptr>, ptr %i.h, align 8, !tbaa !159
  store <2 x ptr> %i.q, ptr %i.p, align 16
  %i.r = load i32, ptr %i.i, align 8, !tbaa !131
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.r, ptr %i.s, align 16
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !234
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 36
  store ptr %i.t, ptr %i.u, align 4
  %i.v = load i8, ptr %i.k, align 8, !tbaa !2012, !range !18, !noundef !19
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i8 %i.v, ptr %i.w, align 4
  %i.x = load i8, ptr %i.l, align 1, !tbaa !2012, !range !18, !noundef !19
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 45
  store i8 %i.x, ptr %i.y, align 1
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !234
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 46
  store ptr %i.z, ptr %i.aa, align 2
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !234
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 54
  store ptr %i.ab, ptr %i.ac, align 2
  %i.ad = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 62) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ae = trunc i64 %i.ad to i32
  %i.af = xor i32 %i.ae, -313160499
  %.019 = and i32 %i.af, %i.g                     ; 3 uses
  %i.ag = zext i32 %.019 to i64                   ; 2 uses
  %i.ah = lshr i64 %i.ag, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !131
  %i.ak = and i32 %.019, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !146

bb.c:                                             ; preds = %.lr.ph
  %i.an = add nuw i32 %.020, 1
  %.0 = and i32 %i.an, %i.g                       ; 3 uses
  %i.ao = zext i32 %.0 to i64                     ; 2 uses
  %i.ap = lshr i64 %i.ao, 5
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !131
  %i.as = and i32 %.0, 31
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i1
  br i1 %i.au, label %.lr.ph, label %.thread, !prof !147

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.av = phi i64 [ %i.ao, %bb.c ], [ %i.ag, %bb.b ] ; 2 uses
  %.020 = phi i32 [ %.0, %bb.c ], [ %.019, %bb.b ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1059
  %i.ay = call noundef zeroext i1 @_ZNK4llvm13MDNodeKeyImplINS_16DIGlobalVariableEE7isKeyOfEPKS1_(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef %i.ax)
  br i1 %i.ay, label %.thread.loopexit.split.loop.exit, label %bb.c, !prof !121

.thread.loopexit.split.loop.exit:                 ; preds = %.lr.ph
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.av
  br label %.thread

.thread:                                          ; preds = %bb.c, %.thread.loopexit.split.loop.exit, %bb.b, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.az, %.thread.loopexit.split.loop.exit ], [ null, %bb.c ]
  ret ptr %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm13MDNodeKeyImplINS_16DIGlobalVariableEE7isKeyOfEPKS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
end_hunk_22
begin_hunk_23_@_ZN4llvm13MDNodeKeyImplINS_16DIGlobalVariableEEC2EPKS1_:bb.a
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bb
  br label %_ZNK4llvm10DIVariable10getRawTypeEv.exit

_ZNK4llvm10DIVariable10getRawTypeEv.exit:         ; preds = %bb.j, %bb.k
  %.sroa.0.0.i.i.i18 = phi ptr [ %i.bc, %bb.k ], [ %i.ay, %bb.j ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i18, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !53
  store ptr %i.be, ptr %i.au, align 8, !tbaa !1043
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bh = load i8, ptr %i.bg, align 4, !tbaa !1063, !range !18, !noundef !19
  store i8 %i.bh, ptr %i.bf, align 8, !tbaa !1044
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !1065, !range !18, !noundef !19
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !1045
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bn = and i64 %i.bm, 2
  %.not.i.i.i19 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i19, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm10DIVariable10getRawTypeEv.exit
  %i.bo = getelementptr inbounds i8, ptr %1, i64 -32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !21
  br label %_ZNK4llvm16DIGlobalVariable33getRawStaticDataMemberDeclarationEv.exit

bb.m:                                             ; preds = %_ZNK4llvm10DIVariable10getRawTypeEv.exit
  %i.bq = lshr i64 %i.bm, 2
  %i.br = and i64 %i.bq, 15
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bs
  br label %_ZNK4llvm16DIGlobalVariable33getRawStaticDataMemberDeclarationEv.exit

_ZNK4llvm16DIGlobalVariable33getRawStaticDataMemberDeclarationEv.exit: ; preds = %bb.l, %bb.m
  %.sroa.0.0.i.i.i20 = phi ptr [ %i.bt, %bb.m ], [ %i.bp, %bb.l ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i20, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !53
  store ptr %i.bv, ptr %i.bl, align 8, !tbaa !1046
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bx = load i64, ptr %i.a, align 8             ; 2 uses
  %i.by = and i64 %i.bx, 2
  %.not.i.i.i21 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i21, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK4llvm16DIGlobalVariable33getRawStaticDataMemberDeclarationEv.exit
  %i.bz = getelementptr inbounds i8, ptr %1, i64 -32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !21
  br label %_ZNK4llvm16DIGlobalVariable20getRawTemplateParamsEv.exit

bb.o:                                             ; preds = %_ZNK4llvm16DIGlobalVariable33getRawStaticDataMemberDeclarationEv.exit
  %i.cb = lshr i64 %i.bx, 2
  %i.cc = and i64 %i.cb, 15
  %i.cd = sub nsw i64 0, %i.cc
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cd
  br label %_ZNK4llvm16DIGlobalVariable20getRawTemplateParamsEv.exit

_ZNK4llvm16DIGlobalVariable20getRawTemplateParamsEv.exit: ; preds = %bb.n, %bb.o
  %.sroa.0.0.i.i.i22 = phi ptr [ %i.ce, %bb.o ], [ %i.ca, %bb.n ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i22, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !53
  store ptr %i.cg, ptr %i.bw, align 8, !tbaa !1047
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !58
  store i32 %i.cj, ptr %i.ch, align 8, !tbaa !1048
  %i.ck = load i64, ptr %i.a, align 8             ; 2 uses
  %i.cl = and i64 %i.ck, 2
  %.not.i.i.i23 = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i.i23, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK4llvm16DIGlobalVariable20getRawTemplateParamsEv.exit
  %i.cm = getelementptr inbounds i8, ptr %1, i64 -32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !21
  br label %_ZNK4llvm16DIGlobalVariable17getRawAnnotationsEv.exit

bb.q:                                             ; preds = %_ZNK4llvm16DIGlobalVariable20getRawTemplateParamsEv.exit
  %i.co = lshr i64 %i.ck, 2
  %i.cp = and i64 %i.co, 15
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cq
  br label %_ZNK4llvm16DIGlobalVariable17getRawAnnotationsEv.exit

_ZNK4llvm16DIGlobalVariable17getRawAnnotationsEv.exit: ; preds = %bb.p, %bb.q
  %.sroa.0.0.i.i.i24 = phi ptr [ %i.cr, %bb.q ], [ %i.cn, %bb.p ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i24, i64 64
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !53
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !1049
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.158", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1058
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1055
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2011
  store i32 0, ptr %i.p, align 16, !tbaa !2014
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2013
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1110", align 16 ; 12 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1055
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2011
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1058 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2011 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1055
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1058
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i43 = icmp eq i64 %i.n, 0
  br i1 %.not.i43, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 45
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 46
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 54
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph46, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !131  ; 2 uses
  %.not11.i41 = icmp eq i32 %i.x, 0
  br i1 %.not11.i41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.y = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i42 = phi i32 [ %i.x, %.lr.ph ], [ %i.bo, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.z = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i42, i1 true)
  %i.aa = or disjoint i32 %i.z, %i.y
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1059 ; 5 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = and i64 %i.af, 2
  %.not.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 -32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21
  br label %_ZN4llvm13MDNodeKeyImplINS_16DIGlobalVariableEEC2EPKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.aj = lshr i64 %i.af, 2
  %i.ak = and i64 %i.aj, 15
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.al
  br label %_ZN4llvm13MDNodeKeyImplINS_16DIGlobalVariableEEC2EPKS1_.exit

_ZN4llvm13MDNodeKeyImplINS_16DIGlobalVariableEEC2EPKS1_.exit: ; preds = %bb.d, %bb.e
  %.pn = phi ptr [ %i.am, %bb.e ], [ %i.ai, %bb.d ] ; 6 uses
  %.in35 = getelementptr inbounds nuw i8, ptr %.pn, i64 48
  %i.an = load ptr, ptr %.in35, align 8, !tbaa !53
  %.in34 = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ao = load i32, ptr %.in34, align 8, !tbaa !1061
  %.in32 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %i.ap = load ptr, ptr %.in32, align 8, !tbaa !53
  %.in27 = getelementptr inbounds nuw i8, ptr %.pn, i64 40
  %i.aq = load ptr, ptr %.in27, align 8, !tbaa !53
  %.in26 = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  %i.ar = load ptr, ptr %.in26, align 8, !tbaa !53
  %.in25 = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.as = load i8, ptr %.in25, align 4, !tbaa !1063, !range !18, !noundef !19
  %.in = getelementptr inbounds nuw i8, ptr %i.ad, i64 21
  %i.at = load i8, ptr %.in, align 1, !tbaa !1065, !range !18, !noundef !19
  %i.au = getelementptr inbounds nuw i8, ptr %.pn, i64 64
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !53
  %i.aw = load <2 x ptr>, ptr %.pn, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store <2 x ptr> %i.aw, ptr %2, align 16
  store ptr %i.aq, ptr %i.o, align 16
  store ptr %i.ap, ptr %i.p, align 8
  store i32 %i.ao, ptr %i.q, align 16
  store ptr %i.ar, ptr %i.r, align 4
  store i8 %i.as, ptr %i.s, align 4
  store i8 %i.at, ptr %i.t, align 1
  store ptr %i.an, ptr %i.u, align 2
  store ptr %i.av, ptr %i.v, align 2
  %i.ax = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 62) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ay = trunc i64 %i.ax to i32
  %i.az = xor i32 %i.ay, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm13MDNodeKeyImplINS_16DIGlobalVariableEEC2EPKS1_.exit
  %.pn.i = phi i32 [ %i.az, %_ZN4llvm13MDNodeKeyImplINS_16DIGlobalVariableEEC2EPKS1_.exit ], [ %i.bh, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.ba = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.bb = lshr i64 %i.ba, 5                       ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !131 ; 2 uses
  %i.be = and i32 %.0.i7, 31                      ; 2 uses
  %i.bf = lshr i32 %i.bd, %i.be
  %i.bg = trunc i32 %i.bf to i1
  %i.bh = add i32 %.0.i7, 1
  br i1 %i.bg, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2021

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bb
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ba
  %i.bk = load ptr, ptr %i.ac, align 8, !tbaa !1059
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !1059
  %i.bl = shl nuw i32 1, %i.be
  %i.bm = or i32 %i.bl, %i.bd
  store i32 %i.bm, ptr %i.bi, align 4, !tbaa !131
  %i.bn = add i32 %.0.i42, -1
  %i.bo = and i32 %i.bn, %.0.i42                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2022

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2023

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1058
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bp = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !2014
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !2014
  %i.bt = icmp eq i32 %i.bp, 0
  br i1 %i.bt, label %_ZN4llvm8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bu = load ptr, ptr %1, align 8, !tbaa !1055
  %i.bv = zext i32 %i.bp to i64                   ; 2 uses
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = add nuw nsw i64 %i.bv, 31
  %i.by = lshr i64 %i.bx, 3
  %i.bz = and i64 %i.by, 1073741820
  %i.ca = add nuw nsw i64 %i.bz, %i.bw
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bu, i64 noundef %i.ca, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !1058
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIGlobalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E7find_asINS_13MDNodeKeyImplIS2_EEEENS_16DenseMapIteratorIS3_S5_S7_S9_Lb0EEERKT_(ptr dead_on_unwind noalias writable sret(%"class.llvm::DenseMapIterator.1122") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.1124", align 16 ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1083, !noalias !2024 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2029, !noalias !2024 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1091, !noalias !2024 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.m = load <2 x ptr>, ptr %2, align 8, !tbaa !159
  store <2 x ptr> %i.m, ptr %3, align 16
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !234
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.n, ptr %i.o, align 16
  %i.p = load i32, ptr %i.i, align 8, !tbaa !131
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.p, ptr %i.q, align 8
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !234
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 28
  store ptr %i.r, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.u = load <2 x i32>, ptr %i.k, align 8, !tbaa !131
  store <2 x i32> %i.u, ptr %i.t, align 4
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !234
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 44
  store ptr %i.v, ptr %i.w, align 4
  %i.x = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 52) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.y = trunc i64 %i.x to i32
  %i.z = xor i32 %i.y, -313160499
  %.019.i.i = and i32 %i.z, %i.g                  ; 3 uses
  %i.aa = zext i32 %.019.i.i to i64               ; 2 uses
  %i.ab = lshr i64 %i.aa, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !131
  %i.ae = and i32 %.019.i.i, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph.i.i, label %.loopexit, !prof !146

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ah = add nuw i32 %.020.i.i, 1
  %.0.i.i = and i32 %i.ah, %i.g                   ; 3 uses
  %i.ai = zext i32 %.0.i.i to i64                 ; 2 uses
  %i.aj = lshr i64 %i.ai, 5
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !131
  %i.am = and i32 %.0.i.i, 31
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %.lr.ph.i.i, label %.loopexit, !prof !147

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.ap = phi i64 [ %i.ai, %bb.c ], [ %i.aa, %bb.b ] ; 2 uses
  %.020.i.i = phi i32 [ %.0.i.i, %bb.c ], [ %.019.i.i, %bb.b ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1094
  %i.as = call noundef zeroext i1 @_ZNK4llvm13MDNodeKeyImplINS_15DILocalVariableEE7isKeyOfEPKS1_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %i.ar)
  br i1 %i.as, label %bb.d, label %bb.c, !prof !121

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ap
  %i.au = load ptr, ptr %1, align 8, !tbaa !1083, !noalias !2030 ; 2 uses
  %i.av = load i32, ptr %i.d, align 4, !tbaa !1091, !noalias !2030
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.aw
end_hunk_23
begin_hunk_24_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !1094   ; 5 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.j, 2
  %i.o = and i64 %i.n, 15
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  br label %_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.pn.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ] ; 4 uses
  %.in14.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = load i32, ptr %.in14.i, align 8, !tbaa !1061
  %.in12.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.s = load ptr, ptr %.in12.i, align 8, !tbaa !53
  %.in8.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24
  %i.t = load ptr, ptr %.in8.i, align 8, !tbaa !53
  %.in7.in.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.in7.i = load i16, ptr %.in7.in.i, align 4
  %i.u = zext i16 %.in7.i to i32
  %.in.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.v = load i32, ptr %.in.i, align 8, !tbaa !1095
  %i.w = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.y = load <2 x ptr>, ptr %.pn.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store <2 x ptr> %i.y, ptr %3, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.s, ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.r, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 28
  store ptr %i.t, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.u, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.v, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 44
  store ptr %i.x, ptr %i.ae, align 4
  %i.af = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 52) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ag = trunc i64 %i.af to i32
  %i.ah = xor i32 %i.ag, -313160499
  %.024 = and i32 %i.ah, %i.g                     ; 3 uses
  %i.ai = zext i32 %.024 to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ai ; 2 uses
  %i.ak = lshr i64 %i.ai, 5
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !131
  %i.an = and i32 %.024, 31
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit
  %i.aq = load ptr, ptr %1, align 8, !tbaa !1094
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.ar = add nuw i32 %.025, 1
  %.0 = and i32 %i.ar, %i.g                       ; 3 uses
  %i.as = zext i32 %.0 to i64                     ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.au = lshr i64 %i.as, 5
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !131
  %i.ax = and i32 %.0, 31
  %i.ay = lshr i32 %i.aw, %i.ax
  %i.az = trunc i32 %i.ay to i1
  br i1 %i.az, label %bb.f, label %.thread, !prof !147, !llvm.loop !2044

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.ba = phi ptr [ %i.aj, %.lr.ph ], [ %i.at, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1094
  %i.bc = icmp eq ptr %i.aq, %i.bb                ; 3 uses
  br i1 %i.bc, label %.thread, label %bb.e, !prof !121

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.aj, %_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.at, %bb.e ], [ %i.ba, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.bc, %bb.e ], [ %i.bc, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2045
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.162", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1091
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1083
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2029
  store i32 0, ptr %i.p, align 16, !tbaa !2046
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2045
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1124", align 16 ; 10 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1083
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2029
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1091 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2029 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1083
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1091
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 44
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.v, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.w = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.v, %.lr.ph ], [ %i.bk, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.x = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.y = or disjoint i32 %i.x, %i.w
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1094 ; 5 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i64 %i.ad, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 -32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ah = lshr i64 %i.ad, 2
  %i.ai = and i64 %i.ah, 15
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aj
  br label %_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.pn.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.ag, %bb.d ] ; 4 uses
  %.in14.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.al = load i32, ptr %.in14.i.i, align 8, !tbaa !1061
  %.in12.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.am = load ptr, ptr %.in12.i.i, align 8, !tbaa !53
  %.in8.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %i.an = load ptr, ptr %.in8.i.i, align 8, !tbaa !53
  %.in7.in.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %.in7.i.i = load i16, ptr %.in7.in.i.i, align 4
  %i.ao = zext i16 %.in7.i.i to i32
  %.in.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ap = load i32, ptr %.in.i.i, align 8, !tbaa !1095
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !53
  %i.as = load <2 x ptr>, ptr %.pn.i.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store <2 x ptr> %i.as, ptr %2, align 16
  store ptr %i.am, ptr %i.o, align 16
  store i32 %i.al, ptr %i.p, align 8
  store ptr %i.an, ptr %i.q, align 4
  store i32 %i.ao, ptr %i.r, align 4
  store i32 %i.ap, ptr %i.s, align 8
  store ptr %i.ar, ptr %i.t, align 4
  %i.at = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 52) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.au = trunc i64 %i.at to i32
  %i.av = xor i32 %i.au, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.av, %_ZN4llvm10MDNodeInfoINS_15DILocalVariableEE12getHashValueEPKS1_.exit.i ], [ %i.bd, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.aw = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ax = lshr i64 %i.aw, 5                       ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !131 ; 2 uses
  %i.ba = and i32 %.0.i7, 31                      ; 2 uses
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = trunc i32 %i.bb to i1
  %i.bd = add i32 %.0.i7, 1
  br i1 %i.bc, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2052

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ax
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aw
  %i.bg = load ptr, ptr %i.aa, align 8, !tbaa !1094
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !1094
  %i.bh = shl nuw i32 1, %i.ba
  %i.bi = or i32 %i.bh, %i.az
  store i32 %i.bi, ptr %i.be, align 4, !tbaa !131
  %i.bj = add i32 %.0.i18, -1
  %i.bk = and i32 %i.bj, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bk, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2053

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2054

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1091
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bl = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !2046
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !2046
  %i.bp = icmp eq i32 %i.bl, 0
  br i1 %i.bp, label %_ZN4llvm8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bq = load ptr, ptr %1, align 8, !tbaa !1083
  %i.br = zext i32 %i.bl to i64                   ; 2 uses
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = add nuw nsw i64 %i.br, 31
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = and i64 %i.bu, 1073741820
  %i.bw = add nuw nsw i64 %i.bv, %i.bs
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bq, i64 noundef %i.bw, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !1091
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_15DILocalVariableENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E6doFindINS_13MDNodeKeyImplIS2_EEEEPKS9_RKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(44) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1139", align 1  ; 5 uses
  %3 = alloca %"struct.std::array.1138", align 16 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1119, !noalias !2055 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2060, !noalias !2055 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1122, !noalias !2055 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.j = load <2 x ptr>, ptr %1, align 8, !tbaa !159
  store <2 x ptr> %i.j, ptr %3, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load <2 x i32>, ptr %i.h, align 8, !tbaa !131
  store <2 x i32> %i.l, ptr %i.k, align 16
  %i.m = load i8, ptr %i.i, align 8, !tbaa !2012, !range !18, !noundef !19
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i8, ptr %i.o, align 8, !tbaa !1766, !range !18, !noundef !19
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i8 1, ptr %2, align 1
  %i.s = load i32, ptr %i.r, align 4, !tbaa !131
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i32 %i.s, ptr %i.t, align 1
  %i.u = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 5) #23
  %i.v = xor i64 %i.u, -49064778989728563
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit

_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.v, %bb.c ], [ -6123094709308576955, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 25
  store i64 %.sroa.0.0.i.i.i.i.i.i, ptr %i.w, align 1
  %i.x = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.y = trunc i64 %i.x to i32
  %i.z = xor i32 %i.y, -313160499
  %.019 = and i32 %i.z, %i.g                      ; 3 uses
  %i.aa = zext i32 %.019 to i64                   ; 2 uses
  %i.ab = lshr i64 %i.aa, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !131
  %i.ae = and i32 %.019, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph, label %.thread, !prof !146

bb.d:                                             ; preds = %.lr.ph
  %i.ah = add nuw i32 %.020, 1
  %.0 = and i32 %i.ah, %i.g                       ; 3 uses
  %i.ai = zext i32 %.0 to i64                     ; 2 uses
  %i.aj = lshr i64 %i.ai, 5
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !131
  %i.am = and i32 %.0, 31
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = trunc i32 %i.an to i1
  br i1 %i.ao, label %.lr.ph, label %.thread, !prof !147

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit, %bb.d
  %i.ap = phi i64 [ %i.ai, %bb.d ], [ %i.aa, %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit ] ; 2 uses
  %.020 = phi i32 [ %.0, %bb.d ], [ %.019, %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueERKNS_13MDNodeKeyImplIS1_EE.exit ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1123
  %i.as = call noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_7DILabelEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(44) %1, ptr noundef %i.ar)
  br i1 %i.as, label %.thread.loopexit.split.loop.exit, label %bb.d, !prof !121

.thread.loopexit.split.loop.exit:                 ; preds = %.lr.ph
end_hunk_24
begin_hunk_25_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  br label %_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.j, 2
  %i.o = and i64 %i.n, 15
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  br label %_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i

_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i: ; preds = %bb.d, %bb.c
  %.pn.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !1104
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.w = load i8, ptr %i.v, align 4, !tbaa !1106, !range !18, !noundef !19
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.x, align 4 ; 2 uses
  %i.y = load <2 x ptr>, ptr %.pn.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store <2 x ptr> %i.y, ptr %4, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.s, ptr %i.z, align 16
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.u, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 %i.w, ptr %i.ab, align 8
  %i.ac = and i64 %.sroa.0.0.copyload.i.i.i, 4294967296
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i8 1, ptr %3, align 1
  %.sroa.132.36.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i32 %.sroa.132.36.extract.trunc.i, ptr %i.ad, align 1
  %i.ae = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 5) #23
  %i.af = xor i64 %i.ae, -49064778989728563
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit: ; preds = %_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i, %bb.e
  %.sroa.0.0.i.i.i.i.i1.i = phi i64 [ %i.af, %bb.e ], [ -6123094709308576955, %_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 25
  store i64 %.sroa.0.0.i.i.i.i.i1.i, ptr %i.ag, align 1
  %i.ah = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %4, i64 noundef 33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = xor i32 %i.ai, -313160499
  %.024 = and i32 %i.aj, %i.g                     ; 3 uses
  %i.ak = zext i32 %.024 to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ak ; 2 uses
  %i.am = lshr i64 %i.ak, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !131
  %i.ap = and i32 %.024, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit
  %i.as = load ptr, ptr %1, align 8, !tbaa !1123
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.at = add nuw i32 %.025, 1
  %.0 = and i32 %i.at, %i.g                       ; 3 uses
  %i.au = zext i32 %.0 to i64                     ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.au ; 2 uses
  %i.aw = lshr i64 %i.au, 5
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !131
  %i.az = and i32 %.0, 31
  %i.ba = lshr i32 %i.ay, %i.az
  %i.bb = trunc i32 %i.ba to i1
  br i1 %i.bb, label %bb.g, label %.thread, !prof !147, !llvm.loop !2068

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.bc = phi ptr [ %i.al, %.lr.ph ], [ %i.av, %bb.f ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.f ]
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1123
  %i.be = icmp eq ptr %i.as, %i.bd                ; 3 uses
  br i1 %i.be, label %.thread, label %bb.f, !prof !121

.thread:                                          ; preds = %bb.g, %bb.f, %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.al, %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.av, %bb.f ], [ %i.bc, %bb.g ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.be, %bb.f ], [ %i.be, %bb.g ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2061
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.166", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1122
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1119
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2060
  store i32 0, ptr %i.p, align 16, !tbaa !2062
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2061
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.1139", align 1  ; 5 uses
  %3 = alloca %"struct.std::array.1138", align 16 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1119
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2060
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1122 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2060 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1119
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1122
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 25
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.u, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.v = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.u, %.lr.ph ], [ %i.bm, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.w = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.x = or disjoint i32 %i.w, %i.v
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1123 ; 6 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = and i64 %i.ac, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds i8, ptr %i.aa, i64 -32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21
  br label %_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.ag = lshr i64 %i.ac, 2
  %i.ah = and i64 %i.ag, 15
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ai
  br label %_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i.i

_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i.i: ; preds = %bb.e, %bb.d
  %.pn.i.i = phi ptr [ %i.aj, %bb.e ], [ %i.af, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !1104
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  %i.ap = load i8, ptr %i.ao, align 4, !tbaa !1106, !range !18, !noundef !19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.aq, align 4 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %.pn.i.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store <2 x ptr> %i.ar, ptr %3, align 16
  store i32 %i.al, ptr %i.o, align 16
  store i32 %i.an, ptr %i.p, align 4
  store i8 %i.ap, ptr %i.q, align 8
  %i.as = and i64 %.sroa.0.0.copyload.i.i.i.i, 4294967296
  %.not.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i, label %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i8 1, ptr %2, align 1
  %.sroa.132.36.extract.trunc.i.i = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32
  store i32 %.sroa.132.36.extract.trunc.i.i, ptr %i.r, align 1
  %i.at = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 5) #23
  %i.au = xor i64 %i.at, -49064778989728563
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit.i: ; preds = %bb.f, %_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i.i
  %.sroa.0.0.i.i.i.i.i1.i.i = phi i64 [ %i.au, %bb.f ], [ -6123094709308576955, %_ZN4llvm13MDNodeKeyImplINS_7DILabelEEC2EPKS1_.exit.i.i ]
  store i64 %.sroa.0.0.i.i.i.i.i1.i.i, ptr %i.s, align 1
  %i.av = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.aw = trunc i64 %i.av to i32
  %i.ax = xor i32 %i.aw, -313160499
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ax, %_ZN4llvm10MDNodeInfoINS_7DILabelEE12getHashValueEPKS1_.exit.i ], [ %i.bf, %bb.g ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.ay = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.az = lshr i64 %i.ay, 5                       ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !131 ; 2 uses
  %i.bc = and i32 %.0.i7, 31                      ; 2 uses
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i1
  %i.bf = add i32 %.0.i7, 1
  br i1 %i.be, label %bb.g, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2069

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.az
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ay
  %i.bi = load ptr, ptr %i.z, align 8, !tbaa !1123
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !1123
  %i.bj = shl nuw i32 1, %i.bc
  %i.bk = or i32 %i.bj, %i.bb
  store i32 %i.bk, ptr %i.bg, align 4, !tbaa !131
  %i.bl = add i32 %.0.i18, -1
  %i.bm = and i32 %i.bl, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bm, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2070

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2071

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1122
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bn = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !2062
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bp, ptr %i.bq, align 8, !tbaa !2062
  %i.br = icmp eq i32 %i.bn, 0
  br i1 %i.br, label %_ZN4llvm8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bs = load ptr, ptr %1, align 8, !tbaa !1119
  %i.bt = zext i32 %i.bn to i64                   ; 2 uses
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = add nuw nsw i64 %i.bt, 31
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = and i64 %i.bw, 1073741820
  %i.by = add nuw nsw i64 %i.bx, %i.bu
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bs, i64 noundef %i.by, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !1122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DILabelENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_12DIExpressionEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.sroa.01.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !1134
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !44 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not.i.i.i = icmp eq i64 %.sroa.22.0.copyload.i, %i.h
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_12DIExpressionEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %bb.a
  %.not.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.22.0.copyload.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i, label %_ZNK4llvm13MDNodeKeyImplINS_12DIExpressionEE7isKeyOfEPKS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.22.0.copyload.i, 3
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.copyload.i, ptr %i.b, i64 %.idx.i.i.i)
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br label %_ZNK4llvm13MDNodeKeyImplINS_12DIExpressionEE7isKeyOfEPKS1_.exit

_ZNK4llvm13MDNodeKeyImplINS_12DIExpressionEE7isKeyOfEPKS1_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.0.i.i.i = phi i1 [ false, %bb.a ], [ %.not9.i.i.i.i.i.i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1135, !noalias !2072 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1147, !noalias !2072 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1148, !noalias !2072 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !1150   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = tail call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %i.k, i64 noundef %i.p) #23
  %i.r = trunc i64 %i.q to i32
  %i.s = xor i32 %i.r, -313160499
  %.024.i = and i32 %i.s, %i.h                    ; 3 uses
  %i.t = zext i32 %.024.i to i64                  ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !131
  %i.y = and i32 %.024.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !146

.lr.ph.i:                                         ; preds = %bb.b
  %i.ab = load ptr, ptr %1, align 8, !tbaa !1150
  br label %bb.d

bb.c:                                             ; preds = %bb.d
end_hunk_25
begin_hunk_26_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
bb.e:                                             ; preds = %.loopexit
  %i.au = shl i32 %i.aq, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.au)
  %i.av = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2078
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.e
  %i.aw = phi ptr [ %.pre.i, %bb.e ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 3 uses
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !1147
  %i.ay = load ptr, ptr %0, align 8, !tbaa !1135
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3                 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = lshr i64 %i.bc, 5
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !131
  %i.bj = or i32 %i.bf, %i.bi
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !131
  %i.bk = load i32, ptr %i.ao, align 8, !tbaa !2079
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.ao, align 8, !tbaa !2079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load ptr, ptr %1, align 8, !tbaa !1150
  store ptr %i.bm, ptr %i.aw, align 8, !tbaa !1150
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %bb.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.aw, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.al, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1135, !noalias !2080 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1147, !noalias !2080 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1148, !noalias !2080 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1150   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = tail call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %i.j, i64 noundef %i.o) #23
  %i.q = trunc i64 %i.p to i32
  %i.r = xor i32 %i.q, -313160499
  %.024 = and i32 %i.r, %i.g                      ; 3 uses
  %i.s = zext i32 %.024 to i64                    ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !131
  %i.x = and i32 %.024, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %bb.b
  %i.aa = load ptr, ptr %1, align 8, !tbaa !1150
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.ab = add nuw i32 %.025, 1
  %.0 = and i32 %i.ab, %i.g                       ; 3 uses
  %i.ac = zext i32 %.0 to i64                     ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !131
  %i.ah = and i32 %.0, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %.thread, !prof !147, !llvm.loop !2077

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.ak = phi ptr [ %i.t, %.lr.ph ], [ %i.ad, %bb.c ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.c ]
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1150
  %i.am = icmp eq ptr %i.aa, %i.al                ; 3 uses
  br i1 %i.am, label %.thread, label %bb.c, !prof !121

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ], [ %i.ak, %bb.d ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.am, %bb.c ], [ %i.am, %bb.d ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2078
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.90", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1148
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1135
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1147
  store i32 0, ptr %i.p, align 16, !tbaa !2079
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2078
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1135
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1147
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1148 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1147 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1135
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1148
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.au, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1150 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = tail call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %i.x, i64 noundef %i.ac) #23
  %i.ae = trunc i64 %i.ad to i32
  %i.af = xor i32 %i.ae, -313160499
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.af, %bb.b ], [ %i.an, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.ag = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ah = lshr i64 %i.ag, 5                       ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !131 ; 2 uses
  %i.ak = and i32 %.0.i7, 31                      ; 2 uses
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  %i.an = add i32 %.0.i7, 1
  br i1 %i.am, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2085

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ah
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ag
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !1150
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !1150
  %i.ar = shl nuw i32 1, %i.ak
  %i.as = or i32 %i.ar, %i.aj
  store i32 %i.as, ptr %i.ao, align 4, !tbaa !131
  %i.at = add i32 %.0.i18, -1
  %i.au = and i32 %i.at, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.au, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2086

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !2087

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1148
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.av = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !2079
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !2079
  %i.az = icmp eq i32 %i.av, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.ba = load ptr, ptr %1, align 8, !tbaa !1135
  %i.bb = zext i32 %i.av to i64                   ; 2 uses
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !1148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12DIExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !52
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #23
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !52
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store i64 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !52
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E24lookupOrInsertIntoBucketImJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !2088 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !2088 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !2088 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !2088
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load i64, ptr %1, align 8, !tbaa !44     ; 2 uses
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.l, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !131
  %i.x = and i32 %i.r, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph.i, label %.loopexit, !prof !146

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.ag, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ae, %bb.c ], [ %i.r, %bb.b ]
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !44
  %i.ac = icmp eq i64 %i.m, %i.ab
  br i1 %i.ac, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_.exit, label %bb.c, !prof !121

bb.c:                                             ; preds = %.lr.ph.i
  %i.ad = add nuw i32 %.024.i, 1
  %i.ae = and i32 %i.ad, %i.l                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i.i.i, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !131
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph.i, label %.loopexit, !prof !147, !llvm.loop !2093

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2094
  %i.an = shl i32 %i.b, 1
  %i.ao = and i32 %i.an, -4
  %i.ap = add i32 %i.ao, 4
  %i.aq = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.ap, %i.aq
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit, label %bb.d, !prof !121

bb.d:                                             ; preds = %.loopexit
  %i.ar = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ar)
  %i.as = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !2094
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre16 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit: ; preds = %.loopexit, %bb.d
  %i.at = phi ptr [ %.pre16, %bb.d ], [ %i.e, %.loopexit ]
  %i.au = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.av = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.aw = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.j
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.d
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3                 ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 31
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = lshr i64 %i.bb, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !131
end_hunk_26
begin_hunk_27_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_:bb.a
  %i.aj = and i32 %i.ad, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph, label %.thread, !prof !147, !llvm.loop !2093

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.s, %bb.b ], [ null, %bb.a ], [ %i.af, %bb.c ], [ %i.z, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ab, %bb.c ], [ %i.ab, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2094
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.614", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEEC2EjNS_12DenseMapBaseIS7_mS2_S4_S6_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 3                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #23 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !199
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !199
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !199
  br label %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEEC2EjNS_12DenseMapBaseIS7_mS2_S4_S6_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEEC2EjNS_12DenseMapBaseIS7_mS2_S4_S6_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(48) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE13maybeMoveFastEOS7_.exit.thread, label %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE13maybeMoveFastEOS7_.exit

_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE13maybeMoveFastEOS7_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEEC2EjNS_12DenseMapBaseIS7_mS2_S4_S6_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !2101
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !199
  br label %bb.b

_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE13maybeMoveFastEOS7_.exit: ; preds = %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEEC2EjNS_12DenseMapBaseIS7_mS2_S4_S6_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE13maybeMoveFastEOS7_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE13maybeMoveFastEOS7_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 3                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #23 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !199
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !199
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !199
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE13maybeMoveFastEOS7_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE13maybeMoveFastEOS7_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !199 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !199
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #23
  br label %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEED2Ev.exit

_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 4
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 3   ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i21 = icmp eq i64 %i.ab, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !131 ; 2 uses
  %.not11.i19 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph24
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ae = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i20 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bk, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !44 ; 2 uses
  %i.ak = mul i64 %i.aj, -4658895280553007687     ; 2 uses
  %i.al = lshr i64 %i.ak, 31
  %i.am = xor i64 %i.al, %i.ak
  %i.an = trunc i64 %i.am to i32
  %i.ao = and i32 %i.y, %i.an                     ; 3 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = lshr i64 %i.ap, 5                       ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !131 ; 2 uses
  %i.at = and i32 %i.ao, 31                       ; 2 uses
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ax, %.lr.ph.i ], [ %i.ao, %bb.b ]
  %i.aw = add i32 %.016.i, 1
  %i.ax = and i32 %i.aw, %i.y                     ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 5                       ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !131 ; 2 uses
  %i.bc = and i32 %i.ax, 31                       ; 2 uses
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i1
  br i1 %i.be, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit, !llvm.loop !2102

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ap, %bb.b ], [ %i.ay, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.as, %bb.b ], [ %i.bb, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.at, %bb.b ], [ %i.bc, %.lr.ph.i ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa15.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.lcssa13.i
  store i64 %i.aj, ptr %i.bg, align 8, !tbaa !44
  %i.bh = shl nuw i32 1, %.lcssa.i
  %i.bi = or i32 %i.bh, %.lcssa11.i
  store i32 %i.bi, ptr %i.bf, align 4, !tbaa !131
  %i.bj = add i32 %.0.i20, -1
  %i.bk = and i32 %i.bj, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bk, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2103

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph24, !llvm.loop !2104

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bl = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bm = and i32 %i.bl, -2
  %i.bn = or disjoint i32 %.pre-phi, %i.bm
  store i32 %i.bn, ptr %0, align 8
  %i.bo = load i32, ptr %1, align 8               ; 3 uses
  %i.bp = and i32 %i.bo, 1
  %.not.i.i11 = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.bq = load i32, ptr %i.j, align 8, !tbaa !199 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !199
  %i.bt = zext i32 %i.bq to i64                   ; 2 uses
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = add nuw nsw i64 %i.bt, 31
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = and i64 %i.bw, 1073741820
  %i.by = add nuw nsw i64 %i.bx, %i.bu
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bs, i64 noundef %i.by, i64 noundef 8) #23
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE4killEv.exit

_ZN4llvm13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.bz = phi i32 [ %i.bo, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapImNS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoImvEENS5_12DenseSetPairImEEEEmS6_S8_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit ], [ %i.bo, %bb.c ], [ %.pre.i, %bb.d ]
  %i.ca = and i32 %i.bz, -2
  store i32 %i.ca, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm15SmallVectorImplImE6insertIPKmvEEPmS5_T_S6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !52   ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  %i.i = icmp eq ptr %1, %i.h
  %i.j = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.k = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 10 uses
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = ashr exact i64 %i.l, 3                   ; 2 uses
  %i.n = add nsw i64 %i.m, %i.g                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !78
  %i.q = zext i32 %i.p to i64
  %i.r = icmp ugt i64 %i.n, %i.q
  br i1 %i.r, label %bb.c, label %_ZN4llvm15SmallVectorImplImE7reserveEm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.s, i64 noundef %i.n, i64 noundef 8) #23
  %.pre8.pre.i = load i32, ptr %i.e, align 8, !tbaa !52
  %.pre62.pre = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZN4llvm15SmallVectorImplImE7reserveEm.exit.i

_ZN4llvm15SmallVectorImplImE7reserveEm.exit.i:    ; preds = %bb.c, %bb.b
  %.pre62 = phi ptr [ %i.a, %bb.b ], [ %.pre62.pre, %bb.c ] ; 2 uses
  %.pre8.i = phi i32 [ %i.f, %bb.b ], [ %.pre8.pre.i, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %2, %3
  br i1 %.not.i.i, label %_ZN4llvm15SmallVectorImplImE6appendIPKmvEEvT_S5_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplImE7reserveEm.exit.i
  %i.t = zext i32 %.pre8.i to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre62, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 8 %2, i64 %i.l, i1 false)
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !52
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !21
  br label %_ZN4llvm15SmallVectorImplImE6appendIPKmvEEvT_S5_.exit

_ZN4llvm15SmallVectorImplImE6appendIPKmvEEvT_S5_.exit: ; preds = %_ZN4llvm15SmallVectorImplImE7reserveEm.exit.i, %bb.d
  %i.v = phi ptr [ %.pre62, %_ZN4llvm15SmallVectorImplImE7reserveEm.exit.i ], [ %.pre61, %bb.d ]
  %i.w = phi i32 [ %.pre8.i, %_ZN4llvm15SmallVectorImplImE7reserveEm.exit.i ], [ %.pre.i, %bb.d ]
  %i.x = trunc i64 %i.m to i32
  %i.y = add i32 %i.w, %i.x
  store i32 %i.y, ptr %i.e, align 8, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.d
  br label %_ZSt4copyIPKmPmET0_T_S4_S3_.exit

bb.e:                                             ; preds = %bb.a
  %.idx52 = sub i64 0, %i.l
  %i.aa = ashr exact i64 %i.l, 3                  ; 5 uses
  %i.ab = add nsw i64 %i.aa, %i.g                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !78
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp ugt i64 %i.ab, %i.ae
  br i1 %i.af, label %bb.f, label %_ZN4llvm15SmallVectorImplImE7reserveEm.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ag, i64 noundef %i.ab, i64 noundef 8) #23
  %.pre = load ptr, ptr %0, align 8, !tbaa !21
  %.pre59 = load i32, ptr %i.e, align 8, !tbaa !52 ; 2 uses
  %.pre64 = zext i32 %.pre59 to i64
  br label %_ZN4llvm15SmallVectorImplImE7reserveEm.exit

_ZN4llvm15SmallVectorImplImE7reserveEm.exit:      ; preds = %bb.e, %bb.f
  %.pre-phi = phi i64 [ %i.g, %bb.e ], [ %.pre64, %bb.f ] ; 3 uses
  %i.ah = phi i32 [ %i.f, %bb.e ], [ %.pre59, %bb.f ] ; 2 uses
  %i.ai = phi ptr [ %i.a, %bb.e ], [ %.pre, %bb.f ] ; 5 uses
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.d ; 14 uses
  %.idx = shl nuw nsw i64 %.pre-phi, 3            ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx ; 4 uses
  %gepdiff = sub nsw i64 %.idx, %i.d              ; 2 uses
  %i.am = ashr exact i64 %gepdiff, 3              ; 8 uses
  %.not = icmp ult i64 %i.am, %i.aa
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplImE7reserveEm.exit
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %.idx52 ; 2 uses
  %i.ao = add nsw i64 %i.aa, %.pre-phi            ; 2 uses
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !78
  %i.aq = zext i32 %i.ap to i64
  %i.ar = icmp ugt i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.h, label %_ZN4llvm15SmallVectorImplImE7reserveEm.exit.i46

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.as, i64 noundef %i.ao, i64 noundef 8) #23
  %.pre.i47 = load i32, ptr %i.e, align 8, !tbaa !52 ; 2 uses
  %.pre12.i = zext i32 %.pre.i47 to i64
  %.pre60 = load ptr, ptr %0, align 8, !tbaa !21
end_hunk_27
begin_hunk_28_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !131
  %i.bm = or i32 %i.bi, %i.bl
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !131
  %i.bn = load i32, ptr %i.ar, align 8, !tbaa !2116
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.ar, align 8, !tbaa !2116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bp = load ptr, ptr %1, align 8, !tbaa !1244
  store ptr %i.bp, ptr %i.az, align 8, !tbaa !1244
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %bb.f, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.az, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.ao, %bb.f ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.810", align 16  ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1229, !noalias !2117 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1241, !noalias !2117 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1242, !noalias !2117 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1244   ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.j, 2
  %i.o = and i64 %i.n, 15
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  br label %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.in.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ]
  %i.r = load <2 x ptr>, ptr %.in.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store <2 x ptr> %i.r, ptr %3, align 16
  %i.s = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.t = trunc i64 %i.s to i32
  %i.u = xor i32 %i.t, -313160499
  %.024 = and i32 %i.u, %i.g                      ; 3 uses
  %i.v = zext i32 %.024 to i64                    ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = lshr i64 %i.v, 5
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !131
  %i.aa = and i32 %.024, 31
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  br i1 %i.ac, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit
  %i.ad = load ptr, ptr %1, align 8, !tbaa !1244
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.ae = add nuw i32 %.025, 1
  %.0 = and i32 %i.ae, %i.g                       ; 3 uses
  %i.af = zext i32 %.0 to i64                     ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !131
  %i.ak = and i32 %.0, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %bb.f, label %.thread, !prof !147, !llvm.loop !2114

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.an = phi ptr [ %i.w, %.lr.ph ], [ %i.ag, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1244
  %i.ap = icmp eq ptr %i.ad, %i.ao                ; 3 uses
  br i1 %i.ap, label %.thread, label %bb.e, !prof !121

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.w, %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.ag, %bb.e ], [ %i.an, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.ap, %bb.e ], [ %i.ap, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2115
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.94", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1242
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1229
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1241
  store i32 0, ptr %i.p, align 16, !tbaa !2116
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2115
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.810", align 16  ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1229
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1241
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1242 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1241 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1229
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1242
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1244 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = and i64 %i.x, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds i8, ptr %i.v, i64 -32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ab = lshr i64 %i.x, 2
  %i.ac = and i64 %i.ab, 15
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ad
  br label %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit.i: ; preds = %bb.d, %bb.c
  %.in.i.i = phi ptr [ %i.ae, %bb.d ], [ %i.aa, %bb.c ]
  %i.af = load <2 x ptr>, ptr %.in.i.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store <2 x ptr> %i.af, ptr %2, align 16
  %i.ag = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = xor i32 %i.ah, -313160499
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ai, %_ZN4llvm10MDNodeInfoINS_26DIGlobalVariableExpressionEE12getHashValueEPKS1_.exit.i ], [ %i.aq, %bb.e ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.aj = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ak = lshr i64 %i.aj, 5                       ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !131 ; 2 uses
  %i.an = and i32 %.0.i7, 31                      ; 2 uses
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  %i.aq = add i32 %.0.i7, 1
  br i1 %i.ap, label %bb.e, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2122

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ak
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aj
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !1244
  store ptr %i.at, ptr %i.as, align 8, !tbaa !1244
  %i.au = shl nuw i32 1, %i.an
  %i.av = or i32 %i.au, %i.am
  store i32 %i.av, ptr %i.ar, align 4, !tbaa !131
  %i.aw = add i32 %.0.i18, -1
  %i.ax = and i32 %i.aw, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2123

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !2124

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1242
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !2116
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !2116
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = load ptr, ptr %1, align 8, !tbaa !1229
  %i.be = zext i32 %i.ay to i64                   ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.be, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  %i.bj = add nuw nsw i64 %i.bi, %i.bf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bd, i64 noundef %i.bj, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !1242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_26DIGlobalVariableExpressionENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1264   ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %1, i64 -16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8              ; 4 uses
  %i.d = and i64 %i.c, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0           ; 3 uses
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14DIObjCProperty10getRawNameEv.exit.i, label %_ZNK4llvm14DIObjCProperty10getRawNameEv.exit.thread.i

_ZNK4llvm14DIObjCProperty10getRawNameEv.exit.i:   ; preds = %bb.a
  %i.e = lshr i64 %i.c, 2
  %i.f = and i64 %i.e, 15
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.j = icmp eq ptr %i.a, %i.i
  br i1 %i.j, label %_ZNK4llvm14DIObjCProperty10getRawFileEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_14DIObjCPropertyEE7isKeyOfEPKS1_.exit

_ZNK4llvm14DIObjCProperty10getRawNameEv.exit.thread.i: ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %1, i64 -32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53
  %i.n = icmp eq ptr %i.a, %i.m
  br i1 %i.n, label %_ZNK4llvm14DIObjCProperty10getRawFileEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_14DIObjCPropertyEE7isKeyOfEPKS1_.exit

_ZNK4llvm14DIObjCProperty10getRawFileEv.exit.i:   ; preds = %_ZNK4llvm14DIObjCProperty10getRawNameEv.exit.thread.i, %_ZNK4llvm14DIObjCProperty10getRawNameEv.exit.i
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.l, %_ZNK4llvm14DIObjCProperty10getRawNameEv.exit.thread.i ], [ %i.h, %_ZNK4llvm14DIObjCProperty10getRawNameEv.exit.i ]
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %.in.i, align 8, !tbaa !1266
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_14DIObjCPropertyEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %_ZNK4llvm14DIObjCProperty10getRawFileEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !1267
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1261
  %i.w = icmp eq i32 %i.t, %i.v
  br i1 %i.w, label %bb.c, label %_ZNK4llvm13MDNodeKeyImplINS_14DIObjCPropertyEE7isKeyOfEPKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1268 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14DIObjCProperty16getRawGetterNameEv.exit.i, label %_ZNK4llvm14DIObjCProperty16getRawGetterNameEv.exit.thread.i

_ZNK4llvm14DIObjCProperty16getRawGetterNameEv.exit.i: ; preds = %bb.c
  %i.z = lshr i64 %i.c, 2
  %i.aa = and i64 %i.z, 15
  %i.ab = sub nsw i64 0, %i.aa
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !53
  %i.af = icmp eq ptr %i.y, %i.ae
  br i1 %i.af, label %_ZNK4llvm14DIObjCProperty16getRawSetterNameEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_14DIObjCPropertyEE7isKeyOfEPKS1_.exit

_ZNK4llvm14DIObjCProperty16getRawGetterNameEv.exit.thread.i: ; preds = %bb.c
  %i.ag = getelementptr inbounds i8, ptr %1, i64 -32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !53
  %i.ak = icmp eq ptr %i.y, %i.aj
  br i1 %i.ak, label %_ZNK4llvm14DIObjCProperty16getRawSetterNameEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_14DIObjCPropertyEE7isKeyOfEPKS1_.exit

_ZNK4llvm14DIObjCProperty16getRawSetterNameEv.exit.i: ; preds = %_ZNK4llvm14DIObjCProperty16getRawGetterNameEv.exit.thread.i, %_ZNK4llvm14DIObjCProperty16getRawGetterNameEv.exit.i
  %.sroa.0.0.i.i.i.i11.i = phi ptr [ %i.ah, %_ZNK4llvm14DIObjCProperty16getRawGetterNameEv.exit.thread.i ], [ %i.ac, %_ZNK4llvm14DIObjCProperty16getRawGetterNameEv.exit.i ]
  %.in17.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load ptr, ptr %.in17.i, align 8, !tbaa !1269
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i11.i, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !53
  %i.ao = icmp eq ptr %i.al, %i.an
  br i1 %i.ao, label %bb.d, label %_ZNK4llvm13MDNodeKeyImplINS_14DIObjCPropertyEE7isKeyOfEPKS1_.exit

bb.d:                                             ; preds = %_ZNK4llvm14DIObjCProperty16getRawSetterNameEv.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !1270
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !1263
  %i.at = icmp eq i32 %i.aq, %i.as
  br i1 %i.at, label %bb.e, label %_ZNK4llvm13MDNodeKeyImplINS_14DIObjCPropertyEE7isKeyOfEPKS1_.exit

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1271
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds i8, ptr %1, i64 -32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21
  br label %_ZNK4llvm14DIObjCProperty10getRawTypeEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ay = lshr i64 %i.c, 2
  %i.az = and i64 %i.ay, 15
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ba
  br label %_ZNK4llvm14DIObjCProperty10getRawTypeEv.exit.i

_ZNK4llvm14DIObjCProperty10getRawTypeEv.exit.i:   ; preds = %bb.g, %bb.f
end_hunk_28
begin_hunk_29_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a
  %3 = alloca %"struct.std::array.883", align 16  ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1272, !noalias !2133 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1284, !noalias !2133 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1285, !noalias !2133 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1287   ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = and i64 %i.j, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.j, 2
  %i.o = and i64 %i.n, 15
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.p
  br label %_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.pn.i = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %.in12.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.in8.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = load i32, ptr %.in8.i, align 8, !tbaa !1261
  %.in.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.s = load i32, ptr %.in.i, align 4, !tbaa !1263
  %i.t = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !53
  %i.v = load <2 x ptr>, ptr %.pn.i, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.y = load <2 x ptr>, ptr %.in12.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store <2 x ptr> %i.v, ptr %3, align 16
  store i32 %i.r, ptr %i.w, align 16
  store <2 x ptr> %i.y, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.s, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.u, ptr %i.aa, align 8
  %i.ab = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 48) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = xor i32 %i.ac, -313160499
  %.024 = and i32 %i.ad, %i.g                     ; 3 uses
  %i.ae = zext i32 %.024 to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = lshr i64 %i.ae, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !131
  %i.aj = and i32 %.024, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit
  %i.am = load ptr, ptr %1, align 8, !tbaa !1287
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.an = add nuw i32 %.025, 1
  %.0 = and i32 %i.an, %i.g                       ; 3 uses
  %i.ao = zext i32 %.0 to i64                     ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ao ; 2 uses
  %i.aq = lshr i64 %i.ao, 5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !131
  %i.at = and i32 %.0, 31
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %bb.f, label %.thread, !prof !147, !llvm.loop !2130

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.aw = phi ptr [ %i.af, %.lr.ph ], [ %i.ap, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1287
  %i.ay = icmp eq ptr %i.am, %i.ax                ; 3 uses
  br i1 %i.ay, label %.thread, label %bb.e, !prof !121

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.af, %_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.ap, %bb.e ], [ %i.aw, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.ay, %bb.e ], [ %i.ay, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2131
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.170", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1285
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1272
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1284
  store i32 0, ptr %i.p, align 16, !tbaa !2132
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2131
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.883", align 16  ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1272
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1284
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1285 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1284 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1272
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1285
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.t, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.u = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.t, %.lr.ph ], [ %i.bg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.v = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.w = or disjoint i32 %i.v, %i.u
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1287 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = and i64 %i.ab, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 -32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.af = lshr i64 %i.ab, 2
  %i.ag = and i64 %i.af, 15
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ah
  br label %_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.pn.i.i = phi ptr [ %i.ai, %bb.e ], [ %i.ae, %bb.d ] ; 3 uses
  %.in12.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.in8.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.aj = load i32, ptr %.in8.i.i, align 8, !tbaa !1261
  %.in.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.ak = load i32, ptr %.in.i.i, align 4, !tbaa !1263
  %i.al = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !53
  %i.an = load <2 x ptr>, ptr %.pn.i.i, align 8, !tbaa !53
  %i.ao = load <2 x ptr>, ptr %.in12.i.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store <2 x ptr> %i.an, ptr %2, align 16
  store i32 %i.aj, ptr %i.o, align 16
  store <2 x ptr> %i.ao, ptr %i.p, align 4
  store i32 %i.ak, ptr %i.q, align 4
  store ptr %i.am, ptr %i.r, align 8
  %i.ap = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 48) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = xor i32 %i.aq, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ar, %_ZN4llvm10MDNodeInfoINS_14DIObjCPropertyEE12getHashValueEPKS1_.exit.i ], [ %i.az, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.as = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.at = lshr i64 %i.as, 5                       ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !131 ; 2 uses
  %i.aw = and i32 %.0.i7, 31                      ; 2 uses
  %i.ax = lshr i32 %i.av, %i.aw
  %i.ay = trunc i32 %i.ax to i1
  %i.az = add i32 %.0.i7, 1
  br i1 %i.ay, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2138

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.at
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.as
  %i.bc = load ptr, ptr %i.y, align 8, !tbaa !1287
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !1287
  %i.bd = shl nuw i32 1, %i.aw
  %i.be = or i32 %i.bd, %i.av
  store i32 %i.be, ptr %i.ba, align 4, !tbaa !131
  %i.bf = add i32 %.0.i18, -1
  %i.bg = and i32 %i.bf, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bg, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2139

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2140

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1285
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bh = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !2132
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !2132
  %i.bl = icmp eq i32 %i.bh, 0
  br i1 %i.bl, label %_ZN4llvm8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bm = load ptr, ptr %1, align 8, !tbaa !1272
  %i.bn = zext i32 %i.bh to i64                   ; 2 uses
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bn, 31
  %i.bq = lshr i64 %i.bp, 3
  %i.br = and i64 %i.bq, 1073741820
  %i.bs = add nuw nsw i64 %i.br, %i.bo
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bm, i64 noundef %i.bs, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !1285
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_14DIObjCPropertyENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !1304
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !23
  %i.d = zext i16 %i.c to i32
  %i.e = icmp eq i32 %i.a, %i.d
  br i1 %i.e, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_16DIImportedEntityEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1306 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = and i64 %i.i, 2
  %.not.i.i.i.i = icmp eq i64 %i.j, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNK4llvm16DIImportedEntity11getRawScopeEv.exit.i, label %_ZNK4llvm16DIImportedEntity11getRawScopeEv.exit.thread.i

_ZNK4llvm16DIImportedEntity11getRawScopeEv.exit.i: ; preds = %bb.b
  %i.k = lshr i64 %i.i, 2
  %i.l = and i64 %i.k, 15
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !53
  %i.p = icmp eq ptr %i.g, %i.o
  br i1 %i.p, label %_ZNK4llvm16DIImportedEntity12getRawEntityEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_16DIImportedEntityEE7isKeyOfEPKS1_.exit

_ZNK4llvm16DIImportedEntity11getRawScopeEv.exit.thread.i: ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %1, i64 -32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21   ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !53
  %i.t = icmp eq ptr %i.g, %i.s
  br i1 %i.t, label %_ZNK4llvm16DIImportedEntity12getRawEntityEv.exit.thread.i, label %_ZNK4llvm13MDNodeKeyImplINS_16DIImportedEntityEE7isKeyOfEPKS1_.exit

_ZNK4llvm16DIImportedEntity12getRawEntityEv.exit.i: ; preds = %_ZNK4llvm16DIImportedEntity11getRawScopeEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1307
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %_ZNK4llvm16DIImportedEntity7getFileEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_16DIImportedEntityEE7isKeyOfEPKS1_.exit

_ZNK4llvm16DIImportedEntity12getRawEntityEv.exit.thread.i: ; preds = %_ZNK4llvm16DIImportedEntity11getRawScopeEv.exit.thread.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1307
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !53
  %i.ad = icmp eq ptr %i.aa, %i.ac
  br i1 %i.ad, label %_ZNK4llvm16DIImportedEntity7getFileEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_16DIImportedEntityEE7isKeyOfEPKS1_.exit

_ZNK4llvm16DIImportedEntity7getFileEv.exit.i:     ; preds = %_ZNK4llvm16DIImportedEntity12getRawEntityEv.exit.thread.i, %_ZNK4llvm16DIImportedEntity12getRawEntityEv.exit.i
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.r, %_ZNK4llvm16DIImportedEntity12getRawEntityEv.exit.thread.i ], [ %i.n, %_ZNK4llvm16DIImportedEntity12getRawEntityEv.exit.i ]
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %.in.i, align 8, !tbaa !1308
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !53
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.c, label %_ZNK4llvm13MDNodeKeyImplINS_16DIImportedEntityEE7isKeyOfEPKS1_.exit

bb.c:                                             ; preds = %_ZNK4llvm16DIImportedEntity7getFileEv.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !1309
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !58
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.d, label %_ZNK4llvm13MDNodeKeyImplINS_16DIImportedEntityEE7isKeyOfEPKS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1310 ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNK4llvm16DIImportedEntity10getRawNameEv.exit.i, label %_ZNK4llvm16DIImportedEntity10getRawNameEv.exit.thread.i

_ZNK4llvm16DIImportedEntity10getRawNameEv.exit.i: ; preds = %bb.d
  %i.ap = lshr i64 %i.i, 2
  %i.aq = and i64 %i.ap, 15
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !53
  %i.av = icmp eq ptr %i.ao, %i.au
  br i1 %i.av, label %_ZNK4llvm16DIImportedEntity14getRawElementsEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_16DIImportedEntityEE7isKeyOfEPKS1_.exit

_ZNK4llvm16DIImportedEntity10getRawNameEv.exit.thread.i: ; preds = %bb.d
  %i.aw = getelementptr inbounds i8, ptr %1, i64 -32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !53
  %i.ba = icmp eq ptr %i.ao, %i.az
end_hunk_29
begin_hunk_30_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_:bb.a
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1327   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !23
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = and i64 %i.l, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.p = lshr i64 %i.l, 2
  %i.q = and i64 %i.p, 15
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.r
  br label %_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.pn.i = phi ptr [ %i.s, %bb.d ], [ %i.o, %bb.c ] ; 4 uses
  %.in12.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.t = load i32, ptr %.in12.i, align 4, !tbaa !58
  %.in10.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24
  %i.u = load ptr, ptr %.in10.i, align 8, !tbaa !53
  %.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.v = load ptr, ptr %.in.i, align 8, !tbaa !53
  %i.w = zext i16 %i.j to i32
  %i.x = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !53
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aa = load <2 x ptr>, ptr %.pn.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 %i.w, ptr %3, align 4
  store <2 x ptr> %i.aa, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 20
  store ptr %i.u, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 %i.t, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.v, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.y, ptr %i.ae, align 4
  %i.af = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 48) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.ag = trunc i64 %i.af to i32
  %i.ah = xor i32 %i.ag, -313160499
  %.024 = and i32 %i.ah, %i.g                     ; 3 uses
  %i.ai = zext i32 %.024 to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ai ; 2 uses
  %i.ak = lshr i64 %i.ai, 5
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !131
  %i.an = and i32 %.024, 31
  %i.ao = lshr i32 %i.am, %i.an
  %i.ap = trunc i32 %i.ao to i1
  br i1 %i.ap, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit
  %i.aq = load ptr, ptr %1, align 8, !tbaa !1327
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.ar = add nuw i32 %.025, 1
  %.0 = and i32 %i.ar, %i.g                       ; 3 uses
  %i.as = zext i32 %.0 to i64                     ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.au = lshr i64 %i.as, 5
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !131
  %i.ax = and i32 %.0, 31
  %i.ay = lshr i32 %i.aw, %i.ax
  %i.az = trunc i32 %i.ay to i1
  br i1 %i.az, label %bb.f, label %.thread, !prof !147, !llvm.loop !2146

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.ba = phi ptr [ %i.aj, %.lr.ph ], [ %i.at, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1327
  %i.bc = icmp eq ptr %i.aq, %i.bb                ; 3 uses
  br i1 %i.bc, label %.thread, label %bb.e, !prof !121

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.aj, %_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.at, %bb.e ], [ %i.ba, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.bc, %bb.e ], [ %i.bc, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2147
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.174", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1325
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1312
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1324
  store i32 0, ptr %i.p, align 16, !tbaa !2148
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2147
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.883", align 4   ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1312
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1324
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1325 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1324 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1312
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1325
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.u, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.v = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.u, %.lr.ph ], [ %i.bk, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.w = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.x = or disjoint i32 %i.w, %i.v
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1327 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !23
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 -16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = and i64 %i.ae, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds i8, ptr %i.aa, i64 -32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ai = lshr i64 %i.ae, 2
  %i.aj = and i64 %i.ai, 15
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ak
  br label %_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.pn.i.i = phi ptr [ %i.al, %bb.e ], [ %i.ah, %bb.d ] ; 4 uses
  %.in12.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.am = load i32, ptr %.in12.i.i, align 4, !tbaa !58
  %.in10.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %i.an = load ptr, ptr %.in10.i.i, align 8, !tbaa !53
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.ao = load ptr, ptr %.in.i.i, align 8, !tbaa !53
  %i.ap = zext i16 %i.ac to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !53
  %i.as = load <2 x ptr>, ptr %.pn.i.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %i.ap, ptr %2, align 4
  store <2 x ptr> %i.as, ptr %i.o, align 4
  store ptr %i.an, ptr %i.p, align 4
  store i32 %i.am, ptr %i.q, align 4
  store ptr %i.ao, ptr %i.r, align 4
  store ptr %i.ar, ptr %i.s, align 4
  %i.at = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 48) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.au = trunc i64 %i.at to i32
  %i.av = xor i32 %i.au, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.av, %_ZN4llvm10MDNodeInfoINS_16DIImportedEntityEE12getHashValueEPKS1_.exit.i ], [ %i.bd, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.aw = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ax = lshr i64 %i.aw, 5                       ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !131 ; 2 uses
  %i.ba = and i32 %.0.i7, 31                      ; 2 uses
  %i.bb = lshr i32 %i.az, %i.ba
  %i.bc = trunc i32 %i.bb to i1
  %i.bd = add i32 %.0.i7, 1
  br i1 %i.bc, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2154

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ax
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aw
  %i.bg = load ptr, ptr %i.z, align 8, !tbaa !1327
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !1327
  %i.bh = shl nuw i32 1, %i.ba
  %i.bi = or i32 %i.bh, %i.az
  store i32 %i.bi, ptr %i.be, align 4, !tbaa !131
  %i.bj = add i32 %.0.i18, -1
  %i.bk = and i32 %i.bj, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bk, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2155

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2156

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1325
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bl = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !2148
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !2148
  %i.bp = icmp eq i32 %i.bl, 0
  br i1 %i.bp, label %_ZN4llvm8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bq = load ptr, ptr %1, align 8, !tbaa !1312
  %i.br = zext i32 %i.bl to i64                   ; 2 uses
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = add nuw nsw i64 %i.br, 31
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = and i64 %i.bu, 1073741820
  %i.bw = add nuw nsw i64 %i.bv, %i.bs
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bq, i64 noundef %i.bw, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !1325
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_16DIImportedEntityENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_7DIMacroEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !1344
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !23
  %i.d = zext i16 %i.c to i32
  %i.e = icmp eq i32 %i.a, %i.d
  br i1 %i.e, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_7DIMacroEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1346
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !58
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZNK4llvm13MDNodeKeyImplINS_7DIMacroEE7isKeyOfEPKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1347 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = and i64 %i.n, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm7DIMacro10getRawNameEv.exit.i, label %_ZNK4llvm7DIMacro10getRawNameEv.exit.thread.i

_ZNK4llvm7DIMacro10getRawNameEv.exit.i:           ; preds = %bb.c
  %i.p = lshr i64 %i.n, 2
  %i.q = and i64 %i.p, 15
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !53
  %i.u = icmp eq ptr %i.l, %i.t
  br i1 %i.u, label %_ZNK4llvm7DIMacro11getRawValueEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_7DIMacroEE7isKeyOfEPKS1_.exit

_ZNK4llvm7DIMacro10getRawNameEv.exit.thread.i:    ; preds = %bb.c
  %i.v = getelementptr inbounds i8, ptr %1, i64 -32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21   ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.y = icmp eq ptr %i.l, %i.x
  br i1 %i.y, label %_ZNK4llvm7DIMacro11getRawValueEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_7DIMacroEE7isKeyOfEPKS1_.exit

_ZNK4llvm7DIMacro11getRawValueEv.exit.i:          ; preds = %_ZNK4llvm7DIMacro10getRawNameEv.exit.thread.i, %_ZNK4llvm7DIMacro10getRawNameEv.exit.i
  %.sroa.0.0.i.i.i.i6.i = phi ptr [ %i.w, %_ZNK4llvm7DIMacro10getRawNameEv.exit.thread.i ], [ %i.s, %_ZNK4llvm7DIMacro10getRawNameEv.exit.i ]
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %.in.i, align 8, !tbaa !1348
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i6.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !53
  %i.ac = icmp eq ptr %i.z, %i.ab
  br label %_ZNK4llvm13MDNodeKeyImplINS_7DIMacroEE7isKeyOfEPKS1_.exit

_ZNK4llvm13MDNodeKeyImplINS_7DIMacroEE7isKeyOfEPKS1_.exit: ; preds = %_ZNK4llvm7DIMacro11getRawValueEv.exit.i, %_ZNK4llvm7DIMacro10getRawNameEv.exit.thread.i, %_ZNK4llvm7DIMacro10getRawNameEv.exit.i, %bb.b, %bb.a
  %i.ad = phi i1 [ false, %_ZNK4llvm7DIMacro10getRawNameEv.exit.i ], [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %_ZNK4llvm7DIMacro11getRawValueEv.exit.i ], [ false, %_ZNK4llvm7DIMacro10getRawNameEv.exit.thread.i ]
  ret i1 %i.ad
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::array.791", align 4   ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1349, !noalias !2157 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1361, !noalias !2157 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1362, !noalias !2157 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !1364   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !58
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = and i64 %i.o, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 -32
end_hunk_30
begin_hunk_31_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.791", align 4   ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1349, !noalias !2165 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1361, !noalias !2165 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1362, !noalias !2165 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1364   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !58
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = and i64 %i.n, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = lshr i64 %i.n, 2
  %i.s = and i64 %i.r, 15
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.t
  br label %_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.in.i = phi ptr [ %i.u, %bb.d ], [ %i.q, %bb.c ]
  %i.v = zext i16 %i.j to i32
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load <2 x ptr>, ptr %.in.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 %i.v, ptr %3, align 4
  store i32 %i.l, ptr %i.w, align 4
  store <2 x ptr> %i.y, ptr %i.x, align 4
  %i.z = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.aa = trunc i64 %i.z to i32
  %i.ab = xor i32 %i.aa, -313160499
  %.024 = and i32 %i.ab, %i.g                     ; 3 uses
  %i.ac = zext i32 %.024 to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !131
  %i.ah = and i32 %.024, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit
  %i.ak = load ptr, ptr %1, align 8, !tbaa !1364
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.al = add nuw i32 %.025, 1
  %.0 = and i32 %i.al, %i.g                       ; 3 uses
  %i.am = zext i32 %.0 to i64                     ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.am ; 2 uses
  %i.ao = lshr i64 %i.am, 5
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !131
  %i.ar = and i32 %.0, 31
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = trunc i32 %i.as to i1
  br i1 %i.at, label %bb.f, label %.thread, !prof !147, !llvm.loop !2162

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.au = phi ptr [ %i.ad, %.lr.ph ], [ %i.an, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1364
  %i.aw = icmp eq ptr %i.ak, %i.av                ; 3 uses
  br i1 %i.aw, label %.thread, label %bb.e, !prof !121

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.ad, %_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.an, %bb.e ], [ %i.au, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.aw, %bb.e ], [ %i.aw, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2163
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.178", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1362
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1349
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1361
  store i32 0, ptr %i.p, align 16, !tbaa !2164
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2163
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.791", align 4   ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1349
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1361
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1362 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1361 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1349
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1362
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.r, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.s = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.r, %.lr.ph ], [ %i.be, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.t = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1364 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.z = load i16, ptr %i.y, align 2, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !58
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 -16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i64 %i.ad, 2
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %i.x, i64 -32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ah = lshr i64 %i.ad, 2
  %i.ai = and i64 %i.ah, 15
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aj
  br label %_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.in.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.ag, %bb.d ]
  %i.al = zext i16 %i.z to i32
  %i.am = load <2 x ptr>, ptr %.in.i.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %i.al, ptr %2, align 4
  store i32 %i.ab, ptr %i.o, align 4
  store <2 x ptr> %i.am, ptr %i.p, align 4
  %i.an = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ao = trunc i64 %i.an to i32
  %i.ap = xor i32 %i.ao, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ap, %_ZN4llvm10MDNodeInfoINS_7DIMacroEE12getHashValueEPKS1_.exit.i ], [ %i.ax, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.aq = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !131 ; 2 uses
  %i.au = and i32 %.0.i7, 31                      ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  %i.ax = add i32 %.0.i7, 1
  br i1 %i.aw, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2170

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aq
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !1364
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !1364
  %i.bb = shl nuw i32 1, %i.au
  %i.bc = or i32 %i.bb, %i.at
  store i32 %i.bc, ptr %i.ay, align 4, !tbaa !131
  %i.bd = add i32 %.0.i18, -1
  %i.be = and i32 %i.bd, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2171

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2172

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1362
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bf = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !2164
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !2164
  %i.bj = icmp eq i32 %i.bf, 0
  br i1 %i.bj, label %_ZN4llvm8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !1349
  %i.bl = zext i32 %i.bf to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !1362
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_7DIMacroENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE7isEqualERKNS_13MDNodeKeyImplIS1_EEPKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !1381
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !23
  %i.d = zext i16 %i.c to i32
  %i.e = icmp eq i32 %i.a, %i.d
  br i1 %i.e, label %bb.b, label %_ZNK4llvm13MDNodeKeyImplINS_11DIMacroFileEE7isKeyOfEPKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1383
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !58
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZNK4llvm13MDNodeKeyImplINS_11DIMacroFileEE7isKeyOfEPKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1384 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %1, i64 -16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = and i64 %i.n, 2
  %.not.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm11DIMacroFile10getRawFileEv.exit.i, label %_ZNK4llvm11DIMacroFile10getRawFileEv.exit.thread.i

_ZNK4llvm11DIMacroFile10getRawFileEv.exit.i:      ; preds = %bb.c
  %i.p = lshr i64 %i.n, 2
  %i.q = and i64 %i.p, 15
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !53
  %i.u = icmp eq ptr %i.l, %i.t
  br i1 %i.u, label %_ZNK4llvm11DIMacroFile14getRawElementsEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_11DIMacroFileEE7isKeyOfEPKS1_.exit

_ZNK4llvm11DIMacroFile10getRawFileEv.exit.thread.i: ; preds = %bb.c
  %i.v = getelementptr inbounds i8, ptr %1, i64 -32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21   ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.y = icmp eq ptr %i.l, %i.x
  br i1 %i.y, label %_ZNK4llvm11DIMacroFile14getRawElementsEv.exit.i, label %_ZNK4llvm13MDNodeKeyImplINS_11DIMacroFileEE7isKeyOfEPKS1_.exit

_ZNK4llvm11DIMacroFile14getRawElementsEv.exit.i:  ; preds = %_ZNK4llvm11DIMacroFile10getRawFileEv.exit.thread.i, %_ZNK4llvm11DIMacroFile10getRawFileEv.exit.i
  %.sroa.0.0.i.i.i6.i = phi ptr [ %i.w, %_ZNK4llvm11DIMacroFile10getRawFileEv.exit.thread.i ], [ %i.s, %_ZNK4llvm11DIMacroFile10getRawFileEv.exit.i ]
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %.in.i, align 8, !tbaa !1385
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i6.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !53
  %i.ac = icmp eq ptr %i.z, %i.ab
  br label %_ZNK4llvm13MDNodeKeyImplINS_11DIMacroFileEE7isKeyOfEPKS1_.exit

_ZNK4llvm13MDNodeKeyImplINS_11DIMacroFileEE7isKeyOfEPKS1_.exit: ; preds = %_ZNK4llvm11DIMacroFile14getRawElementsEv.exit.i, %_ZNK4llvm11DIMacroFile10getRawFileEv.exit.thread.i, %_ZNK4llvm11DIMacroFile10getRawFileEv.exit.i, %bb.b, %bb.a
  %i.ad = phi i1 [ false, %_ZNK4llvm11DIMacroFile10getRawFileEv.exit.i ], [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %_ZNK4llvm11DIMacroFile14getRawElementsEv.exit.i ], [ false, %_ZNK4llvm11DIMacroFile10getRawFileEv.exit.thread.i ]
  ret i1 %i.ad
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.std::array.791", align 4   ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1386, !noalias !2173 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1398, !noalias !2173 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1399, !noalias !2173 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !1401   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !58
  %i.n = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = and i64 %i.o, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 -32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.s = lshr i64 %i.o, 2
  %i.t = and i64 %i.s, 15
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.u
  br label %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit.i
end_hunk_31
begin_hunk_32_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.791", align 4   ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1386, !noalias !2181 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1398, !noalias !2181 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1399, !noalias !2181 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1401   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !58
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = and i64 %i.n, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = lshr i64 %i.n, 2
  %i.s = and i64 %i.r, 15
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.t
  br label %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit

_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit: ; preds = %bb.c, %bb.d
  %.in.i = phi ptr [ %i.u, %bb.d ], [ %i.q, %bb.c ]
  %i.v = zext i16 %i.j to i32
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load <2 x ptr>, ptr %.in.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 %i.v, ptr %3, align 4
  store i32 %i.l, ptr %i.w, align 4
  store <2 x ptr> %i.y, ptr %i.x, align 4
  %i.z = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %3, i64 noundef 24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.aa = trunc i64 %i.z to i32
  %i.ab = xor i32 %i.aa, -313160499
  %.024 = and i32 %i.ab, %i.g                     ; 3 uses
  %i.ac = zext i32 %.024 to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !131
  %i.ah = and i32 %.024, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit
  %i.ak = load ptr, ptr %1, align 8, !tbaa !1401
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.al = add nuw i32 %.025, 1
  %.0 = and i32 %i.al, %i.g                       ; 3 uses
  %i.am = zext i32 %.0 to i64                     ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.am ; 2 uses
  %i.ao = lshr i64 %i.am, 5
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !131
  %i.ar = and i32 %.0, 31
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = trunc i32 %i.as to i1
  br i1 %i.at, label %bb.f, label %.thread, !prof !147, !llvm.loop !2178

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.au = phi ptr [ %i.ad, %.lr.ph ], [ %i.an, %bb.e ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.e ]
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1401
  %i.aw = icmp eq ptr %i.ak, %i.av                ; 3 uses
  br i1 %i.aw, label %.thread, label %bb.e, !prof !121

.thread:                                          ; preds = %bb.f, %bb.e, %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit, %bb.a
  %.lcssa30.sink = phi ptr [ %i.ad, %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit ], [ null, %bb.a ], [ %i.an, %bb.e ], [ %i.au, %bb.f ]
  %.2 = phi i1 [ false, %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit ], [ false, %bb.a ], [ %i.aw, %bb.e ], [ %i.aw, %bb.f ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2179
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.182", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1399
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1386
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1398
  store i32 0, ptr %i.p, align 16, !tbaa !2180
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2179
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::array.791", align 4   ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1386
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1398
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1399 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1398 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1386
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1399
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph22, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.r, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.s = shl i32 %indvars.iv.tr, 5
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.r, %.lr.ph ], [ %i.be, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.t = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1401 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.z = load i16, ptr %i.y, align 2, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !58
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 -16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i64 %i.ad, 2
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds i8, ptr %i.x, i64 -32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !21
  br label %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ah = lshr i64 %i.ad, 2
  %i.ai = and i64 %i.ah, 15
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aj
  br label %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit.i

_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit.i: ; preds = %bb.e, %bb.d
  %.in.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.ag, %bb.d ]
  %i.al = zext i16 %i.z to i32
  %i.am = load <2 x ptr>, ptr %.in.i.i, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 %i.al, ptr %2, align 4
  store i32 %i.ab, ptr %i.o, align 4
  store <2 x ptr> %i.am, ptr %i.p, align 4
  %i.an = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %2, i64 noundef 24) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ao = trunc i64 %i.an to i32
  %i.ap = xor i32 %i.ao, -313160499
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit.i
  %.pn.i = phi i32 [ %i.ap, %_ZN4llvm10MDNodeInfoINS_11DIMacroFileEE12getHashValueEPKS1_.exit.i ], [ %i.ax, %bb.f ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.aq = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !131 ; 2 uses
  %i.au = and i32 %.0.i7, 31                      ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  %i.ax = add i32 %.0.i7, 1
  br i1 %i.aw, label %bb.f, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2186

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ar
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aq
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !1401
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !1401
  %i.bb = shl nuw i32 1, %i.au
  %i.bc = or i32 %i.bb, %i.at
  store i32 %i.bc, ptr %i.ay, align 4, !tbaa !131
  %i.bd = add i32 %.0.i18, -1
  %i.be = and i32 %i.bd, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.c, !llvm.loop !2187

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS2_EENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %bb.b, !llvm.loop !2188

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1399
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bf = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !2180
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !2180
  %i.bj = icmp eq i32 %i.bf, 0
  br i1 %i.bj, label %_ZN4llvm8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !1386
  %i.bl = zext i32 %i.bf to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !1399
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS1_EENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11DIMacroFileENS_6detail13DenseSetEmptyENS_10MDNodeInfoIS5_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm13DIArgListInfo7isEqualERKNS_16DIArgListKeyInfoEPKNS_9DIArgListE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.sroa.01.0.copyload.i = load ptr, ptr %0, align 8, !tbaa !1418
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !44 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.d = load i32, ptr %i.c, align 8, !tbaa !52
  %i.e = zext i32 %i.d to i64
  %.not.i.i.i = icmp eq i64 %.sroa.22.0.copyload.i, %i.e
  br i1 %.not.i.i.i, label %bb.b, label %_ZNK4llvm16DIArgListKeyInfo7isKeyOfEPKNS_9DIArgListE.exit

bb.b:                                             ; preds = %bb.a
  %.not.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.22.0.copyload.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i, label %_ZNK4llvm16DIArgListKeyInfo7isKeyOfEPKNS_9DIArgListE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.22.0.copyload.i, 3
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.copyload.i, ptr %i.b, i64 %.idx.i.i.i)
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br label %_ZNK4llvm16DIArgListKeyInfo7isKeyOfEPKNS_9DIArgListE.exit

_ZNK4llvm16DIArgListKeyInfo7isKeyOfEPKNS_9DIArgListE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i.i = phi i1 [ false, %bb.a ], [ %.not9.i.i.i.i.i.i.i, %bb.c ], [ true, %bb.b ]
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1420, !noalias !2189 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1432, !noalias !2189 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1433, !noalias !2189 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !1435   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !52
  %i.n = zext i32 %i.m to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.n, 3
  %i.o = tail call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %i.k, i64 noundef %.idx.i.i.i.i) #23
  %i.p = trunc i64 %i.o to i32
  %i.q = xor i32 %i.p, -313160499
  %.024.i = and i32 %i.q, %i.h                    ; 3 uses
  %i.r = zext i32 %.024.i to i64                  ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.r ; 2 uses
  %i.t = lshr i64 %i.r, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !131
  %i.w = and i32 %.024.i, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph.i, label %.loopexit, !prof !146

.lr.ph.i:                                         ; preds = %bb.b
  %i.z = load ptr, ptr %1, align 8, !tbaa !1435
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.aa = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ab = zext i32 %.0.i to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !131
  %i.ag = and i32 %.0.i, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %bb.d, label %.loopexit, !prof !147, !llvm.loop !2194

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.aj = phi ptr [ %i.s, %.lr.ph.i ], [ %i.ac, %bb.c ] ; 2 uses
  %.025.i = phi i32 [ %.024.i, %.lr.ph.i ], [ %.0.i, %bb.c ]
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1435
  %i.al = icmp eq ptr %i.z, %i.ak
  br i1 %i.al, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit, label %bb.c, !prof !121

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.s, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !2195
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !2196
end_hunk_32
begin_hunk_33_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_:bb.a

bb.e:                                             ; preds = %.loopexit
  %i.as = shl i32 %i.ao, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2195
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.e
  %i.au = phi ptr [ %.pre.i, %bb.e ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 3 uses
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !1432
  %i.aw = load ptr, ptr %0, align 8, !tbaa !1420
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 3                 ; 2 uses
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 31
  %i.bd = shl nuw i32 1, %i.bc
  %i.be = lshr i64 %i.ba, 5
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !131
  %i.bh = or i32 %i.bd, %i.bg
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !131
  %i.bi = load i32, ptr %i.am, align 8, !tbaa !2196
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.am, align 8, !tbaa !2196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bk = load ptr, ptr %1, align 8, !tbaa !1435
  store ptr %i.bk, ptr %i.au, align 8, !tbaa !1435
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %bb.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.au, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.aj, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1420, !noalias !2197 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1432, !noalias !2197 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1433, !noalias !2197 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1435   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.l = load i32, ptr %i.k, align 8, !tbaa !52
  %i.m = zext i32 %i.l to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.m, 3
  %i.n = tail call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %i.j, i64 noundef %.idx.i.i.i) #23
  %i.o = trunc i64 %i.n to i32
  %i.p = xor i32 %i.o, -313160499
  %.024 = and i32 %i.p, %i.g                      ; 3 uses
  %i.q = zext i32 %.024 to i64                    ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.q ; 2 uses
  %i.s = lshr i64 %i.q, 5
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !131
  %i.v = and i32 %.024, 31
  %i.w = lshr i32 %i.u, %i.v
  %i.x = trunc i32 %i.w to i1
  br i1 %i.x, label %.lr.ph, label %.thread, !prof !146

.lr.ph:                                           ; preds = %bb.b
  %i.y = load ptr, ptr %1, align 8, !tbaa !1435
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.z = add nuw i32 %.025, 1
  %.0 = and i32 %i.z, %i.g                        ; 3 uses
  %i.aa = zext i32 %.0 to i64                     ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131
  %i.af = and i32 %.0, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %bb.d, label %.thread, !prof !147, !llvm.loop !2194

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.ai = phi ptr [ %i.r, %.lr.ph ], [ %i.ab, %bb.c ] ; 2 uses
  %.025 = phi i32 [ %.024, %.lr.ph ], [ %.0, %bb.c ]
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1435
  %i.ak = icmp eq ptr %i.y, %i.aj                 ; 3 uses
  br i1 %i.ak, label %.thread, label %bb.c, !prof !121

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.r, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.ai, %bb.d ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ak, %bb.c ], [ %i.ak, %bb.d ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2195
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.78", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1433
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #23 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1420
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1432
  store i32 0, ptr %i.p, align 16, !tbaa !2196
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !159
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2195
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !159
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !159
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !131 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !131
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !131
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !131
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !131
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #23
  br label %_ZN4llvm8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1420
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1432
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1433 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1432 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1420
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1433
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !131  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.as, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1435 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.z = load i32, ptr %i.y, align 8, !tbaa !52
  %i.aa = zext i32 %i.z to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.aa, 3
  %i.ab = tail call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %i.x, i64 noundef %.idx.i.i.i.i) #23
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = xor i32 %i.ac, -313160499
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.ad, %bb.b ], [ %i.al, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.ae = zext i32 %.0.i7 to i64                  ; 2 uses
  %i.af = lshr i64 %i.ae, 5                       ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !131 ; 2 uses
  %i.ai = and i32 %.0.i7, 31                      ; 2 uses
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc i32 %i.aj to i1
  %i.al = add i32 %.0.i7, 1
  br i1 %i.ak, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !2202

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.af
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ae
  %i.ao = load ptr, ptr %i.u, align 8, !tbaa !1435
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !1435
  %i.ap = shl nuw i32 1, %i.ai
  %i.aq = or i32 %i.ap, %i.ah
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !131
  %i.ar = add i32 %.0.i18, -1
  %i.as = and i32 %i.ar, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.as, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2203

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !2204

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1433
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.at = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load i32, ptr %i.au, align 8, !tbaa !2196
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !2196
  %i.ax = icmp eq i32 %i.at, 0
  br i1 %i.ax, label %_ZN4llvm8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.ay = load ptr, ptr %1, align 8, !tbaa !1420
  %i.az = zext i32 %i.at to i64                   ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.az, 31
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = and i64 %i.bc, 1073741820
  %i.be = add nuw nsw i64 %i.bd, %i.ba
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ay, i64 noundef %i.be, i64 noundef 8) #23
  store i32 0, ptr %i.d, align 4, !tbaa !1433
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS7_12DenseSetPairIS6_EEEES6_S8_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E21eraseFromFilledBucketIZNSA_21eraseFromFilledBucketEPS8_EUlRS8_E_EEvSC_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !2196
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !2196
  %i.d = load ptr, ptr %0, align 8, !tbaa !1420   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1432 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1433
  %i.i = add i32 %i.h, -1                         ; 4 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 3
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add i32 %i.n, 1
  %i.p = and i32 %i.o, %i.i                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !131
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.pn = phi i64 [ %i.as, %bb.c ], [ %i.q, %bb.a ]
  %i.x = phi i32 [ %i.ar, %bb.c ], [ %i.p, %bb.a ] ; 3 uses
  %.03337 = phi i32 [ %.2, %bb.c ], [ %i.n, %bb.a ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.pn ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1435 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !52
  %i.ae = zext i32 %i.ad to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ae, 3
  %i.af = tail call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %i.ab, i64 noundef %.idx.i.i.i) #23
  %i.ag = trunc i64 %i.af to i32
  %i.ah = xor i32 %i.ag, -313160499               ; 2 uses
  %i.ai = sub i32 %.03337, %i.ah
  %i.aj = and i32 %i.ai, %i.i
  %i.ak = sub i32 %i.x, %i.ah
  %i.al = and i32 %i.ak, %i.i
  %i.am = icmp ult i32 %i.aj, %i.al
  br i1 %i.am, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.an = zext i32 %.03337 to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.an
  %i.ap = load ptr, ptr %i.y, align 8, !tbaa !1435
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !1435
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.2 = phi i32 [ %.03337, %.lr.ph ], [ %i.x, %bb.b ] ; 2 uses
  %i.aq = add i32 %i.x, 1
  %i.ar = and i32 %i.aq, %i.i                     ; 3 uses
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = lshr i64 %i.as, 5
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !131
  %i.aw = and i32 %i.ar, 31
  %i.ax = lshr i32 %i.av, %i.aw
  %i.ay = trunc i32 %i.ax to i1
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.033.lcssa = phi i32 [ %i.n, %bb.a ], [ %.2, %bb.c ] ; 2 uses
  %i.az = and i32 %.033.lcssa, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = xor i32 %i.ba, -1
  %i.bc = lshr i32 %.033.lcssa, 5
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !131
  %i.bg = and i32 %i.bf, %i.bb
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_9DIArgListENS_6detail13DenseSetEmptyENS_13DIArgListInfoENS4_12DenseSetPairIS3_EEEES3_S5_S6_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1420, !noalias !2205 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1432, !noalias !2205 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1433, !noalias !2205 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !1435   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.m = load i32, ptr %i.l, align 8, !tbaa !52
  %i.n = zext i32 %i.m to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.n, 3
  %i.o = tail call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef %i.k, i64 noundef %.idx.i.i.i.i) #23
  %i.p = trunc i64 %i.o to i32
  %i.q = xor i32 %i.p, -313160499
  %.024.i = and i32 %i.q, %i.h                    ; 3 uses
  %i.r = zext i32 %.024.i to i64                  ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.r ; 2 uses
  %i.t = lshr i64 %i.r, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !131
  %i.w = and i32 %.024.i, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph.i, label %.loopexit, !prof !146
end_hunk_33
